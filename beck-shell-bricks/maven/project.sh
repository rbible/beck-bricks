#create java project
mvn archetype:create  -DgroupId=group  -DartifactId=projectName 

#create web project
mvn archetype:create -DgroupId=group -DartifactId=webappName -DarchetypeArtifactId=maven-archetype-webapp


# generate eclipse project
mvn eclipse:eclipse

# generate site
mvn site

#change to eclipse project
mvn eclipse:eclipse

#clean eclipse setting
mvn eclipse:clean