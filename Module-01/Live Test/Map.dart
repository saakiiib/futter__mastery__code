// Create a Map representing student with key-value pairs. The keys are "StudentID,"
// "Name," "Age," "Address", "Class" and "Gender." Only the values for "StudentID,"
// "Age," and "Class" will be integers. Print out the "Address" value from the map.

void main() {

  Map<String, dynamic> person = {
    "PersonID": 1,
    "Name": "John Doe",
    "Age": 30,
    "Salary": 50000,
    "Gender": "Male",
  };
  
  print("Salary: ${person['Salary']}");

}