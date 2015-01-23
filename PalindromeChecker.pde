public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String temp= new String();
  for(int i=0; i<word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i))==true)
    {
      if(word.charAt(i)!=' ')
      {
        temp=temp+word.charAt(i);
      }
    }
  }
  temp=temp.toLowerCase();
  for(int i=0; i<temp.length(); i++)
  {
    if(temp.charAt(i)!=temp.charAt(temp.length()-1-i))
    {
      return false;
    }
  }
  return true;
}
