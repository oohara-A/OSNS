<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="../menu.jsp"%>
<section class="vh-100 bg-image"
  style="background-image: url('../assets/image/bg-masthead.jpg;">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>

              <form action="Register_company.action" method="post">

                <div class="form-outline mb-4">
	                <label class="form-label" for="form3Example1cg">氏名</label>
	                <input type="text" name="com_full_name" id="form3Example1cg" class="form-control form-control-lg" required="required" />
                </div>

                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example3cg">企業名</label>
                <input type="text" name="com_name" id="form3Example3cg" class="form-control form-control-lg" required="required" />
                </div>

                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example3cg">所在地</label>
                <input type="text" name="com_address" id="form3Example3cg" class="form-control form-control-lg" required="required" />
                </div>

                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example3cg">メールアドレス</label>
                  <input type="email" name="com_email" id="form3Example3cg" class="form-control form-control-lg" required="required" />
                </div>

                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example3cg">電話番号</label>
                <input type="tel" name="com_tel" id="form3Example3cg" class="form-control form-control-lg" required="required" />
                </div>

                <div class="form-outline mb-4">
                 <label class="form-label" for="form3Example4cg">パスワード</label>
                  <input type="password" name="com_password" id="form3Example4cg" class="form-control form-control-lg" required="required" />
                </div>

                <div class="form-outline mb-4">
                 <label class="form-label" for="form3Example4cg">もう一度パスワード</label>
                  <input type="password" name="one_com_password" id="form3Example4cg" class="form-control form-control-lg" required="required" />
                </div>

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Sign up</button>
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="user_login.jsp"
                    class="fw-bold text-body"><u>Login here</u></a></p>
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
 <%@include file="../footer.jsp"%>
