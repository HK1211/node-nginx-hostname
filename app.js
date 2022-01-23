const express = require("express");

const app = express();

const port = process.env.NODE_ENV || 8080;

const os = require("os");

app.get("/", (req, res) => {
  res.send(`<h2>Hi There성공</h2><p>${os.hostname()}</p>`);
});

app.listen(port, () => {
  console.log(`서버 시작${port}`);
});
