import React from 'react'

let loginPath = "/users/auth/google_oauth2/"

export default class Login extends React.Component {
  render() {
    return (
      <div>
        <a href={ loginPath } className="login">
          Login
        </a>
        <div className="login_message">
          Log in will redirect to your Google sign in. Please sign in only with your GMG email address.<br />
          If you get "redirect_uri_mismatch" error from Google, 
          make sure you loaded this page at <a href="http://tools.kinja-labs.com">http://tools.kinja-labs.com</a> instead of http://tools.gawker-labs.com.
        </div>
      </div>
    )
  }
}
