contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[32 len 209]
}



// =====================  Runtime code  =====================


uint256 time;

function time() {
    return time
}

function _fallback() payable {
    revert
}

function getTime() {
    time = block.timestamp
    return 1
}



}
