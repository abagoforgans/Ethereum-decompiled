contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address tokenAddress;
uint256 sub_ca7628bb;

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function sub_ca7628bb(?) {
    return sub_ca7628bb
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_29449eeb(?) {
    if owner != msg.sender:
        revert with 0, 'Not the owner'
    sub_ca7628bb = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not the owner'
    emit OwnershipRenounced(owner);
    owner = 0
}

function setTokenAddress(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not the owner'
    tokenAddress = arg1
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not the owner'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEth() {
    if owner != msg.sender:
        revert with 0, 'Not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Not the owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0072dbaa(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        revert with 0, 'Not the owner'
    if tokenAddress != arg1:
        revert with 0, 'Wrong tokenAddress'
    if arg2.length > sub_ca7628bb:
        revert with 0, 'Array too big'
    require arg3 * arg2.length >= arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 * arg2.length > ext_call.return_data[0]:
        revert with 0, 'Not enough tokens'
    mem[(32 * arg2.length) + 132] = this.address
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg3 * arg2.length
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 164] = arg3
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function distributeTokens(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if owner != msg.sender:
        revert with 0, 'Not the owner'
    if tokenAddress != arg1:
        revert with 0, 'Wrong tokenAddress'
    if arg2.length != arg3.length:
        revert with 0, 'Length mismatch'
    if arg2.length > sub_ca7628bb:
        revert with 0, 'Array too big'
    idx = 0
    s = 0
    while idx < arg3.length:
        require idx < arg3.length
        require idx < arg3.length
        require s + mem[(32 * idx) + (32 * arg2.length) + 160] > mem[(32 * arg2.length) + (32 * idx) + 160]
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg2.length) + 160]
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length > ext_call.return_data[0]:
        revert with 0, 'Not enough tokens'
    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = this.address
    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        _64 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _64
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + (32 * arg2.length) + 164], _64
        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
