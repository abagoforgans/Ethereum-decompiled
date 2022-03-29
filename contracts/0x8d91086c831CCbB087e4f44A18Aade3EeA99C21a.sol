contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 584 * 3600
    require not msg.value
    return code.data[35 len 482]
}



// =====================  Runtime code  =====================


uint256 yearlyBlockCount;

function yearlyBlockCount() {
    return yearlyBlockCount
}

function _fallback() payable {
    revert
}

function getNewCoinsIssued(uint256 arg1, uint256 arg2, uint256 arg3) {
    require 100 * yearlyBlockCount
    return (arg3 * arg1 * arg2 / 100 * yearlyBlockCount)
}

function getBondMultiplier(uint256 arg1, uint256 arg2) {
    if arg2 >= block.number + (2 * yearlyBlockCount):
        return 0
    if arg2 <= block.number:
        return 0
    if arg2 < block.number + 175200:
        return 1
    if arg2 < block.number + (146 * 3600):
        return 3
    if arg2 < block.number + (292 * 3600):
        return 6
    if arg2 >= block.number + (584 * 3600):
        return 12
    return 8
}



}
