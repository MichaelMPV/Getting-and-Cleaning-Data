Name: Cristhian Paucar Ventura Datetime: 06/16/2020 22:31:00

The analysis that was done to convert the disordered data to ordered data is in the file called run.analys.R

In this Scrit R file, you can see that it begins by downloading and then proceeds to read the documents. In the Scrit, the points have been labeled with # to explain below

In Point # 1 the following is observed Then the fields of the different files are extracted from where the data needs to be obtained in order to order them and then merge the training sets
In Point # 2 the following is observed Extract only the mean and standard deviation measurements for each measurement. In Point # 3 the following is observed Use descriptive names of activities to name the activities in the data set This is done by reading the tags in the file activity_labels.txt In Point # 4 the following is observed: Label the data set appropriately with descriptive variable names. We replace the data sets with "names_data" In Point # 5 the following is observed. A second independent ordered data set is created with the average of each variable for each activity and each subject. Once ordered, the data_convert_tidy.txt file is generated with the help of the write.table () function.
