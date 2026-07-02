<div align="center">

# 🧠 Foundation Models SwiftUI

**A SwiftUI demo of Apple's on-device Foundation Models — streaming a structured to-do list from a natural-language prompt.**

![Platform](https://img.shields.io/badge/Platform-iOS%2026-black?style=flat-square&logo=apple)
![Swift](https://img.shields.io/badge/Swift-5.0-FA7343?style=flat-square&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-blue?style=flat-square&logo=swift&logoColor=white)
![Foundation Models](https://img.shields.io/badge/Foundation%20Models-on--device-6E48AA?style=flat-square&logo=apple)
![Xcode](https://img.shields.io/badge/Xcode-26-1575F9?style=flat-square&logo=xcode&logoColor=white)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/FoundationModelsSwiftUI?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/FoundationModelsSwiftUI?style=flat-square&color=4776E6)

</div>

## 📖 Overview

Foundation Models SwiftUI is a compact sample app that shows how to use Apple's on-device `FoundationModels` framework directly from SwiftUI. Tapping the Apple Intelligence toolbar button sends a text prompt to a `LanguageModelSession`, which generates a list of to-do items and streams them back into the UI as they are produced. The whole flow runs on device using Apple Intelligence — no server, network call, or API key required.

## ✨ Features

- 🧩 **Structured generation** — a `Todo` model annotated with `@Generable` lets the language model produce strongly-typed results instead of raw text.
- 🔄 **Streaming responses** — uses `session.streamResponse(generating:)` to update the list incrementally as each chunk arrives.
- 📝 **Prompt-driven to-do list** — starts from an editable prompt (default: "Create a 10 item list") and renders the generated tasks in a SwiftUI `List`.
- 🍎 **On-device Apple Intelligence** — powered entirely by the `FoundationModels` framework; nothing leaves the device.
- 🏗️ **Clean MVVM structure** — a `@MainActor` `ObservableObject` view model drives an `@ObservedObject` view, with async/await handling the generation loop.

## 📸 Preview

<div align="center">

<img width="1121" height="724" alt="Screenshot 2025-12-11 at 01 41 43" src="https://github.com/user-attachments/assets/05af9efb-9e29-4647-9f4b-dc917fabb153" />
<img width="1427" height="751" alt="Screenshot 2025-12-11 at 01 41 55" src="https://github.com/user-attachments/assets/00fa4ab4-2817-43b0-85d7-d4a5dcd92757" />
<img width="1119" height="757" alt="Screenshot 2025-12-11 at 01 41 18" src="https://github.com/user-attachments/assets/495fd46a-9001-4d75-a3c1-5adb8c57a721" />
<img width="1067" height="711" alt="Screenshot 2025-12-11 at 01 41 34" src="https://github.com/user-attachments/assets/c54ddc6d-3104-454a-9db6-30d7932a4ec6" />
<img width="433" height="242" alt="Screenshot 2025-12-11 at 01 41 24" src="https://github.com/user-attachments/assets/cfc3eaec-59c6-43b5-bcbb-fcffc6de7324" />

</div>

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/FoundationModelsSwiftUI.git
cd FoundationModelsSwiftUI
open FoundationModelsApp.xcodeproj
```

Open the project in Xcode, select a Foundation Models capable target, and press **⌘R** to build and run.

## 📋 Requirements

- iOS 26.1 or later (a device/simulator with Apple Intelligence and the Foundation Models framework)
- Xcode 26+
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
