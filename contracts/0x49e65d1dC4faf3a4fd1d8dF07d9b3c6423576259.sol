contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 lockedBalanceOf;
uint8 stor3;
uint256 stor4;

function lockedBalanceOf(address arg1) {
    return lockedBalanceOf[address(arg1)]
}

function owner() {
    return owner
}

function isLocked() {
    return bool(stor3)
}

function _fallback() payable {
    revert
}

function unlock() {
    require msg.sender == owner
    stor3 = 0
    emit Unlock()
}

function getContractRhemBalance() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function release() {
    require not stor3
    require lockedBalanceOf[msg.sender] > 0
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, lockedBalanceOf[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lockedBalanceOf[msg.sender] = 0
    return 1
}

function addLockAccount(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require arg2 + lockedBalanceOf[address(arg1)] > 0
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor4 += arg2
    require 0 < arg2 + stor4
    require ext_call.return_data[0] >= stor4
    lockedBalanceOf[address(arg1)] += arg2
    emit Add(address(arg1), arg2);
    return 1
}



}
