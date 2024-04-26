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
						<h5 class="card-title">ĐƠN HÀNG CHI TIẾT</h5>
						<div class="table-responsive">
							<table id="myTable" class=" table table-dark text-white">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">ID đơn hàng</th>
										<th scope="col">ID sản phẩm</th>
										<th scope="col">Tên sản phẩm</th>
										<th scope="col">Giá</th>
										<th scope="col">Số lượng</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${orderedlist}" var="orderedlist">
										<tr>
											<td style="background-color: #000000;" >${orderedlist.id}</td>
											<td style="background-color: #000000;">${orderedlist.transaction_id}</td>
											<td style="background-color: #000000;">${orderedlist.product_id}</td>
											<c:forEach items="${products}" var="products">
												<c:if test="${products.id == orderedlist.product_id}">
													<td style="background-color: #000000;">${products.name}</td>
													<td style="background-color: #000000;">${products.price}VNĐ</td>
												</c:if>
											</c:forEach>
											<td style="background-color: #000000;">${orderedlist.qty}</td>

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