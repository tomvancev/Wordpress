var gulp = require('gulp'),
postcss = require('gulp-postcss'),
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
gulp.task('styles', gulpStyles );