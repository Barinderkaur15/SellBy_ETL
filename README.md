# # Sell by 
### Purpose : 
The purpose of this project is to learn the complete data pipline . Where in we perform the ETL process completely in the cloud and upload a DataFrame to an RDS instance.Secondly is to use use SQl to perform statistical analysis on seleceted data 

### Scripting Languages and Tools :

**1.** : **Pyspark** : PySpark Programming. PySpark is the collaboration of Apache Spark and Python. Apache Spark is an open-source cluster-computing framework, built around speed, ease of use, and streaming analytics whereas Python is a general-purpose, high-level programming language <BR>
  
**2.**: **SQl** : SQL is a standard language for storing, manipulating and retrieving data in databases.<BR>

**3.** : **Postgres** : PostgreSQL, also known as Postgres, is a free and open-source relational database management system emphasizing extensibility and technical standards compliance. It is designed to handle a range of workloads, from single machines to data warehouses or Web services with many concurrent users.  <BR>

**4.** : **Google Colab** : Colab notebooks are Jupyter notebooks that run in the cloud and are highly integrated with Google Drive, making them easy to set up, access, and share. <br>

**5. ** : **Amazon Web services** : mazon Web Services is a subsidiary of Amazon that provides on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered pay-as-you-go basis.<BR>
 For this project we use Amazon RDS and S3 bucket services <BR>
 ** RDS** : Amazon Relational Database Service (Amazon RDS) is a web service that makes it easier to set up, operate, and scale a relational database in the AWS Cloud. It provides cost-efficient, resizeable capacity for an industry-standard relational database and manages common database administration tasks.
**S3** :Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance.
  
### Data Source :###: 
https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt

### Process: ### 
**1.Performing ETL*** <BR>
ETL is short for extract, transform, load, three database functions that are combined into one tool to pull data out of one database and place it into another database.<BR>
  
**Extract** is the process of reading data from a database. In this stage, the data is collected, often from multiple and different types of sources.

**Transform**  is the process of converting the extracted data from its previous form into the form it needs to be in so that it can be placed into another database. Transformation occurs by using rules or lookup tables or by combining the data with other data.<BR>
  
**Load** is the process of writing the data into the target database.<BR>

For the first step of this challenge data from amazon, reviews are extracted and then transformed in the data frame where various data quality steps were taken in order to make sure the right data is uploaded for the data analysis. 
For extracting the data we use pyspark , JAVA and findspark API to extract the data from the Amazon reviews.<BR>
To make the Process cloud-based we use amazon S3 services to store our data. Once the data is extracted we use spark to read the data and then convert the data frame as per the requirement using various functions in the transform section. <BR>

Lastly using  the JDBC connection we created a live connection between Amazon RDS and postgres and tranbsformed our data . <BR>
  
**Results ** 

After checking and comaoring different data sets it is very diffic


