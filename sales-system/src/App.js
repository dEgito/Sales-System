import React from "react";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import Home from "./home";
import Register from "./register";
import Login from "./login";
import SalesSystem from "./system";

function App() {
  return (
    <Login />
    // <Router>
    //   <Switch>
    //     <Route exact path="/" component={Home} />
    //     <Route path="/register" component={Register} />
    //     <Route path="/login" component={Login} />
    //     <Route path="/system" component={SalesSystem} />
    //   </Switch>
    // </Router>
  );
}

export default App;
