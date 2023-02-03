<!DOCTYPE html>
<html>
<head>
    <title>Human Check</title>
</head>
<body>
    <%
        String question = "What is the answer to life, the universe, and everything?";
        String answer = request.getParameter("answer");
        String result = "";

        if (answer != null && answer.equals("42")) {
            result = "You are indeed human!";
        } else {
            result = "Sorry, try again.";
        }
    %>
    <h1> <%= question %> </h1>
    <form action="check-human.jsp" method="get">
        <input type="text" name="answer">
        <input type="submit" value="Submit">
    </form>
    <h2> <%= result %> </h2>
</body>
</html>
