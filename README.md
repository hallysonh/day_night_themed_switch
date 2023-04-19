# day_night_themed_switch

[![pub package](https://img.shields.io/pub/v/day_night_themed_switch.svg)](https://pub.dev/packages/day_night_themed_switch)

Custom Switch widget with day and night theme.
Based on UX design found on Instagram.

![](https://raw.githubusercontent.com/hallysonh/day_night_themed_switch/main/screenshots/day.png)
![](https://raw.githubusercontent.com/hallysonh/day_night_themed_switch/main/screenshots/night.png)

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
dependencies:
  day_night_themed_switch: <latest_version>
```

## Usage

Import the package:

```dart
import 'package:day_night_themed_switch/day_night_themed_switch.dart';
```

Use the switcher like:

```dart
DayNightSwitch(
  value: true,
  onChanged: (_) {},
),
```
