FROM apache/superset:548d543

# Install necessary dependencies
USER root
RUN pip install sqlalchemy-trino psycopg2-binary flask_cors pyhive thrift thrift_sasl trino

# Copy the entrypoint script and set permissions
COPY entrypoint.sh /app/

RUN chmod +x /app/entrypoint.sh 

# Set the working directory
WORKDIR /app

# Switch back to the superset user
USER superset

# Set the entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]