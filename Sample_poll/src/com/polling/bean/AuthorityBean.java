/**
 * 
 */
package com.polling.bean;

/**
 * @author USER
 *
 */
public class AuthorityBean {
			private String fname;
			private String lname;
			private String contact;
			private String email;
			private String password;
			private boolean status;
			public boolean isStatus() {
				return status;
			}
			public void setStatus(boolean status) {
				this.status = status;
			}
			public String getContact() {
				return contact;
			}
			public void setContact(String contact) {
				this.contact = contact;
			}
			public String getFname() {
				return fname;
			}
			public void setFname(String fname) {
				this.fname = fname;
			}
			public String getLname() {
				return lname;
			}
			public void setLname(String lname) {
				this.lname = lname;
			}
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
