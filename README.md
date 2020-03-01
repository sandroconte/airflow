## First application services running
1. Step: run Postgres docker service
```bash
docker-compose up postgres
```
2. Step: In another tab: 
```bash
sudo bash ./init.sh
``` 
* If a problem has occurred, then run a single command at a time from the terminal
3. Step: When postgress showing the message `LOG:  database system is ready to accept connections` 
``` bash 
docker-compose up initdb
```
4. Step: When finish executing process on Step 3 
``` bash 
docker-compose up scheduler webserver
```
## Docker running
* Make sure that `initdb` service has been commented and then
``` bash 
docker-compose up scheduler webserver
```
