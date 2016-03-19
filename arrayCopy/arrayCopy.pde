String[] north = {"OH", "IN", "MI"};
String[] south = {"GA", "FL", "NC"};

arraycopy(north, south); //Copy north array contents to south
print(south);
println();
String[] east = {"MA", "NY", "RI"};
String[] west = new String[east.length]; //make an new array the same length as west
//to copy from one array to the another the sizes must match
arraycopy(east, west); // copy east array to west
print(west);