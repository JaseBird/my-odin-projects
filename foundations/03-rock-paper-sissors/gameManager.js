playGame();

function playGame(){
    let score = [];
    let round = 1;
    let gameEnd = false;
    let humanScore = 0;
    let computerScore = 0;

    const winMessage = "Congratulations you have won!";
    const loseMessage = "Sorry you have lost!";

    const btnRock = document.querySelector("#btnRock");
    const btnPaper = document.querySelector("#btnPaper");
    const btnSissors = document.querySelector("#btnSissors");

    btnRock.addEventListener("click", () => {btnEventHandler("rock");});
    btnPaper.addEventListener("click", () => {btnEventHandler("paper");});
    btnSissors.addEventListener("click", () => {btnEventHandler("sissors");});

    function btnEventHandler(choice){
        if (!gameEnd) {
            score = playRound(choice, getComputerChoice());
            humanScore = humanScore + score[0];
            computerScore = computerScore + score[1];
            updateUI(round, humanScore, computerScore);
            
            if (humanScore >= 5) {
                gameEnd = true;
                displayRoundMessage(winMessage);
            };
            
            if (computerScore >= 5) {
                gameEnd = true;
                displayRoundMessage(loseMessage);
            };

            if (!gameEnd){
                round = round + 1;
            }
        };
    };
};

function updateUI (roundNum, playerScore, computerScore) {
    const roundNumber = document.querySelector(".roundTurn");
    const playerSc = document.querySelector(".playerScore");
    const computerSc = document.querySelector(".computerScore");

    roundNumber.innerHTML = "<h2>Round " + roundNum + "</h2>";
    playerSc.innerHTML = "<h2>Player Score: " + playerScore + "</h2>";
    computerSc.innerHTML = "<h2>Computer Score: " + computerScore + "</h2>";
};

function playRound(human, computer){
    let humanWin = false;
    let computerWin = false;
    let roundMessage = "";
    let roundScore = [0,0];

    switch(true){
        case ((human === "rock") && (computer === "rock")):
            humanWin = false;
            computerWin = false;
            roundMessage = "Draw! You both selected Rock"
            break;
        case ((human === "rock") && (computer === "paper")):
            humanWin = false;
            computerWin = true;
            roundMessage = "You loose! Paper beats Rock"
            break;
        case ((human === "rock") && (computer === "sissors")):
            humanWin = true;
            computerWin = false;
            roundMessage = "You win! Rock beats Sissors"
            break;
        case ((human === "paper") && (computer === "rock")):
            humanWin = true;
            computerWin = false;
            roundMessage = "You win! Paper beats Rock"
            break;
        case ((human === "paper") && (computer === "paper")):
            humanWin = false;
            computerWin = false;
            roundMessage = "Draw! You both selected Paper"
            break;
        case ((human === "paper") && (computer === "sissors")):
            humanWin = false;
            computerWin = true;
            roundMessage = "You lose! Sissors beats paper"
            break;
        case ((human === "sissors") && (computer === "rock")):
            humanWin = false;
            computerWin = true;
            roundMessage = "You lose! Rock beats Sissors"
            break;
        case ((human === "sissors") && (computer === "paper")):
            humanWin = true;
            computerWin = false;
            roundMessage = "You win! Sissors beats Paper"
            break;
        case ((human === "sissors") && (computer === "sissors")):
            humanWin = false;
            computerWin = false;
            roundMessage = "Draw! You both selected Sissors"
            break;
    }

    // Display round message
    displayRoundMessage(roundMessage);

    // Increment score if round won, do nothing if lose or draw!
    switch (true){
        case (humanWin && !computerWin):
            roundScore[0] = 1;
            break;
        case (!humanWin && computerWin):
            roundScore[1] = 1;
            break;
    }
    return roundScore;
}

function displayRoundMessage(message) {
    const rndMessage = document.querySelector(".result");

    rndMessage.innerHTML = "<h1>" + message + "</h1>";
};

function getHumanChoice(){
    let choice = prompt("Type rock, paper or sissors!");
    let result = choice.toLowerCase();
    return result;
}

function getComputerChoice(){
        let choice = [];
        choice.push("rock","paper","sissors");
        let randomNumber = Math.floor(Math.random() * 3);
        return choice[randomNumber];
}