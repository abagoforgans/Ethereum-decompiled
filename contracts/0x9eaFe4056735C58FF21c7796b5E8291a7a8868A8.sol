contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 beginTime;
uint256 endTime;

function endTime() {
    return endTime
}

function beginTime() {
    return beginTime
}

function owner() {
    return owner
}

function setEndTime(uint256 arg1) {
    require msg.sender == owner
    endTime = arg1
}

function setBeginTime(uint256 arg1) {
    require msg.sender == owner
    beginTime = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawal() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not msg.value % 10^17
    require block.timestamp >= beginTime
    require block.timestamp <= endTime
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 1000 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(msg.value, msg.sender);
}

function withdrawalToken() {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
