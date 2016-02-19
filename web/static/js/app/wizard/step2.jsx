import React from "react";
import {observer} from "mobservable-react"

let Step2 = observer(React.createClass({
  render: function() {
    return (
      <div>
        <h1>Counter</h1>
        <div onClick={this.onClick}> INC(+) - click me! </div>
        <div>
          {this.props.store.boxes.length}
        </div>
      </div>
    );
  },

  onClick: function(){
    console.log("clicked")
    console.log(this.props.store)
    this.props.store.addBox(1);
  }
}))

export default Step2;
