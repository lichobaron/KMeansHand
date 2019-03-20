using System;
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

			//string path = "C:/Users/LICHO/Documents/MyWorkspace/KMeansHand/various/";
			string path = "/Users/licho/Documents/varios/KMeansHand/KmeansHand/Data/";
			int size = 880;

            //Right Glove
			string rawPath = path + "rightGlove.txt";

			double[][] rawData;
            rawData = readData(rawPath, size);

			int[] finger1 = { 0,1 };
			Cluster cluster1 = CreateClusters(3, rawData, finger1);
			saveData(path + "finger13.txt", cluster1);

			int[] finger2 = { 3, 4 };
			Cluster cluster2 = CreateClusters(3, rawData, finger2);
			saveData(path + "finger23.txt", cluster2);

			int[] finger3 = { 6, 7 };
			Cluster cluster3 = CreateClusters(3, rawData, finger3);
			saveData(path + "finger33.txt", cluster3);

			int[] finger4 = { 9, 10 };
			Cluster cluster4 = CreateClusters(3, rawData, finger4);
			saveData(path + "finger43.txt", cluster4);

			int[] finger5 = { 12, 13 };
			Cluster cluster5 = CreateClusters(3, rawData, finger5);
			saveData(path + "finger53.txt", cluster5);

            //Left Glove
            string rawPathl = path + "leftGlove.txt";

            double[][] rawDatal;
            rawDatal = readData(rawPathl, size);

            int[] finger1l = { 0, 1 };
            Cluster cluster1l = CreateClusters(3, rawDatal, finger1l);
            saveData(path + "finger13l.txt", cluster1l);

            int[] finger2l = { 3, 4 };
            Cluster cluster2l = CreateClusters(3, rawDatal, finger2l);
            saveData(path + "finger23l.txt", cluster2l);

            int[] finger3l = { 6, 7 };
            Cluster cluster3l = CreateClusters(3, rawDatal, finger3l);
            saveData(path + "finger33l.txt", cluster3l);

            int[] finger4l = { 9, 10 };
            Cluster cluster4l = CreateClusters(3, rawDatal, finger4l);
            saveData(path + "finger43l.txt", cluster4l);

            int[] finger5l = { 12, 13 };
            Cluster cluster5l = CreateClusters(3, rawDatal, finger5l);
            saveData(path + "finger53l.txt", cluster5l);

            /*string[] filenames = { path + "finger1.txt", path + "finger2.txt", path + "finger3.txt", path + "finger4.txt", path + "finger5.txt"};

			double[][][] means = getMeansFromFile(filenames, 3);

			double[] tuple0 = { 0.37, 0.49, 0.57, 0.33, 1.00, 0.74, 0.33, 0.34, 0.61, 0.10, 1.00, 0.61, 0.11, 0.17 };

			Console.WriteLine(string.Join(", ", TestFingers(tuple0, means)));*/
            Console.ReadLine();


		}

        /*
		public static double[] getFingersTuple(double[] tuple, int finger) {
			double[] r = new double[2];
			switch (finger)
			{
				case 1:
					r[0] = tuple[0];
					r[1] = tuple[1];
					break;
				case 2:
					r[0] = tuple[3];
					r[1] = tuple[4];
					break;
				case 3:
					r[0] = tuple[6];
					r[1] = tuple[7];
					break;
				case 4:
					r[0] = tuple[9];
					r[1] = tuple[10];
					break;
				case 5:
					r[0] = tuple[12];
					r[1] = tuple[13];
					break;
				default:
					r[0] = -1;
					r[1] = -1;
					break;
			}
			return r;
		}

		public static double[][][] getMeansFromFile(string[] fileNames, int numK)
		{
			double[][][] means = new double[5][][];
			
			for (int i =0; i < fileNames.Length; i++) {
				means[i] = new double[numK][];
				string filename = fileNames[i];
				String line; try
				{
					StreamReader sr = new StreamReader(filename);
					line = sr.ReadLine();

					int j = 0;
					while (line != null)
					{
						Regex reg = new Regex(@"([-+]?[0-9]*\.?[0-9]+)");
						int tam = 0;
						foreach (Match match in reg.Matches(line))
						{
							tam++;
						}
						means[i][j] = new double[tam];

						int k = 0;
						foreach (Match match in reg.Matches(line))
						{
							means[i][j][k] = double.Parse(match.Value, CultureInfo.InvariantCulture.NumberFormat);
							k++;
						}

						j++;
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
					Console.WriteLine("Executing finally block files.");
				}
			}
			
			return means;
		}

		public static int[] TestFingers(double[] tuple, double[][][] means)
        {

			int[] r = new int[5];

			for (int i = 0; i < 5; i++) //num dedos
			{
				int minIndex = 0;
				double min = Distance(getFingersTuple(tuple,i), means[i][0]);
				for (int j = 1; j < means[i].Length; j++)
				{
					if (Distance(getFingersTuple(tuple, i), means[i][j]) < min)
					{
						minIndex = j;
					}
				}
				r[i] = translateSensor(minIndex, i);
			}
			return r;
        }

		public static int translateSensor(int num, int finger)
		{
			//Console.WriteLine(num);
			int r = 99;
			if (num == 0)
			{
				r = 0;
			}
			else if (num == 1)
			{
				r = -1;
			}
			else if (num == 2)
			{
				r = 1;
			}
            return r;
		}*/

		public static void saveData(string filename, Cluster cluster)
		{
			using (System.IO.StreamWriter file =
				new System.IO.StreamWriter(@filename))
			{
				for (int i = 0; i < cluster.Means.Length; i++)
				{
					file.Write("[");
					for (int j = 0; j < cluster.Means[i].Length; j++)
					{
						file.Write(cluster.Means[i][j].ToString("0.000", CultureInfo.InvariantCulture) + ", ");
					}
					file.WriteLine("]");
				}
			}
		}

		public static double[][] readData(string filename, int size)
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

        public static Cluster CreateClusters(int numClusters, double[][] rawData, int[] sensors)
        {
            Console.WriteLine("Begin k-means demo");

			/*Console.WriteLine("Raw unclustered data:");
            Console.WriteLine("    Height Weight");
            Console.WriteLine("-------------------");
            ShowData(rawData, 1, true, true);

            Console.WriteLine("Setting numClusters to " + numClusters);*/

			double[][] rawDataCopy = new double[rawData.Length][];

			for (int i = 0; i < rawData.Length; i++) {
				rawDataCopy[i] = new double[sensors.Length];
				for (int j = 0; j < sensors.Length; j++)
				{
					rawDataCopy[i][j] = rawData[i][sensors[j]]; //
				}
			}

            Cluster cluster = Clustering(rawDataCopy, numClusters);

            Console.WriteLine("K-means clustering complete");

            /*Console.WriteLine("Final clustering in internal form:");
            ShowVector(cluster.Clustering, true);

            Console.WriteLine("Raw data by cluster:");
            ShowClustered(rawData, cluster.Clustering, numClusters, 1);

            Console.WriteLine("End k-means clustering demo");
            Console.ReadLine();*/

            return cluster;
        }

        public static Cluster Clustering(double[][] rawData, int numClusters)
        {
            double[][] data = rawData;/* Normalized(rawData)*/;
            bool changed = true; bool success = true;
            int[] clustering = InitClustering(data.Length, numClusters, 0);
            double[][] means = Allocate(numClusters, data[0].Length);

            Console.WriteLine("----------------------------");
            int maxCount = data.Length * 1000;
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