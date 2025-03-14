# flutter_application_5

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Основной файл main.dart
В main.dart задается маршрутизация (routes) между тремя экранами: HomeScreen, SecondScreen и ThirdScreen.initialRoute: '/' означает, что первым открывается HomeScreen.
В routes указываются именованные пути, что удобно для навигации.
 FirstScreen
Этот экран имеет несколько способов перехода к SecondScreen, включая:
Navigator.push
Navigator.pushReplacement
Navigator.pushNamed
Navigator.pushNamedAndRemoveUntil
Важно: pushReplacement заменяет текущий экран новым, а pushNamedAndRemoveUntil очищает стек до указанного маршрута.
SecondScreen
Два способа выхода:
Navigator.pop(context); – вернуться назад.
Navigator.popAndPushNamed(context, '/third'); – закрыть текущий экран и открыть ThirdScreen.
ThirdScreen
Здесь есть только одна кнопка для возврата на предыдущий экран с помощью Navigator.pop(context);.

