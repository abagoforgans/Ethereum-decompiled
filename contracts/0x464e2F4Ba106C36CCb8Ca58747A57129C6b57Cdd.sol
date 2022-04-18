contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 0
    return code.data[36 len 198]
}



// =====================  Runtime code  =====================


uint256 counter;

function counter() {
    return counter
}

function increment() {
    counter++
}

function _fallback() payable {
    revert
}



}
