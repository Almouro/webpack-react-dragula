import React from 'react';
import mui, {Avatar, Card, CardHeader, CardText} from 'material-ui';

let ThemeManager = new mui.Styles.ThemeManager();
let AwesomeCard = React.createClass({

  childContextTypes: {
    muiTheme: React.PropTypes.object
  },

  getChildContext: function() {
    return {
      muiTheme: ThemeManager.getCurrentTheme()
    };
  },

  render: function() {
    return (
          <Card>
            <CardHeader
              title={this.props.title}
              avatar={<Avatar>A</Avatar>}
              subtitle={this.props.subtitle}
              />
            <CardText>
              {this.props.text}
            </CardText>
          </Card>
    );
  }

});

module.exports = AwesomeCard;
