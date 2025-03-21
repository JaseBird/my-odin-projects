let numberOfSquares = 100;
let gridSize = 720;
let gridGap = 2;
let gridPadding = 16;

drawGrid(numberOfSquares);

const btn = document.querySelector("#updateGrid");
btn.addEventListener("click", () => {
    let promptString = prompt("Enter new grid size in pixels", "max 250px");
    let newGridSize = parseInt(promptString);
    console.log(newGridSize);

    if (newGridSize > 0 && newGridSize < 251 && newGridSize != null) {
        numberOfSquares = newGridSize;
        removeGrid();
        drawGrid(numberOfSquares);
    } else {
        alert("Error: Incorrect input!");
    }
});

const resetBtn = document.querySelector('#resetGrid');
resetBtn.addEventListener("click", () => {
    removeGrid();
    drawGrid(numberOfSquares);
});

function createBoxEventListeners(){
    const gridBox = document.querySelectorAll('.box');
        gridBox.forEach((box) => {
        box.addEventListener("mouseover", () => {
        box.style.backgroundColor = randomColor();
        });
    });
};

function drawGrid(squares) {
    const container = document.querySelector(".grid-container");
    container.style.width = gridSize + 'px';
    container.style.height = gridSize + 'px';
    container.style.gap = gridGap + 'px';
    container.style.padding = gridPadding + 'px';

    const sqrtSquare = Math.sqrt(numberOfSquares);
    const boxSize = (gridSize - (sqrtSquare * gridGap + gridPadding)) / sqrtSquare;

    while (squares > 0) {
        const box = document.createElement("div");
        box.classList.add("box");
        box.style.width = boxSize + 'px';
        box.style.height = boxSize + 'px';
        container.appendChild(box);
        squares--;
    };
    createBoxEventListeners();
};

function removeGrid() {
    let boxes = document.querySelectorAll('.box');
    boxes.forEach(box => {
        box.remove();
    });
};

function randomColor() {
    let letters = '0123456789ABCDEF';
    let color = '#';
    for (var i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
};