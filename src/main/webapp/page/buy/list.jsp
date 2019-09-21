<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>分类清单</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/list.css">
</head>
<body>
<div class="wrapper">
    <!--container begin-->
    <div class="container">
        <div class="main_width list_new">
            <!--banner-->
            <div class="list_banner_box" id="listBannerBox">
                <div class="list_banner" id="listBanner">
                    <ul class="fix">
                        <li>
                            <p class="pBox p_parents" name="Parent">
                                <a href="javascript:" class="t">关爱父母</a>
                                <a href="javascript:" class="l"></a>
                            </p>
                        </li>
                        <li>
                            <p class="pBox p_children" name="Children">
                                <a href="javascript:" class="t">关爱孩子</a>
                                <a href="javascript:" class="l"></a>
                            </p>
                            <p class="pBox p_self" name="Self">
                                <a href="javascript:" class="t">关爱自己</a>
                                <a href="javascript:" class="l"></a>
                            </p>
                        </li>
                        <li>
                            <p class="pBox p_plane" name="Plane">
                                <a href="javascript:" class="t">航旅专区</a>
                                <a href="javascript:" class="l"></a>
                            </p>
                        </li>
                        <li>
                            <p class="pBox p_healthy" name="Healthy">
                                <a href="javascript:" class="t">健康险</a>
                                <a href="javascript:" class="l"></a>
                            </p>
                            <p class="pBox p_accident" name="Self">
                                <a href="javascript:" class="t">意外险</a>
                                <a href="javascript:" class="l"></a>
                            </p>
                        </li>
                        <li>
                            <p class="pBox p_team" name="Team">
                                <a href="javascript:" class="t">企业团险</a>
                                <a href="javascript:" class="l"></a>
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
            <!--健康险-->
            <h2 class="list_title" id="titleHealthy">
                <i></i>
                健康险
            </h2>
            <div class="list_con fix">
                <!--list01-->
                <c:forEach items="${list }" var="pro">
                	<div class="list list_w list01" style="background-image: ${pro.head_pic}">
                    <!--<input type="hidden" class="imgurl">-->
                    <h2>
                        <a href="">【民乐保险】${pro.product_name }</a>
                        <p class="n">${pro.product_summary }</p>
                    </h2>
                    <div class="s_box">
                        <p class="p1">${pro.product_summary }</p>
                        <p class="p2">适用人群:${pro.people }</p>
                        <p class="p3">销售范围:${pro.product_area }</p>
                        <p class="p4">${pro.product_summary }</p>
                    </div>
                    <div class="s_box_hover">
                        <p>适用人群:${pro.people }</p>
                        <p>销售范围:${pro.product_area }</p>
                        <p>${pro.product_summary }</p>
                        <p>${pro.product_summary }</p>
                    </div>
                    <p class="price">
                        <em>￥</em>
                        365
                        <em>元起</em>
                        <span>￥800元起</span>
                    </p>
                    <p>
                        <a href="" class="custom">评价：8条</a>
                    </p>
                    <a href="" class="btn">查看详情</a>
                    <a href="/go?product_id=${pro.product_id }" class="a_link"></a>
                </div>
                </c:forEach>
                
               <!--  <div class="list list_w list01">
                    <input type="hidden" class="imgurl">
                    <h2>
                        <a href="">【大特保—永安】好享孕母婴健康险</a>
                        <p class="n">孕妈妈+新生儿的双重保障</p>
                    </h2>
                    <div class="s_box">
                        <p class="p1">每天1元钱 最高15万保障</p>
                        <p class="p2">给孕妈妈和婴儿的双重呵护</p>
                        <p class="p3">含妊娠并发症医疗保障</p>
                        <p class="p4">专业儿科电话诊断服务可选</p>
                    </div>
                    <div class="s_box_hover">
                        <p>妊娠并发症住院：1万</p>
                        <p>新生儿重症住院及手术：3万</p>
                        <p>婴儿严重先天畸形：1万</p>
                        <p>妊娠身故：10万</p>
                    </div>
                    <p class="price">
                        <em>￥</em>
                        365
                        <em>元起</em>
                        <span>￥800元起</span>
                    </p>
                    <p>
                        <a href="" class="custom">评价：8条</a>
                    </p>
                    <a href="" class="btn">查看详情</a>
                    <a href="/go" class="a_link"></a>
                </div> -->
            </div>
        </div>
    </div>
    <!---container end--->
    <div class="sideBar">
        <a href="#" class="slider_block app"><i></i></a>
        <a href="#" class="slider_block jimi"><i></i></a>
        <a href="#" class="slider_block feedback"><i></i></a>
        <a href="javascript:" class="slider_block backtop" id="backtop"><i></i></a>
    </div>
</div>
<script src="js/jquery-1.12.3.min.js"></script>
<script src="js/list.js"></script>
</body>
</html>