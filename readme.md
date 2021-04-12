# Docker
Add .wslconfig to C:/user/\<name\>/ to stop docker from eating memory.

Restart using `wsl --shutdown.`

## .wslconfig
[wsl2]

memory=4GB # Limits VM memory in WSL 2 to 4 GB

# Docker Compose for Hadoop-Spark
Use Chocolaty to install make

Spin cluster up/down using `make up/down`

Sumbit Spark jobs with `make ExampleSparkSubmit`

Hadoop : http://localhost:50070/

	NameNode: hdfs://namenode:8020

Spark : http://localhost:8080/

	Spark Master:  spark://spark-master:7077

	Spark History: http://localhost:18080/

	Spark Executor: http://localhost:4040/

Hue:  http://localhost:8088/home

Zeppelin:  http://localhost:4070

# IntelliJ
Install Docker plugin in IntelliJ

Add Docker-Compose configuration for each poller and staging ELT component using docker-compose-staging.yml

Create RemoteJVMDebug config

Make sure all config files use Linux file paths (/ not \\)

Run the Docker-Compose, then attach debugger