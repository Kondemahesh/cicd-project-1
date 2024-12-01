const express = require('express');
const app = express();
const port = process.env.PORT || 80;

app.get('/hello', (req, res) => {
  res.send('Hello, World! Welcome to Konde Harshith & Manaswi you tube Channel.\n');
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
