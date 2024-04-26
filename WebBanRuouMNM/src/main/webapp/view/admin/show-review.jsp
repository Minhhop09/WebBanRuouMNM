<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
    <div class="content-wrapper">
      <div class="container-fluid">
        <!--End Row-->

          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">DANH SÁCH ĐÁNH GIÁ</h5>
                <div class="table-responsive">
                  <table id="myTable" class=" table table-dark text-white">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên khách hàng</th>
                        <th scope="col">Email</th>
                        <th scope="col">ID Sản phẩm</th>
                        <th scope="col">Nội dung</th>
                        <th scope="col">Ngày gửi</th>
                        <th scope="col"></th>
                      </tr>
                    </thead>
                    <tbody>
                  <c:forEach items="${reviewlist}" var="review">
                      <tr>
                        <td style="background-color: #000000;" scope="row">${review.id}</td>
                        <td style="background-color: #000000;">${review.name}</td>
        				<td style="background-color: #000000;">${review.email}</td>
        				<td style="background-color: #000000;">${review.product_id}</td>
        				<td style="background-color: #000000;">${review.content}</td>
        				<td style="background-color: #000000;">${review.created}</td>
        				 <td style="background-color: #000000;">
                         <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/review/delete?id=${review.id}">Xoá</a></button>
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
 
    <jsp:include page = "./footer/footer.jsp" flush = "true" />
    <script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		$("#myTable").dataTable();
	});
</script>