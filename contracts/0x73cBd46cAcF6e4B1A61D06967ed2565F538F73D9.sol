contract main {


// =======================  Init code  ======================


const _fallback = code.data[17 len 250]




// =====================  Runtime code  =====================


address creatorAddress;
uint256 stor0;
uint256 number;

function getCreator() {
    return address(creatorAddress)
}

function getNumber() {
    return number
}

function kill() {
    if address(creatorAddress) != msg.sender:
    selfdestruct(address(creatorAddress))
}

function _fallback() payable {
    revert 
}

function setMyNumber(uint256 arg1) {
    number = arg1
}

function sub_37ded7fc(?) {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    number = 3
}



}
