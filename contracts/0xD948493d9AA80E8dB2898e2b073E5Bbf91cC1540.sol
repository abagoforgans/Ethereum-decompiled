contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 957]
}



// =====================  Runtime code  =====================


address stor0;
address moderatorAddress;
uint256 stor1;
mapping of uint8 stor2;

function moderator() {
    return address(moderatorAddress)
}

function blacklisted(address arg1) {
    return bool(stor2[arg1])
}

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() {
    revert 
}

function setModerator(address arg1) {
    require stor0 == msg.sender
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_36d6da55(?) {
    if address(moderatorAddress) != msg.sender:
        require stor0 == msg.sender
    stor2[address(arg1)] = 1
    emit LogDebug(Array(len=arg2.length, data=arg2[all]));
}

function sub_49209fc8(?) {
    if address(moderatorAddress) != msg.sender:
        require stor0 == msg.sender
    stor2[address(arg1)] = 0
    emit LogDebug(Array(len=arg2.length, data=arg2[all]));
}



}
