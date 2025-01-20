<%-- 
    Document   : lend_car
    Created on : 14.01.2025, 10:17:57
    Author     : EWagner
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Auto verleihen</title>
    </head>
    <body>
        <h1>Auto verleihen</h1>
        <form action="result.jsp" method="post">
            <input type="hidden" name="action" value="lendCar">
            <label for="autoIndex">Auto-ID:</label><br>
            <input type="number" id="autoIndex" name="autoIndex" required><br><br>
            <label for="kundeIndex">Kunde-ID:</label><br>
            <input type="number" id="kundeIndex" name="kundeIndex" required><br><br>
            <input type="submit" value="Auto verleihen">
        </form>
        <a href="menu.jsp">Zurück zum Menü</a>
    </body>
</html>
