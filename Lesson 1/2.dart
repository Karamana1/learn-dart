class Employee {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final double salary;
  final String department;
  DateTime joinDate;

  Employee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.salary,
    required this.department,
    required this.joinDate,
  });

  String get fullName => '$firstName $lastName';

  double calculateYearlyBonus() {
    final yearsOfService = DateTime.now().difference(joinDate).inDays / 365;
    return salary * (yearsOfService * 0.02);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'salary': salary,
      'department': department,
      'joinDate': joinDate.toIso8601String(),
    };
  }

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      salary: json['salary'],
      department: json['department'],
      joinDate: DateTime.parse(json['joinDate']),
    );
  }
}

void main() {
  final employee = Employee(
    id: 'E001',
    firstName: 'John',
    lastName: 'Doe',
    email: 'john.doe@company.com',
    salary: 50000,
    department: 'Engineering',
    joinDate: DateTime(2020, 1, 1),
  );

  print('Full Name: ${employee.fullName}');
  print(
      'Yearly Bonus: \$${employee.calculateYearlyBonus().toStringAsFixed(2)}');

  final jsonData = employee.toJson();
  print('JSON Data: $jsonData');

  final employeeFromJson = Employee.fromJson(jsonData);
  print('Employee from JSON: ${employeeFromJson.fullName}');
}
