#! /bin/bash

echo "*** Running the Snowflake job ***" 
echo "RootFolder|$ROOT_FOLDER|ACCOUNT|$SNOWFLAKE_ACCOUNT|User|$SNOWFLAKE_USER|ROLE|$SNOWFLAKE_ROLE|DB|$SNOWFLAKE_DATABASE|WAREHOUSE|$SNOWFLAKE_WAREHOUSE"
python schemachange/cli.py -f $ROOT_FOLDER -a $SNOWFLAKE_ACCOUNT -u $SNOWFLAKE_USER -r $SNOWFLAKE_ROLE -d $SNOWFLAKE_DATABASE -w $SNOWFLAKE_WAREHOUSE --create-change-history-table
echo "*** Snowflake job completed ***"



