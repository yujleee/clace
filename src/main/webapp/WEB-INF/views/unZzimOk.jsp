<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	function go(){
		location.href="/clace_jsp/detailLecture.do?lec_no=${l.lec_no}"
	}
		

</script>
</head>
<body>
${l.lec_no}
<button onclick="go()">gogogoogogogogo</button>
</body>
</html>