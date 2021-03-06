<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/common/meta.jsp"%>
<link rel="stylesheet" href="${ctx}/static/css/index.css">
<style>
.datagrid-row-selected {
    background: none;
    color: #000;
}
</style>
<jsp:include page="script.jsp"></jsp:include>
<div class="easyui-layout" fit="true"
	style="margin: 0px; border: 0px; overflow: hidden; width: 100%; height: 100%;">
	
	<div
		data-options="noheader:true,region:'north',title:'过滤条件',collapsed:false,split:false,border:false"
		style="padding: 0px; margin-top:1px; height: 43px; width: 100%; overflow-y: hidden;">
		<form id="_search_form" style="padding: 5px;">
		<table>
			<tr>
				
				<!-- <td>日期&nbsp;&nbsp;&nbsp;
				<input type="text" id="actual_visit_time"
				name="actual_visit_time" maxLength="255" class="easyui-datebox"
				width="100"
				data-options="editable:false,required:false,missingMessage:'',validType:['minLength[1]']" />
				&nbsp;至 &nbsp;
				<input type="text" id="actual_visit_time1"
				name="actual_visit_time1" maxLength="255" class="easyui-datebox"
				width="100"
				data-options="editable:false,required:false,missingMessage:'',validType:['minLength[1]']" /></td> -->
				
				 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日期&nbsp; <input
						id="actual_visit_time" name="actual_visit_time"
						style="width: 150px; height:23px;" class="Wdate textbox"
						onFocus="var actual_visit_time1=$dp.$('actual_visit_time1');WdatePicker({onpicked:function(){actual_visit_time1.focus();},maxDate:'#F{$dp.$D(\'actual_visit_time1\')}'})" />
						&nbsp;至&nbsp; <input id="actual_visit_time1" name="actual_visit_time1"
						style="width: 150px; height:23px;" class="Wdate textbox"
						onFocus="WdatePicker({minDate:'#F{$dp.$D(\'actual_visit_time\')}'})" />
						</td>
				
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="easyui-linkbutton" 
				href="#" data-options="width:73,height:23,onClick:search"><span style="color:white;">查&nbsp;&nbsp;询</span></a>
					<a class="easyui-linkbutton" href="#" data-options="width:73,height:23"
					onclick="javascript:_search_form.form('reset');"><span style="color:white;">重置查询</span></a></td>
			</tr>
		</table>
		</form>
	</div>
	<%-- 中间部分 列表 --%>
	<div data-options="region:'center',split:false,border:false"
		style="padding: 0px; height: 100%; width: 100%; overflow-y: hidden;">
		<table id="_datagrid"></table>
	</div>
</div>



