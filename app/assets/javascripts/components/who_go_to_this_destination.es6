var WhoGoToThisDestination = React.createClass({
  getInitialState: function() {
    return {fetching: false, tableHidden: true, users: []};
  },

  fetchUsers: function () {
    this.setState({fetching: true});

    let promise = $.ajax({
      url: this.props.url,
      data: {destination_id: this.props.destination_id}
    }).promise();

    const usersSource$ = Rx.Observable.fromPromise(promise);
    usersSource$.subscribe(
      (data) => {
        this.setState({tableHidden: false, users: data.users});
      }, 
      (err) => {
        alert(err.statusText);
      },
      () => {
        this.setState({fetching: false});
      }
    );
  },

  hideTable: function () {
    this.setState({tableHidden: true});
  },

  render: function() {
    let list = this.state.users.map((u) => {
      return (
        <div className="columns" key={u.id}>
          <div className="column">{u.first_name} {u.last_name}, {u.email}</div>
        </div>
      );
    });

    let closeBtn = (<div className="pull-right"> <button className="button delete" onClick={this.hideTable}> </button> </div>);

    let table = (
      <div className="modal is-active">
        <div className="modal-background"> 
        </div>
        <div className="modal-content">
          <div className="columns">
            <div className="column">
              {closeBtn} 
            </div>
          </div>

          {list}

        </div>
      </div>
    );

    let showBtnId = 'users-to-des-button-' + this.props.destination_id; 
    let showBtn = (
      <a className="button is-info is-outlined" id={showBtnId} onClick={this.fetchUsers}> View who go to this destination </a>
    );

    let plzWaitMsg = (
      <a className="button is-loading">Loading</a>
    );

    return (
      <div> 
        <div className=""> {this.state.fetching ? plzWaitMsg : showBtn} </div>
        {this.state.tableHidden ? null : table}
      </div>
    );
  }

});
