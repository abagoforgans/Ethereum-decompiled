contract main {


// =======================  Init code  ======================


const _fallback = code.data[23 len 142]




// =====================  Runtime code  =====================


uint256 counter;

function counter() {
    return counter
}

function deposit() payable {
    counter++
}

function _fallback() payable {
    revert 
}



}
