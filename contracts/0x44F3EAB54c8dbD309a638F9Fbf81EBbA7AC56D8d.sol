contract main {




// =====================  Runtime code  =====================


uint256 nowTime;

function nowTime() {
    return nowTime
}

function _fallback() payable {
    revert
}

function getTime() {
    nowTime = block.timestamp
}



}
