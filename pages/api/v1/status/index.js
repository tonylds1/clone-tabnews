import database from "infra/database.js";

async function status(req, res) {
  const result = await database.query("SELECT 1+1");
  console.log(result.rows);
  res.status(200).json({ message: "Olha ai amigão!!! Tou ok!" });
}

export default status;
