<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
	function checkForm(){
		var userName=document.getElementById("userName").value;
		var password=document.getElementById("password").value;
		var rPassword=document.getElementById("rPassword").value;
		var dormBuildId=document.getElementById("dormBuildId").value;
		var dormName=document.getElementById("dormName").value;
		var name=document.getElementById("name").value;
		var sex=document.getElementById("sex").value;
		var tel=document.getElementById("tel").value;
		if(userName==""||password==""||rPassword==""||name==""||sex==""||tel==""||dormBuildId==""||dormName==""){
			document.getElementById("error").innerHTML="信息填写不完整！";
			return false;
		} else if(password!=rPassword){
			document.getElementById("error").innerHTML="密码填写不一致！";
			return false;
		}
		return true;
	}
	
	$(document).ready(function(){
		$("ul li:eq(2)").addClass("active");
	});
</script>
<div class="data_list">
		<div class="data_list_title">
		<c:choose>
			<c:when test="${student.studentId!=null }">
				修改学生信息
			</c:when>
			<c:otherwise>
				添加学生
			</c:otherwise>
		</c:choose>
		</div>
		<form action="student?action=save" method="post" onsubmit="return checkForm()">
			<div class="data_form" >
				<input type="hidden" id="studentId" name="studentId" value="${student.studentId }"/>
					<table align="center">
						<tr>
							<td><font color="red">*</font>学生学号：</td>
							<td><input type="text" id="userName"  name="userName" value="${student.userName }"  style="margin-top:5px;height:30px;"placeholder="请输入学号" /></td>
						</tr>
						<tr>
							<td><font color="red">*</font>设置密码：</td>
							<td><input type="password" id="password"  name="password" value="${student.password }"  style="margin-top:5px;height:30px;"placeholder="设置密码~" /></td>
						</tr>
						<tr>
							<td><font color="red">*</font>确认密码：</td>
							<td><input type="password" id="rPassword"  name="rPassword" value="${student.password }"  style="margin-top:5px;height:30px;" placeholder="再次确定密码~"/></td>
						</tr>
						<tr>
							<td><font color="red">*</font>学生姓名：</td>
							<td><input type="text" id="name"  name="name" value="${student.name }"  style="margin-top:5px;height:30px;" placeholder="请输入学生姓名~"/></td>
						</tr>
						<tr>
							<td><font color="red">*</font>学生性别：</td>
							<td>
								<select id="sex" name="sex" style="width: 90px;">
									<option value="">请选择...</option>
									<option value="男" ${student.sex eq "男"?'selected':'' }>男</option>
									<option value="女" ${student.sex eq "女"?'selected':'' }>女</option>
								</select>
							</td>
						</tr>
						<tr>
							<td><font color="red">*</font>公寓楼号：</td>
							<td>
								<select id="dormBuildId" name="dormBuildId" style="width: 90px;">
									<option value="">请选择...</option>
									<c:forEach var="dormBuild" items="${dormBuildList }">
										<option value="${dormBuild.dormBuildId }" ${student.dormBuildId==dormBuild.dormBuildId?'selected':'' }>${dormBuild.dormBuildName }</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td><font color="red">*</font>公寓宿舍：</td>
							<td><input type="text" id="dormName"  name="dormName" value="${student.dormName }"  style="margin-top:5px;height:30px;" placeholder="请输入宿舍号~"/></td>
						</tr>
						<tr>
							<td><font color="red">*</font>联系电话：</td>
							<td><input type="text" id="tel"  name="tel" value="${student.tel }"  style="margin-top:5px;height:30px;"placeholder="请输入联系方式~" /></td>
						</tr>
					</table>
					<div align="center">
						<input type="submit" class="btn btn-primary" value="保存信息"/>
						&nbsp;<button class="btn btn-primary" type="button" onclick="javascript:window.location='student'">返回页面</button>
					</div>
					<div align="center">
						<font id="error" color="red">${error }</font>
					</div>
			</div>
		</form>
</div>