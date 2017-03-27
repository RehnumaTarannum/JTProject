/**
 * 
 */
package consultAddPack;

/**
 * @author rehnumatarannum DAO file for the Java Training Project
 *
 */
public class jtProjectDAO {
	private String username, password, email, contactNo;

	

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}



	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}



	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}



	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}



	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}



	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}



	/**
	 * @return the contactNo
	 */
	public String getContactNo() {
		return contactNo;
		
	}



	/**
	 * @param contactNo the contactNo to set
	 */
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}



	@Override
	public String toString() {

		return "DAO [Username = " + username + ", " + "Password = " + password + ", " + "Email = " + email + ", "
				+ "ContactNo = " + contactNo + " ]";
	}

}
