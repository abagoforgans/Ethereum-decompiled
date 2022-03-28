contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[33 len 293]
}



// =====================  Runtime code  =====================


uint256 counter;

function getCounter() {
    return counter
}

function killme() {
    selfdestruct(msg.sender)
}

function decrease() {
    counter--
}

function increase() {
    counter++
}

function _fallback() payable {
    revert
}



}
