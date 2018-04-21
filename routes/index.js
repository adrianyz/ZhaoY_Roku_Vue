var express = require('express');
var videoController = require('../controllers/videoAppController');
var SocialSharing = require('vue-social-sharing');
var Vue = require('vue');
var router = express.Router();


Vue.use(SocialSharing);

/* GET home page. */
router.get('/', videoController.get_all_movies);

router.get('/movies/:id/:movie', videoController.get_one_movie );

router.post('/api', videoController.post_new_review);

module.exports = router;
