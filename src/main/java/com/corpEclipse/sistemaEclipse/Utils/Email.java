/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.corpEclipse.sistemaEclipse.Utils;

import java.io.File;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author deivi
 */
public class Email {

    //public static boolean EnviarMail(String mailTo, String mailMensaje){ 
    public static boolean EnviarMail() {
        String host = "smtpout.secureserver.net";
        final String user = "ricardo.zuniga@zoflabs.com";//change accordingly
        final String password = "L1nuxru13s@";//change accordingly

        String to = "gir250@gmail.com";//change accordingly

        //Get the session object
        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.auth", "true");
        //props.put("mail.smtp.port", "465");
        props.put("mail.smtp.port", "3535");
        //props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.localhost", "zoflabs.com");

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });
        session.setDebug(true);
        //Compose the message
        try {
            System.out.println("entro al mensaje");
            MimeMessage message = new MimeMessage(session);
            System.out.println("entro al mime");
            message.setFrom(new InternetAddress(user));
            System.out.println("entro al from");
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            System.out.println("entro al mensaje");
            message.setSubject("javatpoint");
            message.setText("This is simple program of sending email using JavaMail API");

            //send the message
            Transport.send(message);

            System.out.println("message sent successfully...");

        } catch (MessagingException e) {
            e.printStackTrace();
        }

        /*
        System.out.println("entra a metodo EnviarMail");
        File file = new File(DEST);
        file.getParentFile().mkdirs();
        //new PDF().createPdf(dest, fechSel, nombSel, appaSel, appmSel, oficSel, tramSel,horario);
                           
        // Recipient's email ID needs to be mentioned.
        String to = "gir250@gmail.com";

        // Sender's email ID needs to be mentioned
        String from = "david.reyes@eclipsemex.com";

        final String username = "david.reyes@eclipsemex.com";//change accordingly
        final String password = "DReyes@2019";//change accordingly

        // Assuming you are sending email through relay.jangosmtp.net
        String host = "mail.eclipsemex.com";

        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", "25");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        
        //System.out.println("Propiedades: " + props);

        // Get the Session object.
        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            System.out.println("proceso...");
            // Create a default MimeMessage object.
            Message message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));
            
            InternetAddress[] address = {new InternetAddress(to)};

            // Set To: header field of the header.
            message.setRecipients(Message.RecipientType.TO, address);
            // Set To: header field of the header.
            

            // Set Subject: header field
            message.setSubject("Test envio email");

            message.setText("Prueba de envio JavaEmail");
            
            System.out.println("msj: " + message);
            
            Transport tr = session.getTransport("smtp");
            tr.connect(username, password);
            tr.sendMessage(message, address);
            
            // Send message
            //Transport.send(message);

            System.out.println("Sent message successfully....");

        }catch (MessagingException e) {
            e.printStackTrace();
        }catch (Exception e) {
            e.printStackTrace();
        }*/
        return true;
    }

}
