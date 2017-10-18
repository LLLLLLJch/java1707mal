<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../common/header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="${ctx}/resources/thirdlib/bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript">
function goPage(pageIndex) {
	$('#pageIndex').val(pageIndex);
	$('#searchForm').submit();
}

function delSlideShow(id){
	var isDel = confirm("你确定要删除吗？");
	if (isDel) {
		location.href = "${ctx}/backgroundslideshow/deleteSlideShow.action?id="
				+ id;
	}
}

function selectedId(){
	$("input[name = selectedIds]").prop("checked",
			$("#selectedAll").is(":checked"));
}
function deleteAll(){
    var isDel = confirm("您确认要删除吗？");
    if (isDel) {
       //要删除
       $("#mainForm").attr("action", "${ctx}/backgroundslideshow/deleteAll.action");
       $("#mainForm").submit();
    }
}

function updateStatus(id,status){
	var isUpdate = confirm("您确定要修改吗？");
	if(isUpdate){
		location.href = "${ctx}/backgroundslideshow/updateStatus.action?id="
			+ id + "&&status=" + status;
	}
} 

</script>
</head>
<body>
	<!-- 内容区开始 -->
			<form id="mainForm"  action="" method="post">			
				<input type="button" value="批量删除" onclick="deleteAll();"/>
				<table class="align-center table  table-bordered table-hover table-condensed">
					<tr>
						<td>
							<input type="checkBox" id="selectedAll" onclick="selectedId();" />
						</td>
						<td>订单号</td>
						<td>用户名</td>
						<td>商品图片</td>
						<td>商品名称</td>
						<td>数量</td>
						<td>总价</td>
						<td>订单创建时间</td>
						<td>删除</td>
						<td>修改</td>
					</tr>
					<c:forEach items="${lItems}" var="order">
						<tr>
							<td>
								<input type="checkbox" name="selectedIds" value="${slideShow.id}"/>
							</td>
							<td>${order.order_no}</td>
							<td>${username}</td>
							<td><img alt="" src="/pic/${order.product_image}" width="80"
									height="60"></td>
							<td>${order.product_name}</td>
							<td>${order.quantity}</td>
							<td>${order.total_price}</td>
							<td>${order.create_time}</td>
							<td><a href="javascript:delSlideShow(${slideShow.id})">删除</a></td>
							<td><a href="${ctx}/backgroundCategory/toUpdateCategory.action?id=${category.id}">修改</a></td>
						</tr>
					</c:forEach>
				</table>
			</form>
	<!-- 内容区结束 -->			
</body>
</html>