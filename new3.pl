(dsad)
 {asddasd}
 asda =
sad
next
$dsad
%car_catalog=("BMW Series 5" => 100000,"Mercedes 2000"=> 250000,"Toyota Crolla"=>20000,"Lexus 3"=> 95000);
@my_wishlist=("BMW Series 5","Toyota Crolla");

print "I would like to buy one $my_wishlist[1] for the price of $car_catalog{$my_wishlist[1]} Dollars "
$c /= $a;
print "Value of \$c = $c after statement \$c /= \$a\n";

$c %= $a;
print "Value of \$c = $c after statement \$c %= \$a\n";
sad 
$c = 2;
$a = 4;
print "If value of \$a = $a and value of \$c = $c\n";
$c **= $a;
print "Value of \$c = $c after statement \$c **= \$a\n";

print "\n---\n \n";
#  -- and ++  Increment or deccrease the value by one --> $c = ++$a -> $c = 1 + $a
# The order is important:
$x = 10;
$y = 10;
$a = $x++; # $a = 10; $x = 11 --> Will first assign the value to $a, and then do the operation (add +1 to $x)
$b = ++$y; # $y = 11; $b = 11 --> Will first do the operation (add +1 to $b) and then assign the value to $b

# Bitwise operators
#  0b and 0x  Before the number transforms it from binary anb from hexagesimal  --> 2 = 0b10
#  &  Bitwise AND: Copies a bit to the result if it exist in both operands
#  |  Bitwise OR: Copies a bit to the result if it exist in either of the operands
#  ^  Bitwise XOR: Copies a bit to the result if it only exists in one of the operands
#  ~  Bitwise NOT: Inverts each bit of the operand
#  <<  SHIFT LEFT: Moves to the left the bit values the specified number of places, fills with 0 the values on the right
#  >>  SHIFT RIGHT: Moves to the right the bit values the specified number of places, fills with 0 the values on the left

# $a = 		0011 1100 ; #60
# $b = 		0000 1101 ; #13
# $a & $b = 0000 1100 ;
# $a | $b = 0011 1101 ;
# $a ^ $b = 0011 0001 ;
# ~$a 	=	1100 0011 ;
# $a << 2 = 1111 0000 ;
# $a >> 2 = 0000 1111 ;
\\ sdas
$b = 0b01011001;
$mask = 0b1111;
$bandm = $b & $mask;
$borm = $b | $mask;
$bxorm = $b ^ $mask;


print "$b & $mask = $bandm\n";
$x = 0b00001001;
print "and = $x\n";

print "$b | $mask = $borm\n";
$y = 0b01011111;
print "or = $y\n";

print "$b ^ $mask = $bxorm\n";
$z = 0b01010110;
print "xor = $z\n";

$bshl = $b << 1;
$bshr = $b >> 1;
print "$b << 1 = $bshl\n";
$l = 0b10110010;
print "01011001 -> 10110010\n";
print "$b >> 1 = $bshr\n";
$r = 0b00101100;
print "01011001 -> 00101100\n";

print "\n---\n \n";

#Logical Operators
#  and  Returns TRUE if both operands are true, otherwise FALSE
#  &&  Returns TRUE if both operands are true, doesn't check second operand if first is false.
#  or  Returns TRUE if either of the operands is true, otherwise FALSE
#  ||  Returns TRUE if either of the operands is true, doesn't check second operand if first is true.
#  xor  Returns TRUE if only one of the operands is true, otherwise FALSE
#  not  Returns the opposite of the operand, TRUE if false, FALSE if true.
#  !  Same, returns TRUE if the operand is false, otherwise FALSE

# String Operators
#  .  Concatenates
#  x  Repeats
$a = "world";
$b = "hello ";
print "Say to the " . $a . ": " . $b x 3 . "\n";

print "\n---\n \n";
# Say to the world: hello hello hello

#Miscellanious Operators
#  ..  Range: Specifies a range --> @range_list = (a..z); Creates a list array of numbers (increasing by 1) or letters (alphabetical order).


print "Exercice 8\n\n";
#	Follow these instructions and print the result after each step. 1) Assign scalar $a to a starting value of 5. Print value of $a. 2) Add 6 to the previous result. print the new result. 3) Multiply the previous result by 2. print the new result. 4) Autoincrement the previous result. print the new result. 5) Substract 9 from the previous result. print the new result. 6) Divide the previous result by 7. print the new result.

$a = 5;
print "1) \$a = $a\n";
$b = $a+6;
print "2) \$b = \$a + 6 = $a + 6 = $b\n";
$c = $b*2;
print "3) \$c = \$b * 2 = $b * 2 = $c\n";
$c = ++$c;
print "4) \$c = " . $b*2 . " --> \++\$c --> \$c = $c\n";
$d = $c - 9;
print "5) \$d = \$c - 9 = $c - 9 = $d\n";
print "6) \$e = \$d / 7 = $d / 7 = " . $d/7 . "\n";
print "\n\n\n---\n---\n---\n\n\n\n";


print " Subroutines\n";

# Functions or methods that do a set of task usually severla times
#  sub  Set a subrutine -->	sub name_of_subrutine {
#body of the task
# Once the subrutine is defined we can call it each time we need by writting its name and parenthesis --> name_of_subrutine ()
# Example

# Subroutine definition
sub Hello{
    print "Hello, World!\n";
}

# Subroutine call
print "We are calling the subroutine hello() now\n";
Hello();

# When calling a subrutine we can specify which arguments will it use by writting them between the parenthesis
#  @_  We can use the wild-card special array "@_" in will take the arguments specified between the parenthesis
#  $_  The same way we can use the wild-card default variable, in most cases Perl will use it even if we don't specify it

print "\n---\n \n";

# subroutine definition
sub calc_average {
    # get total number of arguments passed.
    $total_args = scalar(@_);
    $sum = 0;
    # sum up all arguments
    foreach $arg (@_){
        $sum += $arg;
    }
    # calc and print average
    $average = $sum / $total_args;
    print "Average of list [ @_ ] is: $average\n";
}

# subroutine call
print "We are calling the subroutine calc_average() now\n";
calc_average(10, 20, 30);
print "We are calling the subroutine calc_average() again\n";
calc_average(10, 15, 2, 8, 90);
print "\n---\n \n";
#  my  When defining variables it specifies that those are local, enclosed to the block
#  Reference: Use references to create a scalar variable from any object (scalar, array, hash, subrutine) by using "\" --> $hashref = \%hash1
#  Dereference: To return the value to the location use the symbol for the kind of object (scalar, array, hash, subrutine) -> %hashagain = %$hash1

# subroutine definition
sub is_value_exists_in_array {
    # first argument: string value to be searched in array
    $value = $_[0];
    # second argument: reference to array to be searched in
    $arrayref = $_[1];
    # create the array by dereferencing
    @my_array = @$arrayref;
    my $result = "does not exist in";
    foreach my $element (@array) {										#Aquí @array sería @my_array... no?
        if ($element eq $value) {$result = "exists in"; last};
    }
    # print result
    print "Value $value $result array @my_array\n";
}

# subroutine call
@foo = ('we', 'are', 5, 'happy', 'perl', 'programmers');				#Aquí @foo debería ser @foo_arrayref según lo de más abajo... no?
print "We are calling the subroutine is_value_exists_in_array() now\n";
is_value_exists_in_array('hello',$foo_arrayref);
print "We are calling the subroutine is_value_exists_in_array() again\n";
is_value_exists_in_array('happy',$foo_arrayref);

print "\n---\n \n";

#  return()  Used to return a value from a subrutine

# subroutine definition
sub calc_average {
    # get total number of arguments passed.
    $total_args = scalar(@_);
    $sum = 0;
    # sum up all arguments
    foreach $arg (@_){
        $sum += $arg;
    }
    # calc and print average
    $average = $sum / $total_args;
    return ($average);
}

# subroutine call
$a = calc_average(10, 20, 30);
print "The average is $a\n";
$a = calc_average(10, 15, 2, 8, 90);
print "The average is $a\n";


#sorting and comparing, an introduction
#	<=>		compare numerical by their value (using if)
#	cmp		compare strings by their ASCII value (if)
# sort		SORT ELEMENTS IN AN ARRAY-->		@sorted_list = sort 	@list		<-  Sorts the elements from the array by their ASCII value
#					This is the same than	@sorted_list = sort {$a cmp $b} @list
#											@sorted_list = sort {$a <=> $b} @list		<-  Sorts numerically
# $a <=> $b		or		$a cmp $b		To compare all pairs of values in an array we use the generic/magic variables $a and $b in this case we use them to sort the values of the listed
# Never assign values to those variables or gave those names to your own variables!
# $b <=> $a		or		$b cmp $a		To sort them in reverse order.



print "Exercice 9\n\n";
#	Create two subroutines min() and max() which calculate minimum and maximum numeric value of their arguments. For each given array @car_prices and @flight_prices in the tutorial code, calculate and print the difference between the maximum and minimum values.

#	SOLUTION
@car_prices = (100, 250, 95, 1300, 4534, 102, 100, 97);
@flight_prices = (85.20, 79.99, 45.30, 130, 45.34, 110.25, 100, 917);

# define subroutines
sub minmax {
    @cost = @_;
    @sorted = sort { $a <=> $b } @cost;
    $min = "$sorted[0]\n";
    $max = "$sorted[-1]\n";
    $dif = $max - $min;
    print "The difference between maximun and minimum price is $dif dollars\n";
}


minmax(@car_prices);
minmax(@flight_prices);

#OUTPUT
#The difference between maximun and minimum price is 4439 dollars
#The difference between maximun and minimum price is 871.7 dollars

print "\n\n\n---\n---\n---\n\n\n\n";


print " Regular Expressions\n";
#  =~	Binding operator, ndicates that we are going to do some string-text operation
# =~ m/ /  -> Match: compares a string of text with the text contained in a scalar and returns TRUE if they match --> $string =~ m/$text/
# =~ / /  -> Match: We don't need to write the "m"
#		Modifiers:
#  i  m/text tear/i  -> Not case sensitive
#  .  m/text te.r/   -> Dots count as "match" with any ASCII character (wild-card) -text teat, text teer, etc..
#  |  m/text|tear/  -> OR: Will look for either text or tear, checks first match, doen't check the second if the first matches
#  $  m/text$/  -> Exact End: matches "the text" but not "text long".
#  ^  m/^text/  -> Exact Beginning: Matches "text long", but not "the text"
#  []  m/text[eoi]  -> Range: Matches texte, texto or texti. Also m/text[1-8]/ will work with the whole range
# !~ / /	Not match
# =~ s/ / /  -> Replace: $text =~ s/abc/xyz/ --> Replace in text the first time "abc" appears with "xyz"
# =~ tr/ / / -> Transliteration or character-by-character translation: $text =~ tr/abc/xyz/ --> Replaces all "a" in text with "x", all "b" with "y" and all "c" with "z".
#		Modifiers:
#  g  s/ / /g  -> Replace All!
#  e  s/ / /e  -> Evaluates the replaced expression as a perl code and executes ir right away.
#  ()  m/te(xt|ar) long/  -> Either "text long" or "tear long", if the operation matches, the expression between parenthesis can be saved as $1, $2...
#  ..  m/text../  -> Matches any character except "new lines"
#  *  -> Matches the preceding element 0 or more times
#  +  Matches the preceding element 1 or more times
#  ?  Matches the preceding element 0 or 1 time
#  [...]  Matches any single character in the brackets.
#  [^...]  Matches any single character not in the brackets
#  { n}  Matches exactly n number of occurrences of preceding expression.
#  { n,}  Matches n or more occurrences of preceding expression.
#  { n, m}  Matches at least n and at most m occurrences of preceding expression.
#  W  Matches nonword characters.
#  s  Matches whitespace. Equivalent to [tnrf].
#  S  Matches nonwhitespace.
#  d  Matches digits. Equivalent to [0-9].
#  D  Matches nondigits.
#  A  Matches beginning of string.
#  Z  Matches end of string. If a newline exists, it matches just before newline.
#  z  Matches end of string.
#  G  Matches point where last match finished.
#  b  Matches word boundaries when outside brackets

$number = "Telephone:   1234-5678";
if ($number =~ m/^Telephone:\s*(\d{4}-\d{4})$/) {
    print "The telephone number extracted is " . $1 . "\n";
}
$date = "Date:    2014-jun-01";
if ($$date =~ m/^Date:\s*([\d]+)-([a-z]+)-([\d]+)$/) {
    print "The year is $1, the month is $2, the day is $3\n";
} {print "Date does not match"}

print "\n---\n \n";

print "Exercice 10\n\n";
#	You are given a scalar value $my_text. Assign the value of a regular expression to scalar $match_my_text to be used to match the string "express".
# Initialization
$my_text = "You should try to use regular expressions while drinking an Espresso";

# Matching text
$match_my_text = "express";
if ($my_text =~ m/$match_my_text/) {
    print "Match FOUND\n";
} else {
    print "Match NOT FOUND - Incorrect REGEXP\n";
}

print "\n\n\n---\n---\n---\n\n\n\n";

#References
print " References\n";

#We use references to organice and work with objects (variables, arrays, hash), but there is no sense to arithmetically manipulate references, as they will not longer point to their original data type. We need to de-reference

#  \$  -> $reference = \$scalar
#  \@  -> $reference = \@array
#  \%  -> $reference = \%hash
#To de-reference simply put te symbol from the type of data it was originally before the "$"
#  $$; @$; or %$

$price = 500;
$price_scalarref = \$price;
print "Price is $$price_scalarref\n";

@names = ('hello', 'world');
$names_arrayref = \@names;
print "The names list is @$names_arrayref\n";

%bank_accounts = ('John Boy' => 1345.56, 'Mary Sue', => 12,023.11);
$bank_hashref = \%bank_accounts;
%my_new_bank_account = %$bank_hashref;
print "The balance for John Boy is $my_new_bank_account{'John Boy'}\n";




###################################################################

########################################################################
#                                                                      #
#   Some tips and extra utilities from "Unix and Perl for Biologist"   #
#                                                                      #
########################################################################

# Examples of scripts I did using those are listed at UnixCommands

#	my ($lambda, $k) = @ARGV <-- Use the Array "ARGV" to give their values to the variables, this way the variable values will be pick from the command line.		We can give new values every time we call the function from bash: $		script.pl valuex valuey

#->use warnings; <- We write this in the first lines, we want warnings to tell us what is wrong!

#-> use strict; <- This also in the first lines, we want each command in a different line with the semicolon ";" and so, also, it will differenciate a global variable from a local variable.

#	$	my $x = a; <- With "use strict" we need to declare the first time a variable name is used with the "my" as a local variable.

#	-> multiplication always is calculated before addition, use parenthesis for everything else --> basic operators: math.pl

#	-> die() <-- The die function can be used in a conditional sentence, so if the input data is not right for the script we kill the process, else we run the rest of the script.

# We can use the transliterator (tr/)to count how many changes are made

my $sequence = "AACTAGCGGAATTCCGACCGT";
my $count = ($sequence =~ tr/G/G/);		#Nothing changes in $sequence, but the new variables records how many times G is transformed in G, so counts how many Gs there are in $sequence



print "\n\n\t\t<Press Enter to exit>";


%

<STDIN>
