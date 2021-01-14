private static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509244761460668082264800168477411853742345442437107539077744992069551702761838606261331384583000752044933826560297606737113200709328709127443747047230696977209310141692836819025515108657463772111252389784425056953696770785449969967946864454905987931636889230098793127736178215424999229576351482208269895193668033182528869398496465105820939239829488793320362509443117301238197068416140397019837679320683282376464804295311802328782509819455815301756717361332069811250996181881593041690351598888519345807273866738589422879228499892086805825749279610484198444363463244968487560233624827041978623209002160990235304369941849146314093431738143640546253152096183690888707016768396424378140592714563549061303107208510383750510115747";

private boolean isPrime(double num){

  // this function returns true if the num is prime.
  
  if (num<2){
    return false;
  }
  else
  {
   for(int i=2; i<= Math.sqrt(num); i++){
    if (num % i == 0){
      return false;
     }
    }
    }
  return true;
}

private boolean sumsToFortyNine (String  theString) {

  // this function returns true iff the sum of the digits
// of 'theString' equals 49.

double theSum = 0;
 
 for (int i = theString.length(); i > 0; i--) {
  theSum = theSum + Integer.parseInt(theString.substring(i-1,i)); 
 }
 return (theSum == 49);
}


void setup(){
 String theSubString;
 Double theNumber;
 int counter = 1;
 
  for(int i=2; i<e.length()-10; i++){
    theSubString=e.substring(i,i+10);
    theNumber= Double.parseDouble(theSubString);
    if (isPrime (theNumber)) {
     if (counter == 1) {
       System.out.println("The answer to the Google Billboard.");
     }
     else {
       if (counter == 2) {
         System.out.println("Other Interesting 10 Digit Prime Numbers in e.");
       }
     }
     System.out.println("10 digit prime number, Number "+counter+": "+theSubString+"."); 
     counter++;
    }
  }
  counter = 1;
  for(int i=2; i<e.length()-10; i++){
    theSubString=e.substring(i,i+10);
    if (sumsToFortyNine(theSubString)) {
       if (counter == 5) {
       System.out.println("The answer to the password.");
     }
       System.out.println("f("+counter+"): "+theSubString+"."); 
       counter++;
      }
  }
}
