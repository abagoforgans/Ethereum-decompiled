contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = code.data[401 len 32]
    return code.data[53 len 348]
}



// =====================  Runtime code  =====================


uint256 sub_1f687b05;

function sub_1f687b05(?) {
    return sub_1f687b05
}

function close() {
    selfdestruct(msg.sender)
}

function setBlock(uint256 arg1) {
    sub_1f687b05 = arg1
}

function _fallback() payable {
    require block.number >= sub_1f687b05
    emit Deposit(msg.value, msg.sender);
}



}
