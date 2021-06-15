resource "snowflake_warehouse" "warehouse" {
  name           = var.snowflake_db_name
  warehouse_size = var.warehouse_size

  auto_suspend = 60
}

resource "snowflake_database" "db" {
  name = var.snowflake_db_name
}

#creates a snowflake table. Notice the data type of column is a variant type which allows us to store json like data
resource "snowflake_table" "table" {
  database = snowflake_database.db.name
  schema   = "PUBLIC"
  name     = "var.snowdb_tableName"
  comment  = "Twitter streams data table."
  column {
    name = "var.snowdb_colName"
    type = "VARIANT"
  }
}

