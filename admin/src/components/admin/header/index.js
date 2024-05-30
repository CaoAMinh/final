import React, { Component } from "react";
// import { Link } from 'react-router-dom';
import { GetUserLogin } from "../../services";
import { Link } from "react-router-dom";

export default class Header extends Component {
  render() {
    return (
      <div>
        <nav className="sb-topnav navbar navbar-expand navbar-light bg-clr">
          <Link className="navbar-brand logo-brand" to="/">
            MHSTORE SERVICE
          </Link>
          {/* <button className="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" ><i className="fas fa-bars" /></button> */}
          <Link to="/" className="frnt-link">
            <i className="fas fa-external-link-alt" />
            Home
          </Link>
          <ul className="navbar-nav ml-auto mr-md-0">
            <li className="nav-item dropdown">
              <p
                className="nav-link dropdown-toggle "
                style={{ cursor: "pointer" }}
                id="userDropdown"
                role="button"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                <i className="fas fa-user fa-fw" />
              </p>
              <div
                className="dropdown-menu dropdown-menu-right"
                aria-labelledby="userDropdown"
              >
                <span
                  className="dropdown-item admin-dropdown-item"
                  onClick={() => GetUserLogin.logout()}
                >
                  Logout
                </span>
              </div>
            </li>
          </ul>
        </nav>
      </div>
    );
  }
}
