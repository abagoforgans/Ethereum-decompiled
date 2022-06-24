contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function payOracleFees() payable {
    require msg.value > 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_469cb5dc(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 < 10^18
    stor1 = arg1
    emit 0xdcfd3653: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_93d077db(?) {
    require calldata.size - 4 >= 96
    require arg1 <= arg2
    if not arg3:
        return 0
    require arg3
    require arg3 * stor1 / arg3 == stor1
    if not arg3 * stor1:
        return 0
    require arg3 * stor1
    require (arg2 * arg3 * stor1) - (arg1 * arg3 * stor1) / arg3 * stor1 == arg2 - arg1
    if not (arg2 * arg3 * stor1) - (arg1 * arg3 * stor1) % 10^18:
        return ((arg2 * arg3 * stor1) - (arg1 * arg3 * stor1) / 10^18)
    require ((arg2 * arg3 * stor1) - (arg1 * arg3 * stor1) / 10^18) + 1 >= (arg2 * arg3 * stor1) - (arg1 * arg3 * stor1) / 10^18
    return (((arg2 * arg3 * stor1) - (arg1 * arg3 * stor1) / 10^18) + 1)
}

function payOracleFeesErc20(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
