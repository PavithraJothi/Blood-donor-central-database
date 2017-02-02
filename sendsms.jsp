<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>send sms</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
<label for="textfield">TO</label>
<input type="text" name="textfield" id="textfield" />
</form>
<form id="form2" name="form2" method="post" action="">
<label for="textarea">Message<br />
</label>
<textarea name="textarea" cols="60" rows="10" id="textarea" ></textarea>
</form>
<center>
<form id="form3" name="form3" method="post" action="">
<label for="Submit"></label>
<input type="submit" name="Submit" value="Send Message" id="Submit" />
</form>
</center>
</body>
</html>