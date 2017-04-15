var WhoGoToThisDestination = React.createClass({
  getInitialState: function() {
    return {fetching: false, tableHidden: true, users: []};
  },

  fetchUsers: function () {
    this.setState({fetching: true});

    $.ajax({
      url: this.props.url,
      data: {destination_id: this.props.destination_id}
    })
    .done((data) => {
      this.setState({tableHidden: false, users: data.users});
    })
    .fail((err) => {
      alert(err.statusText);
    })
    .complete(() => {
      this.setState({fetching: false});
    });
  },

  hideTable: function () {
    this.setState({tableHidden: true});
  },

  render: function() {
    let list = this.state.users.map((u) => {
      return (
        <tr key={u.id}>
          <td>{u.first_name} {u.last_name}, {u.email}</td>
        </tr>
      );
    });

    let closeBtn = (<div className=""> <button className="button small" onClick={this.hideTable}> Close </button> </div>);

    let table = (
      <div className="modal">
        <div className="modal-content">
          <h3>User list</h3>
          {closeBtn}
          <table className="des-user-table">
            <tbody>
              {list}
            </tbody>
          </table>
        </div>
      </div>
    );

    let showBtn = (<div className=""> <button className="button small" onClick={this.fetchUsers}> View who go to this destination </button> </div>);

    let plzWaitMsg = (
      <div className=""> We are loading data from server please wait ...</div>
    );

    return (
      <div> 
        <div className=""> {this.state.fetching ? plzWaitMsg : showBtn} </div>
        {this.state.tableHidden ? null : table}
      </div>
    );
  }

});
