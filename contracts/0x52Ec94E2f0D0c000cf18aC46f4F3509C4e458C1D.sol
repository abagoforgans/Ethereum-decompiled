contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 3
    return code.data[62 len 376]
}



// =====================  Runtime code  =====================


address creatorAddress;
uint256 number;

function getCreator() {
    return creatorAddress
}

function getNumber() {
    return number
}

function kill() {
    if creatorAddress != msg.sender:
    selfdestruct(creatorAddress)
}

function _fallback() payable {
    revert
}

function setMyNumber(uint256 arg1) {
    number = arg1
}



}
