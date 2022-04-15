contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 1000 * 10^18
    stor0 = msg.sender
    return code.data[62 len 1704]
}



// =====================  Runtime code  =====================


address owner;
uint256 dailyLimit;
uint256 lastDay;
uint256 spentToday;
mapping of struct balanceOf;

function dailyLimit() {
    return dailyLimit
}

function lastDay() {
    return lastDay
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function owner() {
    return owner
}

function paymentOf(address arg1) {
    return balanceOf[address(arg1)].field_0, balanceOf[address(arg1)].field_192
}

function spentToday() {
    return spentToday
}

function _fallback() payable {
    revert
}

function changeDailyLimit(uint256 arg1) {
    require owner == msg.sender
    dailyLimit = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function changeWithdrawalDate(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)].field_0 += arg2 << 192
}

function withdraw() {
    require ext_code.size(owner)
    call owner.0x5c975abb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require balanceOf[address(msg.sender)].field_0
    require block.timestamp >= balanceOf[address(msg.sender)].field_192
    require eth.balance(this.address) >= balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)].field_0 = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function asyncSend(address arg1) payable {
    require ext_code.size(owner)
    call owner.nutzAddr() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require msg.value > 0
    require balanceOf[address(arg1)].field_0 + msg.value >= msg.value
    require lastDay + (24 * 3600) >= lastDay
    if block.timestamp > lastDay + (24 * 3600):
        lastDay = block.timestamp
        spentToday = 0
    if spentToday + msg.value > dailyLimit:
        require block.timestamp + (72 * 24 * 3600) >= block.timestamp
        require msg.value + spentToday >= spentToday
        spentToday += msg.value
        balanceOf[address(arg1)].field_0 = Mask(192, 0, balanceOf[address(arg1)].field_0 + msg.value) + (block.timestamp + (72 * 24 * 3600) << 192)
    else:
        if spentToday + msg.value >= spentToday:
            require msg.value + spentToday >= spentToday
            spentToday += msg.value
            if balanceOf[address(arg1)].field_192 > block.timestamp:
                balanceOf[address(arg1)].field_0 = Mask(192, 0, balanceOf[address(arg1)].field_0 + msg.value) + (balanceOf[address(arg1)].field_192 << 192)
            else:
                balanceOf[address(arg1)].field_0 = Mask(192, 0, balanceOf[address(arg1)].field_0 + msg.value) + (block.timestamp << 192)
        else:
            require block.timestamp + (72 * 24 * 3600) >= block.timestamp
            require msg.value + spentToday >= spentToday
            spentToday += msg.value
            balanceOf[address(arg1)].field_0 = Mask(192, 0, balanceOf[address(arg1)].field_0 + msg.value) + (block.timestamp + (72 * 24 * 3600) << 192)
}



}
