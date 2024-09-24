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

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/flutter_calculator.git
   ```
2. Navigate to the project directory:
   ```bash
   cd flutter_calculator
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

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
*(Include screenshots of your app here)*

## Contributing
Feel free to fork the repository and make contributions! Issues and pull requests are welcome.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

---

## Additional Notes
- Ensure to include a `.gitignore` file to avoid committing unnecessary files (e.g., build artifacts).
- You may want to add a `README.md` with detailed installation instructions and examples.

By following this structure, you'll create a comprehensive and user-friendly GitHub repository for your Flutter Calculator app. Let me know if you need any more specific details or further assistance!
