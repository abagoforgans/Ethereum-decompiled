contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 3
    return code.data[64 len 390]
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

function sub_e346e991(?) {
    number = arg1
}



}
