<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../css/button.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>参与重大工程技术项目情况</title>
</head>


<body>
<table width="98%" height="557" border="0" bgcolor="#AED7FF">
  <tr>
    <td height="40" colspan="4"><p align="center" >参与重大工程技术项目情况</p></td>
  </tr>
  <tr>
    <td width="23%" height="33"><p align="center" >项目名称</p>
     
    </td>
    <td width="23%"><p align="center" >项目委托单位</p></td>
    <td width="25%"><p align="center" >本人参与情况</p></td>
    <td width="29%"><p align="center" >经济效益（万元）</p></td>
  </tr>
  <tr>
  <form>
    <td height="56"><label for="department"></label>
      <div align="center" >
        <input name="name" type="text" id="name" value="" />
      </div></td>
    <td height="56"><label for="department"></label>
      <div align="center">
        <input type="text" name="department" id="department" />
      </div></td>
    <td height="56"><label for="involvement"></label>
      <div align="center">
        <input type="text" name="involvement" id="involvement" />
      </div></td>
    <td height="56"><label for="profile"></label>
      <div align="center">
        <input type="text" name="profile" id="profile" />
      </div></td>
  </form>
  </tr>
  <tr>
    <td height="364" colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4">
      <div align="center"><a target="iframe" onclick="change4()" class="button button-block button-rounded button-primary button-large">确  认  提  交</a></div>
    </td>
  </tr>
</table>
</body>
</html>