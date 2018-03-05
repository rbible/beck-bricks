#connect
zkCli.sh -server 127.0.0.1:2181

#list file
ls /

#create file and set init content
create /main hello

#get file content
get /main

#change file content
set /main main

#delete empty file
delete /main

# rm node and children node
rmr /main

#exit
quit