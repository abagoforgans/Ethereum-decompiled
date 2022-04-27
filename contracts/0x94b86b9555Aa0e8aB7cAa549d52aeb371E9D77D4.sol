contract main {


// =======================  Init code  ======================


uint64 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[71 len 448]
}



// =====================  Runtime code  =====================


uint64 stor0;

function _fallback() payable {
    revert
}

function random(uint64 arg1) {
    stor0 = uint64(sha3(sha3(block.hash(block.number), stor0), block.timestamp))
    require arg1
    return uint64(stor0 % arg1)
}



}
