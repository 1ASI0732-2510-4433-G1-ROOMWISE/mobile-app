// Define the Worker class to represent a worker entity
class Worker {
  
  // Define the properties of the Worker class
  int id;  // Unique identifier for the worker
  String? username;  // Username of the worker (nullable)
  String? name;  // First name of the worker (nullable)
  String? surname;  // Surname of the worker (nullable)
  String? email;  // Email address of the worker (nullable)
  int? phone;  // Phone number of the worker (nullable)
  String? state;  // Current state or status of the worker (nullable)
  String? password;  // Password of the worker (nullable)

  // Constructor to initialize a Worker object with required and optional fields
  Worker({
    required this.id,  // Required worker ID
    this.username,  // Optional username
    this.name,  // Optional first name
    this.surname,  // Optional surname
    this.email,  // Optional email
    this.phone,  // Optional phone number
    this.state,  // Optional state
    this.password,  // Optional password
  });

  // Factory constructor to create a Worker instance from a JSON map (fromJson method)
  factory Worker.fromJson(Map<String, dynamic> json) {
    return Worker(
      id: json['id'] ?? 0,  // Map worker ID from JSON (default to 0 if not found)
      username: json['username'],  // Map username from JSON
      name: json['name'],  // Map first name from JSON
      surname: json['surname'],  // Map surname from JSON
      email: json['email'],  // Map email from JSON
      phone: json['phone'] != null ? int.tryParse(json['phone'].toString()) : null,  // Map phone number from JSON and parse to integer
      state: json['state'],  // Map state from JSON
      password: json['password'],  // Map password from JSON
    );
  }

  // Method to convert the Worker instance to a JSON map (toJson method)
  Map<String, dynamic> toJson() {
    return {
      'id': id,  // Convert worker ID to JSON
      'username': username,  // Convert username to JSON
      'name': name,  // Convert first name to JSON
      'surname': surname,  // Convert surname to JSON
      'email': email,  // Convert email to JSON
      'phone': phone,  // Convert phone number to JSON
      'state': state,  // Convert state to JSON
      'password': password,  // Convert password to JSON
    };
  }
}
