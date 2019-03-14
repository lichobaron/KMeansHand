using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text.RegularExpressions;

namespace KmeansHand
{

    class Cluster
    {
        public Cluster(int[] clustering, double[][] means, double[][] rawData)
        {
            Clustering = clustering;
            Means = means;
            RawData = rawData;
        }

        public double[][] RawData { get; set; }
        public int[] Clustering { get; set; }
        public double[][] Means { get; set; }
    }

    class KMeansDemo
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Begin k-means demo");

            int size = 600;
            string path = "/Users/licho/Documents/varios/KMeansHand/KmeansHand/Data/movall.txt";

            double[][] rawData;
            rawData = CargarDatos(path, size);
            Cluster cluster = RunClusters(6, rawData);


            double[] tuple0 = { 0.37, 0.49, 0.57, 0.33, 1.00, 0.74, 0.33, 0.34, 0.61, 0.10, 1.00, 0.61, 0.11, 0.17 };

            size = TestData(tuple0, cluster, size, cluster.RawData);

            double[] tuple1 = { 0.37, 0.53, 0.57, 0.23, 1.00, 0.73, 0.32, 1.00, 0.61, 0.10, 1.00, 0.60, 0.10, 0.31 };

            size = TestData(tuple1, cluster, size, cluster.RawData);

            double[] tuple2 = { 0.38, 0.51, 0.57, 0.22, 0.96, 0.77, 0.25, 0.25, 0.61, 0.09, 1.00, 0.59, 0.09, 0.33 };

            size = TestData(tuple2, cluster, size, cluster.RawData);

            double[] tuple3 = { 0.44, 0.50, 0.59, 0.22, 0.96, 0.78, 0.24, 0.23, 0.61, 0.09, 1.00, 0.59, 0.09, 0.27 };

            size = TestData(tuple3, cluster, size, cluster.RawData);

            double[] tuple4 = { 0.44, 0.54, 0.60, 0.22, 0.95, 0.77, 0.24, 0.22, 0.59, 0.09, 1.00, 0.63, 0.09, 0.09 };

            size = TestData(tuple4, cluster, size, cluster.RawData);

            double[] tuple5 = { 0.40, 0.53, 0.58, 0.16, 0.96, 0.77, 0.24, 0.25, 0.61, 0.09, 1.00, 0.66, 0.09, 0.09 };

            size = TestData(tuple5, cluster, size, cluster.RawData);

        }

        public static int TestData(double[] tuple, Cluster cluster, int size, double[][] rawData)
        {
            size = size + 1;

            double[][] newRaw = new double[size][];


            for (int i = 0; i < rawData.Length; i++)
            {
                newRaw[i] = rawData[i];
            }

            newRaw[size - 1] = tuple;

            cluster.RawData = newRaw;

            cluster = RunClusters(6, newRaw);
            Console.WriteLine("Numero del cluster");
            Console.WriteLine(cluster.Clustering[size - 1]);
            return size;
        }

        public static double[][] CargarDatos(string filename, int size)
        {
            double[][] rawData = new double[size][];
            String line; try
            {
                StreamReader sr = new StreamReader(filename);
                line = sr.ReadLine();
                int i = 0;
                while (line != null)
                {
                    rawData[i] = new double[14];
                    Regex reg = new Regex(@"([-+]?[0-9]*\.?[0-9]+)");
                    int j = 0;
                    foreach (Match match in reg.Matches(line))
                    {
                        rawData[i][j] = double.Parse(match.Value, CultureInfo.InvariantCulture.NumberFormat);
                        j += 1;
                    }

                    line = sr.ReadLine();
                    i++;
                    if (i >= size)
                    {
                        break;
                    }
                }
                sr.Close();
                return rawData;

            }
            catch (Exception e)
            {
                Console.WriteLine("Exception: " + e.Message);
            }
            finally
            {
                Console.WriteLine("Executing finally block files.");
            }
            return rawData;
        }

        public static Cluster RunClusters(int numClusters, double[][] rawData)
        {
            Console.WriteLine("Begin k-means demo");

            /*Console.WriteLine("Raw unclustered data:");
            Console.WriteLine("    Height Weight");
            Console.WriteLine("-------------------");
            ShowData(rawData, 1, true, true);

            Console.WriteLine("Setting numClusters to " + numClusters);*/

            Cluster cluster = Clustering(rawData, numClusters);

            Console.WriteLine("K-means clustering complete");

            /*Console.WriteLine("Final clustering in internal form:");
            ShowVector(cluster.Clustering, true);

            Console.WriteLine("Raw data by cluster:");
            ShowClustered(rawData, cluster.Clustering, numClusters, 1);

            Console.WriteLine("End k-means clustering demo");*/
            Console.ReadLine();

            return cluster;
        }

        public static Cluster Clustering(double[][] rawData, int numClusters)
        {
            double[][] data = Normalized(rawData);
            bool changed = true; bool success = true;
            int[] clustering = InitClustering(data.Length, numClusters, 0);
            double[][] means = Allocate(numClusters, data[0].Length);

            Console.WriteLine("----------------------------");
            int maxCount = data.Length * 10;
            int ct = 0;
            while (changed == true && success == true && ct < maxCount)
            {
                ++ct;
                success = UpdateMeans(data, clustering, means);
                changed = UpdateClustering(data, clustering, means);
            }

            Cluster cluster = new Cluster(clustering, means, rawData);

            return cluster;
        }

        private static double[][] Normalized(double[][] rawData) {
            double[][] result = new double[rawData.Length][];
            for (int i = 0; i < rawData.Length; ++i)
            {
                result[i] = new double[rawData[i].Length];
                Array.Copy(rawData[i], result[i], rawData[i].Length);
            }

            for (int j = 0; j < result[0].Length; ++j)
            {
                double colSum = 0.0;
                for (int i = 0; i < result.Length; ++i)
                    colSum += result[i][j];
                double mean = colSum / result.Length;
                double sum = 0.0;
                for (int i = 0; i < result.Length; ++i)
                    sum += (result[i][j] - mean) * (result[i][j] - mean);
                double sd = sum / result.Length;
                for (int i = 0; i < result.Length; ++i)
                    result[i][j] = (result[i][j] - mean) / sd;
            }
            return result;
        }

        private static int[] InitClustering(int numTuples, int numClusters, int seed)
        {
            Random random = new Random(seed);
            int[] clustering = new int[numTuples];
            for (int i = 0; i < numClusters; ++i)
                clustering[i] = i;
            for (int i = numClusters; i < clustering.Length; ++i)
                clustering[i] = random.Next(0, numClusters);
            return clustering;

        }
        private static double[][] Allocate(int numClusters, int numColumns)
        {
            double[][] result = new double[numClusters][];
            for (int k = 0; k < numClusters; ++k)
                result[k] = new double[numColumns];
            return result;
        }
        private static bool UpdateMeans(double[][] data, int[] clustering, double[][] means)
        {
            int numClusters = means.Length;
            int[] clusterCounts = new int[numClusters];
            for (int i = 0; i < data.Length; ++i)
            {
                int cluster = clustering[i];
                ++clusterCounts[cluster];
            }

            for (int k = 0; k < numClusters; ++k)
                if (clusterCounts[k] == 0)
                    return false;

            for (int k = 0; k < means.Length; ++k)
                for (int j = 0; j < means[k].Length; ++j)
                    means[k][j] = 0.0;

            for (int i = 0; i < data.Length; ++i)
            {
                int cluster = clustering[i];
                for (int j = 0; j < data[i].Length; ++j)
                    means[cluster][j] += data[i][j]; // accumulate sum
            }

            for (int k = 0; k < means.Length; ++k)
                for (int j = 0; j < means[k].Length; ++j)
                    means[k][j] /= clusterCounts[k]; // danger of div by 0
            return true;

        }

        private static bool UpdateClustering(double[][] data, int[] clustering, double[][] means)
        {
            int numClusters = means.Length;
            bool changed = false;

            int[] newClustering = new int[clustering.Length];
            Array.Copy(clustering, newClustering, clustering.Length);

            double[] distances = new double[numClusters];

            for (int i = 0; i < data.Length; ++i)
            {
                for (int k = 0; k < numClusters; ++k)
                    distances[k] = Distance(data[i], means[k]);

                int newClusterID = MinIndex(distances);

                if (newClusterID != newClustering[i])
                {
                    changed = true;
                    newClustering[i] = newClusterID;
                }
            }

            if (changed == false)
                return false;

            int[] clusterCounts = new int[numClusters];
            for (int i = 0; i < data.Length; ++i)
            {
                int cluster = newClustering[i];
                ++clusterCounts[cluster];
            }

            for (int k = 0; k < numClusters; ++k)
                if (clusterCounts[k] == 0)
                    return false;

            Array.Copy(newClustering, clustering, newClustering.Length);
            return true; // no zero-counts and at least one change

        }

        private static double Distance(double[] tuple, double[] mean)
        {
            double sumSquaredDiffs = 0.0;
            for (int j = 0; j < tuple.Length; ++j)
                sumSquaredDiffs += Math.Pow((tuple[j] - mean[j]), 2);
            return Math.Sqrt(sumSquaredDiffs);

        }

        private static int MinIndex(double[] distances) {
            int indexOfMin = 0;
            double smallDist = distances[0];
            for (int k = 0; k < distances.Length; ++k)
            {
                if (distances[k] < smallDist)
                {
                    smallDist = distances[k];
                    indexOfMin = k;
                }
            }
            return indexOfMin;
        }

        static void ShowData(double[][] data, int decimals, bool indices, bool newLine)
        {
            for (int i = 0; i < data.Length; ++i)
            {
                if (indices) Console.Write(i.ToString().PadLeft(3) + " ");
                for (int j = 0; j < data[i].Length; ++j)
                {
                    if (data[i][j] >= 0.0) Console.Write(" ");
                    Console.Write(data[i][j].ToString("F" + decimals) + " ");
                }
                Console.WriteLine("");
            }
            if (newLine) Console.WriteLine("");
        }

        static void ShowVector(int[] vector, bool newLine) {
            for (int i = 0; i < vector.Length; ++i)
                Console.Write(vector[i] + " ");
            if (newLine) Console.WriteLine("\n");
        }

        static void ShowClustered(double[][] data, int[] clustering,int numClusters, int decimals)
        {
            for (int k = 0; k < numClusters; ++k)
            {
                Console.WriteLine("===================");
                Console.WriteLine(data.Length);
                /*for (int i = 0; i < data.Length; ++i)
                {
                    int clusterID = clustering[i];
                    if (clusterID != k) continue;
                    Console.Write(i.ToString().PadLeft(3) + " ");
                    for (int j = 0; j < data[i].Length; ++j)
                    {
                        if (data[i][j] >= 0.0) Console.Write(" ");
                        Console.Write(data[i][j].ToString("F" + decimals) + " ");
                    }
                    Console.WriteLine("");
                }*/
                Console.WriteLine("===================");
            } // k
        }
    }
}