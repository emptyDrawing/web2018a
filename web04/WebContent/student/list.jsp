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
				<h1>�л����� ���</h1>
				
				<table  width="80%" border="1" cellspacing="0">
					<tr>
						<th width="50">�й�</th>
						<th>�̸�</th>
						<th>����</th>
						<th>����</th>
						<th>����</th>
						<th width="80">����</th>
					</tr>
					<%
					String url="jdbc:oracle:thin:@localhost:1521:xe";
					String id="scott";
					String pw="tiger";
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection conn=null;
					Statement stmt=null;
					ResultSet rs=null;
					try{
						conn=DriverManager.getConnection(url,id,pw);
						stmt=conn.createStatement();
						rs=stmt.executeQuery("SELECT NUM,NAME,KOR,ENG,MATH FROM STUDENT ORDER BY NUM");
						while(rs.next()){
					%>
					<tr>
						<td><%=rs.getInt(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getInt(3) %></td>
						<td><%=rs.getInt(4) %></td>
						<td><%=rs.getInt(5) %></td>
						<td>
							<form action="delete.jsp" method="post">
								<input type="hidden" name="num" value="<%=rs.getInt(1) %>">
								<input type="submit" value="����">
							</form>
						</td>
					</tr>
					<%
						}
					}catch(Exception ex){
						System.out.println("list page ���� - Ȯ�ιٶ�");
					}finally{
						if(rs!=null)rs.close();
						if(stmt!=null)stmt.close();
						if(conn!=null)conn.close();
					}
					%>
				</table>
				
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