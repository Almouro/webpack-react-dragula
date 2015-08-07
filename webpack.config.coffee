webpack = require('webpack')
path = require('path')
HtmlWebpackPlugin = require('html-webpack-plugin')

paths =
  src: path.join __dirname, '/src'
  output: path.join __dirname, '/www'

module.exports =
  context: paths.src
  entry:
    app: ['./entry.js', 'webpack/hot/dev-server']
  output:
    path: paths.output
    filename: 'bundle.js'
  module:
    loaders: [
      { test: /\.scss$/, loader: 'style!css!sass' }
      { test: /\.css$/,  loader: 'style!css' }
      { test: /\.jsx$/,  loader: 'react-hot!babel' }
      { test: /\.js$/,   loader: 'babel' }
    ]
  plugins: [
    new HtmlWebpackPlugin(title: 'Webpack, React & Dragula')
  ]
  resolve: extensions: [
    ''
    '.scss'
    '.js'
    '.jsx'
  ]
