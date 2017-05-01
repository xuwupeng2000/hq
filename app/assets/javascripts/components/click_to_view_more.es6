var ClickToViewMore = React.createClass({
  getInitialState: function() {
    return { hidden: true };
  },

  toggleContent: function () {
    let changeTo = !this.state.hidden;
    this.setState({ hidden: changeTo});
  },

  render: function() {
    let content = (
      <p className="column is-offset-2">{ _.isEmpty(this.props.content) ? "Sorry there is no destination yet" : this.props.content }</p>
    );

    return (
      <div>
        <div className="columns"> 
          { this.state.hidden ? null : content }
        </div>
        <a onClick={this.toggleContent}> {this.state.hidden ? 'View details' : 'Close'} </a>
      </div>
    );
  }

});
