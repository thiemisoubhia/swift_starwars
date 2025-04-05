# ✨Star Wars JSON Viewer (Swift)✨

This iOS app is a simple educational project built with Swift and UIKit. It uses the [Star Wars API (SWAPI)](https://swapi.dev) to fetch and display character information based on a user input ID.

## Features

- User can input a character ID from SWAPI (e.g., 1 for Luke Skywalker)
- App fetches data from `https://swapi.dev/api/people/{id}`
- Displays the character's:
  - Name
  - Height
  - Mass

## Screenshot
![image](https://github.com/user-attachments/assets/becf5a51-031f-4937-b219-9dcfb4885247)

## Technologies Used

- Swift
- UIKit
- URLSession for API requests
- JSON decoding using `Codable`

## How It Works

1. The user types a number in the text field.
2. On button click, the app builds a URL to SWAPI with that number.
3. It sends an HTTP GET request and decodes the JSON response.
4. The UI is updated with the fetched name, height, and mass of the character.

## Requirements

- iOS 13.0+
- Xcode 12+
- Swift 5

## Setup

1. Clone the repository:

```bash
git clone https://github.com/thiemisoubhia/swift_starwars.git
