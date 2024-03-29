vim /usr/local/hive/conf/hive-env.sh
<configuration>
 <property>
 <name>javax.jdo.option.ConnectionURL</name>
 <value>jdbc:mysql://localhost/metastore?createDatabaseIfNotExist=true</value>
 <description>metadata is stored in a MySQL server</description>
 </property>
 <property>
 <name>javax.jdo.option.ConnectionDriverName</name>
 <value>com.mysql.jdbc.Driver</value>
 <description>MySQL JDBC driver class</description>
 </property>
 <property>
 <name>javax.jdo.option.ConnectionUserName</name>
 <value>hiveuser</value>
 <description>user name for connecting to mysql server</description>
 </property>
 <property>
 <name>javax.jdo.option.ConnectionPassword</name>
 <value>hivepassword</value>
 <description>password for connecting to mysql server</description>
 </property>
</configuration>
