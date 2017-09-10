const express = require('express');
const chalk = require('chalk');

const app = express();

app.use(express.static('public'));

/**
* Start server
*/
app.listen(3000, () => {
  console.log('%s Node server‘s running on port %s', chalk.green('✓'), 3000);
});

module.exports = app;
