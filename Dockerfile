FROM python:3.9
RUN echo " Pulling Python Image "
RUN mkdir -p /snowflakecicd
RUN echo " Creating a Directory and Migrating code Repository "
WORKDIR /snowflakecicd
RUN echo " Setting up the working Directory "
COPY ./  /snowflakecicd
RUN echo " Copying files "
RUN pip install schemachange
RUN echo "Installing Libraries"
RUN chmod 755 /snowflakecicd/*
ENTRYPOINT /snowflakecicd/entrypoint.sh
RUN echo "Executing entrypoint"
