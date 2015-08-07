import React, { Component } from 'react';

import injectTapEventPlugin from 'react-tap-event-plugin';

//Needed for onTouchTap
//Can go away when react 1.0 release
//Check this repo:
//https://github.com/zilverline/react-tap-event-plugin
injectTapEventPlugin();

import AwesomeCard from './AwesomeCard.jsx';

export default class App extends Component {
  render() {
    return (
      <div className="content">
        <h1>Webpack, React & Dragula</h1>
        <AwesomeCard
          title="title"
          subtitle="subtitle"
          text="text"
          />
      </div>
    );
  }
}
