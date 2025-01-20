<%@ page import="java.util.List" %>
<%@ page import="com.carcontrol2.Car" %>
<%@ page import="com.carcontrol2.Kunde" %>
<%@ page import="com.carcontrol2.CarControlBeanRemote" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Ergebnisse</title>
        <style>

            table {

                width: 50%;

                border-collapse: collapse;

                margin: 20px 0;

                font-size: 18px;

                text-align: left;

            }

            table, th, td {

                border: 1px solid #dddddd;

                padding: 8px;

            }

            th {

                background-color: #f2f2f2;

            }
        </style>
    </head>
    <body>
        <h1>Ergebnisse</h1>
        <%

            String action = request.getParameter("action");

            CarControlBeanRemote carBean = null;

            try {

                InitialContext ctx = new InitialContext();

                carBean = (CarControlBeanRemote) ctx.lookup("CarControlBean2/remote");

            } catch (NamingException e) {

                out.println("<p>Fehler beim Verbinden mit der Session Bean: " + e.getMessage() + "</p>");

                e.printStackTrace();

            }

            if (carBean != null && action != null) {

                if ("addCar".equals(action)) {

                    String carModel = request.getParameter("carModel");

                    String carColor = request.getParameter("carColor");

                    short carSpeed = Short.parseShort(request.getParameter("carSpeed"));

                    Car car = new Car(carModel, carColor, carSpeed);

                    carBean.addCar(car);

                    out.println("<p>Auto erfolgreich hinzugefügt: " + car.getModel() + " (" + car.getColor() + ")</p>");

                } else if ("addKunde".equals(action)) {

                    String vorname = request.getParameter("vorname");

                    String nachname = request.getParameter("nachname");

                    Kunde kunde = new Kunde(vorname, nachname);

                    carBean.addKunde(kunde);

                    out.println("<p>Kunde erfolgreich hinzugefügt: " + kunde.getVorname() + " " + kunde.getNachname() + "</p>");

                } else if ("lendCar".equals(action)) {

                    int autoIndex = Integer.parseInt(request.getParameter("autoIndex"));

                    int kundeIndex = Integer.parseInt(request.getParameter("kundeIndex"));

                    String result = carBean.lendCar(autoIndex, kundeIndex);

                    out.println("<p>" + result + "</p>");

                } else if ("deleteCar".equals(action)) {

                    int carId = Integer.parseInt(request.getParameter("carId"));

                    carBean.deleteCar(carId);

                    out.println("<p>Auto erfolgreich gelöscht.</p>");

                } else if ("deleteKunde".equals(action)) {

                    int kundeId = Integer.parseInt(request.getParameter("kundeId"));

                    carBean.deleteKunde(kundeId);

                    out.println("<p>Kunde erfolgreich gelöscht.</p>");

                }

            }

            // Anzeigen aller Autos und Kunden

        %>
        <h2>Gespeicherte Autos:</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Modell</th>
                    <th>Farbe</th>
                    <th>Geschwindigkeit</th>
                    <th>Verliehen</th>
                    <th>Verliehen an Kunde</th>
                </tr>
            </thead>
            <tbody>
                <%    List<Car> cars = carBean.getCars();

                    for (Car car : cars) {

                        out.println("<tr>");

                        out.println("<td>" + car.getId() + "</td>");

                        out.println("<td>" + car.getModel() + "</td>");

                        out.println("<td>" + car.getColor() + "</td>");

                        out.println("<td>" + car.getSpeed() + " km/h</td>");

                        out.println("<td>" + (car.isVerliehen() ? "Ja" : "Nein") + "</td>");

                        if (car.getKunde() != null) {

                            out.println("<td>" + car.getKunde().getVorname() + " " + car.getKunde().getNachname() + "</td>");

                        } else {

                            out.println("<td>-</td>");

                        }

                        out.println("</tr>");

                    }

                %>
            </tbody>
        </table>
        <h2>Gespeicherte Kunden:</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Vorname</th>
                    <th>Nachname</th>
                </tr>
            </thead>
            <tbody>
                <%    List<Kunde> kunden = carBean.getKunden();

                    for (Kunde kunde : kunden) {

                        out.println("<tr>");

                        out.println("<td>" + kunde.getId() + "</td>");

                        out.println("<td>" + kunde.getVorname() + "</td>");

                        out.println("<td>" + kunde.getNachname() + "</td>");

                        out.println("</tr>");

                    }

                %>
            </tbody>
        </table>
        <a href="menu.jsp">Zurück zur Verwaltung</a>
    </body>
</html> 