import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  rollDice();
}

void rollDice() {
  print("'Enter' to start the game \nType 'exit' to stop the game");

  var playerScore = 0;
  var computerScore = 0;

  int generateRandom() {
    return Random().nextInt(6) + 1;
  }

  while (true) {
    var playerInput = stdin.readLineSync().toLowerCase();

    if (playerInput == 'exit') {
      if (playerScore > computerScore) {
        stdout.write(
            'Congratulate! you won the Game! \nYour Score: $playerScore\nComputer Score: $computerScore');
      } else if (playerScore < computerScore) {
        stdout.write(
            'You Lost! \nYour Score: $playerScore\nComputer Score: $computerScore');
      } else {
        stdout.write("It's a tie !");
      }
      break;
    }

    var playerRoll = generateRandom() + generateRandom();
    var computerRoll = generateRandom() + generateRandom();

    stdout.write('Your Score: $playerRoll, Computer Score: $computerRoll \n');

    if (playerRoll > computerRoll) {
      playerScore++;
      stdout.write('You Win\n');
    } else if (playerRoll < computerRoll) {
      computerScore++;
      stdout.write('Computer Wins\n');
    } else {
      stdout.write("It's a Draw");
    }
  }
}
