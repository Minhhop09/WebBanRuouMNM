<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-8">
            <div class="card">
              <div class="card-body">
                <div class="card-title">THÊM DANH MỤC</div>
                <hr>
                <form action="${pageContext.request.contextPath}/admin/cate/add" method="post">
                
                  <div class="form-group">
                    <label for="input-1">Tên Danh mục</label>
                    <input type="text" class="form-control" id="input-1" placeholder="Tên danh mục" name="cate-name">
                  </div>
	               <!-- <div class="form-group">
	                  <label for="input-2">Main category</label>
	                  <div>
	                    <select class="form-control valid" id="input-6" name="parent-id" required aria-invalid="false">
	                        <option value="0">NULL</option>
	                       <option value="1">New product</option>
	                    </select>
	                  </div>
	                </div> -->
                 <div class="form-footer">
                    <button type="submit" class="btn btn-danger"><i class="fa fa-times"></i> Huỷ</button>
                    <button type="submit" class="btn btn-success"><i class="fa fa-check-square-o"></i> Thêm</button>
                </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="overlay toggle-menu"></div>
      </div>
    </div>
  
    <jsp:include page = "./footer/footer.jsp" flush = "true" />