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

		<div class="row mt-3">
			<div class="col-lg-12">
				<button class="add-catalog">
					<a href="${pageContext.request.contextPath}/admin/product/add">THÊM SẢN PHẨM</a>
				</button>
			</div>
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">	DANH SÁCH SẢN PHẨM</h5>
						<div class="table-responsive">
							<table id="myTable" class=" table table-dark text-white ">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Tên sản phẩm</th>
										<th scope="col">Hình ảnh</th>
										<th scope="col">ID danh mục</th>
										<th scope="col">Giá</th>
										<th scope="col">Trạng thái</th>
										<th scope="col">Giảm giá</th>
										<th scope="col">Ngày tạo</th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${productlist}" var="product">
										<tr>
											<th scope="row" style="background-color: #000000;">${product.id }</th>
											<td style="background-color: #000000;">${product.name }</td>
											<td style="background-color: #000000;"><img
												style="width: 110px; height: 67px; object-fit: cover; border: 1px solid #fff;"
												src="${product.image_link} " alt="${product.name}"></td>
											<td style="background-color: #000000;">${product.catalog_id }</td>
											<td style="background-color: #000000;">${product.price }</td>
											<td style="background-color: #000000;"><c:choose>
													<c:when test="${product.status == 1}">
														<c:out value="Còn hàng" />
													</c:when>
													<c:otherwise>
														<c:out value="Hết hàng" />
													</c:otherwise>
												</c:choose></td>
											<td style="background-color: #000000;">${product.discount }%</td>
											<td style="background-color: #000000;">${product.created }</td>
											<td style="background-color: #000000;">
												<button class="btn btn-danger">
													<a
														href="${pageContext.request.contextPath}/admin/product/delete?id=${product.id}">Xóa</a>
												</button>

												<button class="btn btn-success">
													<a
														href="${pageContext.request.contextPath}/admin/product/edit?id=${product.id}">Sửa</a>
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
		<div class="overlay toggle-menu"></div>
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