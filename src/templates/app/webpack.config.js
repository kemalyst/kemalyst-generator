const webpack = require('webpack')
const { basename, dirname, join, relative, resolve } = require('path')
const { sync } = require('glob')
const ExtractTextPlugin = require('extract-text-webpack-plugin')
const ManifestPlugin = require('webpack-manifest-plugin')
const extname = require('path-complete-extname')

module.exports = {
  entry: "./src/assets/index.js",

  output: {
    filename: "./public/bundle.js"
  },

  module: {
    rules: [
      {
        test: /\.js(x)?$/,
        exclude: /node_modules/,
        loader: require.resolve('babel-loader')
      },
      {
        test: /\.coffee$/,
        exclude: /node_modules/,
        loader: require.resolve('coffee-loader')
      },
      {
        test: /\.(scss|sass|css)$/i,
        use: ExtractTextPlugin.extract({
          use: [
            { loader: require.resolve('css-loader'), options: { minimize: false } },
            'resolve-url-loader',
            { loader: require.resolve('sass-loader'), options: { sourceMap: true } }
          ]
        })
      },
      {
        test: /\.(jpg|jpeg|png|gif|svg|eot|ttf|woff|woff2)$/i,
        exclude: /node_modules/,
        use: [{
          loader: require.resolve('file-loader'),
          options: {
            publicPath: "public",
            name: '[name].[ext]'
          }
        }]
      }
    ]
  },

  plugins: [
    new ExtractTextPlugin('./public/bundle.css'),
    new ManifestPlugin({
      publicPath: "public",
      writeToFileEmit: true
    })
  ],

  resolve: {
    extensions: ["*.js"],
    modules: [
      resolve("./src/assets/**"),
      'node_modules'
    ]
  },

  resolveLoader: {
    modules: ['node_modules']
  },

  devtool: 'cheap-eval-source-map',

  stats: {
    errorDetails: true
  }
}
