contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 dailyCount;
uint256 amount;
uint256 sub_dc26914a;
uint8 stor5;
mapping of uint256 records;
mapping of uint256 sub_b6c9c173;

function sub_4bb77d68(?) {
    return bool(stor5)
}

function owner() {
    return owner
}

function dailyCount() {
    return dailyCount
}

function tokenAddress() {
    return tokenAddress
}

function getRecords(address arg1) {
    return records[arg1]
}

function amount() {
    return amount
}

function sub_b6c9c173(?) {
    return sub_b6c9c173[arg1]
}

function sub_dc26914a(?) {
    return sub_dc26914a
}

function _fallback() payable {
    revert
}

function sub_2aff1a74(?) {
    require msg.sender == owner
    dailyCount = arg1
}

function sub_5c9c85c1(?) {
    require msg.sender == owner
    sub_dc26914a = arg1
}

function setAmount(uint256 arg1) {
    require msg.sender == owner
    amount = arg1
}

function setEnable(bool arg1) {
    require msg.sender == owner
    stor5 = uint8(arg1)
}

function setTokenAddress(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c43de39a(?) {
    if bool(stor5) != 1:
        revert with 0, 'service has been paused'
    require sub_dc26914a
    if dailyCount < sub_b6c9c173[block.timestamp / stor4]:
        revert with 0, 'today all amount has been out'
    require sub_dc26914a
    if records[address(msg.sender)] / sub_dc26914a == block.timestamp / sub_dc26914a:
        revert with 0, 'you have got awards today'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, amount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    records[address(msg.sender)] = block.timestamp
    require sub_dc26914a
    sub_b6c9c173[block.timestamp / stor4]++
    emit 0xc647d437: msg.sender, block.timestamp, amount
}



}
