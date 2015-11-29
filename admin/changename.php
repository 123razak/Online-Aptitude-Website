<?php
session_start();
require("../database.php");
include("header.php");
error_reporting(1);
 $gid= $_GET['tid'];
$sel=mysql_query("select * from `mst_subject` where sub_id='".$gid."'");

$sele=mysql_fetch_array($sel);

  $up=$sele['sub_file'];
if(isset($_REQUEST['submit']))
{



if($_FILES["fileToUpload"]["name"] != '')
{

$target="pdf/";



$target_file = $target . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);


/*if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}*/
if($imageFileType != "pdf" && $imageFileType != "docx"&&$imageFileType != "pptx"&&$imageFileType != "xls"&&$imageFileType != "txt" ) {
    echo "Only Allowed Only Pdf,docx,pptx,xls,txt";
    $uploadOk = 0;
}

if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";

} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}



$upd=mysql_query("UPDATE `mst_subject` SET sub_name='".$_REQUEST['subname']."',sub_file='".$target_file."' where sub_id='".$gid."';");

echo "Update Sucessfully";
header("location:changename.php?tid=$gid");
}else{

$upd=mysql_query("UPDATE `mst_subject` SET sub_name='".$_REQUEST['subname']."',sub_file='".$up."' where sub_id='".$gid."';");
echo "Name Change";
header("location:changename.php?tid=$gid");
}
}
?>
<SCRIPT LANGUAGE="JavaScript">
function check() {
mt=document.form1.subname.value;
if (mt.length<1) {
alert("Please Enter Subject Name");
document.form1.subname.focus();
return false;
}

return true;
}
</script>

<div style="margin:auto;width:90%;height:auto;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:left">
<title>Edit Subject</title>
<div style="margin:0px; font-size:16px;">Edit Subject Name</div>
<div style="margin:0px 30px 0 0; float:right; font-size:16px;"><a href="subadd.php">View</a></div>
<form name="form1" method="post" onSubmit="return check();" enctype="multipart/form-data">
  <table width="41%"  border="0" align="center">
    <tr>
      <td width="45%" height="32"><div align="center"><strong>Enter Subject Name </strong></div></td>
      <td width="2%" height="5">  
      <td width="53%" height="32">
        <input name="subname" value="<?php echo $sele['sub_name'];?>" type="text" id="subname">
    <tr>
        <td height="26"> </td>
        <td>&nbsp;</td>
	  <td>&nbsp;</td>
    </tr>
     <tr>
      <td width="45%" height="32"><div align="center"><strong>File Upload</strong></div></td>
      <td width="2%" height="5">  
      <td width="53%" height="32">
        <input name="fileToUpload"  type="file" value=""><span><?php  $do=explode('/',$sele['sub_file']);echo $do[1];?></span>
    <tr>
        <td height="26"> </td>
        <td>&nbsp;</td>
	  <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="26"></td>
      <td>&nbsp;</td>
      <td><input type="submit" name="submit" value="Add" ></td>
    </tr>
  </table>
</form>
<p>&nbsp; </p>
</div>