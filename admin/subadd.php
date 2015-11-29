<?php
session_start();
require("../database.php");
include("header.php");
error_reporting(1);
?>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<?php

extract($_POST);

echo "<BR>";
if (!isset($_SESSION['alogin']))
{
	echo "<br><h2><div  class=head1>You are not Logged On Please Login to Access this Page</div></h2>";
	echo "<a href=index.php><h3 align=center>Click Here for Login</h3></a>";
	exit();
}
echo "<BR><h3 class=head1>Subject Add </h3>";

echo "<table width=100%>";
echo "<tr><td align=center></table>";
if($submit=='submit' || strlen($subname)>0 )
{
$rs=mysql_query("select * from mst_subject where sub_name='$subname'");
if (mysql_num_rows($rs)>0)
{
	echo "<br><br><br><div class=head1>Subject is Already Exists</div>";
	exit;
}
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


mysql_query("insert into mst_subject(sub_name,sub_file) values ('$subname','$target_file')",$cn) or die(mysql_error());
echo "<p align=center>Subject  <b> \"$subname \"</b> Added Successfully.</p>";
$submit="";
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
mt=document.form1.fileToUpload.value;
if (mt.length<1) {
alert("Please Upload");
document.form1.fileToUpload.focus();
return false;
}
return true;
}
</script>

<div style="margin:auto;width:90%;height:auto;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:left">
<title>Add Subject</title>
<form name="form1" method="post" onSubmit="return check();" enctype="multipart/form-data">
  <table width="41%"  border="0" align="center">
    <tr>
      <td width="45%" height="32"><div align="center"><strong>Enter Subject Name </strong></div></td>
      <td width="2%" height="5">  
      <td width="53%" height="32">
        <input name="subname" placeholder="enter language name" type="text" id="subname">
    <tr>
        <td height="26"> </td>
        <td>&nbsp;</td>
	  <td>&nbsp;</td>
    </tr>
     <tr>
      <td width="45%" height="32"><div align="center"><strong>File Upload</strong></div></td>
      <td width="2%" height="5">  
      <td width="53%" height="32">
        <input name="fileToUpload"  type="file">
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





  <table width="41%"  border="0" align="center">
    <tr>
      <td width="45%" height="32"><div align="center"><strong>Subject Name</strong></div></td>
      
      <td width="53%" height="32"><div align="center"><strong>File Name</strong></div></td>
      <td width="53%" height="32"><div align="center"><strong>Change</strong></div></td>
    </tr>
 <?php
 $sel=mysql_query("select * from mst_subject");
 while($sele=mysql_fetch_array($sel))
 { 
 ?>   
    <tr>
      <td width="45%" height="32"><div align="center" style="color:#9900CC;"><?php echo $sele['sub_name']; ?></div></td>
      
      <td width="53%" height="32"><div align="center"style="color:#9900CC;"><?php echo $sele['sub_file']; ?></div></td>
      <td width="53%" height="32"><div align="center" ><a style="color:#9900CC; text-decoration:none" href="changename.php?tid=<?php echo $sele['sub_id']; ?>">Change</a></div></td>
    </tr>
    <?php } ?>
  </table>

</div>