# Math Game
OOP-based command-line app with Ruby to practice fundamentals.

# Description
2-Player math game where participants take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.
The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Command Line:
!['cli-example-prompt-math-game-ruby'](https://raw.githubusercontent.com/yuzhakova/math_game_ruby/master/docs/cli-example-prompt-math-game-ruby.png)

### Points Considered While Buidling the Game
  * Nouns extraction for Classes
  * Role for each class
  * Object State: storing data describing themselves (variables)
  * Object Behavior: defining actions that can be performed on them (methods)
  