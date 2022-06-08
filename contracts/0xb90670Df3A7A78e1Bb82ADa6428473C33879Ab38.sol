contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeHoldByAddress(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xb66aae65 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferTokenOwnership(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lock(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x1f2ec9c9 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeHoldByAddressIndex(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xefbe31d5 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeHoldByAddressIndex(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5c006f75 with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function countHoldAmount(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xe66d1b84 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getHoldAmount(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70d94ed0 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function transferHoldFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x595d0392 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getHoldAmountAccounts() {
    require msg.sender == owner
    mem[96] = 0x84c3edf900000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    call tokenAddress.0x84c3edf9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function sub_92b2dd14(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    require arg1.length
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _22 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        _24 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0x5c006f7500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = address(_20)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = _22
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 260] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 292] = _24
        require ext_code.size(tokenAddress)
        call tokenAddress.0x5c006f75 with:
             gas gas_remaining wei
            args address(_20), _22, 0, _24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_a7de9207(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require msg.sender == owner
    require arg4.length == arg5.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 164] = arg1
    mem[(32 * arg4.length) + (32 * arg5.length) + 196] = arg2
    mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg4.length == arg5.length
    idx = 0
    while idx < arg4.length:
        require idx < arg5.length
        _20 = mem[(32 * idx) + (32 * arg4.length) + 160]
        require idx < arg4.length
        _22 = mem[(32 * idx) + 128]
        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0x1f2ec9c900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg5.length) + 164] = arg2
        mem[(32 * arg4.length) + (32 * arg5.length) + 196] = _20
        mem[(32 * arg4.length) + (32 * arg5.length) + 228] = _22
        require ext_code.size(tokenAddress)
        call tokenAddress.0x1f2ec9c9 with:
             gas gas_remaining wei
            args address(arg2), _20, _22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_2e6cfb48(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    require arg3.length
    require arg3.length == arg4.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0xb66aae6500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xb66aae65 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg3.length == arg4.length
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        _23 = mem[(32 * idx) + (32 * arg3.length) + 160]
        if not arg2 / 100:
            require idx < arg3.length
            _25 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0x1f2ec9c900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg1
            mem[(32 * arg3.length) + (32 * arg4.length) + 196] = 0
            mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _25
            require ext_code.size(tokenAddress)
            call tokenAddress.0x1f2ec9c9 with:
                 gas gas_remaining wei
                args address(arg1), 0, _25
        else:
            require arg2 / 100
            require arg2 / 100 * mem[(32 * idx) + (32 * arg3.length) + 160] / arg2 / 100 == mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < arg3.length
            _29 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0x1f2ec9c900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg1
            mem[(32 * arg3.length) + (32 * arg4.length) + 196] = arg2 / 100 * _23
            mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _29
            require ext_code.size(tokenAddress)
            call tokenAddress.0x1f2ec9c9 with:
                 gas gas_remaining wei
                args address(arg1), arg2 / 100 * _23, _29
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_a99796fe(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require msg.sender == owner
    require arg4.length == arg5.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 164] = arg1
    mem[(32 * arg4.length) + (32 * arg5.length) + 196] = arg2
    mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4.length == arg5.length
    idx = 0
    while idx < arg4.length:
        require idx < arg5.length
        _24 = mem[(32 * idx) + (32 * arg4.length) + 160]
        if not arg3 / 100:
            require idx < arg4.length
            _26 = mem[(32 * idx) + 128]
            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0x1f2ec9c900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = arg2
            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = 0
            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = _26
            require ext_code.size(tokenAddress)
            call tokenAddress.0x1f2ec9c9 with:
                 gas gas_remaining wei
                args address(arg2), 0, _26
        else:
            require arg3 / 100
            require arg3 / 100 * mem[(32 * idx) + (32 * arg4.length) + 160] / arg3 / 100 == mem[(32 * idx) + (32 * arg4.length) + 160]
            require idx < arg4.length
            _30 = mem[(32 * idx) + 128]
            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0x1f2ec9c900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = arg2
            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = arg3 / 100 * _24
            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = _30
            require ext_code.size(tokenAddress)
            call tokenAddress.0x1f2ec9c9 with:
                 gas gas_remaining wei
                args address(arg2), arg3 / 100 * _24, _30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_3ae2dce1(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require msg.sender == owner
    require arg2.length
    require arg2.length == arg3.length
    require arg4.length == arg5.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _32 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _34 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = arg1
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_32)
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _34
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(_32), _34
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require idx < arg2.length
        _40 = mem[(32 * idx) + 128]
        require arg4.length == arg5.length
        s = 0
        while s < arg4.length:
            require s < arg5.length
            _52 = mem[(32 * s) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            require s < arg4.length
            _54 = mem[(32 * s) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0x1f2ec9c900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = address(_40)
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = _52
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _54
            require ext_code.size(tokenAddress)
            call tokenAddress.0x1f2ec9c9 with:
                 gas gas_remaining wei
                args address(_40), _52, _54
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function sub_b3f2aa0b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    require arg1.length
    require arg1.length == arg2.length
    require arg3.length == arg4.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _34 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0xb66aae6500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = address(_34)
        require ext_code.size(tokenAddress)
        call tokenAddress.0xb66aae65 with:
             gas gas_remaining wei
            args address(_34)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        _38 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _40 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require arg3.length == arg4.length
        s = 0
        while s < arg3.length:
            require s < arg4.length
            _56 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            if not _40 / 100:
                require s < arg3.length
                _58 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0x1f2ec9c900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = address(_38)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = 0
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 292] = _58
                require ext_code.size(tokenAddress)
                call tokenAddress.0x1f2ec9c9 with:
                     gas gas_remaining wei
                    args address(_38), 0, _58
            else:
                require _40 / 100
                require _40 / 100 * mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] / _40 / 100 == mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require s < arg3.length
                _62 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0x1f2ec9c900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = address(_38)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = _40 / 100 * _56
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 292] = _62
                require ext_code.size(tokenAddress)
                call tokenAddress.0x1f2ec9c9 with:
                     gas gas_remaining wei
                    args address(_38), _40 / 100 * _56, _62
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function sub_eb41d5f1(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require msg.sender == owner
    require arg2.length
    require arg2.length == arg3.length
    require arg4.length == arg5.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _38 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _40 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = arg1
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_38)
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _40
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(_38), _40
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg2.length
        _46 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _48 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require arg4.length == arg5.length
        s = 0
        while s < arg4.length:
            require s < arg5.length
            _64 = mem[(32 * s) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            if not _48 / 100:
                require s < arg4.length
                _66 = mem[(32 * s) + (32 * arg2.length) + (32 * arg3.length) + 192]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0x1f2ec9c900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = address(_46)
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = 0
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _66
                require ext_code.size(tokenAddress)
                call tokenAddress.0x1f2ec9c9 with:
                     gas gas_remaining wei
                    args address(_46), 0, _66
            else:
                require _48 / 100
                require _48 / 100 * mem[(32 * s) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] / _48 / 100 == mem[(32 * s) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                require s < arg4.length
                _70 = mem[(32 * s) + (32 * arg2.length) + (32 * arg3.length) + 192]
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0x1f2ec9c900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = address(_46)
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = _48 / 100 * _64
                mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _70
                require ext_code.size(tokenAddress)
                call tokenAddress.0x1f2ec9c9 with:
                     gas gas_remaining wei
                    args address(_46), _48 / 100 * _64, _70
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}



}
