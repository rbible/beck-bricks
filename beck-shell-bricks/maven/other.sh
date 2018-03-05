#打印出已解决依赖的列表
mvn dependency:resolve  

#打印整个依赖树 
mvn dependency:tree 

# no add classpath run class
mvn exec:java -Dexec.mainClass=org.sonatype.mavenbook.weather.Main

#compile error info
mvn -e

#mvn version
mvn -v

#validate project
mvn validate 