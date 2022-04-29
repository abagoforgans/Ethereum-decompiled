contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 666
    require not msg.value
    return code.data[35 len 228]
}



// =====================  Runtime code  =====================


uint256 counter;

function getcounter() {
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
