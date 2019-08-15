<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
<form:form action ="processForm" modelAttribute="student">

First name: <form:input path="firstName" />
<br><br>

Last name: <form:input path="lastName" />
<br><br>

    Java <form:radiobutton path="favoriteLanguage" value="Java" />
    C# <form:radiobutton path="favoriteLanguage" value="C#" />
    PHP <form:radiobutton path="favoriteLanguage" value="PHP" />
    Ruby <form:radiobutton path="favoriteLanguage" value="Ruby" />

    <br><br>
Operating systems:
    <br><br>

    linux <form:checkbox path="operatingSystems" value="Linux" />
    Mac <form:checkbox path="operatingSystems" value="Mac" />
    Windows <form:checkbox path="operatingSystems" value="Windows" />


    <br><br>

<input type="submit" value="Submit" />
</form:form>

</body>
</html>