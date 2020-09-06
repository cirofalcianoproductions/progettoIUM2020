package com.agricolario.bean;

import java.util.Properties;
import java.util.UUID;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
 	 private final String username = "";
 	 private final String password = "";
 	 private  Session session;
 	 private   Properties prop; 
	public Email() {
			prop = new Properties();
			prop.put("mail.smtp.host", "smtp.gmail.com");
	        prop.put("mail.smtp.port", "587");
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.starttls.enable", "true"); //TLS
	}
	private Session getSession() {
		
		
		
		 session = Session.getInstance(prop,
	                new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(username, password);
	                    }
	                });

		
		return session;
		
		
		
		
	}
	public boolean sendEmail(String to) {
		
		 try {

	            Message message = new MimeMessage(getSession());
	            message.setFrom(new InternetAddress(""));
	            message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
	            message.setSubject("Conferma registrazione");
	            
	            message.setText("Ciao conferma la registrazione");

	            Transport.send(message);

	            System.out.println("Done");

	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
		
		
		return false;
	}

}
