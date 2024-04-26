<%@page import="java.sql.ResultSet"%>
<%@page import="connection.connectDB"%>
<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");

	if (session.getAttribute("admin-username") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/login");
	}
%>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
<!-- Start header section -->
<jsp:include page="./header/header.jsp" flush="true" />
<div class="content-wrapper">
	<div class="container-fluid">
		<!--End Row-->

	
		<div class="row">
			<div class="col-lg-12">
				<button class="add-catalog">
					<a href="${pageContext.request.contextPath}/admin/admin/add">THÊM
						ADMIN</a>
				</button>
			</div>
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">DANH SÁCH ADMIN</h5>
						<div class="table-responsive">
							<table id="myTable" class=" table table-dark text-white">
								<thead>
									<tr>
										<th scope="col">STT</th>
										<th scope="col">Tên đăng nhâp</th>
										<th scope="col">Tên</th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${adminlist}" var="admin">
										<tr>
											<td style="background-color: #000000;" scope="row">${admin.id}</td>
											<td style="background-color: #000000;" >${admin.username}</td>
											<td style="background-color: #000000;" >${admin.name}</td>
											<td style="background-color: #000000;" >
												<button class="btn btn-danger">
													<a	href="${pageContext.request.contextPath}/admin/admin/delete?admin-id=${admin.id}">Xoá</a>
												</button>

												<button class="btn btn-success">
													<a href="${pageContext.request.contextPath}/admin/admin/edit?id=${admin.id}">Điều chỉnh</a>
												</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="./footer/footer.jsp" flush="true" />

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		$("#myTable").dataTable();
	});
</script>