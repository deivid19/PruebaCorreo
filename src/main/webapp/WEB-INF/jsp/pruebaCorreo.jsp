<%-- 
    Document   : pruebaCorreo
    Created on : 11/04/2019, 01:13:25 PM
    Author     : deivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email</title>
    </head>
    
    <body>
        <h1>Email</h1>
        <form method="POST" action="emailServlet">
            <label for="to">To:</label><input id="to" name="to" type="text"/><br/>
            <label for="subject">Subject:</label><input id="subject" name="subject" type="text"/><br/>
            <textarea name="body" cols="60" rows="15"></textarea><br/>
            <input type="submit" value="Send"/>
        </form>
    </body>