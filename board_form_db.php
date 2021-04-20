<meta charset="UTF-8" />
<?php
include('Connections/condb.php');
error_reporting(E_ALL ^ E_DEPRECATED);
error_reporting( error_reporting() & ~E_NOTICE );

  $b_title = $_POST['b_title'];
  $b_detail = $_POST['b_detail'];
  $b_name = $_POST['b_name'];
  $b_email = $_POST['b_email'];

  $sql ="INSERT INTO tbl_board
		
		(
		b_title,
		b_detail,
		b_name,
		b_email
		)
		VALUES	
		(
		'$b_title',
		'$b_detail',
		'$b_name',
		'$b_email'
		)";
		
		$result = mysql_db_query($database_condb, $sql) or die("Error in query : $sql" .mysql_error());

		mysql_close();
		
		if($result){
			echo "<script>";
			echo "alert('ขอบคุณครับ กรุณารอการอนุมัติจาก admin ');";
			echo "window.location ='board.php'; ";
			echo "</script>";
		} else {
			
			echo "<script>";
			echo "alert('ERROR!');";
			echo "window.location ='index.php'; ";
			echo "</script>";
		}
		


?>