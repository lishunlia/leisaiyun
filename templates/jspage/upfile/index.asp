<%
uppath=request.QueryString("uppath")
filelx=request.QueryString("filelx")
formName=request.QueryString("formName")
EditName=request.QueryString("EditName")
%>

<html>
<head>
<title>Upload File</title>
<meta content='width=device-width,initial-scale=1,user-scalable=no' name='viewport'/>
<meta http-equiv='X-UA-Compatible' content='IE=Edge'>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<!--[if lt IE 12]>
<script src="../html5.js"></script>
<![endif]--> 
<style type="text/css">
<!--
td{font-size:12px}
a{color:#ff0000;text-decoration: none}
a:hover{text-decoration: underline}
.tx{height:16px;width:30px;border-color:black black #000000;border-top-width:0px;border-right-width: 0px; border-bottom-width: 1px; border-left-width: 0px; font-size: 12px; background-color: #eeeeee; color: #0000FF}
.button{font-size:14px;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width: 0px; height: 22px; width: 80px; background-color: #eeeeee; cursor: hand}
.tx1{height:20px;width:30px;font-size:12px;border:1px solid;border-color:black black #000000;color: #0000FF}



.file-box{ position:relative;width:320px}
.txt{ height:22px; border:1px solid #cdcdcd; width:180px;}
.btn{ background-color:#eee; border:1px solid #CDCDCD;height:24px; width:60px; margin-left:10px;}
.file{ position:absolute; top:0; left:5px; height:24px; filter:alpha(opacity:0);opacity: 0;width:350px;}
-->
</style>
<script language="javascript">
<!--
function mysub()
{
		esave.style.visibility="visible";
}


-->
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000">
<form name="form1" method="post" action="../upload/" enctype="multipart/form-data" >
  <div id="esave" style="position:absolute; top:18px; left:40px; z-index:10; visibility:hidden"> 
    <TABLE WIDTH=340 BORDER=0 CELLSPACING=0 CELLPADDING=0>
      <TR><td width=20%></td>
	<TD bgcolor=#104A7B width="60%"> 
	<TABLE WIDTH=100% height=120px BORDER=0 CELLSPACING=1 CELLPADDING=0>
	<TR> 
	          <td bgcolor=#eeeeee align=center><font color=red>Please wait while the file is being uploaded...</font></td>
	</tr>
	</table>
	</td><td width=20%></td>
	</tr></table></div>
  <table width="340px" border="0" cellspacing="1" cellpadding="0" align="center" bgcolor="#00cc00">
    <tr> 
      <td height="22px" align="left" valign="middle" width="340px"><strong>&nbsp;上传文件</strong>
        <input type="hidden" name="uppath" value="<%=uppath%>">
        <input type="hidden" name="filelx" value="<%=filelx%>">
        <input type="hidden" name="EditName" value="<%=EditName%>">
        <input type="hidden" name="FormName" value="<%=formName%>">
        <input type="hidden" name="act" value="uploadfile">
      </td>
    </tr>
    <tr align="center" valign="middle" bgcolor="#FFFFFF"> 
      <td align="left" id="upid" height="80px" width="340px">
   <div class="file-box">&nbsp;&nbsp;File: 
         <input type='text' name='textfield' id='textfield' class='txt' />  
 <input type='button' class='btn' value='Browse' />
    <input type="file" name="file" class="file" id="file1" accept="application/msexcel,application/msword,application/pdf,image/*" style="width:295px; display:block;" size="35" onChange="document.getElementById('textfield').value=this.value" />
   </div>
      </td>
    </tr>
    <tr align="center" valign="middle"> 
      <td height="24px" width="340px"> 
        <input type="submit" name="Submit" value="上传文件" class="button" onClick="javascript:mysub()">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
