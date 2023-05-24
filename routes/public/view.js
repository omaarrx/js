const db = require('../../connectors/db');

module.exports = function(app) {
  // Register HTTP endpoint to render /index page
  app.get('/', function(req, res) {
    return res.render('index');
  });

  // Example of passing variables with a page
  app.get('/register', async function(req, res) {
    const stations = await db.select('*').from('se_project.stations');
    return res.render('register', { stations });
  });

  // User view endpoints
  app.get('/login', function(req, res) {
    res.render('login');
  });

  app.get('/dashboard', function(req, res) {
    res.render('dashboard');
  });

  app.get('/resetPassword', function(req, res) {
    res.render('resetPassword');
  });
};
