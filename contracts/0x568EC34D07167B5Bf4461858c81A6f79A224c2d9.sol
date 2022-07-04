contract main {




// =====================  Runtime code  =====================


address owner;
array of uint64 stor1;
array of uint64 stor99;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getPackage(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 96] = code.data[5943 len 96]
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 224] = 1
    _16 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32])
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + 320 > idx + 32:
        mem[idx + 32] = uint64(stor1[_16].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    return address(stor[_16]), uint64(stor1[_16].field_0), mem[ceil32(arg1.length) + 256 len 64]
}

function getProvider(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    _20 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    if not address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        return 0
    mem[ceil32(arg1.length) + 128] = 0x1df40eaa00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = uint64(stor1[_20].field_0)
    idx = mem[64] + 4
    s = 0
    while ceil32(arg1.length) + 228 > idx + 32:
        mem[idx + 32] = uint64(stor1[_20].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    require ext_code.size(address(stor[_20]))
    call address(stor[_20]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len ceil32(arg1.length) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function unsetPackage(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    if not address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        revert with 0, 'Package to unset not found'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
    uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = 0
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 416 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit PackageChanged(string arg1, address arg2, uint64[3] arg3):
                            160,
                            0,
                            0,
                            arg1.length,
                            Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 448 len arg1.length % 32]
        emit PackageChanged(string arg1, address arg2, uint64[3] arg3):
                            160,
                            0,
                            0,
                            arg1.length,
                            Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                            mem[(2 * ceil32(arg1.length)) + 416 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
}

function getImplementation(string arg1, string arg2) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
    _36 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    if not address(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        return 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x1df40eaa00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = uint64(stor1[_36].field_0)
    idx = mem[64] + 4
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + 260 > idx + 32:
        mem[idx + 32] = uint64(stor1[_36].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    require ext_code.size(address(stor[_36]))
    call address(stor[_36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        return 0
    _64 = mem[64]
    mem[mem[64]] = 0x6b68389600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[ceil32(arg1.length) + 128]
    _66 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 68 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _66 % 32:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getImplementation(string arg1) with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len _66 + 32]
    else:
        mem[floor32(_66) + mem[64] + 68] = mem[floor32(_66) + mem[64] + -(_66 % 32) + 100 len _66 % 32]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getImplementation(string arg1) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(_66) + _64 + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function sub_71eb64cc(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 96] = call.data[68 len 96]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 228 len 96] = call.data[68 len 96]
    require ext_code.size(arg2)
    call arg2.0x35ce4016 with:
         gas gas_remaining wei
        args call.data[68 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The requested version must be registered in the given package'
    mem[ceil32(arg1.length) + 224] = arg2
    mem[ceil32(arg1.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 288] = 1
    address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = uint64(arg2) << 96
    s = 0
    idx = ceil32(arg1.length) + 128
    while ceil32(arg1.length) + 224 > idx:
        uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = mem[idx + 24 len 8] * 256^s or !(test266151307() * 256^s) and uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0)
        s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
        idx = idx + 32
        continue 
    idx = 24
    s = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 32]) + 1
    while idx:
        uint256(stor[s]) = !(test266151307() * 256^idx) and uint256(stor[s])
        idx = idx + (8 * -idx + 15 / 32) + (-1 * idx * idx + 15 / 32) + 8
        s = (idx + 15 / 32) + s
        continue 
    idx = (Mask(250, 3, None - 15) + 39 / 32 * Mask(253, 0, None - 15) >> 3) + 1
    while 2 > idx:
        uint64(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 320] = arg2
    mem[ceil32(arg1.length) + 352 len 96] = call.data[68 len 96]
    mem[ceil32(arg1.length) + 448] = arg1.length
    mem[ceil32(arg1.length) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit PackageChanged(string arg1, address arg2, uint64[3] arg3):
                            160,
                            mem[ceil32(arg1.length) + 320 len floor32(arg1.length) - (arg1.length % 32)],
                            mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32],
                            Mask(8 * arg1.length % 32, 0, 1),
                            mem[ceil32(arg1.length) + arg1.length + 320 len 160],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 480] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 512 len arg1.length % 32]
        emit PackageChanged(string arg1, address arg2, uint64[3] arg3):
                            160,
                            mem[ceil32(arg1.length) + 320 len floor32(arg1.length) - (arg1.length % 32)],
                            mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32],
                            Mask(8 * arg1.length % 32, 0, 1),
                            mem[ceil32(arg1.length) + arg1.length + 320 len -(arg1.length % 32) + 192],
}

function create(string arg1, string arg2, address arg3, bytes arg4) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 192
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 192] = 1
    _89 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    if not address(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 192 len 2986] = code.data[5943 len 2986]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 3306 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            create contract with callvalue wei
                            code: code.data[5943 len 2986], 0, address(arg3), 96, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
        else:
            mem[floor32(arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 3306] = mem[floor32(arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 3338 len arg4.length % 32]
            create contract with callvalue wei
                            code: code.data[5943 len 2986], 0, address(arg3), 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(arg4.length)) + 3306 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 192] = 0x1df40eaa00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 196] = uint64(stor1[_89].field_0)
        idx = mem[64] + 4
        s = 0
        while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 292 > idx + 32:
            mem[idx + 32] = uint64(stor1[_89].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
            idx = idx + 32
            s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
            continue 
        require ext_code.size(address(stor[_89]))
        call address(stor[_89]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            mem[mem[64] len 2986] = code.data[5943 len 2986]
            mem[mem[64] + 2986] = 0
            mem[mem[64] + 3018] = arg3
            mem[mem[64] + 3050] = 96
            mem[mem[64] + 3082] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
            _190 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
            mem[mem[64] + 3114 len ceil32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])]
            if not _190 % 32:
                create contract with callvalue wei
                                code: code.data[5943 len 2986], 0, address(arg3), 96, mem[mem[64] + 3082 len _190 + 32]
            else:
                mem[floor32(_190) + mem[64] + 3114] = mem[floor32(_190) + mem[64] + -(_190 % 32) + 3146 len _190 % 32]
                create contract with callvalue wei
                                code: code.data[5943 len 2986], 0, address(arg3), 96, mem[mem[64] + 3082 len floor32(_190) + 64]
        else:
            _181 = mem[64]
            mem[mem[64]] = 0x6b68389600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(arg1.length) + 128]
            _183 = mem[ceil32(arg1.length) + 128]
            mem[mem[64] + 68 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
            if not _183 % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getImplementation(string arg1) with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len _183 + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] len 2986] = code.data[5943 len 2986]
                mem[mem[64] + 2986] = address(ext_call.return_data[0])
                mem[mem[64] + 3018] = arg3
                mem[mem[64] + 3050] = 96
                mem[mem[64] + 3082] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
                _259 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
                mem[mem[64] + 3114 len ceil32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])]
                if not _259 % 32:
                    create contract with callvalue wei
                                    code: code.data[5943 len 2986], address(ext_call.return_data[0]), address(arg3), 96, mem[mem[64] + 3082 len _259 + 32]
                else:
                    mem[floor32(_259) + mem[64] + 3114] = mem[floor32(_259) + mem[64] + -(_259 % 32) + 3146 len _259 % 32]
                    create contract with callvalue wei
                                    code: code.data[5943 len 2986], address(ext_call.return_data[0]), address(arg3), 96, mem[mem[64] + 3082 len floor32(_259) + 64]
            else:
                mem[floor32(_183) + mem[64] + 68] = mem[floor32(_183) + mem[64] + -(_183 % 32) + 100 len _183 % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getImplementation(string arg1) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_183) + _181 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] len 2986] = code.data[5943 len 2986]
                mem[mem[64] + 2986] = address(ext_call.return_data[0])
                mem[mem[64] + 3018] = arg3
                mem[mem[64] + 3050] = 96
                mem[mem[64] + 3082] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
                _262 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
                mem[mem[64] + 3114 len ceil32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160])]
                if not _262 % 32:
                    create contract with callvalue wei
                                    code: code.data[5943 len 2986], address(ext_call.return_data[0]), address(arg3), 96, mem[mem[64] + 3082 len _262 + 32]
                else:
                    mem[floor32(_262) + mem[64] + 3114] = mem[floor32(_262) + mem[64] + -(_262 % 32) + 3146 len _262 % 32]
                    create contract with callvalue wei
                                    code: code.data[5943 len 2986], address(ext_call.return_data[0]), address(arg3), 96, mem[mem[64] + 3082 len floor32(_262) + 64]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit ProxyCreated(address(create.new_address));
    return address(create.new_address)
}



}
