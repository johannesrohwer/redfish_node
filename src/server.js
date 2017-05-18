/**
 * Created by Johannes on 12.05.17.
 */

import express from 'express'
import fs from 'fs'

// Constants
const app = express()
const config = {};
config.port = 5000;

// API Routes
app.get('/', (req, res) => {
  let demoJsonString = fs.readFileSync('demo.json', 'utf8');
  let demoJson = JSON.parse(demoJsonString);
  demoJson.timeStamp = Date.now();
  demoJson.port = config.port;
  res.json(demoJson);
});

// Start server
app.listen(config.port, () => {
  console.log(`service running on port ${config.port}`);
});
