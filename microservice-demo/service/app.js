const express = require("express");
const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
  res.send("Microservice is running successfully!");
});

app.get("/api/hello", (req, res) => {
  res.json({
    message: "Hello from VM-1 Microservice",
    status: "OK"
  });
});

app.listen(PORT, () => {
  console.log(`Microservice running on port ${PORT}`);
});