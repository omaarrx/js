const Pool = require("pg").Pool

const Pool = new Pool(
{
    user:"postgres",
    password:"Omar2001",
    host:"localhost",
    port: 5432,
    database:"perntodo"

}
);

module.exports = Pool;