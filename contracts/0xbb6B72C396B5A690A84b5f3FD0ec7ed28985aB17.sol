contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor3;

function _fallback() payable {
    stor3 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender
    return code.data[66 len 1062]
}



// =====================  Runtime code  =====================


address stor0;
address moderatorAddress;
uint256 stor1;
mapping of uint8 stor2;
uint256 contentCount;

function moderator() {
    return address(moderatorAddress)
}

function contentCount() {
    return contentCount
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

function sub_34f79275(?) {
    if address(moderatorAddress) != msg.sender:
        require stor0 == msg.sender
    stor2[address(arg3)] = 1
    contentCount++
    emit 0x48400b9c: Array(len=arg1.length, data=arg1[all]), 1, arg2, arg3
}

function sub_f53f8883(?) {
    if address(moderatorAddress) != msg.sender:
        require stor0 == msg.sender
    stor2[address(arg3)] = 0
    contentCount++
    emit 0x48400b9c: Array(len=arg1.length, data=arg1[all]), 2, arg2, arg3
}



}
