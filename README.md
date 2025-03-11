# Task Manager App

This is a **Task Manager** app built using **SwiftUI** that allows users to manage tasks efficiently. The app supports the **MVVM** architecture, **Dark Mode**, and features such as **task completion toggle**, **dynamic theme switching**, and more.

## Features

- **Task List Screen**: Displays a list of tasks with options to mark them as complete or incomplete.
- **Add Task Screen**: Allows users to add new tasks with titles and details.
- **Toggle Dark Mode**: Users can toggle between Light and Dark mode using a switch.
- **Task Completion**: Completed tasks are marked with a checkmark and moved to the bottom.
- **Dynamic Type Support**: Supports text scaling based on user settings for accessibility.
- **Navigation**: Uses `NavigationStack` and `NavigationLink` for smooth screen transitions.
- **Accessibility**: Implements accessibility features like labels and hints for better usability.


## Usage

1. **Add Task**: Navigate to the "Task Manager" screen and tap on the "Add Task" button to create a new task.
2. **Toggle Dark Mode**: Use the switch at the top of the screen to toggle between Light and Dark mode.
3. **Mark Task as Complete**: Tap the task's circle to mark it as complete. Completed tasks will appear at the bottom of the list.
4. **Edit and Delete Tasks**: Swipe to delete tasks or navigate to the task detail screen to make changes.

## Screenshots

<img width="368" alt="Screenshot 1446-09-11 at 1 59 13 PM" src="https://github.com/user-attachments/assets/09b1fbe1-dd0c-4b1c-a925-e99621bed7ca" />
<img width="364" alt="Screenshot 1446-09-11 at 2 00 00 PM" src="https://github.com/user-attachments/assets/db06f8ac-52ec-4730-b0e8-79595b9f163a" />


## Dark Mode Toggle

The app includes a toggle to switch between **Light Mode** and **Dark Mode** manually. The theme is preserved even after restarting the app using **UserDefaults**.
