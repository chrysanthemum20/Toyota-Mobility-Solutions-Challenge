📌 Overview

This repository contains an automated test script written in Python using Selenium WebDriver. The script is designed to perform end-to-end testing for the registration and login functionality of the Toyota Mobility Solutions Challenge website.

🛠 Tools & Technologies

Language: Python

Testing Framework: Robot Framework

Automation Library: Selenium WebDriver

Browser: Google Chrome (Chromium-based browsers supported)

Other Dependencies: Robot Framework-SeleniumLibrary

🎯 Test Scenarios

The script covers the following test cases:

Navigate to Registration Page – Ensure all required fields are visible.

Valid Registration – Enter correct details and verify successful registration.

Invalid Phone Number Format – Ensure incorrect phone numbers trigger an error.

Invalid Email Format – Verify that improperly formatted emails are rejected.

Empty Fields Validation – Confirm the system enforces required fields.

Special Character Validation – Test input restrictions on email and phone fields.

🚀 How to Run the Script

1️⃣ Prerequisites

Ensure you have the following installed:

Python 3.x

Google Chrome

Chrome WebDriver (Ensure compatibility with your browser version)

2️⃣ Install Dependencies

Run the following command to install required Python libraries:

pip install robotframework-seleniumlibrary

3️⃣ Execute the Test Script

Navigate to the project folder and run:

robot validateUserRegistrationFunctionality.robot

This will execute the test cases and generate an output report.

📊 Test Reports

After execution, the following reports will be generated:

output.xml – Detailed execution logs

log.html – Interactive log file for debugging

report.html – Test execution summary

To view the reports, open log.html or report.html in a web browser.

💡 Thought Process & Design

Modular Test Cases: Each test scenario is designed as an independent function to ensure maintainability.

Explicit Waits: Used Wait Until Element Is Visible to handle dynamic loading issues.

XPath Selectors: Ensured robust element identification for stability.

Data-Driven Approach: Variables allow easy modification of test data for reusability.

📩 Submission Instructions

Ensure all test cases pass successfully.

Push the latest code to this repository.

Share the GitHub repository link via email with the HR and Interview Panel.

🔗 Author: Uriel Jeremiah Pacis

For any inquiries, feel free to reach out!
