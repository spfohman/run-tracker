// import logo from "./logo.svg";
import "./App.css";
import React, { useState, useEffect } from "react";
import Login from "./Login";
import Signup from "./Signup";
import UserHome from "./UserHome";

function App() {
  const [user, setUser] = useState(null);
  const [loggedIn, setLoggedIn] = useState(false);

  useEffect(() => {
    fetch("/me").then((response) => {
      if (response.ok) {
        response.json().then((data) => setUser(data));
        setLoggedIn(true);
      }
    });
  }, []);

  console.log(user);
  console.log(loggedIn);
  if (!loggedIn) {
    return <div></div>;
  } else {
    return (
      <div>
        {user ? (
          <UserHome user={user} />
        ) : (
          <div>
            <Login setUser={setUser} />
            <Signup useUser={setUser} />)
          </div>
        )}
      </div>
    );
  }
  // return (
  //   <div className="App">
  //     <header className="App-header">
  //       <img src={logo} className="App-logo" alt="logo" />
  //       <p>
  //         Edit <code>src/App.js</code> and save to reload.
  //       </p>
  //       <a
  //         className="App-link"
  //         href="https://reactjs.org"
  //         target="_blank"
  //         rel="noopener noreferrer"
  //       >
  //         Learn React
  //       </a>
  //     </header>
  //   </div>
  // );
}

export default App;
