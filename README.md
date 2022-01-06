# pageview_with_indicators

This project is a sample of how to add a dot indicator to a PageView, making the PageView look like a slideshow.
PageView with indicators was built with the Flutter framework and Mobx as the basis for state management.

## Features

The PageView and the Dot indicator use animation resources.
When the PageView moves, the Dot indexed by the new page is highlighted (color and size are changed). If the Dot is touched, the PageView moves the current page to the page indexed by the Dot.

## Installation

1. Clone the repo: 

    git clone https://github.com/yara403/PageViewIndicators.git

2. Open it with you favorite IDE for Flutter projects, VS Code, for example
3. Run and enjoy it

## Getting Started

1. You can use this project as example to build your own PageView with indicator dots
2. The Presentation class contains mock data
3. The PresentationPage contains the PageView. You can customize things like animation type by your way
4. At Dot widget class you can customize its shape, color, margin, size, etc.
