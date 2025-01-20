<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Autovermietung</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <script src="script.js"></script> <!-- Externe JavaScript-Datei einbinden -->
    </head>
    <body>
        <<div id="sidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="add_car.jsp">Auto hinzufügen</a>
            <a href="add_kunde.jsp">Kunde hinzufügen</a>
            <a href="lend_car.jsp">Auto verleihen</a>
            <a href="delete_car.jsp">Auto löschen</a>
            <a href="delete_kunde.jsp">Kunde löschen</a>
            <a href="zeige_alle.jsp">Gespeicherte Daten anzeigen</a>
        </div>

        <!-- Button zum Öffnen der Sidebar -->
        <button class="openbtn" onclick="openNav()">Menü</button>

        <div class="topnav">
            <a href="add_car.jsp">Autos anlegen</a>
            <a href="#">Autos anzeigen</a>
            <a href="#">Autos löschen</a>
            <a href="#">Autos ändern</a>
            <a href="#">Kunde anlegen</a>
            <a href="#">Kunde anzeigen</a>
            <a href="#">Kunde löschen</a>
            <a href="#">Kunde ändern</a>
            <a href="#">Auto verleihen</a>
        </div>

    </body>
</html>
