<!DOCTYPE html>
<html>
<head>
    <title>Student Confirmation</title>
</head>
<body>
The student is confirmed: ${customer.firstName} ${customer.lastName}
<br><br>
Favorite Language: ${student.favoriteLanguage}

<br><br>
Favorite System:

<ul>
    <c:forEach var="temp" items="${customer.operatingSystems}" >
        <li>${temp}</li>
    </c:forEach>
</ul>

</body>
</html>