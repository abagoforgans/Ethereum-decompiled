contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[32 len 176]
}



// =====================  Runtime code  =====================


uint256 count;

function getCount() {
    return count
}

function increment() {
    count++
}

function _fallback() payable {
    revert
}



}
