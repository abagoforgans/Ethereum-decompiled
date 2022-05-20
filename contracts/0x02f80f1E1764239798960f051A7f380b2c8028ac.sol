contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
uint256 stor0;
mapping of struct address;

function getAddress(bytes32 arg1) {
    return address[arg1].field_0
}

function isLocked(bytes32 arg1) {
    return bool(address[arg1].field_160)
}

function sub_54d6f870(?) {
    return bool(uint8(stor0.field_0))
}

function _fallback() payable {
    revert
}

function sub_737f79df(?) {
    require msg.sender == address(stor0.field_8)
    address[arg1].field_160 = 1
}

function sub_9d9c9647(?) {
    require msg.sender == address(stor0.field_8)
    address[arg1].field_0 = 0
    emit 0xb03bf0e9: arg1
}

function sub_35045c61(?) {
    require msg.sender == address(stor0.field_8)
    uint256(stor0.field_0) = not uint8(stor0.field_0) or Mask(248, 8, uint256(stor0.field_0))
}

function setContractAddress(bytes32 arg1, address arg2) {
    require msg.sender == address(stor0.field_8)
    require arg2
    require not uint8(stor0.field_0)
    address[arg1].field_0 = arg2
    emit 0x1365e88c: arg1, arg2
}



}
