package com.agricolario.functionality;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validator {

	public Validator() {
		// TODO Auto-generated constructor stub
	}
	private Pattern pattern ;//= Pattern.compile("[a-zA-Z0-9]+@[a-zA-Z0-9]+\\.[a-zA-Z]+");
	private Matcher matcher; //= pattern.matcher("alias21@dominio.it");
	
	//match email
	
	public boolean validatorEmail(String email) {
		
		pattern=Pattern.compile("[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}");
		matcher = pattern.matcher(email);
		System.out.println(matcher.find());
		return	matcher.find();
	}
	
	//match password
public boolean validatorPassword(String pwd) {
		pattern=Pattern.compile("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$");
		matcher = pattern.matcher(pwd);
		System.out.println(matcher.find());
		return	matcher.find();
		
	}
public boolean validatorName(String name) {
	pattern=Pattern.compile("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$");
	matcher = pattern.matcher(name);
	System.out.println(matcher.find());
	return	matcher.find();
	
}
public boolean validatorDate(String date) {
	pattern=Pattern.compile("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$");
	matcher = pattern.matcher(date);
	System.out.println(matcher.find());
	return	matcher.find();
	
}
public double extractSuperficie(String superficie) {
	//([0-9]*\.[0-9]+|[0-9]+)(\\d)+\\.(\\d+)
	pattern = Pattern.compile("([0-9]*\\.[0-9]+|[0-9]+)");
	matcher = pattern.matcher(superficie);
	
	double s=0;
	if (matcher.find())
	{
	s=Double.parseDouble( matcher.group().toString()); 
	
	
	
   }
	return s;
}

public String extractSuperficieString(String superficie) {
	//([0-9]*\.[0-9]+|[0-9]+)(\\d)+\\.(\\d+)
	pattern = Pattern.compile("([0-9]*\\.[0-9]+|[0-9]+)");
	matcher = pattern.matcher(superficie);
	
	String s="";
	if (matcher.find())
	{
	s=( matcher.group().toString()); 
	
	
	
   }
	return s;
}
	
}
