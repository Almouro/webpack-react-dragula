webpack = require('webpack')
path = require('path')

paths =
  src: path.join __dirname, '/src'
  output: path.join __dirname, '/www'

module.exports =
  context: paths.src
  entry:
    app: ['./entry.js']
  output:
    path: paths.output
    filename: 'bundle.js'
  module:
    loaders: [
      { test: /\.scss$/, loader: 'style!css!sass' }
      { test: /\.css$/,  loader: 'style!css' }
    ]
