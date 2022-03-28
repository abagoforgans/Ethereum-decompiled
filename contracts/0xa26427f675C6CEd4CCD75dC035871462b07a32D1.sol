contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 599]




// =====================  Runtime code  =====================


mapping of struct sub_726f88ce;

function sub_726f88ce(?) {
    return sub_726f88ce[address(msg.sender)].field_0, sub_726f88ce[address(msg.sender)].field_256
}

function _fallback() payable {
    sub_726f88ce[address(msg.sender)].field_0 += msg.value
    emit Deposit(msg.sender, msg.value);
}

function setExpiryTime(uint256 arg1) {
    require arg1 >= sub_726f88ce[address(msg.sender)].field_256
    require arg1 <= block.timestamp + (43800 * 24 * 3600)
    sub_726f88ce[address(msg.sender)].field_256 = arg1
}

function withdraw() {
    require sub_726f88ce[address(msg.sender)].field_256 <= block.timestamp
    sub_726f88ce[address(msg.sender)].field_0 = 0
    sub_726f88ce[address(msg.sender)].field_256 = 0
    call msg.sender with:
       value sub_726f88ce[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(msg.sender, sub_726f88ce[address(msg.sender)].field_0);
}



}
