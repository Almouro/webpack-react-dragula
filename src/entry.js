import './styles/app';
import 'dragula/dist/dragula.min.css';

import React from 'react';
import App from './App';
import dragula from 'dragula';

React.render(<App />, document.getElementsByTagName('body')[0]);
dragula([document.querySelector('#first-col')]);
