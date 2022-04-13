contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 2037]
}



// =====================  Runtime code  =====================


mapping of uint8 stor1;
mapping of address stor2;

function _fallback() payable {
    revert
}

function sub_40385fb7(?) {
    if not stor1[arg1]:
        return 0
    return uint256(stor2[arg1])
}

function sub_a9baa23c(?) {
    emit 0xcc5858ed: arg1, msg.sender, block.timestamp
    if not stor1[arg1]:
        return 0
    return uint256(stor2[arg1][3][arg2]), arg1, address(stor2[arg1][2][arg2]), uint256(stor2[arg1][1][arg2])
}

function newDocument(bytes32 arg1) {
    if stor1[arg1]:
        uint256(stor2[arg1][1][uint256(stor2[arg1])]) = block.timestamp
        address(stor2[arg1][2][uint256(stor2[arg1])]) = msg.sender
        uint256(stor2[arg1][3][uint256(stor2[arg1])]) = block.number
        uint256(stor2[arg1])++
        emit 0x20b6fde3: arg1, msg.sender, block.timestamp
    else:
        stor1[arg1] = 1
        uint256(stor2[arg1][1][uint256(stor2[arg1])]) = block.timestamp
        address(stor2[arg1][2][uint256(stor2[arg1])]) = msg.sender
        uint256(stor2[arg1][3][uint256(stor2[arg1])]) = block.number
        uint256(stor2[arg1])++
        emit 0xc4ba1966: arg1, msg.sender, block.timestamp
    return this.address
}



}
