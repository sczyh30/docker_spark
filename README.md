# Spark on Docker
一个用于编排Spark集群的简单Docker容器
Apache Spark 是一种与 Hadoop 相似的开源集群计算环境，但是两者之间还存在一些不同之处，这些有用的不同之处使 Spark 在某些工作负载方面表现得更加优越，换句话说，Spark 启用了内存分布数据集，除了能够提供交互式查询外，它还可以优化迭代工作负载。

###单机模式
测试（单机模式）：<code>  docker run -d -p 8080:8080 --name "spark-test" sczyh30/spark:v2</code>
###集群模式
要想配置真正的集群，需要创建3个容器。
Master Container中需要配置Slave的地址，并且应提前配置好ssh免密码登录。
配置conf文件夹中的slaves文件，添加Slave节点的ip。
配置spark-env.sh文件中的SPARK_MASTER_IP项（Master节点的ip）
修改完成后 即可执行任务。


by sczyh30
