# Botambe

A new Flutter project

## Screenshots
<table>
<tr>
<td><img src="screenshots/image1.png" width="200px" /></td>
<td><img src="screenshots/image2.png" width="200px" /></td>
<td><img src="screenshots/image3.png" width="200px" /></td>
<td><img src="screenshots/image4.png" width="200px" /></td>
</tr>
</table>

## Getting Started

Follow this guide to set up and run the Botambe:

### Setting Up the App:

1. **Install Flutter and Dependencies:** Ensure Flutter is installed on your system. Download the Flutter SDK from the official website and set up your preferred IDE (e.g., Android Studio or Visual Studio Code) with the Flutter plugin.

2. **Clone the Repository:** Clone the Botambe repository from GitHub using Git:

    ```bash
    git clone https://github.com/SiroDaves/Botambe.git
    ```

3. **Install Packages:** Navigate to the project directory and run:

    ```bash
    flutter pub get
    ```

4. **Setup Code Generated Files:** Run the following command to do auto generation of code:

    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

5. **Setup Supabase Keys:** Copy paste the file ```keys.example``` to the project directory.
    - Rename the copied file as ```keys-prod.json```. 
    - Replace the empty value of ```supabaseUrl``` and ```supabaseAnonKey``` with your supabase keys

6. **Run the App:** Execute the following command to run the app:

    ```bash
    flutter run --dart-define-from-file keys-prod.json
    ```

### Building the Botambe:

- **Android build:**

    ```bash
    flutter build apk --dart-define-from-file keys-prod.json --no-tree-shake-icons
    ```

- **iOS Build:**

    ```bash
    flutter build ios -t lib/main_prod.dart --dart-define-from-file keys-prod.json --no-tree-shake-icons --build-name
    ```

Congratulations! You've successfully set up and run or built the Botambe. Explore the codebase, make modifications, and contribute to creating a seamless experience on the app. Happy coding!