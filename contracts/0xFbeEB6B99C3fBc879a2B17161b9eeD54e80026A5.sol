contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[2607 len 32] <= 77
    stor1 = code.data[2587 len 20]
    stor2 = 10^code.data[2607 len 32]
    return code.data[224 len 2351]
}



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
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    require ext_call.success
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
        _20 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _22 = mem[(32 * idx) + (32 * arg2.length) + 160]
        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = arg1
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_20)
            mem[(32 * arg2.length) + (32 * arg3.length) + 228] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(_20), 0
        else:
            require mem[(32 * idx) + (32 * arg2.length) + 160]
            require mem[(32 * idx) + (32 * arg2.length) + 160] * multiplier / mem[(32 * idx) + (32 * arg2.length) + 160] == multiplier
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = arg1
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_20)
            mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _22 * multiplier
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(_20), _22 * multiplier
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
