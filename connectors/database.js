// connectors/database.js

const { Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  password: "Omar2001",
  host: "localhost",
  port: 5432,
  database: "perntodo"
});

module.exports = pool;
