<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<%! // ����� - Ŭ���� ��, �޼��� ��
	int a;

	public int func01(int a, int b){
		return a*b;
	}
	
	public void func02(int a, int b){
		System.out.print(a*b);
	}

%>
<body>
	<%
	Date date = new Date();
	out.println(date);
	%>
	<h1>�������� ǥ�� �־� ����ϼ���</h1>
	<table width="800" border="1" cellspacing="0">
		<tr>
		<% // ��ũ��Ʈ�� - �޼��� ����
		for(int i=2; i<10; i++){
			out.println("<td>"+i+"��</td>");
		}
		%>
		</tr>
		<%
		System.out.println("a="+a);
		for(int i=1; i<10; i++){
			out.println("<tr>");
			for(int j=2; j<10; j++){
				out.println("<td>"+j+"x"+i+"="+func01(i,j)+"</td>");
				func02(i,j);
			}
			out.println("</tr>");
		}
		%>
	</table>
</body>
</html>