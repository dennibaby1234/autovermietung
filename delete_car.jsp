<%-- 
    Document   : delete_car
    Created on : 14.01.2025, 10:19:09
    Author     : EWagner
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Auto l�schen</title>
    </head>
    <body>
        <h1>Auto l�schen</h1>
        <form action="result.jsp" method="post">
            <input type="hidden" name="action" value="deleteCar">
            <label for="carId">Auto-ID:</label><br>
            <input type="number" id="carId" name="carId" required><br><br>
            <input type="submit" value="Auto l�schen">
        </form>
        <a href="menu.jsp">Zur�ck zum Men�</a>
    </body>
</html>


