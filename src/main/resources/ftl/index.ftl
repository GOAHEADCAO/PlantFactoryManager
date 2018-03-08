<#setting number_format="#">
<#import "./webMacro.ftl" as webMacro>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<#include "./base.ftl">
		<script>
			var userType = "${userType!''}";
		</script>
		<script src="${rc.contextPath}/res/js/nav.js" type="text/javascript" charset="utf-8"></script>
		<script src="${rc.contextPath}/res/js/index.js" type="text/javascript" charset="utf-8"></script>
		<title>凌至物联网云服务平台</title>
	</head>
	<body>
		<div class="header clearfix">
			<div class="logo">
				<img src="${rc.contextPath}/res/images/logo.png">
			</div>
			<div class="side_nav">
				<ul>
					<li><a class="acount_btn"><#if Session._session_user_key??><#if Session._session_user_key.uname?? >${Session._session_user_key.uname!''}<#else>${Session._session_user_key.mobile!''} </#if></#if><b></b></a>
						<div>
							<a >&nbsp;</a>
						</div>
					</li>
					<li>|</li>
					<li><a href="${rc.contextPath}/d/logingOut">退出</a></li>
				</ul>
			</div>
		</div>
		<div class="frame-main">
			<div class="frame-main_left">
				<ul>
					<li class="line"></li>
					<!--业主后台 Begin-->
					<#if userType?? && userType=='1'>
						<li id="0" class="li-nav firstNav owner_tubiao_page"><a><span class="iconfont icon-monitor-copy"></span><label>实时监控</label></a></li>
						<#if meco101?? || meco102?? || meco103?? || adm??>
						<li>
							<a><span class="iconfont  icon-jiayouzhan" style="font-size: 22px;"></span><label>设备管理</label><b></b></a>
							<ul>
							<#if meco101?? || adm??>	
								<li class="li-nav" id="19"><a data-url='${rc.contextPath}/d/owner/devices/index'><label>设备列表</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco102?? || adm??>	
								<li class="li-nav" id="191"><a data-url='${rc.contextPath}/d/devices/map'><label>设备地图</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco103?? || adm??>	
								<!--li class="li-nav" id="13"><a data-url='${rc.contextPath}/d/owner/devices/set'><label>配置参数</label></a></li-->
							</#if>
							</ul>
						</li>
						<li class="line"></li>
						</#if>
						
						<#if meco201?? || meco202?? || meco203?? || meco204?? || adm??>
						<li>
							<a><span class="iconfont  icon-xitongshezhi" style="font-size: 22px;"></span><label>气化站运营</label><b></b></a>
							<ul>
							<#if meco201??||meco2101??||meco2102??||meco2103?? || adm??>	
								<li class="li-nav" id="30"><a data-url='${rc.contextPath}/d/qhz/ic/index'><label>用气卡管理</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco202??||meco2201??||meco2202??||meco2203?? || adm??>	
								<li class="li-nav" id="33"><a data-url='${rc.contextPath}/d/owner/qhz/rpt/index'><label>气化站报表</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco203?? || adm??>	
								<li class="li-nav" id="34"><a data-url='${rc.contextPath}/d/owner/qhz/settle/index'><label>结算管理</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco204?? || adm??>	
								<li class="li-nav" id="35"><a data-url='${rc.contextPath}/d/owner/qhz/billManage/index'><label>账单管理</label></a></li>
							</#if>
							</ul>
						</li>
						<li class="line"></li>
						</#if>

						<#if meco301?? || meco302?? || meco303?? || adm??>
						<li>
							<a><span class="iconfont  icon-xitongshezhi" style="font-size: 22px;"></span><label>加气站运营</label><b></b></a>
							<ul>
							<#if meco301?? || adm??>	
								<li class="li-nav" id="39"><a data-url='${rc.contextPath}/d/jqz/jqls/index'><label>加气站监控</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco302?? || adm??>	
								<li class="li-nav" id="41"><a data-url='${rc.contextPath}/d/jqz/day/index'><label>加气站报表</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco303?? || adm??>	
								<li class="li-nav" id="36"><a data-url='${rc.contextPath}/d/jqz/ic/index'><label>加气卡管理</label></a></li>
							</#if>
							</ul>
						</li>
						<li class="line"></li>
						</#if>
						
						<#if meco401?? || meco402?? || adm??>
						<li>
							<a><span class="iconfont icon-jinduchaxun" style="font-size: 22px;"></span><label>报警管理</label><b></b></a>
							<ul>
							<#if meco401?? || adm??>
								<li class="li-nav" id="44"><a data-url='${rc.contextPath}/d/owner/warnEntries/index'><label>报警信息</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco402?? || adm??>	
								<li class="li-nav" id="45"><a data-url='${rc.contextPath}/d/owner/warnMsgs/index'><label>报警信息发送日志</label></a></li>
							</#if>
							</ul>
						</li>
						<li class="line"></li>
						</#if>
						
						<#if meco501?? || meco502?? || meco503?? || meco504?? || adm??>
						<li>
							<a><span class="iconfont  icon-xitongshezhi" style="font-size: 22px;"></span><label>系统设置</label><b></b></a>
							<ul>
							<#if meco501?? || adm??>
								<li class="li-nav" id="12"><a data-url='${rc.contextPath}/d/com/ousers/index'><label>员工管理</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco502?? || adm??>	
								<li class="li-nav" id="303"><a data-url='${rc.contextPath}/d/owner/role/index'><label>角色管理</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco503?? || adm??>	
								<li class="li-nav" id="301"><a data-url='${rc.contextPath}/d/com/info'><label>公司信息</label></a></li>
								<li class="line"></li>
							</#if>
							<#if meco504?? || adm??>	
								<li class="li-nav" id="302"><a data-url='${rc.contextPath}/d/page/users.pwd'><label>修改密码</label></a></li>
							</#if>
							</ul>
						</li>
						<li class="line"></li>
						</#if>
					</#if>
					<!--业主后台 End-->
					<!--经销商后台 Begin-->
					<#if userType?? && userType=='0'>
					<li id="0" class="li-nav firstNav"><a><span class="iconfont icon-zhuye"></span><label>我的首页</label></a></li>
					<li>
						<a><span class="iconfont icon-yezhuxian" style="font-size: 22px;"></span><label>客户管理</label><b></b></a>
						<ul>
							<li class="li-nav" id="141"><a data-url='${rc.contextPath}/d/com/owner/index'><label>客户信息管理</label></a></li>
							<li class="line"></li>
							<li class="li-nav" id="142"><a data-url='${rc.contextPath}/d/com/user/index?ty=1&uty=1'><label>账号管理</label></a></li>
						</ul>
					</li>
					<li class="line"></li>
					<li class="li-nav" id="18">
						<a data-url='${rc.contextPath}/d/devices/index'><span class="iconfont icon-jiayouzhan"></span><label>设备管理</label></a>
					</li>
					<li class="line"></li>
					<li>
						<a><span class="iconfont icon-gongsi" style="font-size: 22px;"></span><label>公司管理</label><b></b></a>
						<ul>
							<li class="li-nav" id="151"><a data-url='${rc.contextPath}/d/com/info'><label>公司信息</label></a></li>
							<li class="line"></li>
							<li class="li-nav" id="152"><a data-url='${rc.contextPath}/d/com/user/index?ty=1'><label>人员管理</label></a></li>
						</ul>
					</li>
					<li class="line"></li>
					<li class="li-nav" id="19">
						<a data-url='${rc.contextPath}/d/page/users.pwd'><span class="iconfont icon-mima"></span><label>修改密码</label></a>
					</li>
					<li class="line"></li>
					</#if>
					
					<!--经销商后台 End-->
					<!--平台后台 Begin-->
					<#if userType?? && userType=='2'>
					<li id="0" class="li-nav firstNav"><a><span class="iconfont icon-zhuye"></span><label>我的首页</label></a></li>
					<li class="li-nav" id="15">
						<a data-url='${rc.contextPath}/d/com/opera/index'><span class="iconfont icon-jingxiaoshang" style="font-size: 22px;"></span><label>代理商管理</label></a>
					</li>
					<li class="line"></li>
					<!--li class="li-nav" id="16">
						<a data-url='dealerProgress;.html'><span class="iconfont icon-jinduchaxun"></span><label>代理商完成情况</label></a>
					</li>
					<li class="line"></li-->
					<li class="line"></li>
					<li>
						<a><span class="iconfont icon-jiayouzhan" style="font-size: 22px;"></span><label>设备管理</label><b></b></a>
						<ul>
							<li class="li-nav" id="18">
								<a data-url='${rc.contextPath}/d/devices/index'></span><label>设备列表</label></a>
							</li>
							<li class="li-nav" id="13">
								<a data-url='${rc.contextPath}/d/pt/devices/set'><label>配置参数</label></a>
							</li>
						</ul>
					</li>	
					<li class="line"></li>
					<li>
						<a><span class="iconfont icon-gongsi" style="font-size: 22px;"></span><label>公司管理</label><b></b></a>
						<ul>
							<li class="li-nav" id="151"><a data-url='${rc.contextPath}/d/com/info'><label>公司信息</label></a></li>
							<li class="line"></li>
							<li class="li-nav" id="153"><a data-url='${rc.contextPath}/d/standard/index'><label>储罐设置</label></a></li>
							<li class="line"></li>
							<li class="li-nav" id="154"><a data-url='${rc.contextPath}/d/cat/index'><label>传感器设置</label></a></li>
							<li class="line"></li>
                            <li class="li-nav" id="155"><a data-url='${rc.contextPath}/d/sensor/index'><label>安装位置设置</label></a></li>
							<li class="line"></li>
							<li class="li-nav" id="156"><a data-url='${rc.contextPath}/d/dataUnit/index'><label>数据单位</label></a></li>
							<li class="line"></li>

                            <li class="li-nav" id="158"><a data-url='${rc.contextPath}/d/gatherPort/index'><label>采集端口设置</label></a></li>
                            <li class="line"></li>
							<li class="li-nav" id="159"><a data-url='${rc.contextPath}/d/announcement/index'><label>公告管理</label></a></li>
                            <li class="line"></li>

							<li class="li-nav" id="152"><a data-url='${rc.contextPath}/d/com/user/index?ty=1'><label>人员管理</label></a></li>
							<li class="line"></li>
							<li class="li-nav" id="157"><a data-url='${rc.contextPath}/d/device/appVer/index'><label>APP版本管理</label></a></li>
						</ul>
					</li>
					<li class="line"></li>
					
					<!--li class="li-nav" id="22">
						<a data-url=''><span class="iconfont icon-monitor-copy"></span><label>设备监控</label></a>
					</li>
					<li class="line"></li-->
					<!--li class="li-nav" id="19">
						<a data-url=''><span class="iconfont icon-iconuser"></span><label>账号管理</label></a>
					</li-->
					<li class="line"></li>
					<li class="li-nav" id="23">
						<a data-url='${rc.contextPath}/d/updateManage/index'><span class="iconfont icon-mima"></span><label>更新包管理</label></a>
					</li>
					<li class="line"></li>
					<li class="li-nav" id="21">
						<a data-url='${rc.contextPath}/d/page/users.pwd'><span class="iconfont icon-mima"></span><label>修改密码</label></a>
					</li>
					<li class="line"></li>
					</#if>
				</ul>
			</div>
			
			
			<#if userType?? && userType=='1'>
			<div class="frame-main_right">
				<div class="navBar">
					<a class="ico_turn_left"><b></b></a>
					<a class="ico_turn_right"><b></b></a>
					<div class="tabs-wrap">
						<ul class="nav clearfix">
							<li class="fixedNav on" id="0"><a>监控</a></li>
						</ul>
					</div>
				</div>
				
				<div class="frame-main_body">
					<div class="panel" attr-id='0' style="text-align: center;overflow: auto;background: #f1f1f1;">
						
					</div>
				</div>
			</div>
			<#else>
			<div class="frame-main_right">
				<div class="navBar">
					<a class="ico_turn_left"><b></b></a>
					<a class="ico_turn_right"><b></b></a>
					<div class="tabs-wrap">
						<ul class="nav clearfix">
							<li class="fixedNav on" id="0"><a>我的首页</a></li>
						</ul>
					</div>
				</div>
				<div class="frame-main_body">
					<div class="panel" attr-id='0' style="text-align: center;overflow: auto;background: #f1f1f1;">
						<img src="${rc.contextPath}/res/images/index_pic.png">
					</div>
				</div>
			</div>
			</#if>
		</div>
		
		<!--alert弹出框-->
		<div class="dialog_alert unite_dialog_to_sure alert_to_sure">
			<div class="dialog_header">
				<span>关联</span><a title="关闭" onclick="hideDialog()"></a>
			</div>
			<div class="dialog_content ">
				<div class="dialog_content_alert">
					<h3>确定要关联吗？</h3>
					<p class="font-orange">关联后经销商可自主接单</p>
				</div>
			</div>
			<div class="dialog_alert_footer">
				<div><a class="btn sure_btn">确定</a><a class="btn cancel_btn">取消</a></div>
			</div>
		</div>
		
		<!--提示-->
		<div class="tip unite_tip tip_suc tip_error">
			<i></i>
			<span>提交失败</span>
		</div>
		<!--loading-->
		<div class="tip tip_loading" style="display: ;">
			<i></i>
			<span>加载中...</span>
		</div>
		<!--遮罩弹出框-->
		<div class="shadow  shadow_outer"></div>
		
		<!--添加弹出框，小弹出框-->
		<div class="model model_add">
			<div class="dialog_header">
				<span>新增经销商</span><a title="关闭" onclick="hideDialog()"></a>
			</div>
			<div class="dialog_content">
				<div class="dialog_content_add">
				</div>
			</div>
			<div class="dialog_alert_footer clearfix">
				<div><a class="btn">确定</a><a class="btn">取消</a></div>
			</div>
		</div>
			
		
		<div class="shadow" style="display: none;"></div>
		<!--右键菜单-->
		<div class="context_menu">
			<ul>
				<li><a>关闭当前页</a></li>
				<li><a>关闭其他页</a></li>
				<li><a>关闭所有页</a></li>
			</ul>
		</div>
		
		<!--修改密码-->
		<!--confrim弹出框-->
		<div class="dialog_alert" style="display: none;height: 230px;">
			<div class="dialog_header">
				<span>修改密码</span><a title="关闭" onclick="hideDialog()"></a>
			</div>
			
			<div class="dialog_content " style="padding: 20px 45px;">
				<div class="dialog_content_confirm" style="padding: 0;">
					<p>　原密码 <input type="password" placeholder="输入原密码" style="width: 220px;"/></p>
					<p style="margin-top: 10px;">　新密码 <input type="password" placeholder="输入新密码" style="width: 220px;"/></p>
					<p style="margin-top: 10px;">确认密码 <input type="password" placeholder="确认密码" style="width: 220px;"/></p>
				</div>
				<div class="error_info">原密码错误</div>
			</div>
			<div class="dialog_alert_footer">
				<div><a class="btn">确定</a><a class="btn">取消</a></div>
			</div>
		</div>
		<@webMacro.load_select_rel_device />
		<script src="${rc.contextPath}/res/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(function(){
				setTab();
				//$("div[attr-id=0]").load("dealerManage.html");
		});
		</script>
	</body>
</html>
