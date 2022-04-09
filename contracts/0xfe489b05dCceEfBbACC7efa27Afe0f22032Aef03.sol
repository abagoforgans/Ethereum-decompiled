contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = block.timestamp
    return code.data[63 len 388]
}



// =====================  Runtime code  =====================


const getBlockNumber = block.number

const getBlockTime = block.timestamp

const getNowTime = block.timestamp


address stor0;
uint256 deployTime;

function getDeployTime() {
    return deployTime
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}



}
