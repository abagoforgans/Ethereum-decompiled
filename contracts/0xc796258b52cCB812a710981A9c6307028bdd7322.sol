contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function withdrawEth(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function execute(bytes arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[ceil32(arg1.length) + 132] = msg.sender
            mem[ceil32(arg1.length) + 164] = this.address
            mem[ceil32(arg1.length) + 196] = call.func_hash
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        call mem[idx + 128 len 20].mem[idx + 212 len 4] with:
           value mem[idx + 148] wei
             gas gas_remaining - 5000 wei
            args mem[idx + 216 len mem[idx + 180] - 4]
        require ext_call.success
        s = idx + 212
        s = mem[idx + 180]
        s = mem[idx + 148]
        s = mem[idx + 128 len 20]
        idx = idx + mem[idx + 180] + 84
        continue 
}

function sub_208f5ca6(?) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[ceil32(arg3.length) + 132] = msg.sender
            mem[ceil32(arg3.length) + 164] = this.address
            mem[ceil32(arg3.length) + 196] = call.func_hash
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg3.length:
        call mem[idx + 128 len 20].mem[idx + 212 len 4] with:
           value mem[idx + 148] wei
             gas gas_remaining - 5000 wei
            args mem[idx + 216 len mem[idx + 180] - 4]
        require ext_call.success
        s = idx + 212
        s = mem[idx + 180]
        s = mem[idx + 148]
        s = mem[idx + 128 len 20]
        idx = idx + mem[idx + 180] + 84
        continue 
    if gas_remaining >= 27710:
        if arg2 <= gas_remaining - 27710 / 7020:
            if arg2 > 0:
                require ext_code.size(arg1)
                call arg1.freeFromUpTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            if gas_remaining - 27710 / 7020 > 0:
                require ext_code.size(arg1)
                call arg1.freeFromUpTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, gas_remaining - 27710 / 7020
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
}



}
