set -a
. ./config_file.env 
set +a

PGPASSWORD=$pwd psql -h $etl_server -p $port -d $etl_dbname -U $user \
-f geojson/ccaa_geojson.sql
PGPASSWORD=$pwd psql -h $etl_server -p $port -d $etl_dbname -U $user \
-f geojson/municipios_geojson.sql
PGPASSWORD=$pwd psql -h $etl_server -p $port -d $etl_dbname -U $user \
-f geojson/provincias_geojson.sql
