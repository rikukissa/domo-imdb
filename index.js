require('coffee-script/register');

delete require.cache[require.resolve('./module')];

module.exports = require('./module');
