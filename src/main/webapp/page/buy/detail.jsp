<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>【民乐保险】重大疾病保险</title>
 <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/detail.css">




</head>
<body>
	<div class="wrapper">
		<!--------------------------------------header_user begin------------------------------------->

		<!---------------------------------------header_user end-------------------------------------->
		<!---------------------------------------header_nav begin------------------------------------->

		<!----------------------------------------header_nav end-------------------------------------->
		<!--container-->
		<!-- 模态框 -->
		<div class="modal fade" tabindex="-1" role="dialog" id="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">自定义报价</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">

							<table class="table table-hover">
								<tr>
									<td>保障类型</td>
									<td>保障范围</td>
									<td>自定义报价</td>
								</tr>
								<tr>
									<td>基础保险</td>
									<td>三十种重大疾病</td>
									<td><select id="money">
											<option value="50000">5万</option>
											<option value="100000">10万</option>
											<option value="150000">15万</option>
											<option value="200000">20万</option>
											<option value="250000">25万</option>
									</select> <input type="hidden" id="hidden_money"></td>
								</tr>
								<tr>
									<td rowspan="2" style="line-height: 3">医疗服务</td>
									<td>电话医学咨询</td>
									<td>/</td>
								</tr>
								<tr>
									<td>重疾绿色通道服务</td>
									<td>/</td>
								</tr>
							</table>
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>

			</div>

		</div>


		<div class="center_container">
			<!--deal main-->
			<div class="detail_first main_width fix">
				<!--left-->
				<div class="first_left fl">
					<img src="images/detail_imgs/main-img.jpg" alt="" class="first_img">
					<!--特点-->
					<ul class="first_list">
						<li>保费低 每天最低仅需1毛6</li>
						<li>保障全 意外身故、意外医疗均可保</li>
						<li>人群广 1至65周岁皆可投保</li>
						<li>理赔快 审核超60天大特保先行垫付</li>
					</ul>
				</div>
				<!--right-->
				<div class="first_right fl">
				<!--${product.product_name }  -->
					<h2>【民乐保险】${product.product_name }</h2>
					<h3>${product.product_summary }</h3>
					<p class="note">注：购买次日零时生效；由史带财险承保；每名被保人限购一份。</p>
					<div class="first_info" id="firstInfo">

						<!--保额   -->
						<!-- <dl class="info_box">
                        <dt>保&emsp;&emsp;额：</dt>
                        <dd>10万</dd>
                    </dl> -->

						<dl class="info_box">
							<dt>出生日期：</dt>
							<dd>
								<input id="birthDate"> <br> <span id="age">您的年龄是:1岁</span>
								<input type="hidden" id="hidden_age">
								
							</dd>
						</dl>

						<dl class="info_box">
							<dt>保险起期：</dt>
							<dd>
								<input class="" id="startDate1"> <br> 
								
								<span id="endDate">保险期限到:2020-10-1 二十四时 共十二个月</span>
							</dd>
						</dl>

						<!--性别  -->
						<!-- <dl class="info_box fix">
                        <dt>性&emsp;&emsp;别：</dt>
                        <dd>
                            <a href="javascript:" class="before active">男<i></i></a>
                            <a href="javascript:" class="before">女<i></i></a>
                        </dd>
                    </dl> -->
						<dl class="info_box fix">
							<dt>疾病种类：及保额</dt>
							<dd class="fl species">
								<a href="javascript:test()" class="before f_box"> <span class="a">自定义方案</span>
									<span class="b"> 25种疾病 <br> 10万保额
								</span> <i></i>
								</a>
							</dd>
						</dl>
						<span id="text_money"></span>
						<dl class="info_box">
							<dt>适用人群：</dt>
							<dd>${product.people }</dd>
						</dl>
						<dl class="info_box">
							<dt>保障期限：</dt>
							<dd>
								<span>一年</span>
								<!-- <a href="javascript:" class="before" data-price="30">30天<i></i></a> -->
							</dd>
						</dl>
						<dl class="price_box">
							<dt>价&emsp;&emsp;格：</dt>
							<dd class="fix">
								<div class="c_price">
									<em id="show_money">XX</em>元 
									<input type="hidden" id="hidden_total">
								</div>
							</dd>
						</dl>
						<div class="submit_box">
						<form method="post" id="form1" name="form1" action="/form">
							<input type="hidden" name="product_id" id="product_id" value="${product.product_id }">
							<input type="hidden" name="product_name" value="hello">
							
							<input type="hidden" id="hidden_startDate" name="startDate" value="2019-10-01">
							<input type="hidden" id="hidden_endDate" name="endDate" value="2020-10-1">
							
							
							<input type="hidden" name="money_in" id="money_in" value="">
							<input type="hidden" name="money_get" id="money_get" value="">
							<input type="hidden" name="money_text" id="money_text" value="">
							  
						
						</form>
						
							<a href="javascript:submit()" class="submit_buy">立即购买</a>已售<em>8182</em>份
						</div>
					</div>
				</div>
			</div>
			<!--deal info-->
			<div class="detail_center">
				<!--menu-->
				<div class="detail_menu_box" id="detailMenuBox">
					<div class="detail_menu" id="detailMenu">
						<div class="main_width">
							<ul>
								<li lab="introduction" class="active"><a href="javascript:"><i></i>产品介绍</a>
								</li>
								<li lab="custom"><a href="javascript:"><i></i>客户评价</a></li>
								<li lab="description"><a href="javascript:"><i></i>详细说明</a>
								</li>
								<li lab="case"><a href="javascript:"><i></i>案例</a></li>
								<li lab="consult"><a href="javascript:"><i></i>购买咨询</a></li>
							</ul>
							<a href="javascript:submit()" class="submit_buy">立即购买</a>
						</div>
					</div>
				</div>
				<!--detail_info-->
				<div class="detail_info detail_introduction">
					<!--产品介绍-->
					<div class="detail introduction intro_shidai" id="introduction">
						<div class="shidai01">
							<img src="images/detail_imgs/intro-01.jpg" alt="">
						</div>
						<div class="shidai02">
							<img src="images/detail_imgs/intro-02.jpg" alt="">
						</div>
						<div class="shidai03">
							<img src="images/detail_imgs/intro-03.jpg" alt="">
						</div>
						<div class="shidai04">
							<img src="images/detail_imgs/intro-04.jpg" alt="">
						</div>
					</div>
					<!--客户评价-->
					<div class="detail main_width">
						<div class="custom" id="custom">
							<h2 class="title_line">
								<i></i> 客户评价
							</h2>
							<ul class="custom_list" id="customList">
								<li class="fix">
									<div class="tit">
										<img src="images/detail_imgs/costom-tx.jpg" class="fl" alt="">
										<span class="fr">2016-04-29 11:27:26</span>
										<p>贾***，58岁，保额10万</p>
									</div>
									<p>【评价】：便捷购保方式</p>
									<p class="custom_service">【回复】： 0000-00-00 00:00:00</p>
								</li>
								<li class="fix">
									<div class="tit">
										<img src="images/detail_imgs/costom-tx.jpg" class="fl" alt="">
										<span class="fr">2016-04-29 11:27:26</span>
										<p>贾***，58岁，保额10万</p>
									</div>
									<p>【评价】：便捷购保方式</p>
									<p class="custom_service">【回复】： 0000-00-00 00:00:00</p>
								</li>
								<li class="fix">
									<div class="tit">
										<img src="images/detail_imgs/costom-tx.jpg" class="fl" alt="">
										<span class="fr">2016-04-29 11:27:26</span>
										<p>贾***，58岁，保额10万</p>
									</div>
									<p>【评价】：便捷购保方式</p>
									<p class="custom_service">【回复】： 0000-00-00 00:00:00</p>
								</li>
								<li class="fix">
									<div class="tit">
										<img src="images/detail_imgs/costom-tx.jpg" class="fl" alt="">
										<span class="fr">2016-04-29 11:27:26</span>
										<p>贾***，58岁，保额10万</p>
									</div>
									<p>【评价】：便捷购保方式</p>
									<p class="custom_service">【回复】： 0000-00-00 00:00:00</p>
								</li>
								<li class="fix">
									<div class="tit">
										<img src="images/detail_imgs/costom-tx.jpg" class="fl" alt="">
										<span class="fr">2016-04-29 11:27:26</span>
										<p>贾***，58岁，保额10万</p>
									</div>
									<p>【评价】：便捷购保方式</p>
									<p class="custom_service">【回复】： 0000-00-00 00:00:00</p>
								</li>
								<li class="fix">
									<div class="tit">
										<img src="images/detail_imgs/costom-tx.jpg" class="fl" alt="">
										<span class="fr">2016-04-29 11:27:26</span>
										<p>贾***，58岁，保额10万</p>
									</div>
									<p>【评价】：便捷购保方式</p>
									<p class="custom_service">【回复】： 0000-00-00 00:00:00</p>
								</li>
								<li class="fix">
									<div class="tit">
										<img src="images/detail_imgs/costom-tx.jpg" class="fl" alt="">
										<span class="fr">2016-04-29 11:27:26</span>
										<p>贾***，58岁，保额10万</p>
									</div>
									<p>【评价】：便捷购保方式</p>
									<p class="custom_service">【回复】： 0000-00-00 00:00:00</p>
								</li>
								<li class="fix">
									<div class="tit">
										<img src="images/detail_imgs/costom-tx.jpg" class="fl" alt="">
										<span class="fr">2016-04-29 11:27:26</span>
										<p>贾***，58岁，保额10万</p>
									</div>
									<p>【评价】：便捷购保方式</p>
									<p class="custom_service">【回复】： 0000-00-00 00:00:00</p>
								</li>
							</ul>
							<div class="custom_page" id="custom_page">
								<span class="current prev">上一页</span> <span class="current">1</span>
								<a href="javascript:">2</a> <a href="javascript:">3</a> <a
									href="javascript:">4</a> <a href="javascript:">5</a> <a
									href="javascript:">6</a> <a href="javascript:">7</a> <a
									href="javascript:">8</a> <span>...</span> <a href="javascript:">20</a>
								<a href="javascript:">21</a> <a href="javascript:">22</a> <a
									href="javascript:" class="next">下一页</a>
							</div>
						</div>
					</div>
					<!--详细说明-->
					<div class="detail detail_info detail_description">
						<h2 class="title_line">
							<i></i>条款及合同下载
						</h2>
						<div class="three_down con">
							<a href="#">保险条款</a> <a href="#">合同样张</a> <a href="#">理赔申请书</a>
						</div>
						<h2 class="title_line">
							<i></i>保障责任
						</h2>
						<div class="con">
							<table class="tab1" border="1" cellpadding="0" cellspacing="0">
								<thead>
									<tr>
										<th style="width: 140px;">项目</th>
										<th style="width: 40px;">保障</th>
										<th>说明</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>基础保障</td>
										<td>重大疾病</td>
										<td style="text-align: left">
											<p>自保险生效60天等待期后，若被保险人初次患合同所附的 
											<a style="color:blue" tabindex="0" role="button" data-toggle="popover" 
											data-placement="bottom" data-trigger="focus" 
											title="这款产品中的重疾责任包含如下三十种重大疾病：" 
											data-content='
												<div>
													<div style="float:left;">
													<p>（一）恶性肿瘤</p>
						                            <p>（三）脑中风后遗症</p>
						                            <p>（五）冠状动脉搭桥术</p>
						                            <p>（七）多个肢体缺失</p>
						                            <p>（九）良性脑肿瘤</p>
						                            <p>（十一）脑炎后遗症或脑膜炎后遗症</p>
						                            <p>（十三）双耳失聪</p>
						                            <p>（十五）瘫痪</p>
						                            <p>（十七）严重阿尔茨海默病</p>
						                            <p>（十九）严重帕金森病</p>
						                            <p>（二十一）严重原发性肺动脉高压</p>
						                            <p>（二十三）语言能力丧失</p>
						                            <p>（二十五）主动脉手术</p>
						                            <p>（二十七）严重的1型糖尿病</p>
						                            <p>（二十九）系统性红斑狼疮并发重度的肾功能损害</p>
												</div>
												
												<div style="padding-left: 75px;float:left">
													<p>（二）急性心肌梗塞</p>
						                            <p>（四） 重大器官移植术或造血干细胞移植术</p>
						                            <p>（六）终末期肾病</p>
						                            <p>（八）急性或亚急性重症肝炎</p>
						                            <p>（十）慢性肝功能衰竭失代偿期</p>
						                            <p>（十二）深度昏迷</p>
						                            <p>（十四）双目失明</p>
						                            <p>（十六）心脏瓣膜手术</p>
						                            <p>（十八）严重脑损伤</p>
						                            <p>（二十）严重Ⅲ度烧伤</p>
						                            <p>（二十二）严重运动神经元病</p>
						                            <p>（二十四）重型再生障碍性贫血</p>
						                            <p>（二十六）严重的多发性硬化</p>
						                            <p>（二十八）侵蚀性葡萄胎</p>
						                            <p>（三十）严重的原发性心肌病</p>
												</div>
												<p>相关疾病描述及诊断判定请以条款中的约定为准。</p>
												
												</div>
												
											'>《30种重大疾病》</a>，我们将按条款给付重大疾病保险金</p> 
										</td>
									</tr>
									<tr>
										<td rowspan="2">意外伤害医疗保险责任</td>
										<td>电话医学咨询</td>
										<td style="text-align: left">
											<p>对被保险人在服务生效期间遇到的各种伤、病相关的医疗健康问题提供解答和建议，包括但不仅限于：</p>
											<p>1) 各种身体不适的咨询与指导；</p>
											<p>2) 就医后，针对伤病情提供医疗解读与分析；</p>
											<p>3）突发流行性疾病知识普及和指导。</p>
											<p class="f_c_f63">*此服务不应被视为电话诊疗、120或911服务。</p>
											<p class="f_c_f63">服务电话：95511转9</p> 
										</td>
									</tr>

									<tr>
										<td>重疾绿色通道服务</td>
										<td style="text-align: left">
											<p>1、 提供日常预防重大疾病的医疗咨询及重大疾病治疗、康复的医疗咨询。</p>
											<p>2、
												被保险人在二级（含）以上公立医院确认罹患重大疾病后，救援公司会安排二次诊断（1次），当被保险人获得医生开具的住院单，救援公司尽快协助住院安排（1次）、手术安排（1次），同时会提供就医陪同服务。</p>
											<p>3、 服务与重疾险绑定，重大疾病以保险公司指定的重大疾病标准为准，等待期与保险方案一致，续保无等待期限制。</p>
											<p class="f_c_f63">*救援公司在进行二次诊断安排时，将根据会员需求及实际情况为其预约普通门诊或特需门诊号源（不承诺专家门诊）。在安排住院时，将优先选择普通病房。</p>
											<p class="f_c_f63">服务电话：95511转9</p>

										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!--理赔-->
					<!--  <div class="detail detail_info detail_claim">
                   
                </div> -->
					<!--案例-->
					<div class="detail detail_info detail_case">
						<div class="pro_content">
							<h2>【腾讯新闻】六旬老人按摩美容后四根肋骨骨折 被判担责5成</h2>
							<a href="#" target="_blank">http://news.qq.com/a/20140714/024688.html</a>
							<p>老人按个摩居然肋骨骨折</p>
							<p>
								小编评语：上了年纪的人多少会有骨质疏松，不小心摔跤，撞一下就有可能导致骨折，不光遭罪，医药费也不少，买一份 <span
									class="bold">【大特保-史带】个人意外伤害险</span>，最高1万元的医疗保险费用，一般足够解决大多数医药费。
							</p>
							<span class="ri_bg"></span>
						</div>
						<div class="pro_content">
							<h2>【腾讯新闻】六旬老人按摩美容后四根肋骨骨折 被判担责5成</h2>
							<a href="#" target="_blank">http://news.qq.com/a/20140714/024688.html</a>
							<p>老人按个摩居然肋骨骨折</p>
							<p>
								小编评语：上了年纪的人多少会有骨质疏松，不小心摔跤，撞一下就有可能导致骨折，不光遭罪，医药费也不少，买一份 <span
									class="bold">【大特保-史带】个人意外伤害险</span>，最高1万元的医疗保险费用，一般足够解决大多数医药费。
							</p>
							<span class="ri_bg"></span>
						</div>
						<div class="pro_content">
							<h2>【腾讯新闻】六旬老人按摩美容后四根肋骨骨折 被判担责5成</h2>
							<a href="#" target="_blank">http://news.qq.com/a/20140714/024688.html</a>
							<p>老人按个摩居然肋骨骨折</p>
							<p>
								小编评语：上了年纪的人多少会有骨质疏松，不小心摔跤，撞一下就有可能导致骨折，不光遭罪，医药费也不少，买一份 <span
									class="bold">【大特保-史带】个人意外伤害险</span>，最高1万元的医疗保险费用，一般足够解决大多数医药费。
							</p>
							<span class="ri_bg"></span>
						</div>
						<div class="pro_content">
							<h2>【腾讯新闻】六旬老人按摩美容后四根肋骨骨折 被判担责5成</h2>
							<a href="#" target="_blank">http://news.qq.com/a/20140714/024688.html</a>
							<p>老人按个摩居然肋骨骨折</p>
							<p>
								小编评语：上了年纪的人多少会有骨质疏松，不小心摔跤，撞一下就有可能导致骨折，不光遭罪，医药费也不少，买一份 <span
									class="bold">【大特保-史带】个人意外伤害险</span>，最高1万元的医疗保险费用，一般足够解决大多数医药费。
							</p>
							<span class="ri_bg"></span>
						</div>
					</div>
					<!--购买咨询-->
					<div class="detail detail_info detail_consult">
						<div class="consult_btn">
							<span class="cbtn conline active">在线咨询</span> <span
								class="cbtn coften">常见问题</span>
						</div>
						<div class="consult_box conline_box">
							<div class="feedback">
								<div class="feed feed1">
									<span>您的问题：</span>
									<textarea name="" id="" cols="30" rows="10"></textarea>
								</div>
								<div class="feed feed2">
									<span>您的邮箱或手机：</span> <input type="text" class="text01">
									<input type="button" class="text02" id="submitOnline"
										value="提&nbsp;&nbsp;交">
								</div>
							</div>
							<ul class="questBox">
								<li>
									<div class="ans fix">
										<span>2016-05-10 13:50:03 </span>
										<h2>打疫苗导致的并发症也是意外伤害吗?</h2>
									</div>
									<p class="qus">
										您好，这种情况是不包含在该产品的保障责任内的，该款产品在责任免除中提出被保险人因医疗事故或药物过敏导致的伤害不在保障范围内，感谢您对大特保的支持！
									</p>
								</li>
								<li>
									<div class="ans fix">
										<span>2016-05-10 13:50:03 </span>
										<h2>打疫苗导致的并发症也是意外伤害吗?</h2>
									</div>
									<p class="qus">
										您好，这种情况是不包含在该产品的保障责任内的，该款产品在责任免除中提出被保险人因医疗事故或药物过敏导致的伤害不在保障范围内，感谢您对大特保的支持！
									</p>
								</li>
								<li>
									<div class="ans fix">
										<span>2016-05-10 13:50:03 </span>
										<h2>打疫苗导致的并发症也是意外伤害吗?</h2>
									</div>
									<p class="qus">
										您好，这种情况是不包含在该产品的保障责任内的，该款产品在责任免除中提出被保险人因医疗事故或药物过敏导致的伤害不在保障范围内，感谢您对大特保的支持！
									</p>
								</li>
								<li>
									<div class="ans fix">
										<span>2016-05-10 13:50:03 </span>
										<h2>打疫苗导致的并发症也是意外伤害吗?</h2>
									</div>
									<p class="qus">
										您好，这种情况是不包含在该产品的保障责任内的，该款产品在责任免除中提出被保险人因医疗事故或药物过敏导致的伤害不在保障范围内，感谢您对大特保的支持！
									</p>
								</li>
								<li>
									<div class="ans fix">
										<span>2016-05-10 13:50:03 </span>
										<h2>打疫苗导致的并发症也是意外伤害吗?</h2>
									</div>
									<p class="qus">
										您好，这种情况是不包含在该产品的保障责任内的，该款产品在责任免除中提出被保险人因医疗事故或药物过敏导致的伤害不在保障范围内，感谢您对大特保的支持！
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--footer begin-->

		<!--footer end-->
		<div class="sideBar">
			<a href="#" class="slider_block app"><i></i></a> <a href="#"
				class="slider_block jimi"><i></i></a> <a href="#"
				class="slider_block feedback"><i></i></a> <a href="javascript:"
				class="slider_block backtop" id="backtop"><i></i></a>
		</div>
	</div>
	<script src="js/jquery-1.12.3.min.js"></script>
	<script src="laydate/laydate.js"></script>
	<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src="js/detail.js"></script>
	<script type="text/javascript">
		//启动模态框的函数
		function test() {
			$("#myModal").modal();
		}
		
		//提交函数
		function submit(){
			//获取保费
			var money_total = $("#show_money").html();
			$("#money_in").val(money_total);
			
			//获取保额
			var money_get = $("#money").val();
			$("#money_get").val(money_get);
			
			//获取保额文字信息
			var money_text = $("#money").find("option:selected").text();
			$("#money_text").val(money_text);
			
			//获取开始日期
			var startDate = $("#hidden_startDate").val();
			$("#startDate").val(startDate);
			
			//获取截止日期
			var endDate = $("#hidden_endDate").val();
			$("#endDate").val(endDate);
			
			$("form[name='form1']").submit();
		}

		//根据公式计算保费
		function count() {
			//获取自定义报价
			var money = $("#hidden_money").val();
			//获取年龄
			var age = $("#hidden_age").val();
			//获取产品编号
			var product_id = $("#product_id").val();
			$.ajax({
				url : "/count",
				data : {
					"money" : money,
					"age" : age,
					"product_id" : product_id
				},
				type : "POST",
				success : function(result) {
					$("#show_money").html(result);
					$("#hidden_total").val(result);
				}
			})
		}

		//提取出自定义报价的函数
		function setMoney(){
			var money = $("#money").val();
			var money_text = $("#money").find("option:selected").text();
			$.ajax({
				url : "/money",
				data : "money=" + money,
				type : "POST",
				success : function(result) {
					//console.log("您选择的自定义报价:"+result);
					$("#hidden_money").val(result);
					//$("#money_text").val(money_text);
					$("#text_money").html("您选择的自定义报价:" + money_text);
					count();
				}
			});
		}
		

		
		
		//立即执行函数
		$(function() {
			//查看重大疾病的信息框
			$('[data-toggle="popover"]').popover(
					{
						//width:auto,
						
						//trigger:'click', //触发方式
						//template: '', //你自定义的模板
						//title:"标题",//设置 弹出框 的标题
						html: true // 为true的话，data-content里就能放html代码了
						//content:"",//这里可以直接写字符串，也可以 是一个函数，该函数返回一个字符串；
					}
			);
			
			//页面加载完成后 显示一次自定义报价
			setMoney();
			
			//给自定义报价框绑定change事件
			$("#money").change(function() {
				setMoney();
			});

			//根据选定生日计算年龄
			laydate.render({
				elem : '#birthDate',
				max : 0,
				value: '2019-01-01',
				done: function(value, date, endDate) {
					//console.log(value);
					$.ajax({
						url : "/age",
						data : "date=" + value,
						type : "POST",
						success : function(result) {
							$("#hidden_age").val(result);
							$("#age").html("您的年龄是:" + result+ "岁");
							count();
						}
					})
				}
			})

			//保险开始日期 并 计算截止日期
			laydate.render({
				elem : '#startDate1',
				min : 7,
				value: '2019-10-01',
				done : function(value, date, endDate) {
					$.ajax({
						url : "/countDate",
						data : "date=" + value,
						type : "POST",
						success : function(result) {
							$("#hidden_startDate").val(value);
							$("#hidden_endDate").val(result);
							$("#endDate").html("保险期限到:" + result + " 二十四时 共十二个月")
						}
					})
				}
			})
		});
	</script>
</body>
</html>