package water.com;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
public class sha256
{



public static void main(String[] args) throws NoSuchAlgorithmException 
{      

}

public String getEncryptedValue(String passname) throws NoSuchAlgorithmException {
	
	String str=passname;
	
	MessageDigest md=MessageDigest.getInstance("SHA-256");
	
	 md.update(str.getBytes());
	 //md.update(password.getBytes());

        byte byteData[] = md.digest();
        //convert the byte to hex format method 1
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < byteData.length; i++) {
         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
        }

        String str1=sb.toString();
      //  System.out.println("Hex format : " + sb.toString());
        return str1;
}



}
