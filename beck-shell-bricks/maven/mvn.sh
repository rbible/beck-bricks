
# clean compile generate files
mvn clean

# compile source code
mvn compile

#compile test code
mvn test-compile

#run test code 
mvn test

#package
mvn package

# install to local repository
mvn install

# install and skip test code
mvn install -Dmaven.test.skip=true

#show dependency track
mvn install -X 

#deploy to remote repository
mvn deploy:deploy-file -DgroupId=com -DartifactId=client -Dversion=0.1.0 -Dpackaging=jar -Dfile=d:/client-0.1.0.jar -DrepositoryId=maven-repository-inner -Durl=ftp://xxxxxxx/opt/maven/repository/  
