#!/bin/bash
chown -R root:docker ./data
chmod -R 777 ./data
chown -R 1000:1000 ./airflow_files