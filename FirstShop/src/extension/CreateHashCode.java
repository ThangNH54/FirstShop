package extension;

import java.util.Random;

public class CreateHashCode {
	private static String code="";
	static char  c;
	public static String getCode()
	{
		code="";
		Random random=new Random();
		c=(char) (65+random.nextInt(25));
		code+=String.valueOf(c);
		c=(char) (97+random.nextInt(25));
		code+=String.valueOf(c);
		c=(char) (48+random.nextInt(9));
		code+=String.valueOf(c);
		c=(char) (65+random.nextInt(25));
		code+=String.valueOf(c);
		return code;
		
	}
}
