contract main {




// =====================  Runtime code  =====================


uint256 counter;

function getCounter() {
    return counter
}

function add() {
    counter++
}

function subtract() {
    counter--
}

function _fallback() payable {
    revert
}



}
