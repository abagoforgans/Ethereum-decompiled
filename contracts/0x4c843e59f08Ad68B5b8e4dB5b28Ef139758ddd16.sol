contract main {




// =====================  Runtime code  =====================


const GAS_LIMIT_IN_WEI = 5 * 10^10


address owner;
address stor1;
mapping of uint256 sub_a7750019;
array of address stor3;
address sub_39068a30Address;
uint256 sub_99539d78;
uint256 stor6;

function sub_39068a30(?) {
    require msg.sender == owner
    return sub_39068a30Address
}

function owner() {
    return owner
}

function sub_99539d78(?) {
    require msg.sender == owner
    return sub_99539d78
}

function sub_a7750019(?) {
    require msg.sender == owner
    return sub_a7750019[address(arg1)]
}

function totalUser() {
    require msg.sender == owner
    return stor3.length
}

function _fallback() payable {
    revert
}

function sub_f5081e74(?) {
    require msg.sender == owner
    sub_99539d78 = arg1
}

function sub_4f49ae04(?) {
    require msg.sender == owner
    sub_39068a30Address = arg1
}

function airDrop() {
    require msg.sender == owner
    require block.gasprice <= 5 * 10^10
    # nil
}

function sub_ba69a017(?) {
    require msg.sender == owner
    sub_99539d78 = stor3.length
    return 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setUserCap(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not stor6:
        sub_a7750019[address(arg1)] = 0
    else:
        require stor6
        require stor6 * arg2 / stor6 == arg2
        sub_a7750019[address(arg1)] = stor6 * arg2
    stor3.length++
    stor3[stor3.length] = arg1
}

function getBalance() {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function drainRemainingToken() {
    require msg.sender == owner
    require sub_39068a30Address
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
        args sub_39068a30Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f3050833(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        stor3.length++
        stor3[stor3.length] = address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        if not stor6:
            require idx < ('cd', 4).length
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 2
            sub_a7750019[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        else:
            require stor6
            require stor6 * cd[((32 * idx) + cd[36] + 36)] / stor6 == cd[((32 * idx) + cd[36] + 36)]
            require idx < ('cd', 4).length
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 2
            sub_a7750019[address(cd[((32 * idx) + cd[4] + 36)])] = stor6 * cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}



}
