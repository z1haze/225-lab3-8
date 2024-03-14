1) From terminal or command ine issue the following command:
    echo -n 'username' | base64
2) Use the resulting base64 encoded username in your mongo-secret.yaml

3) From terminal or command ine issue the following command:
   echo -n 'password' | base64

4) Use the resulting base64 encoded username in your mongo-secret.yaml. 

Add your mongo-secret.yaml to your kubernetes cluster manually.  Delete the mongo-secret.yaml from your repository.
