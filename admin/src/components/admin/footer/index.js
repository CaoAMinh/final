import React, { Component } from "react";
import { Link } from "react-router-dom";

export default class Footer extends Component {
  render() {
    return (
      <footer className="py-4 bg-footer mt-auto">
        <div className="container-fluid">
          <div className="d-flex align-items-center justify-content-between small">
            <div className="text-muted-1">
              © {new Date().getFullYear()} <b>Shop boutique</b>. by{" "}
              <Link to="#"> team</Link>
            </div>
            <div className="footer-links">
              <Link to="#">Privacy Policy</Link>
              <Link to="#">Terms &amp; Conditions</Link>
            </div>
          </div>
        </div>
      </footer>
    );
  }
}
