<%-- 
    Document   : form
    Created on : 14.01.2025, 08:44:49
    Author     : EWagner
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Auto und Kunde verwalten</title>
    </head>
    <body>
        <h1>Auto und Kunde verwalten</h1>
        <!-- Auto hinzufügen -->
        <h2>Auto hinzufügen</h2>
        <form action="result.jsp" method="post">
            <input type="hidden" name="action" value="addCar">
            <label for="carModel">Modell:</label><br>
            <input type="text" id="carModel" name="carModel" required><br><br>
            <label for="carColor">Farbe:</label><br>
            <input type="text" id="carColor" name="carColor" required><br><br>
            <label for="carSpeed">Höchstgeschwindigkeit:</label><br>
            <input type="number" id="carSpeed" name="carSpeed" required><br><br>
            <input type="submit" value="Auto hinzufügen">
        </form>
        <!-- Kunde hinzufügen -->
        <h2>Kunde hinzufügen</h2>
        <form action="result.jsp" method="post">
            <input type="hidden" name="action" value="addKunde">
            <label for="vorname">Vorname:</label><br>
            <input type="text" id="vorname" name="vorname" required><br><br>
            <label for="nachname">Nachname:</label><br>
            <input type="text" id="nachname" name="nachname" required><br><br>
            <input type="submit" value="Kunde hinzufügen">
        </form>
        <!-- Auto verleihen -->
        <h2>Auto verleihen</h2>
        <form action="result.jsp" method="post">
            <input type="hidden" name="action" value="lendCar">
            <label for="autoIndex">Auto-ID:</label><br>
            <input type="number" id="autoIndex" name="autoIndex" required><br><br>
            <label for="kundeIndex">Kunde-ID:</label><br>
            <input type="number" id="kundeIndex" name="kundeIndex" required><br><br>
            <input type="submit" value="Auto verleihen">
        </form>
        <!-- Auto löschen -->
        <h2>Auto löschen</h2>
        <form action="result.jsp" method="post">
            <input type="hidden" name="action" value="deleteCar">
            <label for="carId">Auto-ID:</label><br>
            <input type="number" id="carId" name="carId" required><br><br>
            <input type="submit" value="Auto löschen">
        </form>
        <!-- Kunde löschen -->
        <h2>Kunde löschen</h2>
        <form action="result.jsp" method="post">
            <input type="hidden" name="action" value="deleteKunde">
            <label for="kundeId">Kunde-ID:</label><br>
            <input type="number" id="kundeId" name="kundeId" required><br><br>
            <input type="submit" value="Kunde löschen">
        </form>
    </body>
</html> 