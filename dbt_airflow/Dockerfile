# Use the base image from Astronomer
FROM quay.io/astronomer/astro-runtime:9.1.0-python-3.9-base

# Create a virtual environment for dbt
RUN python -m venv dbt_venv

# Activate the virtual environment and install dbt-snowflake
RUN /bin/bash -c "source dbt_venv/bin/activate && \
    pip install --no-cache-dir dbt-snowflake && \
    deactivate"

# Copy the requirements.txt file to the container
COPY requirements.txt /requirements.txt

# Install the requirements from the requirements.txt file
RUN pip install --no-cache-dir -r /requirements.txt
