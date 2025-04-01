# fabric-dbt-datavault
 
This project showcases a demo datavault project on fabric built with datavault4dbt.

# Prerequisites

- install python poetry
- install azure cli

# Steps

- create a fabric workspace and a fabric warehouse
- create a demoproject/profiles.yml file (copy demoproject/profiles.yml.SAMPLE) and insert the sql connection string and name of the warehouse
- install python dependencies `poetry install`
- log-in to azure cli `az login`
- go into the dbt project `cd demoproject`
- check that dbt works `poetry run dbt --version`
- install dbt dependencies `poetry run dbt deps`
- seed the demo files into the fabric warehouse `poetry run dbt seed`
- build the project `poetry run dbt run`
  
