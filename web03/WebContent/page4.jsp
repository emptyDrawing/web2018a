<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, oracle.jdbc.driver.OracleDriver"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="800" align="center">
		<tr>
			<td colspan="2">
				<a href="main.jsp">
				<img alt="logo" src="imgs/logo.png">
				</a>
			</td>
		</tr>
		<tr>
			<td width="150" height="600" bgcolor="#9999ff">
				<p><a href="page1.jsp">�λ縻</a></p>
				<p><a href="page2.jsp">���ô±�</a></p>
				<p><a href="page3.jsp">�Խ���</a></p>
				<p><a href="#">����</a></p>
				<p><a href="#">���</a></p>
			</td>
			<td valign="top">
			<!-- ����� �κ� -->
				<h1>�󼼺���</h1>
			<%
			String param=request.getParameter("empno");
			String sql="select * from emp where empno="+param;
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String id="scott";
			String pw="tiger";
			
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			//try{
			new OracleDriver();
			try{
				conn=DriverManager.getConnection(url,id,pw);
				stmt=conn.createStatement();
				rs=stmt.executeQuery(sql);
				if(rs.next()){
			%>
				<table>
					<tr>
						<td width="150" bgcolor="#cccccc">���</td>
						<td><%=rs.getInt(1) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">�̸�</td>
						<td><%=rs.getString(2) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">��å</td>
						<td><%=rs.getString(3) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">���ӻ��</td>
						<td><%=rs.getInt(4) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">�Ի���</td>
						<td><%=rs.getDate(5) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">����</td>
						<td><%=rs.getInt(6) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">������</td>
						<td><%=rs.getInt(7) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">�μ���ȣ</td>
						<td><%=rs.getInt(8) %></td>
					</tr>
				
				</table>
				<a href="page7.jsp?empno=<%=rs.getInt(1) %>">����</a>
			<%
				}
			}catch(Exception e){
				out.println("<h2>��� �� ������ �ٶ��ϴ�</h2>");
			}finally{
				if(rs!=null){rs.close();}
				if(stmt!=null){stmt.close();}
				if(conn!=null){conn.close();}
			}
			%>
				
			<!-- ����� �κ� �� -->
			</td>
		</tr>
		<tr>
			<td colspan="2"  bgcolor="blue">
			����Ư���� ���ʱ� ���ʴ��74��33 ��Ʈ�� 3�� | ����ڵ�Ϲ�ȣ 220-81-29726 | ��ǥ�̻� ������ | ���θ� (��)��Ʈ��ǻ��
			<br>
			TEL 02-3486-3456 | FAX 02-3486-7890 | ����Ǹž� �Ű��ȣ ���Ｍ�� 2003-02577ȣ
			<br>
			COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
			</td>
		</tr>
	
	
	
	</table>
</body>
</html>