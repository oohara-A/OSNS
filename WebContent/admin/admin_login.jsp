<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="../menu.jsp"%>

<c:choose>
	<c:when test="${admin!=null}">
			<section class="vh-100 bg-image"
  style="background-image: url('../assets/image/bg-masthead.jpg;">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Logout account</h2>

              <form action="Logout.action" method="post">
                <div class="form-outline mb-4">
                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Logout</button>
                </div>

                </div>
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</c:when>
<c:otherwise>
<section class="vh-100 bg-image"
  style="background-image: url('../assets/image/bg-masthead.jpg;">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5" >Admin_Login</h2>

              <form action="Login.action" method="post">
                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example3cg">Email</label>
                  <input type="text" name="inq_admin_email" id="form3Example3cg" class="form-control form-control-lg" required="required" />
                </div>

                <div class="form-outline mb-4">
                 <label class="form-label" for="form3Example4cg">Password</label>
                 <input type="password" name="inq_admin_pass" id="form3Example4cg" class="form-control form-control-lg" required="required" />
                </div>

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Login</button>
                </div>

                <p class="text-center text-muted mt-5 mb-0"><a href="<%=request.getContextPath() %>/company/com_login.jsp"
                class="fw-bold text-body"><u>企業の方はこちら</u></a></p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</c:otherwise>
</c:choose>
 <%@include file="../footer.jsp"%>
