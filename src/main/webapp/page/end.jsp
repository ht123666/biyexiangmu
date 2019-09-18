<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>。。。</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/jquery.slideBox.css">
    <script src="js/jquery-1.12.3.min.js"></script>
	
</head>
<body>
	
    <!--页脚开始-->
    <div class="copyright">
        <div class="main_width footer">
            <div class="footer_nav">
                <p>
                    <a href="#">关于京东金融</a>
                    <span class="divider">|</span>
                    <a href="#">关于京东小金库</a>
                    <span class="divider">|</span>
                    <a href="#">关于京东钱包</a>
                    <span class="divider">|</span>
                    <a href="#">关于京东白条</a>
                    <span class="divider">|</span>
                    <a href="#">联系我们</a>
                    <span class="divider">|</span>
                    <a href="#">免责声明</a>
                </p>
                <p>Copyright © 2004-2016 京东JD.com 版权所有<span class="divider">|</span>投资有风险，购买需谨慎</p>
            </div>
            <div class="footer_contact">
                <div class="f_contact_time">
                    联系我们<span>（09:00-22:00）</span>
                </div>
                <div class="f_contact_content">
                    <div class="f_cc_left">
                        <span class="f_cc_item">个人业务：400-098-8511</span>
                        <span class="f_cc_item">企业业务：400-088-8816</span>
                    </div>
                    <div class="f_cc_mid">
                        <a href="#" class="f_cc_link item_JIMI">咨询JIMI</a>
                        <a href="#" class="f_cc_link item_kefu">在线客服</a>
                    </div>
                    <div class="f_cc_right">
                        <a href="#" class="f_cc_link item_mail">客服邮箱</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--页脚结束-->
</body>
</html>