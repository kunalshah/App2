# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a SwiftUI iOS application built with Xcode that demonstrates basic SwiftData integration. The app provides a simple item management interface with add/delete functionality.

## Architecture

- **App2App.swift**: Main app entry point that sets up the SwiftData ModelContainer with the Item schema
- **ContentView.swift**: Primary view with NavigationSplitView layout, displaying items in a list with add/delete functionality
- **Item.swift**: SwiftData model representing timestamped items stored in the app's database
- **App2Tests**: Unit tests using the Testing framework
- **App2UITests**: UI tests for the application

## Development Commands

### Building and Running
- Build and run the app: Open `App2.xcodeproj` in Xcode and use Cmd+R
- Build only: Cmd+B in Xcode

### Testing
- Run unit tests: Cmd+U in Xcode or use the Test navigator
- Run UI tests: Select the App2UITests scheme and run tests
- Individual test: Right-click on specific test methods and select "Run"

### Project Structure
- Source code: `App2/` directory
- Unit tests: `App2Tests/` directory  
- UI tests: `App2UITests/` directory
- Xcode project: `App2.xcodeproj`

## Key Technologies
- SwiftUI for the user interface
- SwiftData for data persistence
- Testing framework for unit tests
- NavigationSplitView for the main layout
- ModelContainer for data management

## Data Model
The app uses a simple `Item` model with a `timestamp` property, managed through SwiftData's `@Model` and `@Query` property wrappers.

## Coding Guidelines

- Always use SwiftUI.
- After every change, ensure that the app builds correctly.
- Use iPhone 16 Pro simulator to build the app.
