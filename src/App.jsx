import React, { Component } from 'react';

import injectTapEventPlugin from 'react-tap-event-plugin';

//Needed for onTouchTap
//Can go away when react 1.0 release
//Check this repo:
//https://github.com/zilverline/react-tap-event-plugin
injectTapEventPlugin();

import AwesomeCard from './AwesomeCard';
import data from './data';

export default class App extends Component {
  render() {
    var cards = data.map(function(cardData, i){
        return <AwesomeCard
          key={i}
          title={cardData.title}
          subtitle={cardData.subtitle}
          text={cardData.text}
          />;
      });

    return (
      <div className="container">
        <h1>Webpack, React & Dragula</h1>
        <div id="first-col">
          {cards}
        </div>
      </div>
    );
  }
}
