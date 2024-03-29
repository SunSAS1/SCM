<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="script/common.js" ></script>
<script type="text/javascript" src="script/productDiv.js" ></script>
<script type="text/javascript" src="script/My97DatePicker/WdatePicker.js" ></script>
<script type="text/javascript">

		
		
			function update(){
				document.getElementById("m").style.display="none";
				document.getElementById("add").style.display="block";
			}
			function re(){
				document.getElementById("m").style.display="block";
				document.getElementById("add").style.display="none";
			}
			
			
</script>		
</head>
<body>
	<div id="m">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" id="m">
	  <tr>
		<td nowrap class="title1">您的位置：系统管理－－用户管理</td>
	  </tr>
	</table>
	<table width="100%"  border="0" cellpadding="0" cellspacing="0">
	  <tr>
		<td width="30px" nowrap class="toolbar">&nbsp;</td>
		<td width="40px" nowrap class="toolbar" onMouseOver="OMO(event)" onMouseOut="OMOU(event)" onClick="update()"><img src="images/new.gif">新增</td>
		<td nowrap class="toolbar">&nbsp;</td>
		<td width="60px" nowrap class="toolbar" onMouseOver="OMO(event)" onMouseOut="OMOU(event)">&nbsp;</td>
		<td width="20px" nowrap class="toolbar">&nbsp;</td>
		<td width="60px" nowrap class="toolbar" onMouseOver="OMO(event)" onMouseOut="OMOU(event)">&nbsp;</td>
		<td width="20px" nowrap class="toolbar">&nbsp;</td>
		<td width="60px" nowrap class="toolbar" onMouseOver="OMO(event)" onMouseOut="OMOU(event)">&nbsp;</td>
		<td width="20px" nowrap class="toolbar">&nbsp;</td>
		<td width="60px" nowrap class="toolbar" onMouseOver="OMO(event)" onMouseOut="OMOU(event)">&nbsp;</td>
		<td width="20px" nowrap class="toolbar">&nbsp;</td>
	  </tr>
	</table>
	<div class="query_div">
		用户账号：<input type="text"/>
		用户姓名：<input type="text"/>
		添加日期：
			<input type="text" class="Wdate" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:true,readOnly:true})"/>
			-
			<input type="text" class="Wdate" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:true,readOnly:true})"/>
			
		锁定状态：
			<input type="radio" value=""  checked="true"/>全部
			<input type="radio" value=""  />锁定
			<input type="radio" value=""  />正常
		<input type="button" value="查询"/>
	</div>
	<table width="100%"  border="0" align="center" cellspacing="1" class="c">
	  <tr>
		<td class="title1">用户账号</td>
		<td class="title1">用户姓名</td>
		<td class="title1">添加日期</td>
		<td class="title1">锁定状态</td>
		<td class="title1">用户权限列表</td>
		<td class="title1">操作</td>
	  </tr>
	  <c:forEach items="userList" var="u">
	  	<tr>
		<td align="center">${u.id}</td>
		<td align="center">${u.name}</td>
		<td align="center">${u.creatDate}</td>
		<td align="center">${u.status}</td>
		<td align="center">${u.model}</td>
		<td align="center"><a href="#" onClick="update()">修改</a> <a href="#">删除</a></td>
	  </tr>
	  </c:forEach>
	  <tr>
		<td align="center">1</td>
		<td align="center">王朝</td>
		<td align="center">2013-09-22</td>
		<td align="center"></td>
		<td align="center">管理员</td>
		<td align="center"><a href="#" onClick="update()">修改</a> <a href="#">删除</a></td>
	  </tr>
	</table>
	</div>
	<div id="add" class="hidd">
		<table width="100%"  border="0" align="center" cellspacing="1" class="c">
	  <tr>
		<td class="title1">用户账号</td>
		<td class="title1">用户姓名</td>
		</tr>
	  <tr>
		<td align="center">用户名</td>
		<td align="center"><input type="text"/></td>
	</tr>
	<tr>
		<td align="center">密码</td>
		<td align="center"><input type="password"/></td>
	</tr>
	 
	  <tr>
		<td align="center">锁定状态</td>
		<td align="center"><input type="radio" name="y"/>是 <input type="radio" name="y"/>否</td>
		</tr>
	  <tr>
		<td align="center">用户权限</td>
		<td align="center"><input type="checkbox"/>管理员<input type="checkbox"/>采购<input type="checkbox"/>仓管</td>
		</tr>
	  <tr>
		<td height="18" colspan="2" align="center"><input type="reset"/> <input type="button" value="保存" onClick="re()"/></td>
		</tr>
	</table>


	</div>
</body>
</html>