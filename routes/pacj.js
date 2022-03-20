const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  console.log('Request for home recieved');
  res.render('pacj');
});

router.get('/account', (req, res) => {
  console.log('Request for about page recieved');
  res.render('account');
});

router.get('/termP', (req, res) => {
  console.log('Request for contact page recieved');
  res.render('termP');
});

router.get('/currP', (req, res) => {
  console.log('Request for contact page recieved');
  res.render('currP');
});

router.get('/histP', (req, res) => {
  console.log('Request for contact page recieved');
  res.render('histP');
});

module.exports = router;