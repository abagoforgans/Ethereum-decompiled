contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 multiplier;

function multiplier() {
    return multiplier
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
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
}

function airdrop(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        _22 = mem[(32 * idx) + (32 * arg2.length) + 160]
        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + (32 * arg3.length) + 164], 0
        else:
            require mem[(32 * idx) + (32 * arg2.length) + 160]
            require mem[(32 * idx) + (32 * arg2.length) + 160] * multiplier / mem[(32 * idx) + (32 * arg2.length) + 160] == multiplier
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _22 * multiplier
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + (32 * arg3.length) + 164], _22 * multiplier
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
