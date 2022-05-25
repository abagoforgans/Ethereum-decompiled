contract main {




// =====================  Runtime code  =====================


address owner;
address airdropTokenAddress;
uint256 sub_f6a0942c;
uint256 sub_ae7a6936;
mapping of uint8 stor4;

function airdropAdmins(address arg1) {
    return bool(stor4[arg1])
}

function airdropToken() {
    return airdropTokenAddress
}

function owner() {
    return owner
}

function sub_ae7a6936(?) {
    return sub_ae7a6936
}

function sub_f6a0942c(?) {
    return sub_f6a0942c
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setAirdropAdmin(address arg1, bool arg2) {
    require msg.sender == owner
    stor4[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_07bf8849(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6c63cad7(?) {
    require ext_code.size(airdropTokenAddress)
    call airdropTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_37de134b(?) {
    if owner != msg.sender:
        require stor4[msg.sender]
    airdropTokenAddress = arg1
    sub_f6a0942c = 10^arg2
    emit 0x6622c1c1: address(arg1), arg2
    require ext_code.size(airdropTokenAddress)
    call airdropTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function refundTokens(address arg1, address arg2) {
    require msg.sender == owner
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_d0136ca7(?) {
    require msg.sender == owner
    require ext_code.size(airdropTokenAddress)
    call airdropTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(airdropTokenAddress)
        call airdropTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_75a9db91(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.sender == owner:
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = this.address
        require ext_code.size(airdropTokenAddress)
        call airdropTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_ae7a6936 = ext_call.return_data[0]
        require arg3 <= ext_call.return_data[0]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _38 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _38
            require ext_code.size(airdropTokenAddress)
            call airdropTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _38
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        require stor4[msg.sender]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = this.address
        require ext_code.size(airdropTokenAddress)
        call airdropTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_ae7a6936 = ext_call.return_data[0]
        require arg3 <= ext_call.return_data[0]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _41 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _41
            require ext_code.size(airdropTokenAddress)
            call airdropTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _41
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
}



}
