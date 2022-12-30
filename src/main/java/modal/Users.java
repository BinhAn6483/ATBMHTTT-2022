package modal;

public class Users {
    private int id;
    private String userName;
    private String password;
    private String day_birth;
    private String sex;
    private String phoneNumber;
    private String email;
    private String address;
    private String user_id;
    private int user_type;

    //none constructor
    public Users() {

    }

    public Users(int id, String userName, String password, String user_id, int user_type) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.user_id = user_id;
		this.user_type = user_type;
	}

	public Users(int id, String userName, String password, String day_birth, String sex, String phoneNumber, String email, String address, String user_id, int user_type) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.day_birth = day_birth;
        this.sex = sex;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.user_id = user_id;
        this.user_type = user_type;
    }

    //GETTER AND SETTER

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDay_birth() {
        return day_birth;
    }

    public void setDay_birth(String day_birth) {
        this.day_birth = day_birth;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public int getUser_type() {
        return user_type;
    }

    public void setUser_type(int user_type) {
        this.user_type = user_type;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", day_birth='" + day_birth + '\'' +
                ", sex='" + sex + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", user_id='" + user_id + '\'' +
                ", user_type=" + user_type +
                '}';
    }
}
