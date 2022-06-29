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

function getProvider(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    _20 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    if not address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        return 0
    idx = ceil32(arg1.length) + 132
    s = 0
    while ceil32(arg1.length) + 228 > idx + 32:
        mem[idx + 32] = uint64(stor1[_20].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    require ext_code.size(address(stor[_20]))
    call address(stor[_20]).getContract(uint64[3] arg1) with:
         gas gas_remaining wei
        args uint64(stor1[_20].field_0), mem[ceil32(arg1.length) + 164 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function getPackage(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 96] = code.data[5943 len 96]
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 224] = 1
    _16 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 224] = uint64(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0)
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + 320 > idx + 32:
        mem[idx + 32] = uint64(stor1[_16].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    return address(stor[_16]), mem[ceil32(arg1.length) + 224 len 96]
}

function getImplementation(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
    _36 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    if not address(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        return 0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 164
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + 260 > idx + 32:
        mem[idx + 32] = uint64(stor1[_36].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    require ext_code.size(address(stor[_36]))
    call address(stor[_36]).getContract(uint64[3] arg1) with:
         gas gas_remaining wei
        args uint64(stor1[_36].field_0), mem[ceil32(arg1.length) + ceil32(arg2.length) + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getImplementation(string arg1) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function unsetPackage(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    if not address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        revert with 0, 'Package to unset not found'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
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

function sub_71eb64cc(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 96] = call.data[68 len 96]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 228 len 96] = call.data[68 len 96]
    require ext_code.size(arg2)
    call arg2.hasVersion(uint64[3] arg1) with:
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
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
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
        idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 196
        s = 0
        while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 292 > idx + 32:
            mem[idx + 32] = uint64(stor1[_89].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
            idx = idx + 32
            s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
            continue 
        require ext_code.size(address(stor[_89]))
        call address(stor[_89]).getContract(uint64[3] arg1) with:
             gas gas_remaining wei
            args uint64(stor1[_89].field_0), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 228 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
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
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 260 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getImplementation(string arg1) with:
                 gas gas_remaining wei
                args Array(len=arg2.length, data=arg2[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 192 len 2986] = code.data[5943 len 2986]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 3306 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                create contract with callvalue wei
                                code: code.data[5943 len 2986], address(ext_call.return_data[0]), address(arg3), 96, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
            else:
                mem[floor32(arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + 3306] = mem[floor32(arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 3338 len arg4.length % 32]
                create contract with callvalue wei
                                code: code.data[5943 len 2986], address(ext_call.return_data[0]), address(arg3), 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(arg4.length)) + 3306 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit ProxyCreated(address(create.new_address));
    return address(create.new_address)
}



}
