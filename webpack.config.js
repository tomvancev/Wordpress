var path = require('path');
module.exports = {

  entry: './wp-content/plugins/tivius-webcalculator/assets/scripts/index.js',
  output: {
   	path: path.resolve(__dirname, "./wp-content/plugins/tivius-webcalculator/assets"),
    publicPath: '/',
    filename: 'bundle.js'
  },module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: ['babel-loader']
      }
    ]
  },
  resolve: {
    extensions: ['*', '.js', '.jsx']
  }

};