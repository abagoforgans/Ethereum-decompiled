contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 balanceOf;
uint256 beginTime;
uint256 endTime;

function endTime() {
    return endTime
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
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

function withdrawal(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
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
    balanceOf[msg.sender] += msg.value
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 1000 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(msg.value, msg.sender);
}

function withdrawalToken(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(stor1)
    if arg1:
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg1
    else:
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
