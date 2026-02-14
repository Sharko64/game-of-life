# Conway's Game of Life 👾🍃🧨

Conway's **Game of Life** implemented entirely in **Bash**! This command-line version of the famous zero-player game simulates cellular automaton directly in your terminal. Watch patterns emerge, evolve, and sometimes fade into oblivion—right from your shell!

## Features ✨

- **Pure Bash Implementation**: No external dependencies—runs in any modern Unix-like environment.
- **Terminal Animation**: Watch the cells evolve right in your terminal.
- **Customizable Grid Size**: Set your own dimensions for the game grid.
- **Predefined Patterns**: Start with well-known patterns like Gliders, Blinkers, and more.
- **Randomized Setup**: Generate a random starting grid if you prefer surprises.

## What is the Game of Life? 🧬

The **Game of Life** is a cellular automaton devised by mathematician **John Conway**. It consists of a grid of cells, each of which can be either alive or dead. The game progresses in turns, and the state of each cell in the next turn is determined by a few simple rules:

1. A live cell with fewer than 2 live neighbors dies (underpopulation).
2. A live cell with 2 or 3 live neighbors survives.
3. A live cell with more than 3 live neighbors dies (overpopulation).
4. A dead cell with exactly 3 live neighbors becomes a live cell (reproduction).

This simple setup leads to complex and interesting patterns, making it a fascinating example of how simple rules can lead to complex behaviors.

## Installation & Usage 🚀

### Requirements

- **Bash** (v4.0 or higher)
- A terminal that supports ANSI escape codes (most modern terminals do)

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/Game-Of-Life.git
cd Game-Of-Life
```

### 2. Run the Game

You can start the game by simply running the `game-of-life.sh` script:

```bash
./game-of-life.sh
```

By default, this will start with a random grid of cells. To customize the game, see the options below.

### 3. Command-line Options

The game accepts several command-line options to customize the grid and starting patterns:

- **Grid Size**: Specify the grid's dimensions (width x height).

  ```bash
  ./game-of-life.sh 50 20  # 50 columns and 20 rows
  ```

- **Speed**: Control the update speed (in seconds).

  ```bash
  ./game-of-life.sh 50 20 0.2  # Updates every 0.2 seconds
  ```

- **Pattern**: Start the game with a predefined pattern.

  ```bash
  ./game-of-life.sh 50 20 0.2 glider  # Start with a Glider pattern
  ```

### 4. Available Patterns

You can start the game with these predefined patterns:

- **glider**: A glider that moves across the grid.
- **blinker**: A simple oscillator.
- **block**: A static block of cells.
- **random**: A randomly generated grid (default).

Example:

```bash
./game-of-life.sh 50 20 0.2 blinker
```

### 5. Controls

- **`Ctrl+C`**: Exit the game.

## Example Output 🎮

Here's what it looks like when running the game with a Glider pattern:

```bash
$ ./game-of-life.sh 20 10 0.2 glider
```

```
Generation 0:
----------------------
|                    |
|        *           |
|         *          |
|       ***          |
|                    |
|                    |
|                    |
|                    |
----------------------
```

## Customization 🔧

### Modify the Rules

You can easily customize the rules or add new features by editing the `game-of-life.sh` script. It’s a simple, well-commented Bash script, so dive in and experiment!

### Add New Patterns

To add a new starting pattern, modify the `initialize_grid` function in the script. You can define new patterns by specifying the coordinates of live cells.

## Contributing 🤝

We welcome contributions to this project! If you have ideas for improving the script or want to add new features, feel free to submit a pull request.

### Steps to Contribute

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Submit a pull request with a clear explanation of the changes.

## License ⚖️

This project is licensed under the **GNU General Public License v3.0**. You are free to use, modify, and distribute this software, but any modifications or derivatives must also be open-sourced under the same license. See the [LICENSE](LICENSE) file for details.

## Acknowledgements 🙏

Inspired by the original work of **John Conway** and his legendary **Game of Life**. Special thanks to the Bash community for the endless learning opportunities.

---

Enjoy simulating life in your terminal, one cell at a time! 🍃👾
