FROM quay.io/astronomer/astro-runtime:9.6.0-python-3.9-base

RUN python -m venv dbt_venv
RUN /bin/bash -c "source dbt_venv/bin/activate && pip install --no-cache-dir dbt-snowflake && deactivate"

RUN pip install --upgrade pip

RUN pip install astronomer-cosmos
RUN pip install apache-airflow-providers-snowflake

