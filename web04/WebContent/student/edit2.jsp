<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>index.jsp</title>
</head>
<body>
	
	<table width="100%">
		<tr>
			<td colspan="6">
				<h1>�����������α׷�(ver 0.6.0)</h1>
			</td>
		</tr>
		<tr bgcolor="#cccccc">
			<td> </td>
			<td bgcolor="gray" align="center" width="120">
						<a href="../"><font color="#ffffff">HOME</font></a></td>
			<td bgcolor="gray" align="center" width="120">
						<a href="./list.jsp"><font color="#ffffff">��ü����</font></a></td>
			<td bgcolor="gray" align="center" width="120">
						<a href="./add.jsp"><font color="#ffffff">�л����</font></a></td>
			<td bgcolor="gray" align="center" width="120">
						<a href="./edit.jsp"><font color="#ffffff">�����Է�</font></a></td>
			<td> </td>
		</tr>
		<tr>
			<td colspan="6" valign="top" align="center">
				<!-- content start -->
				<h1>���� �Է� ������</h1>
				<%
				String param=request.getParameter("num");
				int num=Integer.parseInt(param);
				String sql="SELECT NAME,KOR,ENG,MATH,NUM FROM STUDENT WHERE NUM="+num;
				String driver="oracle.jdbc.driver.OracleDriver";
				String url="jdbc:oracle:thin:@localhost:1521:xe";
				String user="scott";
				String password="tiger";
				Connection conn=null;
				Statement stmt=null;
				ResultSet rs=null;
				try{
					Class.forName(driver);
					conn=DriverManager.getConnection(url,user,password);
					stmt=conn.createStatement();
					rs=stmt.executeQuery(sql);
					if(rs.next()){
				%>
				<form action="update.jsp">
				
				<table>
					<tr>
						<td>�й�</td>
						<td><%=request.getParameter("num") %></td>
					</tr>
					<tr>
						<td>�̸�</td>
						<td><%=rs.getString(1) %></td>
					</tr>
					<tr>
						<td>����</td>
						<td><input type="text" name="kor" value="<%=rs.getInt(2) %>">
							<%
							String errIdx=request.getParameter("err");
							String errMsg=request.getParameter("errmsg");
							if("0".equals(errIdx)){
								if("1".equals(errMsg)){
									out.println("<font color='red'>0~100������ ���� �����մϴ�<font>");
								}else if("2".equals(errMsg)){
									out.println("<font color='red'>���� ������ϴ�<font>");
								}else if("3".equals(errMsg)){
									out.println("<font color='red'>���ڸ� �Է��ϼ���<font>");
								}
							}
							%>
						</td>
					</tr>
					<tr>
						<td>����</td>
						<td><input type="text" name="eng" value="<%=rs.getInt(3) %>">
						<%
						if("1".equals(errIdx)){
							if("1".equals(errMsg)){
								out.println("<font color='red'>0~100������ ���� �����մϴ�<font>");
							}else if("2".equals(errMsg)){
								out.println("<font color='red'>���� ������ϴ�<font>");
							}else if("3".equals(errMsg)){
								out.println("<font color='red'>���ڸ� �Է��ϼ���<font>");
							}
						}
							%>
						</td>
					</tr>
					<tr>
						<td>����</td>
						<td><input type="text" name="math" value="<%=rs.getInt(4) %>">
						<%
						if("2".equals(errIdx)){
							if("1".equals(errMsg)){
								out.println("<font color='red'>0~100������ ���� �����մϴ�<font>");
							}else if("2".equals(errMsg)){
								out.println("<font color='red'>���� ������ϴ�<font>");
							}else if("3".equals(errMsg)){
								out.println("<font color='red'>���ڸ� �Է��ϼ���<font>");
							}
						}
							%>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="hidden" name="num" value="<%=rs.getInt(5) %>">
							<input type="submit" value="�� ��">
						</td>
					</tr>
				</table>
				</form>
				<%
					}
				}catch(Exception e){
					
				}finally{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
				}
				%>
				<br><br><br>
				<!-- content end -->
			</td>
		</tr>
		<tr bgcolor="#cccccc">
			<td colspan="6">
				��Ʈķ�� ����� ���ʱ� ���ʵ� 1327-15 ��Ʈ��ī���̺����� ����ڵ�Ϲ�ȣ : 214-85-24928
				<br>(��)��Ʈ��ǻ�� �������� ��ǥ�̻� : ������ / ���� : 02-3486-9600 / �ѽ� : 02-6007-1245
				<br>����Ǹž� �Ű��ȣ : �� ����-00098ȣ / ����������ȣ����å���� : �ǵ���
				<br>Copyright (c) ��Ʈķ�� All rights reserved.
			</td>
		</tr>
	</table>
	
</body>
</html>