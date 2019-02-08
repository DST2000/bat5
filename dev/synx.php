<?php 
/*require_once('tools.inc.php'); */

$postdata = file_get_contents("php://input"); 

if ($postdata){

	try{
	$file_name = "goods/".date("d.m.y.h.s").'.zip';
	
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
			$zip->extractTo('goods');
			$zip->close();

			$fp = fopen('log.txt', 'a');
			fwrite($fp, "File $file_name updated"."\n");
			fclose($fp);
		}
		
		 if(file_exists($file_name)) {
            unlink($file_name);
        }
		
		$clients = simplexml_load_file("goods/clients.xml");
		$categories = simplexml_load_file("goods/categories.xml");
		$products = simplexml_load_file("goods/products.xml");
	
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