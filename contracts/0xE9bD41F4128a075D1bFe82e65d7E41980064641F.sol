contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 totalDropped;
mapping of uint256 dropped;

function dropped(address arg1) {
    return dropped[arg1]
}

function owner() {
    return owner
}

function totalDropped() {
    return totalDropped
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
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

function tokensBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function drop(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 + totalDropped >= totalDropped
    totalDropped += arg2
    require arg2 + dropped[address(arg1)] >= dropped[address(arg1)]
    dropped[address(arg1)] += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function returnTokens() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x7762b0fc: ext_call.return_data[0]
}

function sub_9c27ba49(?) {
    require msg.sender == owner
    require ('cd', 36).length == ('cd', 4).length
    s = 0
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] + totalDropped >= totalDropped
        totalDropped += cd[((32 * idx) + cd[36] + 36)]
        require cd[((32 * idx) + cd[36] + 36)] + dropped[address(cd[((32 * idx) + cd[4] + 36)])] >= dropped[address(cd[((32 * idx) + cd[4] + 36)])]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        dropped[address(cd[((32 * idx) + cd[4] + 36)])] += cd[((32 * idx) + cd[36] + 36)]
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        s = cd[((32 * idx) + cd[36] + 36)]
        s = address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}



}
