"use client";
import React, { useEffect, useState } from "react";
import Axios from "axios";
function numberWithCommas(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
import "./section.css";
import { toUpper } from "lodash";
const settings = {
  dots: false,
  infinite: false,
  speed: 500,
  slidesToShow: 4,
  slidesToScroll: 1,
  initialSlide: 0,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: false,
      },
    },
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        initialSlide: 3,
      },
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
        initialSlide: 2,
      },
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
  ],
};
function BestSell() {
  const [slidesPerView, setSlidesPerView] = useState(4);
  useEffect(() => {
    function handleResize() {
      if (window.innerWidth <= 576) {
        setSlidesPerView(2);
      } else if (window.innerWidth <= 768) {
        setSlidesPerView(3);
      } else {
        setSlidesPerView(4);
      }
    }

    window.addEventListener("resize", handleResize);
    handleResize(); // Initial check
    return () => window.removeEventListener("resize", handleResize);
  }, [slidesPerView]);
  const [data, setData] = useState([]);
  useEffect(() => {
    const fetchOrderLists = async () => {
      try {
        const response = await Axios.get(
          "http://localhost:4000/api/order/lists"
        );
        const orderLists = response.data.order;
        const ordersByProductId = new Map();

        // Group orders by productId
        orderLists.forEach((order) => {
          const productId = order.productId;
          if (!ordersByProductId.has(productId)) {
            ordersByProductId.set(productId, []);
          }
          ordersByProductId.get(productId).push(order);
        });

        // Create an array from the map entries
        const productIdCounts = Array.from(ordersByProductId.entries()).map(
          ([productId, orders]) => ({
            productId,
            count: orders.length,
            orders,
          })
        );

        // Sort the array by count in descending order
        productIdCounts.sort((a, b) => b.count - a.count);

        // Set the sorted data into the state
        setData(productIdCounts);
      } catch (error) {
        console.error("Error fetching order lists:", error);
      }
    };

    fetchOrderLists();
  }, []);

  return (
    <div className="container-items">
      {data.slice(0, 4).map((data, index) => (
        <div key={index} className="item-herro ">
          <img
            src={data.orders[0].photo}
            alt=""
            width={250}
            height={350}
            style={{ objectFit: "cover", borderRadius: 20 }}
          />
          <h5 className="text-center"> {toUpper(data.orders[0].name)}</h5>
          <h5 className="text-center">Số lượng: {data.count}</h5>
        </div>
      ))}
    </div>
  );
}

export default BestSell;
