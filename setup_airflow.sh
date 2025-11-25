#!/bin/bash
AIRFLOW_VERSION=3.1.3

# Determine the current Python version (major.minor)
# Make sure to switch to the current python environment (e.g. conda, venv, etc.)
PYTHON_VERSIONS=$(python --version | awk '{print $2}' | cut -d. -f1,2)

CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSIONS}.txt"

pip install apache-airflow==${AIRFLOW_VERSION} --constraint ${CONSTRAINTS_URL}