<%-- 
    Document   : add_kunde
    Created on : 14.01.2025, 10:16:57
    Author     : EWagner
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Kunde hinzuf�gen</title>
    </head>
    <body>
        <h1>Kunde hinzuf�gen</h1>
        <form action="result.jsp" method="post">
            <input type="hidden" name="action" value="addKunde">
            <label for="vorname">Vorname:</label><br>
            <input type="text" id="vorname" name="vorname" required><br><br>
            <label for="nachname">Nachname:</label><br>
            <input type="text" id="nachname" name="nachname" required><br><br>
            <input type="submit" value="Kunde hinzuf�gen">
        </form>
        <a href="menu.jsp">Zur�ck zum Men�</a>
    </body>
</html>


