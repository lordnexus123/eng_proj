const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  console.log('Request for home recieved');
  res.render('plac');
});

router.get('/accountpl', (req, res) => {
  console.log('Request for about page recieved');
  res.render('accountpl');
});

router.get('/drpl', (req, res) => {
  console.log('Request for contact page recieved');
  res.render('drpl');
});

router.get('/currpl', (req, res) => {
  console.log('Request for contact page recieved');
  res.render('currpl');
});

router.get('/histpl', (req, res) => {
  console.log('Request for contact page recieved');
  res.render('histpl');
});

module.exports = router;