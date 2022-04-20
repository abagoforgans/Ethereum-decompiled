contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 281]




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
