<%-- 
    Document   : zeige_alle
    Created on : 14.01.2025, 10:22:12
    Author     : EWagner
--%>

<%@ page import="java.util.List" %>
<%@ page import="com.carcontrol2.Car" %>
<%@ page import="com.carcontrol2.Kunde" %>
<%@ page import="com.carcontrol2.CarControlBeanRemote" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Gespeicherte Daten</title>
    </head>
    <body>
        <h1>Gespeicherte Daten</h1>
        <%
            CarControlBeanRemote carBean = null;
            try {
                InitialContext ctx = new InitialContext();
                carBean = (CarControlBeanRemote) ctx.lookup("CarControlBean2/remote");
            } catch (NamingException e) {
                out.println("<p>Fehler: " + e.getMessage() + "</p>");
            }
        %>
        <h2>Autos:</h2>
        <ul>
            <%
                List<Car> autos = carBean.getCars();
                for (Car auto : autos) {
                    out.println("<li>" + auto.getModel() + " (" + auto.getColor() + ", " + auto.getSpeed() + " km/h)</li>");
                }
            %>
        </ul>
        <h2>Kunden:</h2>
        <ul>
            <%
                List<Kunde> kunden = carBean.getKunden();
                for (Kunde kunde : kunden) {
                    out.println("<li>" + kunde.getVorname() + " " + kunde.getNachname() + "</li>");
                }
            %>
        </ul>
        <a href="menu.jsp">Zurück zum Menü</a>
    </body>
</html>
