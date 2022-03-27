contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 3
    return code.data[65 len 211]
}



// =====================  Runtime code  =====================


const getCreator = 0

const getNumber = 0


address stor0;
uint256 stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function setMyNumber(uint256 arg1) {
    stor1 = arg1
}



}
