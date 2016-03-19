//Append to array
String[] trees = {"ash", "oak"};
trees = append(trees, "maple"); //Add "maple" to the end
print(trees);
println();

//Add "beech" to end of trees array, and creates a new
//array to store the change
String[] moretrees = append(trees, "beech");
print(moretrees);

//Shorten array by 1 element
String [] treesTropical = {"lychee", "coconut", "fig"};
trees = shorten(treesTropical);
print(treesTropical);
println();