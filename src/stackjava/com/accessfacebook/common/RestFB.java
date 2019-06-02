package stackjava.com.accessfacebook.common;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Version;
import com.restfb.types.User;

public class RestFB {
	
	// xử lý code để lấy mã truy cập
	public static String getToken(final String code) throws ClientProtocolException, IOException {
		String link = String.format(Constants.FACEBOOK_LINK_GET_TOKEN, Constants.FACEBOOK_APP_ID, Constants.FACEBOOK_APP_SECRET, Constants.FACEBOOK_REDIRECT_URL, code);//Lấy thông tin account từ contants
		String response = Request.Get(link).execute().returnContent().asString();
		JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
		String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
		return accessToken;
	}
	
	// Lấy thông tin của người dùng
	public static User getUserInfo(String accessToken) {  // Tạo ra máy con kết nối với mã truy cập và mã bảo mật
		FacebookClient facebookClient = new DefaultFacebookClient(accessToken, Constants.FACEBOOK_APP_SECRET, Version.LATEST); 
		return facebookClient.fetchObject("me", User.class);
	}
}
