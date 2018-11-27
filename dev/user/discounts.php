 <?php  
$user = JFactory::getUser();
$userid = $user->get('id');		 
		 
if ($userid > 0) {
	$db = JFactory::getDBO();
	$query = 'SELECT `discounts` '.' FROM `#__virtuemart_userinfos` '.' WHERE `virtuemart_user_id` = '.$userid;
	$db->setQuery($query);
	$result1 = $db->LoadResult();
	$discounts_j_arr = explode("|", $result1);
	
	foreach ($discounts_j_arr as $discounts_j) {
		$discounts[] = json_decode($discounts_j, true);	
	} 

	if (count($discounts) > 0) {
		echo '<div class="discounts" style="display:none">';
		foreach ($discounts as $key_a => $discount) {
			echo '<div class="discount '.$key_a.'">';
			foreach ($discount as $key => $value) {
				echo '<p class="'.$key.'">'.$value.'</p>';
			}
			echo '</div>';
		}
		echo '</div>';
	}
}
	 
?>