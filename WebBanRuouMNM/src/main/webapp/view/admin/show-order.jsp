<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");

	if (session.getAttribute("admin-username") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/login");
	}
%>
<!-- Start header section -->
<jsp:include page="./header/header.jsp" flush="true" />
<div class="content-wrapper">
	<div class="container-fluid">
		<!--End Row-->


		<div class="row">

			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">DANH SÁCH ĐƠN HÀNG</h5>
						<div class="table-responsive">
							<table id="myTable" class=" table table-dark text-white">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Username</th>
										<th scope="col">Tên</th>
										<th scope="col">Email</th>
										<th scope="col">SĐT</th>
										<th scope="col">Địa chỉ</th>
										<th scope="col">Ghi chú</th>
										<th scope="col">Tổng tiền</th>
										<th scope="col">Thanh toán</th>
<!-- 										<th scope="col">Status</th> -->
										<th scope="col">Ngày</th>
										<th scope="col">Action</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${order}" var="order">
										<tr>
											<td style="background-color: #000000;"scope="row">${order.id}</td>
											<td style="background-color: #000000;"> ${order.user_session}</td>
											<td style="background-color: #000000;">${order.user_name}</td>
											<td style="background-color: #000000;">${order.user_mail}</td>
											<td style="background-color: #000000;">${order.user_phone}</td>
											<td style="background-color: #000000;">${order.address}</td>
											<td style="background-color: #000000;">${order.message}</td>
											<td style="background-color: #000000;">${order.amount}VNĐ</td>
											<td style="background-color: #000000;"><c:choose>
													<c:when test="${order.payment == 0}">
														<c:out value="COD" />
													</c:when>
													<c:otherwise>
														<c:out value="Thẻ nội địa ATM" />
													</c:otherwise>
												</c:choose></td>
<%-- 											<td style="background-color: #000000;"><c:choose> --%>
<%-- 													<c:when test="${order.status == NULL}"> --%>
<%-- 														<c:out value="Chưa thanh toán" /> --%>
<%-- 													</c:when> --%>
<%-- 													<c:otherwise> --%>
<%-- 														<c:out value="Đã thanh toán" /> --%>
<%-- 													</c:otherwise> --%>
<%-- 												</c:choose></td> --%>
											<td style="background-color: #000000;">${order.created}</td>


											<td style="background-color: #000000;">
												<button class="btn btn-danger">
													<a
														href="${pageContext.request.contextPath}/admin/order/delete?id=${order.id}">Xoá</a>
												</button>

												<button class="btn btn-success">
													<a
														href="${pageContext.request.contextPath}/admin/order/edit?id=${order.id}">Cập nhật</a>
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