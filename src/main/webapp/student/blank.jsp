<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
	$(document).ready(function(){
		$("ul li:eq(0)").addClass("active");
	});
</script>

<div>
	<div class=blank style="padding-top: 100px;padding-left: 100px;">
		<font color="red" size="20">欢迎你,<font color="black" size="20">${currentUser.name }</font>同学!</font>
	</div>
</div>