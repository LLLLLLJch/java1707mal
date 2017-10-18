<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../common/header.jsp" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Dashboard</title>

    <link href="${ctx}/resources/thirdlib/H+/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/resources/thirdlib/H+/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="${ctx}/resources/thirdlib/H+/css/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="${ctx}/resources/thirdlib/H+/css/jquery.gritter.css" rel="stylesheet">

    <link href="${ctx}/resources/thirdlib/H+/css/animate.css" rel="stylesheet">
    <link href="${ctx}/resources/thirdlib/H+/css/style.css" rel="stylesheet">

	<script type="text/javascript">
function uploadPic() {
    //定义参数
    var options = {
        url:"${ctx}/upload/uploadPic.action",
        dataType:"json",
        type:"post",
        success: function(data) {
        	alert(data.fileName);
            $("#imgId").attr("src","/pic/" + data.fileName);
            $("#mainImage").val(data.fileName);
        }
    };
     $("#form-add").ajaxSubmit(options);
}


</script>
</head>

<body>
    <div id="wrapper">
		     <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="${pageContext.request.contextPath}/resources/img/profile_small.jpg" />
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="profile.html">Profile</a></li>
                                <li><a href="contacts.html">Contacts</a></li>
                                <li><a href="mailbox.html">Mailbox</a></li>
                                <li class="divider"></li>
                                <li><a href="login.html">Logout</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                    </li>
                    <li>
                        <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">商品管理</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse"> 
                            <li><a href="${ctx}/background/findAllCategory.action">显示全部商品</a></li>
                            <li><a href="${ctx}/background/getCategory.action">添加商品</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">分类管理</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="${ctx}/backgroundCategory/getAddCategoryPage.action">添加分类</a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="mailbox.html"><i class="fa fa-envelope"></i> <span class="nav-label">轮播图管理</span><span class="label label-warning pull-right">16/24</span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="${ctx}/backgroundslideshow/findAllSlideShow.action">显示所有轮播图</a></li>
                            <li  class="active"><a href="${ctx}/backgroundslideshow/getAddSlideShow.action">添加轮播图</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="${ctx}/getOrderBack/getUserOrder.action"><i class="fa fa-pie-chart"></i> <span class="nav-label">订单管理</span>  </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">管理员管理</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="form_basic.html">Basic form</a></li>
                            <li><a href="form_advanced.html">Advanced Plugins</a></li>
                            <li><a href="form_wizard.html">Wizard</a></li>
                            <li><a href="form_file_upload.html">File Upload</a></li>
                            <li><a href="form_editors.html">Text Editor</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop"></i> <span class="nav-label">支付管理</span>  <span class="pull-right label label-primary">SPECIAL</span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="contacts.html">Contacts</a></li>
                            <li><a href="profile.html">Profile</a></li>
                            <li><a href="profile_2.html">Profile v.2</a></li>
                            <li><a href="contacts_2.html">Contacts v.2</a></li>
                            <li><a href="projects.html">Projects</a></li>
                            <li><a href="project_detail.html">Project detail</a></li>
                            <li><a href="teams_board.html">Teams board</a></li>
                            <li><a href="social_feed.html">Social feed</a></li>
                            <li><a href="clients.html">Clients</a></li>
                            <li><a href="full_height.html">Outlook view</a></li>
                            <li><a href="vote_list.html">Vote list</a></li>
                            <li><a href="file_manager.html">File manager</a></li>
                            <li><a href="calendar.html">Calendar</a></li>
                            <li><a href="issue_tracker.html">Issue tracker</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="article.html">Article</a></li>
                            <li><a href="faq.html">FAQ</a></li>
                            <li><a href="timeline.html">Timeline</a></li>
                            <li><a href="pin_board.html">Pin board</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Welcome to INSPINIA+ Admin Theme.</span>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="${ctx}/resources/img/a7.jpg">
                                </a>
                                <div class="media-body">
                                    <small class="pull-right">46h ago</small>
                                    <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="${ctx}/resources/img/a4.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right text-navy">5h ago</small>
                                    <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="${ctx}/resources/img/profile.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">23h ago</small>
                                    <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                    <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="mailbox.html">
                                    <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="mailbox.html">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="profile.html">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="grid_options.html">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications.html">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>


                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
                <li>
                    <a class="right-sidebar-toggle">
                        <i class="fa fa-tasks"></i>
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row  border-bottom white-bg dashboard-header">
				<div style="width: 800px">
			<form action="${ctx}/backgroundslideshow/addSlideShow.action" method="post" enctype="multipart/form-data" class="form form-horizontal" id="form-add">
			    <div style="margin-top: 10px;">
				<label for="exampleInputEmail1">名称</label> <input type="text" name="name" 
				 class="form-control" />
				</div>
				<div>
					<label>产品主图</label>
					 <img alt="" id="imgId" src="" width=200 height=80>
         			 <input type="hidden" name="main_image" id="mainImage"/>
         			 <input type="file" name="pictureFile" onchange="uploadPic();"/>
				</div>
					<select name="status">
						<option value="1">上架</option>
						<option value="2">下架</option>
					</select>
				<div>
					<input type="submit"  class="btn btn-primary" value="提交"/>
				</div>
			</form>	
		</div>		
            </div>

        </div>
        <div class="small-chat-box fadeInRight animated">

            <div class="heading" draggable="true">
                <small class="chat-date pull-right">
                    02.19.2015
                </small>
                Small chat
            </div>

            <div class="content">

                <div class="left">
                    <div class="author-name">
                        Monica Jackson <small class="chat-date">
                        10:02 am
                    </small>
                    </div>
                    <div class="chat-message active">
                        Lorem Ipsum is simply dummy text input.
                    </div>

                </div>
                <div class="right">
                    <div class="author-name">
                        Mick Smith
                        <small class="chat-date">
                            11:24 am
                        </small>
                    </div>
                    <div class="chat-message">
                        Lorem Ipsum is simpl.
                    </div>
                </div>
                <div class="left">
                    <div class="author-name">
                        Alice Novak
                        <small class="chat-date">
                            08:45 pm
                        </small>
                    </div>
                    <div class="chat-message active">
                        Check this stock char.
                    </div>
                </div>
                <div class="right">
                    <div class="author-name">
                        Anna Lamson
                        <small class="chat-date">
                            11:24 am
                        </small>
                    </div>
                    <div class="chat-message">
                        The standard chunk of Lorem Ipsum
                    </div>
                </div>
                <div class="left">
                    <div class="author-name">
                        Mick Lane
                        <small class="chat-date">
                            08:45 pm
                        </small>
                    </div>
                    <div class="chat-message active">
                        I belive that. Lorem Ipsum is simply dummy text.
                    </div>
                </div>


            </div>
            <div class="form-chat">
                <div class="input-group input-group-sm"><input type="text" class="form-control"> <span class="input-group-btn"> <button
                        class="btn btn-primary" type="button">Send
                </button> </span></div>
            </div>

        </div>
        <div id="small-chat">

            <span class="badge badge-warning pull-right">5</span>
            <a class="open-small-chat">
                <i class="fa fa-comments"></i>

            </a>
        </div>
        <div id="right-sidebar">
            <div class="sidebar-container">

                <ul class="nav nav-tabs navs-3">

                    <li class="active"><a data-toggle="tab" href="#tab-1">
                        Notes
                    </a></li>
                    <li><a data-toggle="tab" href="#tab-2">
                        Projects
                    </a></li>
                    <li class=""><a data-toggle="tab" href="#tab-3">
                        <i class="fa fa-gear"></i>
                    </a></li>
                </ul>

                <div class="tab-content">


                    <div id="tab-1" class="tab-pane active">

                        <div class="sidebar-title">
                            <h3> <i class="fa fa-comments-o"></i> Latest Notes</h3>
                            <small><i class="fa fa-tim"></i> You have 10 new message.</small>
                        </div>

                        <div>

                            <div class="sidebar-message">
                                <a href="#">
                                    <div class="pull-left text-center">
                                        <img alt="image" class="img-circle message-avatar" src="${ctx}/resources/img/a1.jpg">

                                        <div class="m-t-xs">
                                            <i class="fa fa-star text-warning"></i>
                                            <i class="fa fa-star text-warning"></i>
                                        </div>
                                    </div>
                                    <div class="media-body">

                                        There are many variations of passages of Lorem Ipsum available.
                                        <br>
                                        <small class="text-muted">Today 4:21 pm</small>
                                    </div>
                                </a>
                            </div>
                            <div class="sidebar-message">
                                <a href="#">
                                    <div class="pull-left text-center">
                                        <img alt="image" class="img-circle message-avatar" src="${ctx}/resources/img/a2.jpg">
                                    </div>
                                    <div class="media-body">
                                        The point of using Lorem Ipsum is that it has a more-or-less normal.
                                        <br>
                                        <small class="text-muted">Yesterday 2:45 pm</small>
                                    </div>
                                </a>
                            </div>
                            <div class="sidebar-message">
                                <a href="#">
                                    <div class="pull-left text-center">
                                        <img alt="image" class="img-circle message-avatar" src="${ctx}/resources/img/a3.jpg">

                                        <div class="m-t-xs">
                                            <i class="fa fa-star text-warning"></i>
                                            <i class="fa fa-star text-warning"></i>
                                            <i class="fa fa-star text-warning"></i>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        Mevolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                                        <br>
                                        <small class="text-muted">Yesterday 1:10 pm</small>
                                    </div>
                                </a>
                            </div>
                            <div class="sidebar-message">
                                <a href="#">
                                    <div class="pull-left text-center">
                                        <img alt="image" class="img-circle message-avatar" src="${ctx}/resources/img/a4.jpg">
                                    </div>

                                    <div class="media-body">
                                        Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the
                                        <br>
                                        <small class="text-muted">Monday 8:37 pm</small>
                                    </div>
                                </a>
                            </div>
                            <div class="sidebar-message">
                                <a href="#">
                                    <div class="pull-left text-center">
                                        <img alt="image" class="img-circle message-avatar" src="${ctx}/resources/img/a8.jpg">
                                    </div>
                                    <div class="media-body">

                                        All the Lorem Ipsum generators on the Internet tend to repeat.
                                        <br>
                                        <small class="text-muted">Today 4:21 pm</small>
                                    </div>
                                </a>
                            </div>
                            <div class="sidebar-message">
                                <a href="#">
                                    <div class="pull-left text-center">
                                        <img alt="image" class="img-circle message-avatar" src="${ctx}/resources/img/a7.jpg">
                                    </div>
                                    <div class="media-body">
                                        Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                                        <br>
                                        <small class="text-muted">Yesterday 2:45 pm</small>
                                    </div>
                                </a>
                            </div>
                            <div class="sidebar-message">
                                <a href="#">
                                    <div class="pull-left text-center">
                                        <img alt="image" class="img-circle message-avatar" src="${ctx}/resources/img/a3.jpg">

                                        <div class="m-t-xs">
                                            <i class="fa fa-star text-warning"></i>
                                            <i class="fa fa-star text-warning"></i>
                                            <i class="fa fa-star text-warning"></i>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        The standard chunk of Lorem Ipsum used since the 1500s is reproduced below.
                                        <br>
                                        <small class="text-muted">Yesterday 1:10 pm</small>
                                    </div>
                                </a>
                            </div>
                            <div class="sidebar-message">
                                <a href="#">
                                    <div class="pull-left text-center">
                                        <img alt="image" class="img-circle message-avatar" src="${ctx}/resources/img/a4.jpg">
                                    </div>
                                    <div class="media-body">
                                        Uncover many web sites still in their infancy. Various versions have.
                                        <br>
                                        <small class="text-muted">Monday 8:37 pm</small>
                                    </div>
                                </a>
                            </div>
                        </div>

                    </div>

                    <div id="tab-2" class="tab-pane">

                        <div class="sidebar-title">
                            <h3> <i class="fa fa-cube"></i> Latest projects</h3>
                            <small><i class="fa fa-tim"></i> You have 14 projects. 10 not completed.</small>
                        </div>

                        <ul class="sidebar-list">
                            <li>
                                <a href="#">
                                    <div class="small pull-right m-t-xs">9 hours ago</div>
                                    <h4>Business valuation</h4>
                                    It is a long established fact that a reader will be distracted.

                                    <div class="small">Completion with: 22%</div>
                                    <div class="progress progress-mini">
                                        <div style="width: 22%;" class="progress-bar progress-bar-warning"></div>
                                    </div>
                                    <div class="small text-muted m-t-xs">Project end: 4:00 pm - 12.06.2014</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="small pull-right m-t-xs">9 hours ago</div>
                                    <h4>Contract with Company </h4>
                                    Many desktop publishing packages and web page editors.

                                    <div class="small">Completion with: 48%</div>
                                    <div class="progress progress-mini">
                                        <div style="width: 48%;" class="progress-bar"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="small pull-right m-t-xs">9 hours ago</div>
                                    <h4>Meeting</h4>
                                    By the readable content of a page when looking at its layout.

                                    <div class="small">Completion with: 14%</div>
                                    <div class="progress progress-mini">
                                        <div style="width: 14%;" class="progress-bar progress-bar-info"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-primary pull-right">NEW</span>
                                    <h4>The generated</h4>
                                    <!--<div class="small pull-right m-t-xs">9 hours ago</div>-->
                                    There are many variations of passages of Lorem Ipsum available.
                                    <div class="small">Completion with: 22%</div>
                                    <div class="small text-muted m-t-xs">Project end: 4:00 pm - 12.06.2014</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="small pull-right m-t-xs">9 hours ago</div>
                                    <h4>Business valuation</h4>
                                    It is a long established fact that a reader will be distracted.

                                    <div class="small">Completion with: 22%</div>
                                    <div class="progress progress-mini">
                                        <div style="width: 22%;" class="progress-bar progress-bar-warning"></div>
                                    </div>
                                    <div class="small text-muted m-t-xs">Project end: 4:00 pm - 12.06.2014</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="small pull-right m-t-xs">9 hours ago</div>
                                    <h4>Contract with Company </h4>
                                    Many desktop publishing packages and web page editors.

                                    <div class="small">Completion with: 48%</div>
                                    <div class="progress progress-mini">
                                        <div style="width: 48%;" class="progress-bar"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="small pull-right m-t-xs">9 hours ago</div>
                                    <h4>Meeting</h4>
                                    By the readable content of a page when looking at its layout.

                                    <div class="small">Completion with: 14%</div>
                                    <div class="progress progress-mini">
                                        <div style="width: 14%;" class="progress-bar progress-bar-info"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-primary pull-right">NEW</span>
                                    <h4>The generated</h4>
                                    <!--<div class="small pull-right m-t-xs">9 hours ago</div>-->
                                    There are many variations of passages of Lorem Ipsum available.
                                    <div class="small">Completion with: 22%</div>
                                    <div class="small text-muted m-t-xs">Project end: 4:00 pm - 12.06.2014</div>
                                </a>
                            </li>

                        </ul>

                    </div>

                    <div id="tab-3" class="tab-pane">

                        <div class="sidebar-title">
                            <h3><i class="fa fa-gears"></i> Settings</h3>
                            <small><i class="fa fa-tim"></i> You have 14 projects. 10 not completed.</small>
                        </div>

                        <div class="setings-item">
                    <span>
                        Show notifications
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example">
                                    <label class="onoffswitch-label" for="example">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        Disable Chat
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" checked class="onoffswitch-checkbox" id="example2">
                                    <label class="onoffswitch-label" for="example2">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        Enable history
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example3">
                                    <label class="onoffswitch-label" for="example3">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        Show charts
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example4">
                                    <label class="onoffswitch-label" for="example4">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        Offline users
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" checked name="collapsemenu" class="onoffswitch-checkbox" id="example5">
                                    <label class="onoffswitch-label" for="example5">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        Global search
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" checked name="collapsemenu" class="onoffswitch-checkbox" id="example6">
                                    <label class="onoffswitch-label" for="example6">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        Update everyday
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example7">
                                    <label class="onoffswitch-label" for="example7">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="sidebar-content">
                            <h4>Settings</h4>
                            <div class="small">
                                I belive that. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                And typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                                Over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                            </div>
                        </div>

                    </div>
                </div>

            </div>



        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="${ctx}/resources/thirdlib/H+/js/jquery-2.1.1.js"></script>
    <script src="${ctx}/resources/thirdlib/H+/js/bootstrap.min.js"></script>
    <script src="${ctx}/resources/thirdlib/H+/js/jquery.metisMenu.js"></script>
    <script src="${ctx}/resources/thirdlib/H+/js/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="${ctx}/resources/thirdlib/H+/js/jquery.flot.js"></script>
    <script src="${ctx}/resources/thirdlib/H+/js/jquery.flot.tooltip.min.js"></script>
    <script src="${ctx}/resources/thirdlib/H+/js/jquery.flot.spline.js"></script>
    <script src="${ctx}/resources/thirdlib/H+/js/jquery.flot.resize.js"></script>
    <script src="${ctx}/resources/thirdlib/H+/js/jquery.flot.pie.js"></script>

    <!-- Peity -->
    <script src="${ctx}/resources/thirdlib/H+/js/jquery.peity.min.js"></script>
    <script src="${ctx}/resources/thirdlib/H+/js/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${ctx}/resources/thirdlib/H+/js/inspinia.js"></script>
    <script src="${ctx}/resources/thirdlib/H+/js/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="${ctx}/resources/thirdlib/H+/js/jquery-ui.min.js"></script>

    <!-- GITTER -->
    <script src="${ctx}/resources/thirdlib/H+/js/jquery.gritter.min.js"></script>

    <!-- Sparkline -->
    <script src="${ctx}/resources/thirdlib/H+/js/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="${ctx}/resources/thirdlib/H+/js/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="${ctx}/resources/thirdlib/H+/js/Chart.min.js"></script>

	<script type="text/javascript" 
	src="${ctx}/resources/thirdlib/jqury/jquery-form.js"></script>
	<link href="${ctx}/resources/thirdlib/kindeditor/themes/default/default.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8" src="${ctx}/resources/thirdlib/kindeditor/kindeditor-all-min.js"></script>
	
    <!-- Toastr -->
    <script src="${ctx}/resources/thirdlib/H+/js/toastr.min.js"></script>


    <script>
        $(document).ready(function() {
            setTimeout(function() {
                toastr.options = {
                    closeButton: true,
                    progressBar: true,
                    showMethod: 'slideDown',
                    timeOut: 4000
                };
                toastr.success('Responsive Admin Theme', 'Welcome to INSPINIA');

            }, 1300);


            var data1 = [
                [0,4],[1,8],[2,5],[3,10],[4,4],[5,16],[6,5],[7,11],[8,6],[9,11],[10,30],[11,10],[12,13],[13,4],[14,3],[15,3],[16,6]
            ];
            var data2 = [
                [0,1],[1,0],[2,2],[3,0],[4,1],[5,3],[6,1],[7,5],[8,2],[9,3],[10,2],[11,1],[12,0],[13,2],[14,8],[15,0],[16,0]
            ];
            $("#flot-dashboard-chart").length && $.plot($("#flot-dashboard-chart"), [
                data1, data2
            ],
                    {
                        series: {
                            lines: {
                                show: false,
                                fill: true
                            },
                            splines: {
                                show: true,
                                tension: 0.4,
                                lineWidth: 1,
                                fill: 0.4
                            },
                            points: {
                                radius: 0,
                                show: true
                            },
                            shadowSize: 2
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            tickColor: "#d5d5d5",
                            borderWidth: 1,
                            color: '#d5d5d5'
                        },
                        colors: ["#1ab394", "#1C84C6"],
                        xaxis:{
                        },
                        yaxis: {
                            ticks: 4
                        },
                        tooltip: false
                    }
            );

            var doughnutData = [
                {
                    value: 300,
                    color: "#a3e1d4",
                    highlight: "#1ab394",
                    label: "App"
                },
                {
                    value: 50,
                    color: "#dedede",
                    highlight: "#1ab394",
                    label: "Software"
                },
                {
                    value: 100,
                    color: "#A4CEE8",
                    highlight: "#1ab394",
                    label: "Laptop"
                }
            ];

            var doughnutOptions = {
                segmentShowStroke: true,
                segmentStrokeColor: "#fff",
                segmentStrokeWidth: 2,
                percentageInnerCutout: 45, // This is 0 for Pie charts
                animationSteps: 100,
                animationEasing: "easeOutBounce",
                animateRotate: true,
                animateScale: false
            };

            var ctx = document.getElementById("doughnutChart").getContext("2d");
            var DoughnutChart = new Chart(ctx).Doughnut(doughnutData, doughnutOptions);

            var polarData = [
                {
                    value: 300,
                    color: "#a3e1d4",
                    highlight: "#1ab394",
                    label: "App"
                },
                {
                    value: 140,
                    color: "#dedede",
                    highlight: "#1ab394",
                    label: "Software"
                },
                {
                    value: 200,
                    color: "#A4CEE8",
                    highlight: "#1ab394",
                    label: "Laptop"
                }
            ];

            var polarOptions = {
                scaleShowLabelBackdrop: true,
                scaleBackdropColor: "rgba(255,255,255,0.75)",
                scaleBeginAtZero: true,
                scaleBackdropPaddingY: 1,
                scaleBackdropPaddingX: 1,
                scaleShowLine: true,
                segmentShowStroke: true,
                segmentStrokeColor: "#fff",
                segmentStrokeWidth: 2,
                animationSteps: 100,
                animationEasing: "easeOutBounce",
                animateRotate: true,
                animateScale: false
            };
            var ctx = document.getElementById("polarChart").getContext("2d");
            var Polarchart = new Chart(ctx).PolarArea(polarData, polarOptions);

        });
    </script>
</body>
</html>
