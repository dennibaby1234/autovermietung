<%-- 
    Document   : add_car
    Created on : 14.01.2025, 10:15:48
    Author     : EWagner
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Auto hinzuf�gen</title>
    </head>
    <body>
        <h1>Auto hinzuf�gen</h1>
        <form action="result.jsp" method="post">
            <input type="hidden" name="action" value="addCar">
            <label for="carModel">Modell:</label><br>
            <input type="text" id="carModel" name="carModel" required><br><br>
            <label for="carColor">Farbe:</label><br>
            <input type="text" id="carColor" name="carColor" required><br><br>
            <label for="carSpeed">H�chstgeschwindigkeit:</label><br>
            <input type="number" id="carSpeed" name="carSpeed" required><br><br>
            <input type="submit" value="Auto hinzuf�gen">
        </form>
        <a href="menu.jsp">Zur�ck zum Men�</a>
    </body>
</html>
