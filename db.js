const { Pool } = require('pg');

const db = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'sahovski_klubovi_db',
    password: process.env.DB_PASSWORD,
    port: 5432
});

module.exports = db;