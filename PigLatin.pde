import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
{
  for (int k=0; k<sWord.length(); k++)
  {
    String moop = sWord.substring(k, k+1);
    if (moop.equals("a")||moop.equals("e")||moop.equals("i")||moop.equals("o")||moop.equals("u"))
    {
      return k;
    }
  }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if (findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if (findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if (sWord.substring(0,2).equals("qu"))
	{
		return sWord.substring(2,sWord.length()) + "quay";
	}
	else
	{
		return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	}
}

