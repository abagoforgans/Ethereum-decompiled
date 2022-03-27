contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 3
    return code.data[39 len 197]
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
