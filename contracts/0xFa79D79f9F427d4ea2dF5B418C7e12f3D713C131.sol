contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalDistributed;
address stor2;

function owner() {
    return owner
}

function totalDistributed() {
    return totalDistributed
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyERC20Drain(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function distributeTokens(address arg1, address[] arg2, uint256[] arg3) {
    require msg.sender == owner
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        if cd[((32 * idx) + arg3 + 36)] > 0:
            require idx < arg2.length
            require idx < arg3.length
            mem[132] = address(cd[((32 * idx) + arg2 + 36)])
            mem[164] = cd[((32 * idx) + arg3 + 36)]
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < arg2.length
            require idx < arg3.length
            mem[96] = address(cd[((32 * idx) + arg2 + 36)])
            mem[128] = cd[((32 * idx) + arg3 + 36)]
            emit TokensDistributed(address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]);
            totalDistributed += cd[((32 * idx) + arg3 + 36)]
        idx = idx + 1
        continue 
}



}
