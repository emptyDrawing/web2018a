<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>���� ������</h1>
	<form action="ex05.jsp">
				<input type="hidden" name="param0" value="msg">
		<table>
			<tr>
				<td>�ؽ�Ʈ�ʵ�1</td>
				<td><input type="text" name="param1"> </td>
			</tr>
			<tr>
				<td>�ؽ�Ʈ�ʵ�2</td>
				<td><input type="password" name="param2"> </td>
			</tr>
			<tr>
				<td>����Ʈ</td>
				<td>
					<select name="param3" multiple="multiple" size="4">
						<optgroup label="���� �� �����ϼ���">
							<option value="i1">item1</option>
							<option value="i2">item2</option>
							<option value="i3" selected="selected">item3</option>
							<option value="i4">item4</option>
						</optgroup>
					</select> 
				</td>
			</tr>
			
			<tr>
				<td>�����ڽ�</td>
				<td>
					<input type="radio" name="ra" value="ra1">radio1
					<input type="radio" name="ra" value="ra2">radio2
					<input type="radio" name="ra" value="ra3" checked="checked">radio3
					<input type="radio" name="ra" value="ra4">radio4
				</td>
			</tr>
			<tr>
				<td>üũ�ڽ�</td>
				<td>
					<input type="checkbox" name="box" value="box1">box1
					<input type="checkbox" name="box" value="box2">box2
					<input type="checkbox" name="box" value="box3">box3
					<input type="checkbox" name="box" value="box4">box4				
				</td>
			</tr>
			<tr>
				<td>�ؽ�Ʈ</td>
				<td>
					<textarea name="content" rows="7" cols="15"></textarea>
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="����">
					<input type="button" value="��ư1">
					<input type="button" value="��ư2">
					<input type="reset" value="�ּ�">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>









