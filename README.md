# Webpack, React & Dragula

This is an app intended as introduction to making use of **the awesomeness of [Webpack](http://webpack.github.io/)**.  
The goal is to build a Drag & Drop app, powered by the well-known [React](http://facebook.github.io/react/) and also [Dragula](http://bevacqua.github.io/dragula/), a very light library which you can't help but love.

**[Here is the result](http://almouro.github.io/webpack-react-dragula/www/)**, as of now.

Commit by commit, step by step, this repository shows you how to:
* [Do a Hello World with Webpack](https://github.com/Almouro/webpack-react-dragula/commit/bc8ac795dbb00a640a9c7d5713af5560691258c8)
* [Use the CommonJS syntax to require another file in the browser](https://github.com/Almouro/webpack-react-dragula/commit/c9fea75204cef700e781391ae16cd29f6b9f7417)
* [Get started with a simple Webpack config](https://github.com/Almouro/webpack-react-dragula/commit/519ffaead26272010f75b3e435660965f4064142)
* [Use your first loader to handle stylesheets](https://github.com/Almouro/webpack-react-dragula/commit/57b4a89e8b0a07a5116ba10dd29649ec091c6aaa)
* [Use new loaders and easily import a library](https://github.com/Almouro/webpack-react-dragula/commit/06bf47d51f94f23bde4a0b92e0244114d43890d5)
* [Use your first plugin](https://github.com/Almouro/webpack-react-dragula/commit/11d60793be21ab4daf38d67e94896cb1fbc4d07a)
* [Handle Bower with Webpack](https://github.com/Almouro/webpack-react-dragula/commit/6747de2c42a28da23dc9adf48761f50ca576ff77)

## Installing

Run ```npm install``` and then ```npm run build```.  
The application will be built in the ***www*** folder.

## Hot Dev Server
Run ```npm start``` and enjoy the magic of [Hot Module Replacement](http://webpack.github.io/docs/hot-module-replacement.html) by visiting [your Webpack Dev Server](http://localhost:8080/webpack-dev-server/).

Yes, if you update a CSS file or a React component, only the corresponding Webpack module
will be reloaded, and not the entire app!

***Pretty cool, huh?***

## Next steps
- [ ] Make a production ready Webpack config (NB: The app is laggy on firefox because the react hot loader is used)
- [ ] Add more style and make the app nicer
- [ ] Optimize webpack build
