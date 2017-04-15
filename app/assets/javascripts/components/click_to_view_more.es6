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
      <p className="font-smaller">{this.props.content}</p>
    );

    return (
      <div>
        <div className="large-12 large-offset-1 columns"> 
          { this.state.hidden ? null : content }
        </div>
        <a onClick={this.toggleContent}> {this.state.hidden ? 'View details' : 'Close'} </a>
      </div>
    );
  }

});
