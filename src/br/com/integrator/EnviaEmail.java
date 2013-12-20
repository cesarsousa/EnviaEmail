package br.com.integrator;

import java.util.Date;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.*;

import br.com.integrator.util.Autenticar;

public class EnviaEmail {
	private String de;
	private String para;
	private String assunto;
	private String mensagem;
	
	private static Properties props=null;
	private static Session session = null;
	
	
	static{
		props = System.getProperties();
		props.put("mail.smtp.host", "localhost");
		props.put("mail.smtp.port", "25");
		props.put("mail.smtp.auth", "true");
		session = Session.getInstance(props,
				new Autenticar("seu_email_aqui","sua_senha_aqui")
		);
	}
		
	
	public String getDe() {
		return de;
	}
	public void setDe(String de) {
		this.de = de;
	}
	public String getPara() {
		return para;
	}
	public void setPara(String para) {
		this.para = para;
	}
	public String getAssunto() {
		return assunto;
	}
	public void setAssunto(String assunto) {
		this.assunto = assunto;
	}
	public String getMensagem() {
		return mensagem;
	}
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	public boolean enviar(){
		try{
			MimeMessage message = new MimeMessage(session);
			message.setRecipient(
					Message.RecipientType.TO, 
					new InternetAddress(this.para)
			);
			message.setFrom(new InternetAddress(this.de));
			message.setSubject(this.assunto);
			
			message.setSentDate(new Date());
			
			message.setContent(this.mensagem,"text/html");
			Transport.send(message);
			
			return true;
			
		}
		catch (MessagingException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
}
