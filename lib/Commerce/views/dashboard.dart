import 'package:flutter/material.dart';  // Flutter package for building UI
import 'package:flutter_secure_storage/flutter_secure_storage.dart';  // For secure local storage
import 'package:jwt_decoder/jwt_decoder.dart';  // For decoding JWT tokens
import 'package:sweetmanager/Commerce/widgets/bar_chart.dart';  // Import for BarChart widget
import 'package:sweetmanager/Shared/widgets/base_layout.dart';  // Import for the BaseLayout widget

// Define the DashboardScreen widget which is a StatefulWidget
class DashboardScreen extends StatefulWidget {

  // Constructor to initialize the DashboardScreen
  const DashboardScreen({super.key});

  @override
  State<StatefulWidget> createState() => DashboardScreenState();
}

// Define the state for DashboardScreen
class DashboardScreenState extends State<DashboardScreen> {
  
  // Initialize FlutterSecureStorage to securely store and retrieve data
  final storage = const FlutterSecureStorage();

  // Method to retrieve the role from the decoded JWT token
  Future<String?> _getRole() async {
    // Retrieve token from local storage using FlutterSecureStorage
    String? token = await storage.read(key: 'token');

    // Decode the token using JwtDecoder
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token!);

    // Get the role claim from the token
    return decodedToken['http://schemas.microsoft.com/ws/2008/06/identity/claims/role']?.toString();
  }

  @override
  Widget build(BuildContext context) {
    // Use FutureBuilder to asynchronously fetch the role from the token
    return FutureBuilder(
      future: _getRole(),  // The future that fetches the role
      builder: (context, snapshot) {
        // Display loading indicator while waiting for the role
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        // If role data is successfully fetched
        if (snapshot.hasData) {
          String? role = snapshot.data;

          // Return the BaseLayout widget with the role and the appropriate child screen
          return BaseLayout(
            role: role,
            childScreen: getContentView(role)
          );
        }

        // Display an error message if no role information is available
        return const Center(child: Text('Unable to get information', textAlign: TextAlign.center));
      }
    );
  }
  
  // Method to return the appropriate content view based on the role
  Widget getContentView(String? role) {
    if (role == 'ROLE_ADMIN') {
      return BarChartTest(role: role!);  // Admin role - display BarChart
    } else if (role == 'ROLE_WORKER') {
      return BarChartTest(role: role!);  // Worker role - display BarChart
    } else if (role == 'ROLE_OWNER') {
      return BarChartTest(role: role!);  // Owner role - display BarChart
    } else {
      // If role is not recognized, show error text
      return const Text('Check code');
    }
  }
}
