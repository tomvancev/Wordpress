var gulp = require('gulp'),
browserSync = require('browser-sync').create(),
watch = require('gulp-watch'),
webpack = require('webpack');

var rootUrl = "./wp-content/plugins/tivius-webcalculator/";


gulp.task('watch', function(callback){

	// watch(rootUrl + 'tivius-webcalculator.php',()=>{
	// 	browserSync.reload();
	// });

	// watch(rootUrl + 'assets/styles/**/*.css',()=>{
	// 	gulp.start('cssInject');
	// });

	watch(rootUrl + 'assets/scripts/**/*.js',()=>{
		webpack(require('../../webpack.config.js'), function(err,stats){
		if(err){
			console.log(err.toString());
		}

		console.log(stats.toString());
		callback();
		});
	});


});

// gulp.task('cssInject',['styles'], ()=>{
// 	return gulp.src(rootUrl + '/styles.css')
// 	.pipe(browserSync.stream());
// })

// gulp.task('scriptsRefresh',['scripts'],function(){
// 	// browserSync.reload();
// })