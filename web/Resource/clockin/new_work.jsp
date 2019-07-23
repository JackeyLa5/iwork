<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - Bootstrap3 Markdown编辑器</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/plugins/markdown/bootstrap-markdown.min.css" />
    <link href="../css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
				<form class="form-horizontal">
				<div class="row">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">主题：</label>
                    
                        <div class="col-sm-10">
                            <input id="title_note" name="title_note" type="text" placeholder="主题" class="form-control"> 
                        </div>
                    </div>
                </div>  
                <div class="row">
					
					 <div class="form-group">
					    <label class="col-sm-2 control-label">工作详情：</label>
					
					    <div class="col-sm-10">
					        <textarea id="work_detail_new" name="content" data-provide="markdown" rows="6"></textarea> 
					    </div>
					</div>
                </div>  
				 <div class="row">
				     <div class="form-group">
				         <label class="col-sm-2 control-label">成员：</label>
				     
				         <div  class="col-sm-10">
				             
								<div id="member_list"><label class="member" data-name="李总" data-fid="1231">李总</label><i></i><a id="add_member" class="btn btn-circle btn-default"><i class="glyphicon glyphicon-plus"></i></a></div>
								<div id="member_list_select" class="wrapper wrapper-content" hidden="true">
									
									<div class="feed-activity-list">
										<div id="member" class="feed-element">
											<label class="media-body" data-name="肖总" data-fid="1231">肖总</label>
										</div>
									</div>
								
								</div>	
							
				         </div>
				     </div>
				 </div>  
				<div class="row">
					<div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					        <a id="create" class="btn btn-sm center btn-white" >创建</a>
					    </div>
					</div>
				</div>		   
                </form>
    </div>
    <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script src="../js/bootstrap.min.js?v=3.3.5"></script>
    <script src="../js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="../js/plugins/markdown/markdown.js"></script>
    <script type="text/javascript" src="../js/plugins/markdown/to-markdown.js"></script>
    <script type="text/javascript" src="../js/plugins/markdown/bootstrap-markdown.js"></script>
    <script type="text/javascript" src="../js/plugins/markdown/bootstrap-markdown.zh.js"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<script src="../js/plugins/layer/layer.js"></script>	
	<script>
		function callbackdata(){
			var title = $("#title_note").val();
			var detail =$("#detail_note").val();
				
			var data ={
				note_title:title,
				note_detail:datail
			}
			return data;
		}
		var index = parent.layer.getFrameIndex(window.name);
		$("#create").click(function(){
			parent.layer.close(index);
		});
		memberlist=new Array();
		$("#member_list").on("click",".member",function(){	
			
			alert(this.getAttribute("data-name"));
			if(memberlist!=null)
			{
				for(var i=0;i<memberlist.length;i++)
				{
					
					if(memberlist[i].name==this.getAttribute("data-name"))
						{
							
							memberlist.splice(i,1);
						}
				}
			}	
			this.remove();
			});
		
		$("#member").on('click',"label",function(){
						var x=window.document.getElementById("member_list");
						var k=0;
						var member=new Object();
						member.id==this.getAttribute("data-fid");
						member.name=this.getAttribute("data-name");
						if(memberlist!=null)
						{
							for(var i=0;i<memberlist.length;i++)
							{
								
								if(memberlist[i].id==member.id)
									{
										k=1;break;
									}
							}
						}					
						if(k!=1){				
							memberlist.push(member);
							s="<label  class='member' data-name='"+member.name  + "' data-fid='"+member.id+"'>"+this.getAttribute("data-name")+"</label>";
							$(x).children().eq(0).before("<label class='member' data-name='"+member.name  + "' data-fid='"+member.id+"'>"+this.getAttribute("data-name")+"</label><i class='glyphicon glyphicon-triangle-right'></i>");
						}					
					});
		$("#add_member").click(function(){
			layer.open({	
			    type: 1,         
			    title: '添加成员',
			    fix: false,
			    shadeClose: true,
				closeBtn: 0,
				area: ['200px', '500px'],
			    content: $('#member_list_select'),			
				success: function(layero, index){
					$(".media-body").click(function(){
						layer.close(index);
					});
				}
			});	
		});
		
	</script>
</body>

</html>