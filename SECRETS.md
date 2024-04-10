1) From Mac terminal issue the following command:
    echo -n 'username' | base64
   -or- browse to base64encode.org and enter the text you want to encode.
   
3) Use the resulting base64 encoded username in your mongo-secret.yaml

4) From terminal or command ine issue the following command:
   echo -n 'password' | base64

5) Use the resulting base64 encoded username in your mongo-secret.yaml. 

6) Add your mongo-secret.yaml to your kubernetes cluster manually.  Delete the mongo-secret.yaml from your repository.
