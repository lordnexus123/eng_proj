const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  console.log('Request for home recieved');
  res.render('drc');
});

router.get('/currL', (req, res) => {
  console.log('Request for contact page recieved');
  res.render('currL');
});

router.get('/histL', (req, res) => {
  console.log('Request for contact page recieved');
  res.render('histL');
});

module.exports = router;