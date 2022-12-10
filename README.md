# expenses_tracker

A personal expenses tracker.

Design credit: https://www.figma.com/community/file/998557875473123405

## Getting Started

This project is a starting point for a Flutter application.
Flutter version: 3.3.7

#For developer use only
1. To generate .g class for freeze command : flutter pub run build_runner build
2. To delete output cache build & generate .g class for freeze command : flutter packages pub run build_runner build --delete-conflicting-outputs

###Command build
1. flutter build apk --target=lib/main-development.dart --flavor=development (To make release for dev flavour)
2. flutter build apk --target=lib/main-production.dart --flavor=production (To make release for production flavour)
