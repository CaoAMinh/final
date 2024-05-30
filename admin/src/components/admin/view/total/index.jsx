import React, { useState, useEffect } from "react";
import { GetOrderDetails, GetDashboardDetails } from "../../../services";
import Loader from "../../../loader";
import numberWithCommas from "../../../../util/number_thousand_separator";
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";
import "./Home.css";
import {
  formatDate,
  getMonth,
  getYear,
  getMonth2,
  QuarterTotal,
  DayTotal,
  getMonth3,
} from "./format";
import {
  Box,
  FormControl,
  InputLabel,
  MenuItem,
  Select,
} from "@material-ui/core";
import { Bar, BarChart, ResponsiveContainer, XAxis } from "recharts";
import BestSell from "./section";

// const data = [
//   { name: "Jan", product1: 4000 },
//   { name: "Feb", product1: 3000 },
//   { name: "Mar", product1: 2000 },
//   { name: "Apr", product1: 2780 },
//   { name: "May", product1: 1890 },
//   { name: "Jun", product1: 2390 },
//   { name: "Jul", product1: 3200 },
//   { name: "Aug", product1: 2700 },
//   { name: "Sep", product1: 2500 },
//   { name: "Oct", product1: 2900 },
//   { name: "Nov", product1: 3100 },
//   { name: "Dec", product1: 3300 },
// ];

const Total = () => {
  const [startDate, setStartDate] = useState(new Date());
  const [quy, setQuy] = useState([]);
  const [totalDay, setTotalDay] = useState([]);
  const [dataFilter, setDataFilter] = useState([
    { date: "All", status: "delieverd", total: 0, year: 0 },
    { date: "All", status: "processing", total: 0, year: 0 },
    { date: "All", status: "shipping", total: 0, year: 0 },
  ]);
  const [getList, setGetList] = useState([]);
  const [isloaded, setIsLoaded] = useState(false);
  const [quyYear, setQuyYear] = useState();
  const [Year, setYear] = useState(getYear(new Date()));
  const [currentPage, setCurrentPage] = useState(0);

  const getOrderList = async () => {
    setIsLoaded(true);
    const list = await GetOrderDetails.getAllOrderList({ page: currentPage });
    if (list) {
      const tdata = list.order;
      const slice = tdata.slice(0, 0 + 1000);

      setGetList(slice);
      setQuy(QuarterTotal(slice));
      setTotalDay(DayTotal(slice));
      const deliveredItems = slice.filter(
        (item) => item.status === "delieverd"
      );
      const processingItems = slice.filter(
        (item) => item.status === "processing"
      );
      const shippingItems = slice.filter((item) => item.status === "shipping");
      const totalDelivered = deliveredItems.reduce(
        (acc, item) => acc + item.grandtotal,
        0
      );
      const totalProcessing = processingItems.reduce(
        (acc, item) => acc + item.grandtotal,
        0
      );
      const totalShipping = shippingItems.reduce(
        (acc, item) => acc + item.grandtotal,
        0
      );

      setDataFilter((prevDataFilter) =>
        prevDataFilter.map((item) =>
          item.status === "shipping"
            ? { ...item, total: totalShipping }
            : item.status === "processing"
            ? { ...item, total: totalProcessing }
            : item.status === "delieverd"
            ? { ...item, total: totalDelivered }
            : item
        )
      );
      setIsLoaded(false);
    } else {
      setIsLoaded(true);
    }
  };

  const getStatusList = async () => {
    setIsLoaded(true);
    const list = await GetDashboardDetails.getAllStatusOrder();
    if (list) {
      setIsLoaded(false);
    } else {
      setIsLoaded(true);
    }
  };

  useEffect(() => {
    getOrderList();
    getStatusList();
  }, [currentPage]);

  const handleChangeDate = (event) => {
    const date = event.target.value;
    // event.preventDefault();
    const dateFilter = getList.filter((item) => {
      return formatDate(item.updatedAt) === formatDate(event.target.value);
    });
    const deliveredItems = dateFilter.filter(
      (item) => item.status === "delieverd"
    );
    const processingItems = dateFilter.filter(
      (item) => item.status === "processing"
    );
    const shippingItems = dateFilter.filter(
      (item) => item.status === "shipping"
    );
    const totalDelivered = deliveredItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );
    const totalProcessing = processingItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );
    const totalShipping = shippingItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );

    setDataFilter((prevDataFilter) =>
      prevDataFilter.map((item) =>
        item.status === "shipping"
          ? {
              ...item,
              date: formatDate(date),
              total: totalShipping,
            }
          : item.status === "processing"
          ? {
              ...item,
              date: formatDate(date),
              total: totalProcessing,
            }
          : item.status === "delieverd"
          ? {
              ...item,
              date: formatDate(date),
              total: totalDelivered,
            }
          : item
      )
    );
  };

  const handleDateChange = (event) => {
    setStartDate(event);

    const dateFilter = getList.filter((item) => {
      return getMonth(item.updatedAt) === getMonth3(event);
    });

    const deliveredItems = dateFilter.filter(
      (item) => item.status === "delieverd"
    );
    const processingItems = dateFilter.filter(
      (item) => item.status === "processing"
    );
    const shippingItems = dateFilter.filter(
      (item) => item.status === "shipping"
    );
    const totalDelivered = deliveredItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );
    const totalProcessing = processingItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );
    const totalShipping = shippingItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );
    setDataFilter((prevDataFilter) =>
      prevDataFilter.map((item) =>
        item.status === "shipping"
          ? {
              ...item,
              date: getMonth(event),
              total: totalShipping,
            }
          : item.status === "processing"
          ? {
              ...item,
              date: getMonth(event),
              total: totalProcessing,
            }
          : item.status === "delieverd"
          ? {
              ...item,
              date: getMonth(event),
              total: totalDelivered,
            }
          : item
      )
    );
  };
  const handleChangeQuy = (event) => {
    event.preventDefault();
    setQuyYear(event.target.value);

    const getListOfYear = getList.filter((item) => {
      return getYear(item.updatedAt) === Year;
    });

    let dateFilter = [];
    if (event.target.value === 1) {
      dateFilter = getListOfYear.filter((item) => {
        return (
          getMonth2(item.updatedAt) > "00" && getMonth2(item.updatedAt) <= "03"
        );
      });
    } else if (event.target.value === 2) {
      dateFilter = getListOfYear.filter((item) => {
        return (
          getMonth2(item.updatedAt) > "03" && getMonth2(item.updatedAt) <= "06"
        );
      });
    } else if (event.target.value === 3) {
      dateFilter = getListOfYear.filter((item) => {
        return (
          getMonth2(item.updatedAt) > "06" && getMonth2(item.updatedAt) <= "09"
        );
      });
    } else if (event.target.value === 4) {
      dateFilter = getListOfYear.filter((item) => {
        return (
          getMonth2(item.updatedAt) > "09" && getMonth2(item.updatedAt) <= "12"
        );
      });
    } else if (event.target.value === 5) {
      dateFilter = getListOfYear.filter((item) => {
        return (
          getMonth2(item.updatedAt) > "00" && getMonth2(item.updatedAt) <= "06"
        );
      });
    } else {
      dateFilter = getListOfYear.filter((item) => {
        return (
          getMonth2(item.updatedAt) > "06" && getMonth2(item.updatedAt) <= "12"
        );
      });
    }

    const deliveredItems = dateFilter.filter(
      (item) => item.status === "delieverd"
    );
    const processingItems = dateFilter.filter(
      (item) => item.status === "processing"
    );
    const shippingItems = dateFilter.filter(
      (item) => item.status === "shipping"
    );
    const totalDelivered = deliveredItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );
    const totalProcessing = processingItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );
    const totalShipping = shippingItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );
    setDataFilter((prevDataFilter) =>
      prevDataFilter.map((item) =>
        item.status === "shipping"
          ? {
              ...item,
              date: `Quý ${event.target.value}`,
              total: totalShipping,
            }
          : item.status === "processing"
          ? {
              ...item,
              date: `Quý ${event.target.value}`,
              total: totalProcessing,
            }
          : item.status === "delieverd"
          ? {
              ...item,
              date: `Quý ${event.target.value}`,
              total: totalDelivered,
            }
          : item
      )
    );
  };

  const calculateMonthlyTotals = (month, getList) => {
    const dateFilter = getList.filter((item) => {
      return parseInt(getMonth2(item.updatedAt)) === month;
    });

    const deliveredItems = dateFilter.filter(
      (item) => item.status === "delieverd"
    );
    const processingItems = dateFilter.filter(
      (item) => item.status === "processing"
    );
    const shippingItems = dateFilter.filter(
      (item) => item.status === "shipping"
    );

    const totalDelivered = deliveredItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );
    const totalProcessing = processingItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );
    const totalShipping = shippingItems.reduce(
      (acc, item) => acc + item.grandtotal,
      0
    );

    return {
      month,
      totalDelivered,
      totalProcessing,
      totalShipping,
      total: totalDelivered + totalProcessing + totalShipping,
    };
  };

  const [dataFilterTop, setDataFilterTop] = useState([]);
  useEffect(() => {
    const monthlyTotals = [];
    for (let month = 1; month <= 12; month++) {
      const monthData = calculateMonthlyTotals(month, getList);
      // Kiểm tra xem monthData có dữ liệu không trước khi thêm vào monthlyTotals
      if (monthData.total > 0) {
        monthlyTotals.push(monthData);
      }
    }

    const sortedMonthlyTotals = monthlyTotals.sort((a, b) => b.total - a.total);

    setDataFilterTop(
      sortedMonthlyTotals.map((monthData) => {
        const { month, totalDelivered, totalProcessing, totalShipping } =
          monthData;
        return {
          month,
          totalDelivered,
          totalProcessing,
          totalShipping,
          total: monthData.total,
        };
      })
    );
  }, [getList]);

  return (
    <div id="layoutSidenav_content">
      <main>
        <div className="container-fluid">
          {isloaded ? <Loader /> : ""}
          <h2 className="mt-30 page-title">Dashboard</h2>
          <ol className="breadcrumb mb-30">
            <li className="breadcrumb-item active">Dashboard</li>
          </ol>
          <div className="chart-content">
            <div
              className="content_data"
              style={{ width: "70%", height: "80%", paddingBottom: "40px" }}
            >
              <ResponsiveContainer width="100%" height="100%">
                <BarChart width={20} height={40} data={totalDay}>
                  <Bar dataKey="total" fill="#8884d8" />
                  <XAxis dataKey="name" />
                </BarChart>
              </ResponsiveContainer>
              {console.log(totalDay)}
              <p className="text-center text-check">
                Day&copy; {formatDate(new Date())}
              </p>
              <table className="table ucp-table table-hover">
                <thead>
                  <tr>
                    <th style={{ width: 130 }}>Status</th>
                    <th style={{ width: 130 }}>Total</th>
                  </tr>
                </thead>
                <tbody>
                  {totalDay === "undefined" ? (
                    <p>Loading</p>
                  ) : (
                    totalDay.map(
                      (row, index) =>
                        row.total !== 0 && (
                          <tr key={index}>
                            <td>
                              {row.name === "Processing" ? (
                                <span className="badge-item badge-primary">
                                  {row.name}
                                </span>
                              ) : row.name === "Shipping" ? (
                                <span className="badge-item badge-info">
                                  {row.name}
                                </span>
                              ) : (
                                row.name === "Delivered" && (
                                  <span className="badge-item badge-success">
                                    {row.name}
                                  </span>
                                )
                              )}
                            </td>
                            <td>
                              VND <span> </span>
                              {numberWithCommas(row.total)}
                            </td>
                          </tr>
                        )
                    )
                  )}
                </tbody>
              </table>
            </div>
            <div
              className="content_data"
              style={{ width: "70%", height: "80%", paddingBottom: "40px" }}
            >
              <ResponsiveContainer width="100%" height="100%">
                <BarChart width={20} height={40} data={dataFilterTop}>
                  <Bar dataKey="total" fill="#d580ff" />
                  <XAxis dataKey="month" />
                </BarChart>
              </ResponsiveContainer>
              <p className="text-center text-check">Month</p>
              <table className="table ucp-table table-hover">
                <thead>
                  <tr>
                    <th style={{ width: 130 }}>Month</th>
                    <th style={{ width: 130 }}>Total</th>
                  </tr>
                </thead>

                <tbody>
                  {dataFilterTop === "undefined" ? (
                    <p>Loading</p>
                  ) : (
                    dataFilterTop.map(
                      (row, index) =>
                        row.total !== 0 && (
                          <tr key={index}>
                            <td>{row.month}</td>
                            <td>
                              VND <span> </span>
                              {numberWithCommas(row.total)}
                            </td>
                          </tr>
                        )
                    )
                  )}
                </tbody>
              </table>
            </div>
            <div
              className="content_data"
              style={{ width: "70%", height: "80%", paddingBottom: "40px" }}
            >
              <ResponsiveContainer width="100%" height="100%">
                <BarChart width={20} height={40} data={quy}>
                  <Bar dataKey="total" fill="#66b3ff" />
                  <XAxis dataKey="name" />
                </BarChart>
              </ResponsiveContainer>
              <p className="text-center text-check">Quarter </p>
              <table className="table ucp-table table-hover">
                <thead>
                  <tr>
                    <th style={{ width: 130 }}>Quarter</th>
                    <th style={{ width: 130 }}>Total</th>
                  </tr>
                </thead>
                <tbody>
                  {quy === "undefined" ? (
                    <p>Loading</p>
                  ) : (
                    quy.map(
                      (row, index) =>
                        row.total !== 0 && (
                          <tr key={index}>
                            <td>{row.name}</td>
                            <td>
                              VND <span> </span>
                              {numberWithCommas(row.total)}
                            </td>
                          </tr>
                        )
                    )
                  )}
                </tbody>
              </table>
            </div>
          </div>

          <div className="row">
            <div className="col-xl-12 col-md-12">
              <div className="card card-static-2 mb-30">
                <div className="card-body-table"></div>
                <hr />
                <div className="card-title-2 card_fillter">
                  <h4>Total</h4>
                  <input type="date" onChange={handleChangeDate} />
                  <div>
                    <label htmlFor="">Pick month:</label>
                    <DatePicker
                      selected={startDate}
                      onChange={handleDateChange}
                      dateFormat="MM/yyyy"
                      showMonthYearPicker
                      showFullMonthYearPicker
                    />
                  </div>
                  <Box className="boxxinputQuy">
                    <FormControl fullWidth style={{ paddingBottom: "10px" }}>
                      <InputLabel id="demo-simple-select-label1">
                        Quý trong năm
                      </InputLabel>
                      <Select
                        style={{ minWidth: 140 }}
                        labelId="demo-simple-select-label1"
                        id="demo-simple-select"
                        label="Quý trong năm"
                        value={quyYear}
                        onChange={handleChangeQuy}
                      >
                        <MenuItem value={1}>Quý 1</MenuItem>
                        <MenuItem value={2}>Quý 2</MenuItem>
                        <MenuItem value={3}>Quý 3</MenuItem>
                        <MenuItem value={4}>Quý 4</MenuItem>
                        <MenuItem value={5}>6 Tháng đầu</MenuItem>
                        <MenuItem value={6}>6 Tháng sau </MenuItem>
                      </Select>
                    </FormControl>
                  </Box>
                  <Box className="boxxinputQuy">
                    <FormControl fullWidth style={{ paddingBottom: "10px" }}>
                      <InputLabel id="demo-simple-select">Năm</InputLabel>
                      <Select
                        style={{ minWidth: 140 }}
                        labelId="demo-simple-select"
                        id="demo-simple-select"
                        label="Quý trong năm"
                        value={Year}
                        selected={Year}
                        onChange={(e) => setYear(e.target.value)}
                      >
                        <MenuItem value={2023}>2023</MenuItem>
                        <MenuItem value={2024}>2024</MenuItem>
                        <MenuItem value={2025}>2025</MenuItem>
                        <MenuItem value={2026}>2026</MenuItem>
                      </Select>
                    </FormControl>
                  </Box>
                </div>

                <div className="card-body-table">
                  <div className="table-responsive">
                    <table className="table ucp-table table-hover">
                      <thead>
                        <tr>
                          <th style={{ width: 200 }}>Order Date</th>
                          <th style={{ width: 130 }}>Status</th>
                          <th style={{ width: 130 }}>Total</th>
                        </tr>
                      </thead>
                      <tbody>
                        {dataFilter === "undefined" ? (
                          <p>Loading</p>
                        ) : (
                          dataFilter.map(
                            (row, index) =>
                              row.total !== 0 && (
                                <tr key={index}>
                                  <td>
                                    <span className="delivery-time">
                                      {row.date}
                                    </span>
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
                                    ) : (
                                      row.status === "delieverd" && (
                                        <span className="badge-item badge-success">
                                          {row.status}
                                        </span>
                                      )
                                    )}
                                  </td>
                                  <td>
                                    VND <span> </span>
                                    {numberWithCommas(row.total)}
                                  </td>
                                </tr>
                              )
                          )
                        )}
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div>
                <h4>Top danh Sản phẩm bán chạy</h4>
                <BestSell />
              </div>
              <div>
                <hr />
                <h4>Top danh thu theo tháng</h4>
                <div className="card-body-table">
                  <div className="table-responsive">
                    <table className="table ucp-table table-hover">
                      <thead>
                        <tr>
                          <th style={{ width: "90%" }}> Date</th>
                          <th style={{ width: "10%" }}>Total</th>
                        </tr>
                      </thead>
                      <tbody>
                        {dataFilterTop === "undefined" ? (
                          <p>Loading</p>
                        ) : (
                          dataFilterTop.map(
                            (row, index) =>
                              row.total !== 0 && (
                                <tr key={index}>
                                  <td>
                                    <span className="delivery-time">
                                      Tháng {row.month}
                                    </span>
                                  </td>

                                  <td>
                                    VND <span> </span>
                                    {numberWithCommas(row.total)}
                                  </td>
                                </tr>
                              )
                          )
                        )}
                      </tbody>
                    </table>
                  </div>
                </div>
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

export default Total;
