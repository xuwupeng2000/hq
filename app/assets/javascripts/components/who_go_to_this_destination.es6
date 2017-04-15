var WhoGoToThisDestination = React.createClass({
  getInitialState: function() {
    return {};
  },

  fetchUsers: function () {

  },

  render: function() {
    return (
      <div className="pull-right">
        <a onClick={this.fetchUsers}> View who is go to this destination </a>
      </div>
    );
  }

});
