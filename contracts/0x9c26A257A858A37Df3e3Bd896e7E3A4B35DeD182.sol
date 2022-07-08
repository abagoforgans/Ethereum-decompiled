contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e8e185ba(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bytes32ToString(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 32
    mem[64] = 160
    mem[128] = code.data[2965 len 32]
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, arg1 * 2^(8 * idx)):
            idx = idx + 1
            s = s
            continue 
        require s < mem[96]
        mem[s + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _3 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_3]
            mem[_3 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) - 256
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_3]
        _29 = mem[_3]
        mem[mem[64] + 64 len ceil32(mem[_3])] = mem[_3 + 32 len ceil32(mem[_3])]
        if not _29 % 32:
            return 32, mem[mem[64] + 32 len _29 + 32]
        mem[floor32(_29) + mem[64] + 64] = mem[floor32(_29) + mem[64] + -(_29 % 32) + 96 len _29 % 32]
        return 32, mem[mem[64] + 32 len floor32(_29) + 64]
    mem[_3 + 32 len s] = code.data[2965 len s]
    t = 0
    while t < s:
        require t < mem[96]
        require t < mem[_3]
        mem[_3 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_3]
    _34 = mem[_3]
    mem[mem[64] + 64 len ceil32(mem[_3])] = mem[_3 + 32 len ceil32(mem[_3])]
    if not _34 % 32:
        return 32, mem[mem[64] + 32 len _34 + 32]
    mem[floor32(_34) + mem[64] + 64] = mem[floor32(_34) + mem[64] + -(_34 % 32) + 96 len _34 % 32]
    return 32, mem[mem[64] + 32 len floor32(_34) + 64]
}

function sub_7a059517(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _37 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _39 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _41 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        _42 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_42 + 32] = code.data[2965 len 32]
        s = 0
        t = 0
        while s < 32:
            if not Mask(8, 248, _41 * 2^(8 * s)):
                s = s + 1
                t = t
                continue 
            require t < mem[_42]
            mem[_42 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('var', '_41'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 1))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('var', '_41'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 1))))), 0) - 256
            s = s + 1
            t = t + 1
            continue 
        _44 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            s = 0
            while s < t:
                require s < mem[_42]
                require s < mem[_44]
                mem[_44 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_42'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_42'), ('var', 1)), 32))), 0) - 256
                s = s + 1
                continue 
            mem[mem[64]] = 0x26dd860a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_37)
            mem[mem[64] + 36] = _39
            mem[mem[64] + 68] = 96
            mem[mem[64] + 100] = mem[_44]
            _70 = mem[_44]
            s = 0
            while s < _70:
                mem[mem[64] + s + 132] = mem[_44 + s + 32]
                s = s + 32
                continue 
            if not _70 % 32:
                require ext_code.size(stor1)
                call stor1.mintUniqueTokenTo(address arg1, uint256 arg2, string arg3) with:
                     gas gas_remaining wei
                    args address(_37), _39, 96, mem[mem[64] + 100 len _70 + 32]
            else:
                mem[floor32(_70) + mem[64] + 132] = mem[floor32(_70) + mem[64] + -(_70 % 32) + 164 len _70 % 32]
                require ext_code.size(stor1)
                call stor1.mintUniqueTokenTo(address arg1, uint256 arg2, string arg3) with:
                     gas gas_remaining wei
                    args address(_37), _39, 96, mem[mem[64] + 100 len floor32(_70) + 64]
        else:
            mem[_44 + 32 len t] = code.data[2965 len t]
            s = 0
            while s < t:
                require s < mem[_42]
                require s < mem[_44]
                mem[_44 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_42'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_42'), ('var', 1)), 32))), 0) - 256
                s = s + 1
                continue 
            mem[mem[64]] = 0x26dd860a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_37)
            mem[mem[64] + 36] = _39
            mem[mem[64] + 68] = 96
            mem[mem[64] + 100] = mem[_44]
            _75 = mem[_44]
            s = 0
            while s < _75:
                mem[mem[64] + s + 132] = mem[_44 + s + 32]
                s = s + 32
                continue 
            if not _75 % 32:
                require ext_code.size(stor1)
                call stor1.mintUniqueTokenTo(address arg1, uint256 arg2, string arg3) with:
                     gas gas_remaining wei
                    args address(_37), _39, 96, mem[mem[64] + 100 len _75 + 32]
            else:
                mem[floor32(_75) + mem[64] + 132] = mem[floor32(_75) + mem[64] + -(_75 % 32) + 164 len _75 % 32]
                require ext_code.size(stor1)
                call stor1.mintUniqueTokenTo(address arg1, uint256 arg2, string arg3) with:
                     gas gas_remaining wei
                    args address(_37), _39, 96, mem[mem[64] + 100 len floor32(_75) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
