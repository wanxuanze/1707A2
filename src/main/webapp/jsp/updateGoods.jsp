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
	<form action="<%=path%>/updateGoods" method="post" enctype="multipart/form-data">
			<input type="hidden" name="gid" value="${goods.gid}">
		商品<input type="text" name="gname" value="${goods.gname}"><br><br>
		价格<input type="text" name="price" value="${goods.price}"><br><br>
		英文名<input type="text" name="gename" value="${goods.gename}"><br><br>
		尺寸<input type="text" name="size" value="${goods.size}"><br><br>
		介绍<input type="text" name="introduce" value="${goods.introduce}"><br><br>
		种类
		<select name="cid1" id="category">
		
		</select>
		品牌
		<select name="cid2" id="brand">
		
		</select><br><br>
		图片
		<img alt="xxx" src="<%=path%>/lookingImg?path=${goods.picurl}" height="100" width="100">
		<input type="file" name="file"><br><br>
		<input type="submit" value="修改">
	</form>
</body>

<script type="text/javascript">


	$.post(
			"<%=path%>/getCategoryList",		
			{pid:0},
			function(obj){
				var str="";
				str+="<option value=''>请选择</option>";
				$.each(obj,function(index,data){
					var cid=${goods.cid1}
					if(cid==data.cid){
						str+="<option value='"+data.cid+"' selected>"+data.cname+"</option>";
					}else{
						str+="<option value='"+data.cid+"'>"+data.cname+"</option>";
					}
				});
				$("#category").html(str);
			},
			"json"
	)
	
	var cid = ${goods.cid1}
	
	$.post(
			"<%=path%>/getCategoryList",		
			{pid:cid},
			function(obj){
				var str="";
				str+="<option value=''>请选择</option>";
				$.each(obj,function(index,data){
					var cid=${goods.cid2}
					if(cid==data.cid){
						str+="<option value='"+data.cid+"' selected>"+data.cname+"</option>";
					}else{
						str+="<option value='"+data.cid+"'>"+data.cname+"</option>";
					}
				});
				$("#brand").html(str);
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
 					var cid=${goods.cid2}
 					if(cid==data.cid){
 						str+="<option value='"+data.cid+"' selected>"+data.cname+"</option>";
 					}else{
 						str+="<option value='"+data.cid+"'>"+data.cname+"</option>";
 					}
 				});
 				$("#brand").html(str);
				},
				"json"
		)
	})

</script>
</html>