<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
	<title>轻衣首页</title>
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/main.css"/>
	<link rel="stylesheet" href="css/reset.css"/>
</head>
<body>
	<!--header navbar-->
	<div class="navbar navbar-default navbar-size" role="navigation">
		<div class="navbar-header leftArea">
			<a href="" class="navbar-brand">你好，欢迎光临轻衣！</a>
		</div>
		<ul class="nav navbar-nav rightArea">
				<li class="dropdown">
					<a href="" data-toggle="dropdown" class="dropdown-toggle">江苏<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A-G</label>
						<li id="A"><a href="">北京 长沙 重庆 成都 福州 广州 贵阳</a></li>
						<hr>
						<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H-L</label>
						<li><a href="">哈尔滨 杭州 合肥 济南 昆明</a></li>
						<hr> 
						<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M-T</label>
						<li><a href="">南昌 南宁 南京 宁波 青岛 三亚 上海 沈阳 深圳 石家庄 苏州 太原 天津</a></li>
						<hr>
						<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;W-Z</label>
						<li><a href="">武汉 厦门 西安 郑州 中山</a></li>
					</ul>
				</li>
				<!--本次站点访问次数为：${applicationScope.counter}-->
				<%
				Map<String,String> online=(Map<String,String>)application
				.getAttribute("online");
				if (online!=null){
				for (String sessionId:online.keySet())
				{%>
				<tr>
					<td><%=sessionId %>
					<td><%=online.get(sessionId)%>
				</tr>
				<%}} %>
				<li><a href="login">[${requestScope.username},${requestScope.tip}]&nbsp&nbsp&nbsp&nbsp&nbsp<em>|</em></a></li>
				<li><a href="regist">[注册]&nbsp&nbsp&nbsp&nbsp&nbsp<em>|</em></a></li>
				<li><a href="order">我的订单&nbsp&nbsp&nbsp&nbsp&nbsp<em>|</em></a></li>
				<li><a href="##">我的收藏&nbsp&nbsp&nbsp&nbsp&nbsp<em>|</em></a></li>
				<li><a href="##">在线客服&nbsp&nbsp&nbsp&nbsp&nbsp<em>|</em></a></li>
				<li><a href="##">关于我们</a></li>
		</ul>
	</div>
	<!--logoBar-->
	<div class="logoBar">
		<div class="comWidth">
			<!--logo-->
			<div class="logo leftArea">
				<h1><b>轻衣</b></h1>
				<h6>共享品质生活</h6>
			</div>
			<!--搜索框-->
			<p>&nbsp;</p>
			<form class="form-inline rightArea" role="form">
				<div class="form-group">
				  <label class="sr-only" for="searchText">文本框</label>
				  <input type="text" class="form-control" id="searchText" placeholder="请输入你想购买的商品">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
				&nbsp;&nbsp;&nbsp;
				<a href="shopcar.html"><img class="img-rounded" src="images/1.png" alt="shopcar"></a>
			</form>	
		</div>
	</div>
		<!--navbar-->
	<div class="navbar navbar-default navbar-inverse" role="navigation">
		<ul class="nav navbar-nav navbar-header">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					全部商品分类
					<span class="caret"></span>
				</a>
				<ul class="dropdown-menu" role="menu">
					<label>&nbsp&nbsp&nbsp&nbsp&nbsp女装</label>
					<li><a href="screen"> 上装 裙装 下装</a></li>
					<li class="divider"></li>
					<label>&nbsp&nbsp&nbsp&nbsp&nbsp美妆</label>
					<li><a href="screen">护肤品 彩妆 护理 工具</a></li>
					<li class="divider"></li>
					<label>&nbsp&nbsp&nbsp&nbsp&nbsp鞋包</label>
					<li><a href="screen">单鞋 休闲鞋<br>
					钱包 手提包</a></li>
					<li class="divider"></li>
					<label>&nbsp&nbsp&nbsp&nbsp&nbsp图书</label>
					<li><a href="screen">文学  实用</a></li>
				 </ul>
			</li>
			<li><a href="index">首页</a></li>
			<li class="active"><a href="clothes">女装</a></li>
			<li><a href="makeup">美妆</a></li>
			<li><a href="shoe">鞋包</a></li>
			<li><a href="ibook">图书</a></li>
		</ul>
	</div>
	<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<ul class="breadcrumb">
				<li>
					<a href="#">所有订单</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="#">待付款</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="#">待发货</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="#">待收货</a> <span class="divider">/</span>
				</li>
				<li class="active">
					待评价
				</li>
			</ul>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>
						</th>
						<th>
							宝贝
						</th>
						<th>
							单价（元）
						</th>
						<th>
							数量
						</th>
						<th>
							商品操作
						</th>
						<th>
							实付款（元）
						</th>
						<th>
							交易状态
						</th>
						<th>
							交易操作
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
						</td>
						<td>
							<ul class="breadcrumb">
								<li>
									<input type="checkbox" />
								</li>
								<li>
									<a href="#">全选</a> <span class="divider">/</span>
								</li>
								<li>
									<div>
										<a href="#">合并付款</a> <span class="divider">/</span>
									</div>
								</li>
								
								<li class="active">
									<div>
										合并代付
									</div>
								</li>
							</ul>
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
							<ul class="nav nav-tabs">
								<li class="active">
									<a href="#">上一页</a>
								</li>
								<li>
									<a href="#">下一页</a>
								</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<input type="checkbox" />2016-05-21 订单号：00001
						</td>
						<td>
							小萌主
						</td>
						<td>
						</td>
						<td>
							和我联系
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							夏季网纱修身蕾丝连衣裙
						</td>
						<td>
							99
						</td>
						<td>
							1
						</td>
						<td>
							违规举报，退运保险
						</td>
						<td>
							99
						</td>
						<td>
							交易关闭，订单详情
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							保险服务
						</td>
						<td>
							0.00
						</td>
						<td>
							1
						</td>
					</tr>
				</tbody>
			</table>
			<table class="table table-hover">
				<tbody>
					<tr>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<input type="checkbox" />2016-05-21 订单号：00001
						</td>
						<td>
							小萌主
						</td>
						<td>
						</td>
						<td>
							和我联系
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							夏季网纱修身蕾丝连衣裙
						</td>
						<td>
							99
						</td>
						<td>
							1
						</td>
						<td>
							违规举报，退运保险
						</td>
						<td>
							99
						</td>
						<td>
							交易关闭，订单详情
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							保险服务
						</td>
						<td>
							0.00
						</td>
						<td>
							1
						</td>
					</tr>
				</tbody>
			</table>
			<table class="table table-hover">
				<tbody>
					<tr>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<input type="checkbox" />2016-05-21 订单号：00001
						</td>
						<td>
							小萌主
						</td>
						<td>
						</td>
						<td>
							和我联系
						</td>
						<td>
						</td>
						<td>
						</td>
						<td>
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							夏季网纱修身蕾丝连衣裙
						</td>
						<td>
							99
						</td>
						<td>
							1
						</td>
						<td>
							违规举报，退运保险
						</td>
						<td>
							99
						</td>
						<td>
							交易关闭，订单详情
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							保险服务
						</td>
						<td>
							0.00
						</td>
						<td>
							1
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>