var gulp = require('gulp'),
browserSync = require('browser-sync').create(),
watch = require('gulp-watch'),
webpack = require('webpack');

var postcss = require('gulp-postcss'),
autoprefixer = require('autoprefixer'),
cssvars = require('postcss-simple-vars'),
cssImport = require('postcss-import'),
mixins = require('postcss-mixins'),
nested = require('postcss-nested'),
hexrgba = require('postcss-hexrgba');


var pathDestStyles = "./wp-content/plugins/tivius-webcalculator";
var pathSrcStyles = "./wp-content/plugins/tivius-webcalculator/assets/styles/styles.css";

gulpStyles = ()=>{
	return gulp.src(pathSrcStyles)
	.pipe(postcss([cssImport, mixins, cssvars, nested, hexrgba, autoprefixer]))
	.on('error',function(errorInfo){
		console.log(errorInfo.toString());
		this.emit('end');
	})
	.pipe(gulp.dest(pathDestStyles));
};

var rootUrl = "./wp-content/plugins/tivius-webcalculator/";


gulp.task('watch', function(callback){

	// watch(rootUrl + 'tivius-webcalculator.php',()=>{
	// 	browserSync.reload();
	// });

	watch(rootUrl + 'assets/styles/**/*.css',()=>{
		return gulpStyles(); 
	});

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