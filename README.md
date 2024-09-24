Flutter Calculator App
## Overview
This Flutter application is a simple yet functional calculator that allows users to perform basic arithmetic operations, including addition, subtraction, multiplication, division, square root, and exponentiation. The user interface is designed to be user-friendly, featuring buttons for numerical input and operations.

## Features
- **Basic Arithmetic Operations**: Supports addition, subtraction, multiplication, and division.
- **Advanced Operations**: Includes square root (`√`) and exponentiation (`^`).
- **Clear and Backspace Functions**: Users can clear the current input or remove the last character.
- **Result Display**: Shows results, including integers and decimal numbers, while handling infinite results appropriately.

## Technologies Used
- **Flutter**: A UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **math_expressions**: A package used to parse and evaluate mathematical expressions.
- **string_validator**: A package used for string validation, particularly for checking if a string can be parsed as an integer.

## Getting Started
### Prerequisites
- Flutter SDK
- Dart SDK

## Code Structure
### Main Components
- **MyApp**: The main StatefulWidget that holds the entire calculator application logic and UI.
- **UI Layout**: The layout consists of a text field for display and several rows of buttons for input.
- **Button Actions**: Each button has an `onPressed` method that updates the display accordingly.

### Core Logic
- **Input Handling**: The app constructs the mathematical expression based on user input while ensuring proper formatting (e.g., handling parentheses).
- **Evaluation**: When the user presses the equals (`=`) button, the input string is parsed and evaluated using the `math_expressions` package. Results are then displayed in the text field.
- **Error Handling**: The app checks for infinite results and displays "Infinity" when applicable.

## Usage
- Enter numbers and operations using the buttons.
- Use the clear (`C`) and clear entry (`CE`) buttons to manage your input.
- Press `=` to evaluate the expression, and the result will be displayed in the text field.

## Screenshots

![Screenshot_20240925-002302](https://github.com/user-attachments/assets/ab9f0f30-49a5-4416-94f7-30ea0add1b3f)
![Screenshot_20240925-002725](https://github.com/user-attachments/assets/f923f9d7-70d9-4c0c-8d2b-e7a7626a5f1e)


## Contributing
Feel free to fork the repository and make contributions! Issues and pull requests are welcome.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

---
