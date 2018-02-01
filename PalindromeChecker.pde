public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    } else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String s = new String();
  String r = new String();
  for (int i = 0; i<word.length(); i++)
    if (word.charAt(i) != ' ')
      s = s + word.charAt(i);
  for (int i = s.length(); i>0; i--)
    r = r + s.charAt(i-1);
  String sFinal = new String();
  String rFinal = new String();
  for (int i = 0; i<s.length(); i++)    
    if (Character.isLetter(s.charAt(i))==true)
      sFinal = sFinal + s.charAt(i);
  for (int i = 0; i<r.length(); i++)    
    if (Character.isLetter(r.charAt(i))==true)
      rFinal = rFinal + r.charAt(i);
  sFinal=sFinal.toLowerCase();
  rFinal=rFinal.toLowerCase();
  //System.out.print(rFinal);
  //System.out.print(sFinal);
  if (rFinal.equals(sFinal))
    return true;
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length(); i>0; i--)
    sNew = sNew + str.charAt(i-1);
  return sNew;
}