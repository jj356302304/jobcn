<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="extjs/resources/css/ext-all.css">
<script type="text/javascript" src="extjs/bootstrap.js"></script>
<title>Insert title here</title>
</head>
<body>
<input type="button" id="btn" value="button">
this is index.jsp
<script type="text/javascript">
Ext.onReady(function(){
	
	var store = Ext.create('Ext.data.TreeStore', {
	    root: {
	        expanded: true,
	        children: [
	            { text: "detention", leaf: true },
	            { text: "homework", expanded: true, children: [
	                { text: "book report", leaf: true },
	                { text: "algebra", leaf: true}
	            ] },
	            { text: "buy lottery tickets", leaf: true }
	        ]
	    }
	});
	
	var tree = Ext.create('Ext.tree.Panel', {
	    width: 200,
	    height: 100,
	    store: store,
	    rootVisible: false,
	    border: 0
	    //renderTo: Ext.getBody()
	});
	
	var view = new Ext.Viewport({
		layout:'border',
		items:[
			{
				region:"north",
				height:80,
				title:"面板的标题(上部分)",
				html:"<h1>新闻后台管理系统</h1>"
			},
			{
				xtype:"tabpanel",//面板的类型
				region:"center",
				html:"<h1>显示操作部分</h1>",
				items:[
					{title:"新闻管理"},
					{title:"用户管理"}
				]
			},
			{
				region:"west",
				width:180,
				title:"面板的标题(左部分)",
				html:"<h1>连接部分</h1>",
				layout: "accordion",
                items: [{
                    title: "嵌套面板一",
                    items:[tree]
                }, {
                    title: "嵌套面板二",
                    html: "面板二"
                }, {
                    title: "嵌套面板三",
                    html: "面板三"
                }]
			}
		]
	});
})
</script>
</body>
</html>