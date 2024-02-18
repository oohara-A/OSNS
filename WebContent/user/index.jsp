<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../menu.jsp"%>
<%@include file="../head.jsp"%>

<!-- Portfolio-->
        <div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../user/Procategory.action?category=%E9%A3%9F%E5%93%81" title="食料品">
                            <img class="img-fluid"  src="<%=request.getContextPath() %>/assets/image/new_food.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">カテゴリ</div>
                                <div class="project-name">食料品</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../user/Procategory.action?category=%E6%9C%AC" title="Project Name">
                            <img class="img-fluid" src="<%=request.getContextPath() %>/assets/image/new_book.jpg"/>
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">カテゴリ</div>
                                <div class="project-name">書籍</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../user/Procategory.action?category=%E5%8C%96%E7%B2%A7%E5%93%81" title="Project Name">
                            <img class="img-fluid" src="<%=request.getContextPath() %>/assets/image/new_cosmetics.jpg"/>
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">カテゴリ</div>
                                <div class="project-name">化粧品</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../user/Procategory.action?category=%E9%9B%BB%E6%B0%97%E7%94%A8%E5%93%81" title="電気用品">
                            <img class="img-fluid" src="<%=request.getContextPath() %>/assets/image/new_kaden.jpg" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">カテゴリ</div>
                                <div class="project-name">電化製品</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="#" title="Project Name">
                            <img class="img-fluid" src="<%=request.getContextPath() %>/assets/image/clothes.jpg"alt="..." />
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">カテゴリ</div>
                                <div class="project-name">服</div>
							</div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="#" title="Project Name">
                            <img class="img-fluid" src="<%=request.getContextPath() %>/assets/image/sports_supplies.jpg"alt="..." />
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">カテゴリ</div>
                                <div class="project-name">スポーツ用品</div>
							</div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="#" title="Project Name">
                            <img class="img-fluid" src="<%=request.getContextPath() %>/assets/image/osns_new%20.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">カテゴリ</div>
                                <div class="project-name">新商品</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="../user/Procategory.action?category=%E8%A9%A6%E4%BE%9B%E5%93%81" title="Project Name">
                            <img class="img-fluid" src="<%=request.getContextPath() %>/assets/image/sample.jpg"alt="..." />
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">カテゴリ</div>
                                <div class="project-name">お試し商品</div>
							</div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="#" title="Project Name">
                            <img class="img-fluid" src="<%=request.getContextPath() %>/assets/image/good.jpg"alt="..." />
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">カテゴリ</div>
                                <div class="project-name">評価の高い商品</div>
							</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>

<%@include file="../footer.jsp"%>