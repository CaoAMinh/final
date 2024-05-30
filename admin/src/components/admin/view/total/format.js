export function formatDate(data) {
  const date = new Date(data);
  const year = date.getUTCFullYear();
  const month = String(date.getUTCMonth() + 1).padStart(2, "0");
  const day = String(date.getUTCDate()).padStart(2, "0");
  const formattedDate = `${year}-${month}-${day}`;
  return formattedDate;
}
export function getMonth(data) {
  const date = new Date(data);
  const year = date.getUTCFullYear();
  const month = String(date.getUTCMonth() + 1).padStart(2, "0");
  return `${year}-${month}`;
}
export function getMonth3(data) {
  const date = new Date(data);
  const year = date.getUTCFullYear();
  const month = String(date.getUTCMonth() + 2).padStart(2, "0");
  return `${year}-${month}`;
}
export function getYear(data) {
  const date = new Date(data);
  const year = date.getUTCFullYear();
  return year;
}
export function getMonth2(data) {
  const date = new Date(data);
  const month = String(date.getUTCMonth() + 1).padStart(2, "0");
  return `${month}`;
}
export function QuarterTotal(getList) {
  const dateFilter1 = getList.filter((item) => {
    return (
      getMonth2(item.updatedAt) > "00" && getMonth2(item.updatedAt) <= "03"
    );
  });

  const dateFilter2 = getList.filter((item) => {
    return (
      getMonth2(item.updatedAt) > "03" && getMonth2(item.updatedAt) <= "06"
    );
  });

  const deliveredItemsQ1 = dateFilter1.filter(
    (item) => item.status === "delieverd"
  );
  const processingItemsQ1 = dateFilter1.filter(
    (item) => item.status === "processing"
  );
  const shippingItemsQ1 = dateFilter1.filter(
    (item) => item.status === "shipping"
  );

  const totalDeliveredQ1 = deliveredItemsQ1.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const totalProcessingQ1 = processingItemsQ1.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const totalShippingQ1 = shippingItemsQ1.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );

  const deliveredItemsQ2 = dateFilter2.filter(
    (item) => item.status === "delieverd"
  );
  const processingItemsQ2 = dateFilter2.filter(
    (item) => item.status === "processing"
  );
  const shippingItemsQ2 = dateFilter2.filter(
    (item) => item.status === "shipping"
  );

  const totalDeliveredQ2 = deliveredItemsQ2.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const totalProcessingQ2 = processingItemsQ2.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const totalShippingQ2 = shippingItemsQ2.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const dateFilter3 = getList.filter((item) => {
    return (
      getMonth2(item.updatedAt) > "06" && getMonth2(item.updatedAt) <= "09"
    );
  });
  const dateFilter4 = getList.filter((item) => {
    return (
      getMonth2(item.updatedAt) > "09" && getMonth2(item.updatedAt) <= "12"
    );
  });

  const deliveredItemsQ3 = dateFilter3.filter(
    (item) => item.status === "delieverd"
  );
  const processingItemsQ3 = dateFilter3.filter(
    (item) => item.status === "processing"
  );
  const shippingItemsQ3 = dateFilter3.filter(
    (item) => item.status === "shipping"
  );

  const totalDeliveredQ3 = deliveredItemsQ3.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const totalProcessingQ3 = processingItemsQ3.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const totalShippingQ3 = shippingItemsQ3.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );

  // Calculate totals for each status within the fourth quarter
  const deliveredItemsQ4 = dateFilter4.filter(
    (item) => item.status === "delieverd"
  );
  const processingItemsQ4 = dateFilter4.filter(
    (item) => item.status === "processing"
  );
  const shippingItemsQ4 = dateFilter4.filter(
    (item) => item.status === "shipping"
  );

  const totalDeliveredQ4 = deliveredItemsQ4.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const totalProcessingQ4 = processingItemsQ4.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const totalShippingQ4 = shippingItemsQ4.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );

  return [
    {
      name: "Quarter 1",
      total: totalDeliveredQ1 + totalProcessingQ1 + totalShippingQ1,
      totalDelivered: totalDeliveredQ1,
      totalProcessing: totalProcessingQ1,
      totalShipping: totalShippingQ1,
    },
    {
      name: "Quarter 2",
      total: totalDeliveredQ2 + totalProcessingQ2 + totalShippingQ2,
      totalDelivered: totalDeliveredQ2,
      totalProcessing: totalProcessingQ2,
      totalShipping: totalShippingQ2,
    },
    {
      name: "Quarter 3",
      total: totalDeliveredQ3 + totalProcessingQ3 + totalShippingQ3,
      totalDelivered: totalDeliveredQ3,
      totalProcessing: totalProcessingQ3,
      totalShipping: totalShippingQ3,
    },
    {
      name: "Quarter 4",
      total: totalDeliveredQ4 + totalProcessingQ4 + totalShippingQ4,
      totalDelivered: totalDeliveredQ4,
      totalProcessing: totalProcessingQ4,
      totalShipping: totalShippingQ4,
    },
  ];
}
export function DayTotal(getList) {
  const dateFilter1 = getList.filter((item) => {
    return formatDate(item.updatedAt) === formatDate(new Date());
  });
  const deliveredItemsQ1 = dateFilter1.filter(
    (item) => item.status === "delieverd"
  );
  const processingItemsQ1 = dateFilter1.filter(
    (item) => item.status === "processing"
  );
  const shippingItemsQ1 = dateFilter1.filter(
    (item) => item.status === "shipping"
  );

  const totalDeliveredQ1 = deliveredItemsQ1.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const totalProcessingQ1 = processingItemsQ1.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );
  const totalShippingQ1 = shippingItemsQ1.reduce(
    (acc, item) => acc + item.grandtotal,
    0
  );

  return [
    {
      name: "Delivered",
      total: totalDeliveredQ1,
    },
    { name: "Processing", total: totalProcessingQ1 },
    { name: "Shipping", total: totalShippingQ1 },
  ];
}
