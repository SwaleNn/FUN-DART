import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print("====================================");
    print("==============NEW GAME==============");
    print("====================================");
    String userMove = getUserMove();

    if (userMove == "Quit") {
      return;
    }

    print("Kamu Pilih : $userMove");
    String computerMove = getComputerMove();
    print("Computer : $computerMove");
    String result = getTheWinner(userMove, computerMove);
    print("Result: $result");
    print("====================================\n");
  }
}

String getUserMove() {
  print("Paper, Rock, Scissors");
  print("(P) Paper");
  print("(R) Rock");
  print("(S) Scissors");
  print("Enter your choice: ");
  print("\n other : quit");

  String userInput = stdin.readLineSync()!.toUpperCase();

  switch (userInput) {
    case "P":
      return "Paper";
    case "R":
      return "Rock";
    case "S":
      return "Scissors";
    default:
      return "Quit";
  }
}

String getComputerMove() {
  Random rand = new Random();
  int computerRandomInput = rand.nextInt(3);

  switch (computerRandomInput) {
    case 0:
      return "Paper";

    case 1:
      return "Rock";

    default:
      return "Scissors";
  }
}

String getTheWinner(String userMove, String computerMove) {
  if (userMove == computerMove) {
    return "Seri";
  } else if (userMove == "Paper" && computerMove == "Rock") {
    return "Kamu Menang";
  } else if (userMove == "Rock" && computerMove == "Scissors") {
    return "Kamu Menang";
  } else if (userMove == "Scissors" && computerMove == "Paper") {
    return "Kamu Menang";
  } else {
    return "Kamu kalah";
  }
}
