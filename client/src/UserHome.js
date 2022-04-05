import React from "react";

function UserHome({ user }) {
  console.log(user.username);

  return (
    <div>
      <h1>
        Hello {user.username.charAt(0).toUpperCase() + user.username.slice(1)}
      </h1>
    </div>
  );
}
export default UserHome;
