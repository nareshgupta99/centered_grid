# CenteredGrid

A lightweight Flutter widget that displays items in a flexible grid layout.  
Unlike the standard `GridView`, `CustomGrid` automatically centers the last row if it has fewer items than the specified `crossAxisCount`.

---

## 🚀 Features

✅ Customizable grid layout  
✅ Adjustable spacing between items  
✅ Automatically centers the last row  
✅ Works seamlessly with dynamic item counts  
✅ Compatible with any widget builder

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  custom_grid: ^1.0.0 
```
Then run:
```dart 
flutter pub get

```

## 🧱 Usage Example
```
import 'package:flutter/material.dart';
import 'package:centered_grid/centered_grid.dart';

class ExamplePage extends StatelessWidget {
  final List<String> imageUrls = [
    "https://dummyimage.com/180x150&text=1",
    "https://dummyimage.com/180x150&text=2",
    "https://dummyimage.com/180x150&text=3",
    "https://dummyimage.com/180x150&text=4",
    "https://dummyimage.com/180x150&text=5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CustomGrid Example")),
      body: Column(
        children: [
           CenteredGrid(
            itemCount: imageUrls.length,
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 8,
            itemBuilder: (context, index) {
              return Image.network(imageUrls[index]);
            },
          ),
        ],
      ),
    );
  }
}
```

## ⚙️ Parameters

| Parameter          | Type                   | Description                       |
| ------------------ | ---------------------- | --------------------------------- |
| `itemCount`        | `int`                  | Total number of items in the grid |
| `crossAxisCount`   | `int`                  | Number of items per row           |
| `crossAxisSpacing` | `double`               | Horizontal spacing between items  |
| `mainAxisSpacing`  | `double`               | Vertical spacing between items    |
| `itemBuilder`      | `IndexedWidgetBuilder` | Function to build each grid item  |


## 🧠 How It Works

CustomGrid calculates how many complete rows can be formed based on crossAxisCount.
If the last row has fewer items, it centers them horizontally using MainAxisAlignment.center, ensuring a neat appearance.

## 🧪 Example Output

![Alt text](https://res.cloudinary.com/dnkci1bpn/image/upload/v1761594083/output_pbtwvz.jpg)