package com.niit.erp.model;

public class Admin {

	  private String email;
	  private String password;

	  
	  public String getEmail() {
	    return email;
	  }

	  public void setEmail(String email) {
	    this.email = email;
	  }

	  public String getPassword() {
	    return password;
	  }

	  public void setPassword(String password) {
	    this.password = password;
	  }

	

	}












/*
 * @Entity
 * 
 * @Table(name="employee") public class Admin {
 * 
 * @Id
 * 
 * @Column(name="email") private String email;
 * 
 * @Column(name="password") private String password;
 * 
 * public Admin() {
 * 
 * }
 * 
 * public String getEmail() { return email; }
 * 
 * public void setEmail(String email) { this.email = email; }
 * 
 * public String getPassword() { String encodedString =password; Base64.Decoder
 * decoder = Base64.getDecoder(); byte[] decodedByteArray =
 * decoder.decode(encodedString); return (new String(decodedByteArray)); return
 * password; }
 * 
 * public void setPassword(String password) { Base64.Encoder encoder =
 * Base64.getEncoder(); String normalString = password; String encodedString =
 * encoder.encodeToString( normalString.getBytes(StandardCharsets.UTF_8) );
 * this.password = password; }
 * 
 * @Override public String toString() { return "Admin [email=" + email +
 * ", password=" + password + "]"; } }
 * 
 */