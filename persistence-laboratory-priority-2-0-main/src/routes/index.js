const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.render('home', { title: 'Home' });
});

router.get('/add-patient', (req, res) => {
  res.render('add-patient', { title: 'Add Patient' });
});

router.get('/add-physician', (req, res) => {
  res.render('add-physician', { title: 'Add Physician' });
});

router.get('/admin-home', (req, res) => {
  res.render('admin-home', { title: 'Admin Home' });
});

router.get('/physician-home', (req, res) => {
  res.render('physician-home', { title: 'Physician Home' });
});

router.get('/table', (req, res) => {
  res.render('table', { title: 'Table' });
});

router.get('/list', (req, res) => {
  res.render('list', { title: 'List' });
});



module.exports = router;
