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
				<button class="add-catalog">
					<a href="${pageContext.request.contextPath}/admin/cate/add">THÊM DANH MỤC
				</button>
			</div>
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">DANH SÁCH DANH MỤC</h5>
						<div class="table-responsive">
							<table id="myTable" class=" table table-dark text-white">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Tên Danh mục</th>
										<th scope="col"></th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${catelist}" var="cate">
										<tr>
											<td style="background-color: #000000;" scope="row">${cate.id}</td>
											<td style="background-color: #000000;" >${cate.name}</td>
											<td style="background-color: #000000;" >
												<button class="btn btn-danger">
													<a
														href="${pageContext.request.contextPath}/admin/cate/delete?id=${cate.id}">Xoá</a>
												</button>

												<button class="btn btn-success">
													<a
														href="${pageContext.request.contextPath}/admin/cate/edit?id=${cate.id}">Chỉnh sửa</a>
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