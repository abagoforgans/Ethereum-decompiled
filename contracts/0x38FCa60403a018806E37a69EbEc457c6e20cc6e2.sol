contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() {
    stor0 = 0
    return code.data[65 len 657]
}



// =====================  Runtime code  =====================


uint8 currentState;

function currentState() {
    require currentState <= 2
    return currentState
}

function _fallback() payable {
    revert
}

function makeWager() {
    require currentState <= 2
    require 0 == currentState
    currentState = 1
    return 1
}

function resolveBet() {
    require currentState <= 2
    require 2 == currentState
    currentState = 0
    return 1
}

function acceptWager() {
    require currentState <= 2
    require 1 == currentState
    currentState = 2
    return 1
}



}
