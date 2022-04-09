contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = block.timestamp
    return code.data[62 len 245]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function getDeploytimeBlocktimeBlocknumber() {
    return stor1, block.timestamp, block.number
}



}
