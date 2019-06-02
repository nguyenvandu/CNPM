package stackjava.com.accessfacebook.common;

// Khai báo information facebook  account
public class Constants {
	public static String FACEBOOK_APP_ID = "419756105478494";
	public static String FACEBOOK_APP_SECRET = "81bdb836a30309fcc9a2df887a49bf53";
	public static String FACEBOOK_REDIRECT_URL = "https://localhost:8443/Login-Project/login-facebook";
	public static String FACEBOOK_LINK_GET_TOKEN = "https://graph.facebook.com/oauth/access_token?client_id=%s&client_secret=%s&redirect_uri=%s&code=%s";
}
