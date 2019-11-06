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
<form action="getGoodsList" method="post">
	<select name="ziduan">
		<option value="gid">编号</option>
		<option value="price">价格</option>
		
	</select>
	<select name="order">
		<option value="asc">升序</option>
		<option value="desc">降序</option>
	</select>
	<input type="submit" value="搜索">
</form>
<body>
	<div align="center">
		<form>
			<table border="1">
				<thead>
					<tr>
						<th>选择</th>
						<th>编号</th>
						<th>商品</th>
						<th>价格</th>
						<th>英文名</th>
						<th>种类</th>
						<th>品牌</th>
						<th>尺寸</th>
						<th>介绍</th>
						<th>图片</th>
						<th colspan="2">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="l">
					<tr>
						<td><input type="checkbox" value="${l.gid}" class="cks"></td>
						<td>${l.gid}</td>
						<td>${l.gname}</td>
						<td>${l.price}</td>
						<td>${l.gename}</td>
						<td>${l.cname1}</td>
						<td>${l.cname2}</td>
						<td>${l.size}</td>
						<td>${l.introduce}</td>
						<td><img alt="xxx" src="<%=path%>/lookingImg?path=${l.picurl}" height="40px" width="40px"></td>
						<td><input type="button" value="修改" onclick="updateGoods(${l.gid})"></td>
						<td><input type="button" value="删除" onclick="deleteGoods(${l.gid})"></td>
					</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="12">
						 	<input type="button" value="首页" onclick="page(1)">
						 	<input type="button" value="上一页" onclick="page(${page.pageNum}==1?${page.pageNum}:${page.pageNum-1})">
						 	<input type="button" value="下一页" onclick="page(${page.pageNum}==${page.pages}?${page.pages}:${page.pageNum+1})">
						 	<input type="button" value="尾页" onclick="page(${page.pages})"><br><br>
						 	<input type="button" value="全选" onclick="chooseAll()">
						 	<input type="button" value="全不选" onclick="ignoreAll()">
						 	<input type="button" value="反选" onclick="reverseChoose()">
						 	<input type="button" value="批删" onclick="deleteAll()">
						 	<input type="button" value="添加" onclick="addGoods()">
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>

<script type="text/javascript">
	function page(pageNum){
		location="<%=path%>/getGoodsList?pageNum="+pageNum;
	}
	
	function chooseAll(){
		$(".cks").attr("checked",true);
	}
	
	function ignoreAll(){
		$(".cks").attr("checked",false);
	}
	
	function reverseChoose(){
		$(".cks").each(function(){
			this.checked =! this.checked;
		})
	}
	
	function deleteAll(){
		var ids= $(".cks:checked").map(function(){
			return $(this).val();
		}).get().join();
		
		$.post(
				"<%=path%>/deleteAll",		
				{ids:ids},
				function(obj){
					if(obj>0){
						alert("删除成功");
						location="<%=path%>/getGoodsList";
					}
				},
				"json"
		)
	}
	
	function addGoods(){
		location="<%=path%>/jsp/addGoods.jsp";
	}
	
	function updateGoods(gid){
		location="<%=path%>/getGoodsByGid?gid="+gid;
	}
</script>
</html>