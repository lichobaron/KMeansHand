using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text.RegularExpressions;

namespace KmeansHand
{
    class GloveCluster
    {
        public GloveCluster(string name)
        {
            Name = name;
            DatosSensores = new List<float[]>();
        }

        public string Name { get; set; }
        public List<float[]> DatosSensores { get; set; }

        public void cargarDatos(string filename)
        {
            String line; try
            {
                StreamReader sr = new StreamReader(filename);
                line = sr.ReadLine();
                while (line != null)
                {
                    Regex reg = new Regex(@"([-+]?[0-9]*\.?[0-9]+)");
                    float[] sensores = new float[14];
                    int i = 0;
                    foreach (Match match in reg.Matches(line))
                    {
                        sensores[i] = float.Parse(match.Value, CultureInfo.InvariantCulture.NumberFormat);
                        i += 1;
                    }
                    DatosSensores.Add(sensores);
                    line = sr.ReadLine();
                }
                sr.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception: " + e.Message);
            }
            finally
            {
                Console.WriteLine("Executing finally block.");
            }
        }

    }

    class KMeansDemo
    {
        static void Main(string[] args)
        {
            string[] paths = new string[] {
                                        "/Users/licho/Documents/varios/KMeansHand/KmeansHand/Data/mov0.txt",
                                        "/Users/licho/Documents/varios/KMeansHand/KmeansHand/Data/mov1.txt",
                                        "/Users/licho/Documents/varios/KMeansHand/KmeansHand/Data/mov2.txt",
                                        "/Users/licho/Documents/varios/KMeansHand/KmeansHand/Data/mov3.txt",
                                        "/Users/licho/Documents/varios/KMeansHand/KmeansHand/Data/mov4.txt",
                                        "/Users/licho/Documents/varios/KMeansHand/KmeansHand/Data/mov5.txt"
                                        };

            Console.WriteLine("Begin k-means demo");

            GloveCluster[] clusters = new GloveCluster[6];

            for (int i = 0; i < 6; i++)
            {
                clusters[i] = new GloveCluster("fingers" + i);
                clusters[i].cargarDatos(paths[i]);
            }

            Console.WriteLine("Raw unclustered data:");
            Console.WriteLine("    Height Weight");
            Console.WriteLine("-------------------");
            Console.ReadLine();
            //ShowData(rawData, 1, true, true);

            /*int numClusters = 3;
            Console.WriteLine("Setting numClusters to " + numClusters);

            int[] clustering = Cluster(rawData, numClusters);

            Console.WriteLine("K-means clustering complete");

            Console.WriteLine("Final clustering in internal form:");
            ShowVector(clustering, true);

            Console.WriteLine("Raw data by cluster:");
            ShowClustered(rawData, clustering, numClusters, 1);

            Console.WriteLine("End k-means clustering demo");
            Console.ReadLine();*/

        }

        public static int[] Cluster(GloveCluster[] clusters, int numClusters)
        {
            GloveCluster[] data = Normalized(clusters);
            bool changed = true; bool success = true;
            int[] clustering = InitClustering(data.Length, numClusters, 0);
            double[][] means = Allocate(numClusters, data[0].Length);
            int maxCount = data.Length * 10;
            int ct = 0;
            while (changed == true && success == true && ct < maxCount)
            {
                ++ct;
                success = UpdateMeans(data, clustering, means);
                changed = UpdateClustering(data, clustering, means);
            }
            return clustering;
        }

        private static double[][] Allocate(int numClusters, int numColumns)
        {
            double[][] result = new double[numClusters][];
            for (int k = 0; k < numClusters; ++k)
                result[k] = new double[numColumns];
            return result;
        }

        private static double[][] Normalized(GloveCluster[] clusters)
        {
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

        private static GloveCluster[] Normalized(GloveCluster[] clusters)
        {
            GloveCluster[] result = new GloveCluster[6];
            result = clusters;
            for (int i = 0; i < 6; i++)
            {
                for (int j = 0; j < result[i].DatosSensores.Count; j++)
                {
                    double colSum = 0.0;
                    for (int k = 0; k < 13; k++)
                    {
                        colSum += result[i].DatosSensores[j][k];
                    }
                    double mean = colSum / result[i].DatosSensores.Count;
                    double sum = 0.0;
                    for (int k = 0; k < 13; k++)
                    {
                        sum += (result[i].DatosSensores[j][k] - mean) * (result[i].DatosSensores[j][k] -mean);

                    }
                    double sd = sum / result[i].DatosSensores.Count;
                    for (int k = 0; k < 13; k++)
                    {
                        result[i].DatosSensores[j][k] = ToSingle((result[i].DatosSensores[j][k] - mean) / sd);

                    }
                }
            }
            return result;
        }

        public static float ToSingle(double value)
        {
            return (float)value;
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

        private static double Distance(double[] tuple, double[] mean)
        {
            double sumSquaredDiffs = 0.0;
            for (int j = 0; j < tuple.Length; ++j)
                sumSquaredDiffs += Math.Pow((tuple[j] - mean[j]), 2);
            return Math.Sqrt(sumSquaredDiffs);
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
    }
}