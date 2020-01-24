public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String s = onlyLetters(word);
  s = lowerCase(s);
  s = noSpaces(s);
  if(reverse(s).equals(s))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String s = "";
  for (int i = str.length()-1; i>= 0; i--)
    s = s + str.substring(i,i+1);
  return s;
}

public String lowerCase (String str)
{
  return str.toLowerCase();
}

public String noSpaces(String str){
  String s = "";
  for (int i = 0; i < str.length();i++)
    if (Character.isLetter(str.charAt(i)) == true)
      s = s + str.charAt(i);
  return s;
}

public String onlyLetters(String str){
  String s = "";
  for (int i = 0; i < str.length();i++)
    if (Character.isLetter(str.charAt(i))==true)
      s = s + str.charAt(i);
    return s;
}

