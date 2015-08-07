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
    new HtmlWebpackPlugin(title: 'Webpack, React & Dragula'),
    new webpack.ResolverPlugin([
        new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin(
          "package.json", ["main"]
        ),
        new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin(
          "bower.json", ["main"]
        )
    ])
  ]
  resolve:
    root: [ path.join(__dirname, 'bower_components') ]
    extensions: [
      ''
      '.scss'
      '.js'
      '.jsx'
    ]
