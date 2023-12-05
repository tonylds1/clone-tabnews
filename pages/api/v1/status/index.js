import database from "infra/database.js";

async function status(req, res) {
  const updateAt = new Date().toISOString();

  res.status(200).json({
    updated_at: updateAt,
    database: {
      version: 11.19,
      max_connections: 500,
      count_connections: 59,
    },
  });
}

export default status;
