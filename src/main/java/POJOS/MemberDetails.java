package POJOS;

import java.security.NoSuchAlgorithmException;

import GeneralStuff.Sha1Hash;
public class MemberDetails {
	private String username;  
	private String password; 
	private String email; 
	private String uniqueShaHash; 
	private double balance; 
	
	public MemberDetails() {
	}
	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUniqueShaHash() {
		return uniqueShaHash;
	}
	public void setUniqueShaHash(String uniqueShaHash) throws NoSuchAlgorithmException {
		this.uniqueShaHash = Sha1Hash.getSHAString(Long.toString(System.nanoTime()));
	}
}
