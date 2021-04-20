<?php require_once('Connections/condb.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}

mysql_select_db($database_condb, $condb);
$query_rb = "SELECT * FROM tbl_board WHERE a_ans !='' order by b_id desc";
$rb = mysql_query($query_rb, $condb) or die(mysql_error());
$row_rb = mysql_fetch_assoc($rb);
$totalRows_rb = mysql_num_rows($rb);
?>
<?php include('h.php');?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
  </head>
  <body>
  <div class="container">
  <div class="row">
         <?php 
         include('datatable.php');
         include('banner.php');
         ?>
   </div>
  	<div class="row">
    	<div class="col-md-12">
    	  <?php include('navbar.php');?>
    	</div>
    </div>
 </div> 
 
 <div class="container">
 	<div class="row">
    	 <div class="col-md-2">
          <div class="panel panel-info">
            <div class="panel-heading">ข่าวล่าสุด</div>
          </div>
          <?php include('list_news_index.php');?> 


        </div>
      <div class="col-md-10">
         <div class="panel panel-danger">
            <div class="panel-heading">
            <h4> ถาม-ตอบ  ||
            <a href="board_form.php?act=form" class="btn btn-success btn-xs"> +คำถาม </a>
             </h4> 
             </div>
            </div>


                <table border="0"  id="example" class="table table-hover">
                 <thead>
                  <tr class="success">
                    <th width="5%">No.</td>
                    <th width="50%">คำถาม</td>
                    <th width="20%">ผู้ถาม</td>
                    <th width="5%">-</td>
                    <th width="10%">ว/ด/ป</td>
                  </tr>
                </thead>
                  <?php do { ?>
                    <tr>
                      <td align="center"><?php echo $row_rb['b_id']; ?></td>
                      <td><?php echo $row_rb['b_title']; ?></td>
                      <td><?php echo $row_rb['b_name']; ?></td>
                      <td> 
                        <a href="board_detail.php?b_id=<?php echo $row_rb['b_id'];?>&board-detial" class="btn btn-info btn-xs">ดูคำตอบ</a> 
                      </td>
                      <td><?php echo date('d/m/Y',strtotime($row_rb['date_save'])); ?></td>
                    </tr>
                    <?php } while ($row_rb = mysql_fetch_assoc($rb)); ?>
                </table>
        </div>
    </div>
</div>
  </body>
</html><?php
mysql_free_result($rb);
?>
<?php include('f.php');?>