var WhoGoToThisDestination = React.createClass({
  getInitialState: function() {
    return {};
  },

  fetchUsers: function () {
    $.ajax({
      url: this.props.url,
      data: {destination_id: this.props.destination_id}
    })
    .done((data) => {
      console.log(data);
    })
    .fail((err) => {
      console.log(err);
    });

  },

  render: function() {
    return (
      <div className="pull-right">
        <a onClick={this.fetchUsers}> View who is go to this destination </a>
      </div>
    );
  }

});
