contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[2687 len 20]
    return code.data[83 len 2592]
}



// =====================  Runtime code  =====================


address adminAddress;

function admin() {
    return adminAddress
}

function destruct() {
    if adminAddress != msg.sender:
    selfdestruct(adminAddress)
}

function _fallback() {
    revert
}

function withdraw() {
    if adminAddress == msg.sender:
        call adminAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Withdraw(0, adminAddress, eth.balance(this.address));
}

function withdrawToken(address arg1, uint256 arg2) {
    if adminAddress == msg.sender:
        require arg1
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), arg2
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(this.address), adminAddress, arg2
        require ext_call.success
        require ext_call.return_data[0]
        emit Withdraw(address(arg1), adminAddress, arg2);
}

function deltaBalances(address arg1, address arg2, address[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    mem[(32 * arg3.length) + 160] = 0
    require arg3.length > 0
    mem[(32 * arg3.length) + 192] = arg3.length
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[(64 * arg3.length) + 228] = mem[(32 * idx) + 140 len 20]
        mem[(64 * arg3.length) + 260] = arg2
        require ext_code.size(arg1)
        call arg1.balanceOf(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args mem[(64 * arg3.length) + 228], address(arg2)
        mem[(64 * arg3.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require idx < mem[(32 * arg3.length) + 192]
        mem[(32 * arg3.length) + (32 * idx) + 224] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * arg3.length) + 224] = 32
    mem[(64 * arg3.length) + 256] = mem[(32 * arg3.length) + 192]
    mem[(64 * arg3.length) + 288 len floor32(mem[(32 * arg3.length) + 192])] = mem[(32 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 192])]
    return 32, mem[(64 * arg3.length) + 256 len (32 * mem[(32 * arg3.length) + 192]) + 32]
}

function walletBalances(address arg1, address[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 0
    require arg2.length > 0
    mem[(32 * arg2.length) + 192] = arg2.length
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            require idx < mem[(32 * arg2.length) + 192]
            mem[(32 * arg2.length) + (32 * idx) + 224] = eth.balance(arg1)
            s = s
            idx = idx + 1
            continue 
        require idx < arg2.length
        _63 = mem[(32 * idx) + 128]
        mem[(64 * arg2.length) + 256] = 0
        mem[(64 * arg2.length) + 228] = arg1
        require ext_code.size(address(_63))
        call address(_63).0x70a08231 with:
             gas gas_remaining - 710 wei
            args arg1
        mem[(64 * arg2.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require idx < mem[(32 * arg2.length) + 192]
        mem[(32 * arg2.length) + (32 * idx) + 224] = ext_call.return_data[0]
        s = _63
        idx = idx + 1
        continue 
    mem[(64 * arg2.length) + 224] = 32
    mem[(64 * arg2.length) + 256] = mem[(32 * arg2.length) + 192]
    mem[(64 * arg2.length) + 288 len floor32(mem[(32 * arg2.length) + 192])] = mem[(32 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 192])]
    return 32, mem[(64 * arg2.length) + 256 len (32 * mem[(32 * arg2.length) + 192]) + 32]
}

function allBalances(address arg1, address arg2, address[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    require arg3.length > 0
    s = 0
    idx = 0
    s = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[(98 * arg3.length) + 228] = mem[(32 * idx) + 140 len 20]
        mem[(98 * arg3.length) + 260] = arg2
        require ext_code.size(arg1)
        call arg1.balanceOf(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args mem[(98 * arg3.length) + 228], address(arg2)
        mem[(98 * arg3.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require s < 2 * arg3.length
        mem[(32 * arg3.length) + (32 * s) + 224] = ext_call.return_data[0]
        require idx < arg3.length
        _87 = mem[(32 * idx) + 128]
        mem[(98 * arg3.length) + 256] = 0
        mem[(98 * arg3.length) + 228] = arg2
        require ext_code.size(address(_87))
        call address(_87).0x70a08231 with:
             gas gas_remaining - 710 wei
            args arg2
        mem[(98 * arg3.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require s + 1 < 2 * arg3.length
        mem[(32 * arg3.length) + (32 * s + 1) + 224] = ext_call.return_data[0]
        s = _87
        idx = idx + 1
        s = s + 2
        continue 
    mem[(98 * arg3.length) + 224] = 32
    mem[(98 * arg3.length) + 256] = 2 * arg3.length
    mem[(98 * arg3.length) + 288 len 2 * Mask(251, 4, arg3.length)] = mem[(32 * arg3.length) + 224 len 2 * Mask(251, 4, arg3.length)]
    return memory
      from (98 * arg3.length) + 224
       len (64 * arg3.length) + 64
}



}
