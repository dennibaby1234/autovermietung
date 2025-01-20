<%-- 
    Document   : delete_kunde
    Created on : 14.01.2025, 10:19:54
    Author     : EWagner
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Kunde löschen</title>
    </head>
    <body>
        <h1>Kunde löschen</h1>
        <form action="result.jsp" method="post">
            <input type="hidden" name="action" value="deleteKunde">
            <label for="kundeId">Kunde-ID:</label><br>
            <input type="number" id="kundeId" name="kundeId" required><br><br>
            <input type="submit" value="Kunde löschen">
        </form>
        <a href="menu.jsp">Zurück zum Menü</a>
    </body>
</html>
