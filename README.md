# 📱 SwiftUI Form — MVVM Architecture

A modern SwiftUI implementation of a user account form, built following **MVVM architecture** and best practices for state management and validation.

---

## 🚀 Overview

This project demonstrates how to build a real-world form interface in SwiftUI, similar to what you would find in a production app.

It focuses on:

* Clean architecture (MVVM)
* Proper state management using `ObservableObject`
* User input validation
* SwiftUI components composition
* Scalable and maintainable code structure

---

## 🧠 Key Concepts Applied

### 🧩 MVVM (Model-View-ViewModel)

* **View** → Responsible for UI rendering
* **ViewModel** → Handles business logic and validation
* **Model (ready to scale)** → Prepared for real data integration

### 🔄 State Management

* `@StateObject` for lifecycle-safe ViewModel ownership
* `@Published` for reactive UI updates
* One-way data flow

### ⚠️ Error Handling & Validation

* Input validation using `guard`
* User feedback through alerts
* Clean separation between UI and logic

---

## 🛠 Features

* 👤 User input form (name, birth date)
* 🔔 Newsletter toggle
* 👍 Dynamic likes counter (Stepper)
* 🔗 External link (Terms of Service)
* ✅ Form validation with user feedback
* ⌨️ Keyboard dismissal utility

---

## 🧱 Project Structure

```
swiftui-form/
│
├── App/
│   └── swiftui_formApp.swift
│
├── View/
│   └── ContentView.swift
│
├── ViewModel/
│   └── UserViewModel.swift
│
└── Resources/
```

---

## 📸 UI Preview

> A simple and clean account-style form built entirely with SwiftUI components.

---

## 💡 Why this project?

This project reflects how I approach iOS development:

* Writing **clean and maintainable code**
* Applying **architecture patterns used in production**
* Avoiding common pitfalls like shared mutable state
* Thinking in terms of **scalability and separation of concerns**

---

## 🧪 Next Steps (Scalability)

This project is designed to evolve easily into:

* API integration (network layer)
* Persistent storage (CoreData / UserDefaults)
* Unit testing for ViewModel
* Dependency injection

---

## 👨‍💻 About Me

I'm an iOS developer focused on building clean, scalable applications using Swift and SwiftUI.

I care about:

* Code quality
* Architecture
* Real-world problem solving

---

## 📬 Let's Connect

* GitHub: EEEEERIKO
* LinkedIn: *https://www.linkedin.com/in/erikodev/*

---

> *This project is part of my journey to becoming a professional iOS developer.*
