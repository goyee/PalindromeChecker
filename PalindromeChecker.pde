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
  String letters = "";
  String s = word.toLowerCase();
  for (int i = 0; i < s.length(); i ++)
  {
    if(Character.isLetter(s.charAt(i)))
    {
      letters = letters + s.charAt(i);
    }
  }
  String backwards = reverse(letters);
  if(letters.equals(backwards)){
    return true;
  }
  else
    return false;
}
public String reverse(String str)
{
  String s = "";
  for(int i = str.length()-1; i >=  0; i--){
    s = s + str.substring(i,i+1);
  }
  return s;
}