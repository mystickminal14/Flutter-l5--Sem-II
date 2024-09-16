import 'package:flutter/material.dart';
import 'package:untitled/pages/dashboard.dart';

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Loginpagestate();
  }
}

class Loginpagestate extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row with icons on each end
              Container(
                width: size.width / 1.2, // Adjust container width to match design
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Places icons at opposite ends
                  children: [
                    Icon(Icons.person, color: Colors.black, size: 50),
                    Icon(Icons.arrow_back, color: Colors.black, size: 50),
                  ],
                ),
              ),
              SizedBox(height: 30), // Space between icons and form container

              // Login form container
              Container(
                height: size.height / 2.5,
                width: size.width / 1.2,
                decoration: BoxDecoration(
                  color: Colors.yellow[600],
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title: Sign in
                    const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),

                    // Email Input Field
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Password Input Field
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    // Sign In Button
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const dashboardPage() // Navigate to DashboardPage
                            ),
                          );
                        },
                        child: Container(
                          width: size.width / 2.5,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Sign in",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Sign Up and Forgot Password Links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Add Sign Up functionality here
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                  Text("|", style: TextStyle(color: Colors.black)),
                  TextButton(
                    onPressed: () {
                      // Add Forgot Password functionality here
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}