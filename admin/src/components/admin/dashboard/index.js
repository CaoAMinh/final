import React, { useState, useEffect } from "react";
import { GetOrderDetails, GetDashboardDetails } from "../../services";
import Moment from "react-moment";
import Loader from "../../loader";
import ReactPaginate from "react-paginate";
import { Link } from "react-router-dom";
import swal from "sweetalert";
import numberWithCommas from "../../../util/number_thousand_separator";

import "react-datepicker/dist/react-datepicker.css";
import "./Home.css";

const Home = () => {
  const [getList, setGetList] = useState([]);
  const [isloaded, setIsLoaded] = useState(false);

  const [statusList, setStatusList] = useState([]);
  const [offset, setOffset] = useState(0);
  const perPage = 10;

  const [currentPage, setCurrentPage] = useState(0);
  const [pageCount, setPageCount] = useState(0);

  const handlePageClick = (e) => {
    const selectedPage = e.selected;
    const newOffset = selectedPage * perPage;

    setCurrentPage(selectedPage);
    setOffset(newOffset);
  };

  const getOrderList = async () => {
    setIsLoaded(true);
    const list = await GetOrderDetails.getAllOrderList({ page: currentPage });
    if (list) {
      const tdata = list.order;
      const slice = tdata.slice(offset, offset + perPage);
      setPageCount(Math.ceil(tdata.length / perPage));

      setGetList(slice);

      setIsLoaded(false);
    } else {
      setIsLoaded(true);
    }
  };

  const getStatusList = async () => {
    setIsLoaded(true);
    const list = await GetDashboardDetails.getAllStatusOrder();
    if (list) {
      setStatusList([...list.data, { status: "cancel", total: 0 }]);
      setIsLoaded(false);
    } else {
      setIsLoaded(true);
    }
  };

  const handleChangeStatus = async (status) => {
    setIsLoaded(true);
    const list = await GetDashboardDetails.getOrderByStatus(status);
    if (list) {
      setGetList(list.order);
      setIsLoaded(false);
    }
  };

  useEffect(() => {
    getOrderList();
    getStatusList();
  }, [currentPage]);

  console.log(getList);
  return (
    <div id="layoutSidenav_content">
      <main>
        <div className="container-fluid">
          {isloaded ? <Loader /> : ""}
          <h2 className="mt-30 page-title">Dashboard</h2>
          <ol className="breadcrumb mb-30">
            <li className="breadcrumb-item active">Dashboard</li>
          </ol>

          <div className="row">
            <div className="col-xl-3 col-md-6">
              <div
                className="dashboard-report-card info"
                onClick={() => {
                  handleChangeStatus("processing");
                }}
              >
                <div className="card-content">
                  <span className="card-title">Order Process</span>
                  {statusList
                    ? statusList.map((row, index) => (
                        <span
                          className="card-count"
                          key={index}
                          style={
                            row.status === "processing"
                              ? { display: "block" }
                              : { display: "none" }
                          }
                        >
                          {row.total}
                        </span>
                      ))
                    : ""}
                </div>
                <div className="card-media">
                  <i className="fas fa-sync-alt rpt_icon" />
                </div>
              </div>
            </div>
            <div className="col-xl-3 col-md-6">
              <div
                className="dashboard-report-card purple"
                onClick={() => {
                  handleChangeStatus("shipping");
                }}
              >
                <div className="card-content">
                  <span className="card-title">Order Shipping</span>
                  {statusList
                    ? statusList.map((row, index) => (
                        <span
                          className="card-count"
                          key={index}
                          style={
                            row.status === "shipping"
                              ? { display: "block" }
                              : { display: "none" }
                          }
                        >
                          {row.total}
                        </span>
                      ))
                    : 0}
                </div>
                <div className="card-media">
                  <i className="fab fa-rev" />
                </div>
              </div>
            </div>
            <div className="col-xl-3 col-md-6">
              <div
                className="dashboard-report-card success"
                onClick={() => {
                  handleChangeStatus("delieverd");
                }}
              >
                <div className="card-content">
                  <span className="card-title">Order Delivered 0</span>
                  {statusList
                    ? statusList.map((row, index) => (
                        <span
                          className="card-count"
                          key={index}
                          style={
                            row.status === "delieverd"
                              ? { display: "block" }
                              : { display: "none" }
                          }
                        >
                          {row.total}
                        </span>
                      ))
                    : ""}
                </div>
                <div className="card-media">
                  <i className="fas fa-money-bill rpt_icon" />
                </div>
              </div>
            </div>
            <div className="col-xl-3 col-md-6">
              <div
                className="dashboard-report-card red"
                onClick={() => {
                  handleChangeStatus("cancel");
                }}
              >
                <div className="card-content">
                  <span className="card-title">Order Cancel</span>
                  {statusList
                    ? statusList.map((row, index) => (
                        <span
                          className="card-count"
                          key={index}
                          style={
                            row.status === "cancel"
                              ? { display: "block" }
                              : { display: "none" }
                          }
                        >
                          {row.total}
                        </span>
                      ))
                    : ""}
                </div>
                <div className="card-media">
                  <i className="far fa-times-circle" />
                </div>
              </div>
            </div>
            <div className="col-xl-12 col-md-12">
              <div className="card card-static-2 mb-30">
                <div className="card-title-2">
                  <h4>Recent Orders</h4>
                </div>
                <div className="card-body-table">
                  <div className="table-responsive">
                    <table className="table ucp-table table-hover">
                      <thead>
                        <tr>
                          <th style={{ width: 50 }}>ID</th>
                          <th style={{ width: 130 }}>Order ID</th>
                          <th style={{ width: 130 }}>Payment Method</th>
                          <th style={{ width: 200 }}>Order Date</th>
                          <th style={{ width: 200 }}>Delivery Date</th>
                          <th style={{ width: 130 }}>Status</th>
                          <th style={{ width: 130 }}>Total</th>
                          <th style={{ width: 100 }}>Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        {getList === "undefined" ? (
                          <p>Loading</p>
                        ) : (
                          getList.map((row, index) => (
                            <tr key={index}>
                              <td>{row.id}</td>
                              <td>{row.number}</td>
                              <td>{row.paymentmethod} </td>
                              <td>
                                <span className="delivery-time">
                                  <Moment format="MMMM Do YYYY">
                                    {row.createdAt}
                                  </Moment>
                                </span>
                                <span className="delivery-time">
                                  <Moment format=" h:mm:ss a">
                                    {row.createdAt}
                                  </Moment>
                                </span>
                              </td>
                              <td>
                                {row.deliverydate ? (
                                  <span className="delivery-time">
                                    <Moment format="MMMM Do YYYY">
                                      {row.deliverydate}
                                    </Moment>
                                  </span>
                                ) : (
                                  ""
                                )}
                              </td>
                              <td>
                                {row.status === "processing" ? (
                                  <span className="badge-item badge-primary">
                                    {row.status}
                                  </span>
                                ) : row.status === "shipping" ? (
                                  <span className="badge-item badge-info">
                                    {row.status}
                                  </span>
                                ) : row.status === "delieverd" ? (
                                  <span className="badge-item badge-success">
                                    {row.status}
                                  </span>
                                ) : (
                                  <span
                                    onClick={() => {
                                      swal("Lý do huỷ", row.reason);
                                    }}
                                    className="badge-item badge-danger"
                                    style={{ cursor: "pointer" }}
                                  >
                                    {row.status}
                                  </span>
                                )}
                              </td>
                              <td>VND{numberWithCommas(row.grandtotal)}</td>
                              <td className="action-btns">
                                <Link
                                  className="views-btn"
                                  to={{
                                    pathname: `/admin/order/view/${row.id}`,
                                    state: row,
                                  }}
                                >
                                  <i className="fas fa-eye" />
                                </Link>
                                <Link
                                  className="edit-btn"
                                  to={{
                                    pathname: `/admin/order/edit/${row.id}`,
                                    state: { row },
                                  }}
                                >
                                  <i className="fas fa-edit" />
                                </Link>
                              </td>
                            </tr>
                          ))
                        )}
                      </tbody>
                    </table>
                  </div>
                  <ReactPaginate
                    previousLabel={"prev"}
                    nextLabel={"next"}
                    breakLabel={"..."}
                    breakClassName={"break-me"}
                    pageCount={pageCount}
                    marginPagesDisplayed={2}
                    pageRangeDisplayed={5}
                    onPageChange={handlePageClick}
                    containerClassName={"pagination"}
                    subContainerClassName={"pages pagination"}
                    activeClassName={"active"}
                  />
                </div>
                <hr />
              </div>
            </div>
          </div>
        </div>
      </main>
      <footer className="py-4 bg-footer mt-auto">
        <div className="container-fluid">
          <div className="d-flex align-items-center justify-content-between small">
            <div className="text-muted-1">
              © 2023 <b>Shop boutique</b>. by <b>OpenAI</b>
            </div>
          </div>
        </div>
      </footer>
    </div>
  );
};

export default Home;
