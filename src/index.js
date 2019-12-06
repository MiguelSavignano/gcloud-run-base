const express = require("express");
const { ApiService } = require("./service");
const { prettyPrint } = require("./utils");

const app = express();

const run = async (req, res) => {
  let message = req.query && req.query.message;

  const service = new ApiService();
  const response = await service.getTodos();

  res.status(200).json({ message: "Hola" });
};

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Example app listening on port ${PORT}!`);
});

app.get("/", run);
