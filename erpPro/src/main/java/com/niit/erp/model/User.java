package com.niit.erp.model;

import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee")
public class User implements Serializable {
	@Id
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private String password;

	@Id
	@Column(name="id")
	private int id;
	
	public User() {
	
	}

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		/*String encodedString =password;
		Base64.Decoder decoder = Base64.getDecoder();
		byte[] decodedByteArray = decoder.decode(encodedString);
		return (new String(decodedByteArray));*/
		return password;
	}

	public void setPassword(String password) {
		Base64.Encoder encoder = Base64.getEncoder();
	String normalString = password;
	String encodedString = encoder.encodeToString(
    normalString.getBytes(StandardCharsets.UTF_8) );
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "User [email=" + email + ", password=" + password + ", id=" + id + "]";
	}

	
	
	
	
	
}
