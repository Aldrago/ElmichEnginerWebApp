
package projectpackage;

import java.util.Random;

public class CaptchaGenerator
{
    public String getCode()
    {
        String capcode="";
        capcode=capcode+(char)randint(65,90);
        capcode=capcode+(char)randint(65,90);
        capcode=capcode+(char)randint(48,57);
        capcode=capcode+(char)randint(48,57);
        capcode=capcode+(char)randint(97,122);
        capcode=capcode+(char)randint(97,122);        
        return capcode;
    }
     public int randint(int min,int max)
     {
         Random r=new Random();
         int num=r.nextInt((max-min)+1)+min;
         return num;
     }

}
