#!/bin/bash

wget https://s3.amazonaws.com/bsql/data/air_transport/airlines.csv -P /tmp/
head /tmp/airlines.csv
wget https://s3.amazonaws.com/bsql/data/air_transport/airports.csv -P /tmp/
head /tmp/airports.csv

pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jupyter nbextension enable execute_time/ExecuteTime

pip install fugue-blazing==0.0.3.dev1 dask-sql
