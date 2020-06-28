/*
 * 请告诉我产品编号（`products`.`productCode`）为 'S10_1678' 的这个产品在哪些订单明细
 * （`orderdetails`）记录中的销售价格（`orderdetails`.`priceEach`）小于生产商的建议
 * 零售价（`MSRP`）。查询结果中应当包含如下信息：
 *
 * +──────────────+──────────────+───────+────────────+
 * | orderNumber  | productName  | MSRP  | priceEach  |
 * +──────────────+──────────────+───────+────────────+
 * 
 * 结果应当按照 `orderNumber` 排序。
 */
   SELECT `orderdetails`.`orderNumber`, `products`.`productName`, `products`.`MSRP`, `orderdetails`.`priceEach`
   FROM `products`, `orderdetails`
   WHERE  `products`.`productCode` = `orderdetails`.`productCode` AND `products`.`MSRP` > `orderdetails`.`priceEach`
   ORDER BY orderdetails.`orderNumber`;


