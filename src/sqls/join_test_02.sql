/*
 * 请告诉我所有被取消（'Cancelled'）的订单以及其总金额。查询结果应当包含如下的内容：
 *
 * +──────────────+─────────────+───────────────+
 * | orderNumber  | totalPrice  | detailsCount  |
 * +──────────────+─────────────+───────────────+
 *
 * 其中，orderNumber 是订单编号，totalPrice 是订单的总金额而 detailsCount 是每一个订单
 * 包含的 `orderdetails` 的数目。
 *
 * 结果应当按照 `orderNumber` 排序。
 */
  SELECT `orders`.`orderNumber`, SUM(`priceEach`) AS totalPrice, COUNT(`orderdetails`.`orderNumber`) AS detailsCount
  FROM `orders`, `orderdetails`
  WHERE `orders`.`orderNumber` = `orderdetails`.`orderNumber`
  GROUP BY `orderdetails`.`orderNumber`
  ORDER BY `orders`.`orderNumber`;
