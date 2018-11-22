<?php 
require_once('tools.inc.php');

$postdata = file_get_contents("php://input"); 

if ($postdata){

	try{
	$file_name = "xml/".date("d.m.y.h.s").'.zip';
	
		$fp = fopen($file_name, 'w');
		fwrite($fp, $postdata);
		fclose($fp);
	/*
		$dom = new DomDocument();
		$dom->loadXML($postdata);
		$dom->save($file_name.".xml");
	*/
		$zip = new ZipArchive;
		$res = $zip->open($file_name);
		if ($res === TRUE) {
			$zip->extractTo('xml');
			$zip->close();

			$fp = fopen('log.txt', 'a');
			fwrite($fp, "File $file_name updated"."\n");
			fclose($fp);
		}
		
		 if(file_exists($file_name)) {
            unlink($file_name);
        }
		
		$clients = simplexml_load_file("xml/clients.xml");
		$categories = simplexml_load_file("xml/categories.xml");
		$products = simplexml_load_file("xml/products.xml");
		
		if ($clients){
			
			$client_ids[] =array();
			$client_ids_new[] =array();
			$q = mysql_query("SELECT `id` from `clients`");
			while ($row = mysql_fetch_array($q)) {
				$client_ids[] = $row['id'];
			}
			mysql_query("TRUNCATE TABLE `discounts`");
			foreach ($clients->data->clients->client as $client) {
				
				
				$client_ids_new[] = $client->id;
				
				if (!in_array($client->id, $client_ids)) {
					mysql_query("INSERT INTO `clients` (`id`, `name`, `fullname`, `inn`, `pass`) VALUES ('$client->id', '$client->name', '$client->fullname', '$client->inn', '$client->inn');");	
				}else{
					mysql_query("UPDATE `clients` set `name` = '$client->name', `fullname`='$client->fullname' WHERE `id` ='$client->id'");	
				}
				
				foreach ($client->discounts->discount as $discount) {
					mysql_query("INSERT INTO `discounts` (`client_id`, `category_id`, `category_name`, `value`) VALUES ('$client->id', '$discount->id', '$discount->name', '$discount->value');");		
				}
			}
			
			$client_ids = array_unique($client_ids);
			$client_ids_new = array_unique($client_ids_new);
			$diff = array_diff($client_ids, $client_ids_new); 
			if (count($diff) > 0){
				$sql_diff = "delete FROM `clients` WHERE ID in ('". implode("','",$diff)."')";
				mysql_query($sql_diff);
			}
			
		}
		
		if ($categories){
			mysql_query("TRUNCATE TABLE `categories`");
			foreach ($categories->data->categories->category as $cat) {
				mysql_query("INSERT INTO `categories` (`id`, `name`, `parid`, `level`) VALUES ('$cat->id', '$cat->name', null, '0');");	
				
				if ($cat->subcategories->subcategori)
				foreach ($cat->subcategories->subcategori as $cat1) {
					mysql_query("INSERT INTO `categories` (`id`, `name`, `parid`, `level`) VALUES ('$cat1->id', '$cat1->name', '$cat->id', '1');");	
					
					if ($cat1->subcategories->subcategori)
					foreach ($cat1->subcategories->subcategori as $cat2) {
						mysql_query("INSERT INTO `categories` (`id`, `name`, `parid`, `level`) VALUES ('$cat2->id', '$cat2->name', '$cat1->id', '2');");	
						
						if ($cat2->subcategories->subcategori)
						foreach ($cat2->subcategories->subcategori as $cat3) {
							mysql_query("INSERT INTO `categories` (`id`, `name`, `parid`, `level`) VALUES ('$cat3->id', '$cat3->name', '$cat2->id', '3');");

							if ($cat3->subcategories->subcategori)
							foreach ($cat3->subcategories->subcategori as $cat4) {
								mysql_query("INSERT INTO `categories` (`id`, `name`, `parid`, `level`) VALUES ('$cat4->id', '$cat4->name', '$cat3->id', '4');");	
								
								if ($cat4->subcategories->subcategori)
								foreach ($cat4->subcategories->subcategori as $cat5) {
									mysql_query("INSERT INTO `categories` (`id`, `name`, `parid`, `level`) VALUES ('$cat5->id', '$cat5->name', '$cat4->id', '5');");	
								}	
							}
						}
					}
				}
			}
		}	
		
		if ($products){
			mysql_query("TRUNCATE TABLE `products`");

			foreach ($products->data->subcategories->subcategory as $subcat) {
				if ($subcat->products->product)
				foreach ($subcat->products->product as $product){
					$price = preg_replace('![^0-9,.]!', '', $product->price);
					$price = str_replace(",",".",$price);
					$quantity = preg_replace('![^0-9]!', '', $product->quantity);
					mysql_query("INSERT INTO `products` (`id`, `name`, `articul`, `price`, `quantity`, `category_id`) VALUES ('$product->id', '$product->name', '$product->articul', '$price', '$quantity', '$subcat->id');");	
					}
				
			}
		}
		
	
		$fp = fopen('log.txt', 'a');
		fwrite($fp, date("d.m.y h:s")." - ok"."\n");
		fclose($fp);	

	} 
	catch (Exception $e) {
		$fp = fopen('log.txt', 'a');
		fwrite($fp, date("d.m.y h:s")." - error".($e->getMessage())."\n");
		fclose($fp);	
		
		die ("Error with xml: ". $e->getMessage() );
	}
	echo "ok";
}else{
	echo "empty result";
}


?>