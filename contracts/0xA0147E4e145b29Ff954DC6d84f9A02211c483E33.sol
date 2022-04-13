contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 100
    return code.data[125 len 582]
}



// =====================  Runtime code  =====================


uint8 maxResult; offset 160
address owner;

function maxResult() {
    return maxResult
}

function owner() {
    return owner
}

function _fallback() {
    revert
}

function getResult(uint256 arg1) {
    require maxResult
    return uint8(sha3(owner, block.hash(arg1)) % maxResult)
}



}
