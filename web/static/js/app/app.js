import "phoenix_html"
import React from "react";
import ReactDOM from "react-dom";
import Step1 from "./wizard/step1"
import Step2 from "./wizard/step2"
import store from "./wizard/store"


ReactDOM.render(
  <Step2 store={store} />,
  document.getElementById("react-container")
);
