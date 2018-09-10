DELETE FROM `#__csvi_availabletables` WHERE `component` = 'com_virtuemart';
INSERT IGNORE INTO `#__csvi_availabletables` (`task_name`, `template_table`, `component`, `action`, `enabled`) VALUES
('calc', 'calc', 'com_virtuemart', 'export', '0'),
('calc', 'virtuemart_calcs', 'com_virtuemart', 'export', '1'),
('calc', 'calc', 'com_virtuemart', 'import', '0'),
('calc', 'virtuemart_calcs', 'com_virtuemart', 'import', '1'),
('category', 'category', 'com_virtuemart', 'export', '0'),
('category', 'virtuemart_categories', 'com_virtuemart', 'export', '1'),
('category', 'category', 'com_virtuemart', 'import', '0'),
('category', 'virtuemart_categories', 'com_virtuemart', 'import', '1'),
('coupon', 'coupon', 'com_virtuemart', 'export', '0'),
('coupon', 'virtuemart_coupons', 'com_virtuemart', 'export', '1'),
('coupon', 'coupon', 'com_virtuemart', 'import', '0'),
('coupon', 'virtuemart_coupons', 'com_virtuemart', 'import', '1'),
('customfield', 'customfield', 'com_virtuemart', 'import', '0'),
('customfield', 'virtuemart_customs', 'com_virtuemart', 'import', '1'),
('customfield', 'customfield', 'com_virtuemart', 'export', '0'),
('customfield', 'virtuemart_customs', 'com_virtuemart', 'export', '1'),
('manufacturercategory', 'manufacturercategory', 'com_virtuemart', 'import', '0'),
('manufacturercategory', 'virtuemart_manufacturercategories', 'com_virtuemart', 'import', '1'),
('manufacturercategory', 'manufacturercategory', 'com_virtuemart', 'export', '0'),
('manufacturercategory', 'virtuemart_manufacturercategories', 'com_virtuemart', 'export', '1'),
('manufacturer', 'manufacturer', 'com_virtuemart', 'export', '0'),
('manufacturer', 'virtuemart_manufacturers', 'com_virtuemart', 'export', '1'),
('manufacturer', 'manufacturer', 'com_virtuemart', 'import', '0'),
('manufacturer', 'virtuemart_manufacturers', 'com_virtuemart', 'import', '1'),
('media', 'media', 'com_virtuemart', 'export', '0'),
('media', 'virtuemart_medias', 'com_virtuemart', 'export', '1'),
('media', 'media', 'com_virtuemart', 'import', '0'),
('media', 'virtuemart_medias', 'com_virtuemart', 'import', '1'),
('order', 'order', 'com_virtuemart', 'export', '0'),
('order', 'virtuemart_orders', 'com_virtuemart', 'export', '1'),
('order', 'virtuemart_order_items', 'com_virtuemart', 'export', '1'),
('order', 'virtuemart_order_userinfos', 'com_virtuemart', 'export', '1'),
('orderadvanced', 'orderadvanced', 'com_virtuemart', 'export', '0'),
('orderadvanced', 'virtuemart_order_userinfos', 'com_virtuemart', 'export', '1'),
('orderadvanced', 'virtuemart_orders', 'com_virtuemart', 'export', '1'),
('orderadvanced', 'virtuemart_order_items', 'com_virtuemart', 'export', '1'),
('snelstart', 'snelstart', 'com_virtuemart', 'export', '0'),
('snelstart', 'virtuemart_order_userinfos', 'com_virtuemart', 'export', '1'),
('snelstart', 'virtuemart_orders', 'com_virtuemart', 'export', '1'),
('snelstart', 'virtuemart_order_items', 'com_virtuemart', 'export', '1'),
('order', 'order', 'com_virtuemart', 'import', '0'),
('order', 'virtuemart_orders', 'com_virtuemart', 'import', '1'),
('order', 'virtuemart_order_userinfos', 'com_virtuemart', 'import', '1'),
('order', 'virtuemart_products', 'com_virtuemart', 'export', '1'),
('orderitem', 'orderitem', 'com_virtuemart', 'export', '0'),
('orderitem', 'virtuemart_order_items', 'com_virtuemart', 'export', '1'),
('orderitem', 'orderitem', 'com_virtuemart', 'import', '0'),
('orderitem', 'virtuemart_order_items', 'com_virtuemart', 'import', '1'),
('product', 'product', 'com_virtuemart', 'export', '0'),
('product', 'virtuemart_products', 'com_virtuemart', 'export', '1'),
('google', 'google', 'com_virtuemart', 'export', '0'),
('google', 'virtuemart_products', 'com_virtuemart', 'export', '1'),
('yandex', 'product', 'com_virtuemart', 'export', '0'),
('yandex', 'virtuemart_products', 'com_virtuemart', 'export', '1'),
('product', 'product', 'com_virtuemart', 'import', '0'),
('product', 'virtuemart_products', 'com_virtuemart', 'import', '1'),
('rating', 'rating', 'com_virtuemart', 'export', '0'),
('rating', 'virtuemart_rating_reviews', 'com_virtuemart', 'export', '1'),
('rating', 'rating', 'com_virtuemart', 'import', '0'),
('rating', 'virtuemart_rating_reviews', 'com_virtuemart', 'import', '1'),
('shopperfield', 'shopperfield', 'com_virtuemart', 'export', '0'),
('shopperfield', 'virtuemart_userfields', 'com_virtuemart', 'export', '1'),
('shopperfield', 'shopperfield', 'com_virtuemart', 'import', '0'),
('shopperfield', 'virtuemart_userfields', 'com_virtuemart', 'import', '1'),
('userinfo', 'userinfo', 'com_virtuemart', 'export', '0'),
('userinfo', 'users', 'com_virtuemart', 'export', '1'),
('userinfo', 'virtuemart_userinfos', 'com_virtuemart', 'export', '1'),
('userinfo', 'virtuemart_vmusers', 'com_virtuemart', 'export', '1'),
('userinfo', 'userinfo', 'com_virtuemart', 'import', '0'),
('userinfo', 'users', 'com_virtuemart', 'import', '1'),
('userinfo', 'virtuemart_userinfos', 'com_virtuemart', 'import', '1'),
('userinfo', 'virtuemart_vmusers', 'com_virtuemart', 'import', '1'),
('waitinglist', 'virtuemart_waitingusers', 'com_virtuemart', 'export', '1'),
('waitinglist', 'waitinglist', 'com_virtuemart', 'export', '0'),
('waitinglist', 'virtuemart_waitingusers', 'com_virtuemart', 'import', '1'),
('waitinglist', 'waitinglist', 'com_virtuemart', 'import', '0'),
('shippingrate', 'virtuemart_shipmentmethods', 'com_virtuemart', 'export', '1'),
('shippingrate', 'shippingrate', 'com_virtuemart', 'export', '0'),
('shippingrate', 'shippingrate', 'com_virtuemart', 'import', '0'),
('shippingrate', 'virtuemart_shipmentmethods', 'com_virtuemart', 'import', '1'),
('price', 'price', 'com_virtuemart', 'import', '0'),
('price', 'virtuemart_product_prices', 'com_virtuemart', 'import', '1'),
('price', 'price', 'com_virtuemart', 'export', '0'),
('price', 'virtuemart_product_prices', 'com_virtuemart', 'export', '1'),
('relatedproduct', 'relatedproduct', 'com_virtuemart', 'import', '0'),
('mediaproduct', 'mediaproduct', 'com_virtuemart', 'import', '0'),
('availabilityproduct', 'availabilityproduct', 'com_virtuemart', 'import', '0');

DELETE FROM `#__csvi_tasks` WHERE `component` = 'com_virtuemart';
INSERT IGNORE INTO `#__csvi_tasks` (`task_name`, `action`, `component`, `url`, `options`) VALUES
('category', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=category', 'source,file,layout,category,fields,limit.advancedUser'),
('category', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=category', 'source,file,category,category_image,fields,limit.advancedUser'),
('coupon', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=coupon', 'source,file,layout,fields,limit.advancedUser'),
('coupon', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=coupon', 'source,file,fields,limit.advancedUser'),
('manufacturercategory', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=manufacturercategories', 'source,file,layout,manufacturer_category,fields,limit.advancedUser'),
('manufacturercategory', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=manufacturercategories', 'source,file,manufacturer_category,fields,limit.advancedUser'),
('manufacturer', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=manufacturer', 'source,file,layout,manufacturer,fields,limit.advancedUser'),
('manufacturer', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=manufacturer', 'source,file,manufacturer,manufacturer_image,fields,limit.advancedUser'),
('order', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=orders', 'source,file,layout,custom_order,fields,limit.advancedUser'),
('order', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=orders', 'source,file,order,fields,limit.advancedUser'),
('orderadvanced', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=orders', 'source,orderadvanced_file,custom_order,orderadvanced_layout,fields,limit.advancedUser'),
('snelstart', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=orders', 'source,snelstart_file,custom_order,snelstart_layout,fields,limit.advancedUser'),
('google', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=product', 'source,google_file,layout,custom_product,fields,limit.advancedUser'),
('yandex', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=product', 'source,yandex_file,layout,custom_product,fields,limit.advancedUser'),
('orderitem', 'export', 'com_virtuemart', NULL, 'source,file,layout,custom_orderitem,fields,limit.advancedUser'),
('orderitem', 'import', 'com_virtuemart', NULL, 'source,file,order_item,fields,limit.advancedUser'),
('media', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=media', 'source,file,layout,fields,limit.advancedUser'),
('media', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=media', 'source,file,media_image,fields,limit.advancedUser'),
('product', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=product', 'source,file,product,image,fields,limit.advancedUser'),
('product', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=product', 'source,file,layout,custom_product,fields,limit.advancedUser'),
('rating', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=ratings', 'source,rating_file,layout,fields,limit.advancedUser'),
('rating', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=ratings', 'source,file,fields,limit.advancedUser'),
('customfield', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=custom', 'source,file,fields,limit.advancedUser'),
('customfield', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=custom', 'source,customfield_file,layout,fields,limit.advancedUser'),
('shopperfield', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=userfields', 'source,file,layout,fields,limit.advancedUser'),
('shopperfield', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=userfields', 'source,file,fields,limit.advancedUser'),
('waitinglist', 'export', 'com_virtuemart', NULL, 'source,file,layout,waitinglist,fields,limit.advancedUser'),
('waitinglist', 'import', 'com_virtuemart', NULL, 'source,file,fields,limit.advancedUser'),
('userinfo', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=user', 'source,file,layout,custom_userinfo,fields,limit.advancedUser'),
('userinfo', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=user', 'source,file,fields,limit.advancedUser'),
('calc', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=calc', 'source,file,calc,fields,limit.advancedUser'),
('calc', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=calc', 'source,file,layout,calc,fields,limit.advancedUser'),
('shippingrate', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=shipmentmethod', 'source,file,shippingrate,fields,limit.advancedUser'),
('shippingrate', 'export', 'com_virtuemart', 'index.php?option=com_virtuemart&view=shipmentmethod', 'source,file,shippingrate,fields,limit.advancedUser'),
('price', 'export', 'com_virtuemart', NULL, 'source,file,layout,price,fields,limit.advancedUser'),
('price', 'import', 'com_virtuemart', NULL, 'source,file,fields,limit.advancedUser'),
('relatedproduct', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=product', 'source,relatedproduct_file,fields,limit.advancedUser'),
('mediaproduct', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=media', 'source,mediaproduct_file,image,fields,limit.advancedUser'),
('availabilityproduct', 'import', 'com_virtuemart', 'index.php?option=com_virtuemart&view=product', 'source,file,fields,limit.advancedUser');
