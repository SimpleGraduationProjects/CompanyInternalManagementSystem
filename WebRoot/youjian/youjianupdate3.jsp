<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<LINK href="theme/css/0.css" type=text/css rel=stylesheet><link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
 <script src="js/Calendar.js"></script>
<body>

<br/><br/>
<font size="5">查看消息</font>




<form action="method!youjianadd2" method="post">
<table cellspacing="1" cellpadding="1" border="0" width="70%" class="ListTbl">


<tr height="20" class="ListTtl">
<td style="font-weight: bold;">
消息发送人
</td>
<td style="font-weight: bold;">
${bean.fromuser.truename }
</td>
</tr>


<tr height="20" class="ListTtl">
<td style="font-weight: bold;">
消息接收人
</td>
<td style="font-weight: bold;">
${bean.touser.truename }
</td>
</tr>



<tr height="20" class="ListTtl">
<td style="font-weight: bold;">
消息标题
</td>
<td style="font-weight: bold;">
<input type="text" name="title"   value="${bean.title }"  readonly="readonly"/>
</td>
</tr>


<tr height="20" class="ListTtl">
<td style="font-weight: bold;">
内容
</td>
<td style="font-weight: bold;">
<textarea rows="7" cols="50" name="content" readonly="readonly">${bean.content }</textarea>
</td>
</tr>

<tr height="20" class="ListTtl">
<td style="font-weight: bold;">
操作
</td>
<td style="font-weight: bold;">

<input  onclick="javascript:history.go(-1);" style="width: 60px" type="button" value="返回" />
</td>
</tr>

</table>
</form>

</body>
