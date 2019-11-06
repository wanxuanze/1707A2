<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
	String path=request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css"/> 
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.validate.js"></script>
</head>
<body>
	<form action="<%=path%>/addGoods" method="post" enctype="multipart/form-data">
		商品<input type="text" name="gname"><br><br>
		价格<input type="text" name="price"><br><br>
		英文名<input type="text" name="gename"><br><br>
		尺寸<input type="text" name="size"><br><br>
		介绍<input type="text" name="introduce"><br><br>
		种类
		<select name="cid1" id="category">
		
		</select>
		品牌
		<select name="cid2" id="brand">
		
		</select><br><br>
		图片<input type="file" name="file"><br><br>
		<input type="submit" value="添加">
	</form>
</body>

<script type="text/javascript">
	 	
	 	var str="";
	 	$.post(
	 			"<%=path%>/getCategoryList",		
	 			{pid:0},
	 			function(obj){
	 				str+="<option value=''>请选择</option>";
	 				$.each(obj,function(index,data){
	 					str+="<option value='"+data.cid+"'>"+data.cname+"</option>";
	 				});
	 				$("#category").html(str);
	 			},
	 			"json"
	 	)
	 	
	 	$("#category").change(function(){
	 		var str="";
	 		var pid=$(this).val();
	 		$.post(
	 				"<%=path%>/getCategoryList",		
	 				{pid:pid},
	 				function(obj){
	 					str+="<option value=''>请选择</option>";
		 				$.each(obj,function(index,data){
		 					str+="<option value='"+data.cid+"'>"+data.cname+"</option>";
		 				});
		 				$("#brand").html(str);
	 				},
	 				"json"
	 		)
	 	})
	 	
</script>
</html>