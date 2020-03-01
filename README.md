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
## DAGs
In Airflow, a DAG – or a Directed Acyclic Graph – is a collection of all the tasks you want to run, organized in a way that reflects their relationships and dependencies.

A DAG is defined in a Python script, which represents the DAGs structure (tasks and their dependencies) as code.

For example, a simple DAG could consist of three tasks: A, B, and C. It could say that A has to run successfully before B can run, but C can run anytime. It could say that task A times out after 5 minutes, and B can be restarted up to 5 times in case it fails. It might also say that the workflow will run every night at 10pm, but shouldn’t start until a certain date.

[Ref: Concepts](https://airflow.apache.org/docs/stable/concepts.html)

##### In airflow_files/dags/example_dags/ path folder there is a example DAG script py file take from [Airflow tutorial site](https://airflow.apache.org/docs/stable/tutorial.html#it-s-a-dag-definition-file)
the effects can show it on [http://localhost:8080/admin/airflow/tree](http://localhost:8080/admin/airflow/tree)
