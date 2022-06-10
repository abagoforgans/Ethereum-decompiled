contract main {




// =====================  Runtime code  =====================


#
#  - addClaims(uint256[] arg1, address[] arg2, bytes arg3, bytes arg4, uint256[] arg5)
#
mapping of struct stor5;

function _fallback() payable {
    revert
}

function removeClaim(bytes32 arg1) {
    require ext_code.size(0x79b152da4ad8fb774700639bed68a965b0440644)
    delegate 0x79b152da4ad8fb774700639bed68a965b0440644.0x5c02fae1 with:
         gas gas_remaining wei
        args 0, 4, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function approve(uint256 arg1, bool arg2) {
    require ext_code.size(0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8)
    delegate 0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8.0x67d4865f with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function removeKey(bytes32 arg1, uint256 arg2) {
    require ext_code.size(0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8)
    delegate 0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8.'?Gam' with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function keyHasPurpose(bytes32 arg1, uint256 arg2) {
    require ext_code.size(0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8)
    delegate 0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8.0xd8188a40 with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function addKey(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8)
    delegate 0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8.0x5d601c3a with:
         gas gas_remaining wei
        args 0, 0, arg1, arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getClaimIdsByTopic(uint256 arg1) {
    if not stor5[arg1].field_0:
        mem[(32 * stor5[arg1].field_0) + 128] = 32
        mem[(32 * stor5[arg1].field_0) + 160] = stor5[arg1].field_0
        mem[(32 * stor5[arg1].field_0) + 192 len floor32(stor5[arg1].field_0)] = mem[128 len floor32(stor5[arg1].field_0)]
        return memory
          from (32 * stor5[arg1].field_0) + 128
           len (96 * stor5[arg1].field_0) + 64
    mem[128] = stor5[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor5[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor5[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5[arg1].field_0) + 192 len floor32(stor5[arg1].field_0)] = mem[128 len floor32(stor5[arg1].field_0)]
    return Array(len=stor5[arg1].field_0, data=mem[128 len floor32(stor5[arg1].field_0)], mem[(32 * stor5[arg1].field_0) + floor32(stor5[arg1].field_0) + 192 len (32 * stor5[arg1].field_0) - floor32(stor5[arg1].field_0)]), 
}

function getKeyPurposes(bytes32 arg1) {
    mem[96] = 0xf982bac00000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8)
    delegate 0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8.0xf982bac with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function getKeysByPurpose(uint256 arg1) {
    mem[96] = 0x746199f900000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8)
    delegate 0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8.0x746199f9 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function getKey(bytes32 arg1) {
    mem[96] = 0xb01a9fb300000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    mem[132] = arg1
    require ext_code.size(0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8)
    delegate 0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8.0xb01a9fb3 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    _7 = uint32(arg1), mem[164 len 28]
    mem[ceil32(return_data.size) + 128] = 0, Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 160] = _7
    mem[ceil32(return_data.size) + 96] = 96
    mem[ceil32(return_data.size) + 192] = mem[_4 + 96]
    _10 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 96, 0, Mask(224, 32, arg1) >> 32, _7, mem[ceil32(return_data.size) + 192 len (32 * _10) + 32]
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 0xe9356c6f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8)
        delegate 0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8.0xe9356c6f with:
             gas gas_remaining wei
            args 0, address(arg1), arg2, 128, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        require ext_code.size(0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8)
        delegate 0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8.0xe9356c6f with:
             gas gas_remaining wei
            args 0, address(arg1), arg2, 128, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getClaim(bytes32 arg1) {
    mem[96] = 0x8522d0eb00000000000000000000000000000000000000000000000000000000
    mem[100] = 4
    mem[132] = arg1
    require ext_code.size(0x79b152da4ad8fb774700639bed68a965b0440644)
    delegate 0x79b152da4ad8fb774700639bed68a965b0440644.0x8522d0eb with:
         gas gas_remaining wei
        args 4, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 192
    _6 = uint32(arg1), mem[164 len 28]
    _7 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 32 <= return_data.size
    require return_data.size >= mem[mem[192] + 96] + mem[192] + 32 and mem[mem[192] + 96] <= 4294967296
    _9 = mem[224]
    require mem[224] <= 4294967296
    require mem[224] + 32 <= return_data.size
    require return_data.size >= mem[mem[224] + 96] + mem[224] + 32 and mem[mem[224] + 96] <= 4294967296
    _11 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 32 <= return_data.size
    require return_data.size >= mem[mem[256] + 96] + mem[256] + 32 and mem[mem[256] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[96 len 4], 0
    mem[ceil32(return_data.size) + 128] = 4, Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 160] = address(_6)
    mem[ceil32(return_data.size) + 192] = 192
    mem[ceil32(return_data.size) + 288] = mem[_7 + 96]
    _15 = mem[_7 + 96]
    mem[ceil32(return_data.size) + 320 len ceil32(mem[_7 + 96])] = mem[_7 + 128 len ceil32(mem[_7 + 96])]
    if not _15 % 32:
        mem[ceil32(return_data.size) + 224] = _15 + 224
        mem[_15 + ceil32(return_data.size) + 320] = mem[_9 + 96]
        _52 = mem[_9 + 96]
        mem[_15 + ceil32(return_data.size) + 352 len ceil32(mem[_9 + 96])] = mem[_9 + 128 len ceil32(mem[_9 + 96])]
        if not _52 % 32:
            mem[ceil32(return_data.size) + 256] = _52 + _15 + 256
            mem[_52 + _15 + ceil32(return_data.size) + 352] = mem[_11 + 96]
            _87 = mem[_11 + 96]
            mem[_52 + _15 + ceil32(return_data.size) + 384 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
            if not _87 % 32:
                return mem[ceil32(return_data.size) + 96], 
                       4,
                       Mask(224, 32, arg1) >> 32,
                       address(_6),
                       Array(len=_52 + _15 + 256, data=mem[ceil32(return_data.size) + 288 len _87 + _52 + _15 + 96]),
                       _15 + 224
            mem[floor32(_87) + _52 + _15 + ceil32(return_data.size) + 384] = mem[floor32(_87) + _52 + _15 + ceil32(return_data.size) + -(_87 % 32) + 416 len _87 % 32]
            return mem[ceil32(return_data.size) + 96], 
                   4,
                   Mask(224, 32, arg1) >> 32,
                   address(_6),
                   Array(len=_52 + _15 + 256, data=mem[ceil32(return_data.size) + 288 len floor32(_87) + _52 + _15 + 128]),
                   _15 + 224
        mem[floor32(_52) + _15 + ceil32(return_data.size) + 352] = mem[floor32(_52) + _15 + ceil32(return_data.size) + -(_52 % 32) + 384 len _52 % 32]
        mem[ceil32(return_data.size) + 256] = floor32(_52) + _15 + 288
        mem[floor32(_52) + _15 + ceil32(return_data.size) + 384] = mem[_11 + 96]
        _93 = mem[_11 + 96]
        mem[floor32(_52) + _15 + ceil32(return_data.size) + 416 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
        if not _93 % 32:
            return mem[ceil32(return_data.size) + 96], 
                   4,
                   Mask(224, 32, arg1) >> 32,
                   address(_6),
                   Array(len=floor32(_52) + _15 + 288, data=mem[ceil32(return_data.size) + 288 len _93 + floor32(_52) + _15 + 128]),
                   _15 + 224
        mem[floor32(_93) + floor32(_52) + _15 + ceil32(return_data.size) + 416] = mem[floor32(_93) + floor32(_52) + _15 + ceil32(return_data.size) + -(_93 % 32) + 448 len _93 % 32]
        return mem[ceil32(return_data.size) + 96], 
               4,
               Mask(224, 32, arg1) >> 32,
               address(_6),
               Array(len=floor32(_52) + _15 + 288, data=mem[ceil32(return_data.size) + 288 len floor32(_93) + floor32(_52) + _15 + 160]),
               _15 + 224
    mem[floor32(_15) + ceil32(return_data.size) + 320] = mem[floor32(_15) + ceil32(return_data.size) + -(_15 % 32) + 352 len _15 % 32]
    mem[ceil32(return_data.size) + 224] = floor32(_15) + 256
    mem[floor32(_15) + ceil32(return_data.size) + 352] = mem[_9 + 96]
    _55 = mem[_9 + 96]
    mem[floor32(_15) + ceil32(return_data.size) + 384 len ceil32(mem[_9 + 96])] = mem[_9 + 128 len ceil32(mem[_9 + 96])]
    if not _55 % 32:
        mem[ceil32(return_data.size) + 256] = _55 + floor32(_15) + 288
        mem[_55 + floor32(_15) + ceil32(return_data.size) + 384] = mem[_11 + 96]
        _90 = mem[_11 + 96]
        mem[_55 + floor32(_15) + ceil32(return_data.size) + 416 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
        if not _90 % 32:
            return mem[ceil32(return_data.size) + 96], 
                   4,
                   Mask(224, 32, arg1) >> 32,
                   address(_6),
                   Array(len=_55 + floor32(_15) + 288, data=mem[ceil32(return_data.size) + 288 len _90 + _55 + floor32(_15) + 128]),
                   floor32(_15) + 256
        mem[floor32(_90) + _55 + floor32(_15) + ceil32(return_data.size) + 416] = mem[floor32(_90) + _55 + floor32(_15) + ceil32(return_data.size) + -(_90 % 32) + 448 len _90 % 32]
        return mem[ceil32(return_data.size) + 96], 
               4,
               Mask(224, 32, arg1) >> 32,
               address(_6),
               Array(len=_55 + floor32(_15) + 288, data=mem[ceil32(return_data.size) + 288 len floor32(_90) + _55 + floor32(_15) + 160]),
               floor32(_15) + 256
    mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + 384] = mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + -(_55 % 32) + 416 len _55 % 32]
    mem[ceil32(return_data.size) + 256] = floor32(_55) + floor32(_15) + 320
    mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + 416] = mem[_11 + 96]
    _95 = mem[_11 + 96]
    mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + 448 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
    if not _95 % 32:
        return mem[ceil32(return_data.size) + 96], 
               4,
               Mask(224, 32, arg1) >> 32,
               address(_6),
               Array(len=floor32(_55) + floor32(_15) + 320, data=mem[ceil32(return_data.size) + 288 len _95 + floor32(_55) + floor32(_15) + 160]),
               floor32(_15) + 256
    mem[floor32(_95) + floor32(_55) + floor32(_15) + ceil32(return_data.size) + 448] = mem[floor32(_95) + floor32(_55) + floor32(_15) + ceil32(return_data.size) + -(_95 % 32) + 480 len _95 % 32]
    return mem[ceil32(return_data.size) + 96], 
           4,
           Mask(224, 32, arg1) >> 32,
           address(_6),
           Array(len=floor32(_55) + floor32(_15) + 320, data=mem[ceil32(return_data.size) + 288 len floor32(_95) + floor32(_55) + floor32(_15) + 192]),
           floor32(_15) + 256
}

function addClaim(uint256 arg1, uint256 arg2, address arg3, bytes arg4, bytes arg5, string arg6) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg6.length
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len arg6.length] = arg6[all]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192] = 0xbd2d0c2800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = arg5.length
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            mem[arg5.length + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516] = arg6.length
            mem[arg5.length + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
            if not arg6.length % 32:
                require ext_code.size(0x79b152da4ad8fb774700639bed68a965b0440644)
                delegate 0x79b152da4ad8fb774700639bed68a965b0440644.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, arg4.length + 288, arg5.length + arg4.length + 320, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len arg6.length + arg5.length + arg4.length + -ceil32(arg4.length) + 64]
            else:
                mem[floor32(arg6.length) + arg5.length + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = mem[floor32(arg6.length) + arg5.length + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 580 len arg6.length % 32]
                require ext_code.size(0x79b152da4ad8fb774700639bed68a965b0440644)
                delegate 0x79b152da4ad8fb774700639bed68a965b0440644.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, arg4.length + 288, arg5.length + arg4.length + 320, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len floor32(arg6.length) + arg5.length + arg4.length + -ceil32(arg4.length) + 96]
        else:
            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 548 len arg5.length % 32]
            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = arg6.length
            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 580 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
            if not arg6.length % 32:
                require ext_code.size(0x79b152da4ad8fb774700639bed68a965b0440644)
                delegate 0x79b152da4ad8fb774700639bed68a965b0440644.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, arg4.length + 288, floor32(arg5.length) + arg4.length + 352, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len arg6.length + floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 96]
            else:
                mem[floor32(arg6.length) + floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 580] = mem[floor32(arg6.length) + floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 612 len arg6.length % 32]
                require ext_code.size(0x79b152da4ad8fb774700639bed68a965b0440644)
                delegate 0x79b152da4ad8fb774700639bed68a965b0440644.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, arg4.length + 288, floor32(arg5.length) + arg4.length + 352, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len floor32(arg6.length) + floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 128]
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516] = arg5.length
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            mem[arg5.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = arg6.length
            mem[arg5.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 580 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
            if not arg6.length % 32:
                require ext_code.size(0x79b152da4ad8fb774700639bed68a965b0440644)
                delegate 0x79b152da4ad8fb774700639bed68a965b0440644.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, floor32(arg4.length) + 320, arg5.length + floor32(arg4.length) + 352, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len arg6.length + arg5.length + floor32(arg4.length) + -ceil32(arg4.length) + 96]
            else:
                mem[floor32(arg6.length) + arg5.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 580] = mem[floor32(arg6.length) + arg5.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 612 len arg6.length % 32]
                require ext_code.size(0x79b152da4ad8fb774700639bed68a965b0440644)
                delegate 0x79b152da4ad8fb774700639bed68a965b0440644.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, floor32(arg4.length) + 320, arg5.length + floor32(arg4.length) + 352, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len floor32(arg6.length) + arg5.length + floor32(arg4.length) + -ceil32(arg4.length) + 128]
        else:
            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 580 len arg5.length % 32]
            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 580] = arg6.length
            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 612 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
            if not arg6.length % 32:
                require ext_code.size(0x79b152da4ad8fb774700639bed68a965b0440644)
                delegate 0x79b152da4ad8fb774700639bed68a965b0440644.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, floor32(arg4.length) + 320, floor32(arg5.length) + floor32(arg4.length) + 384, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len arg6.length + floor32(arg5.length) + floor32(arg4.length) + -ceil32(arg4.length) + 128]
            else:
                mem[floor32(arg6.length) + floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 612] = mem[floor32(arg6.length) + floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 644 len arg6.length % 32]
                require ext_code.size(0x79b152da4ad8fb774700639bed68a965b0440644)
                delegate 0x79b152da4ad8fb774700639bed68a965b0440644.0xbd2d0c28 with:
                     gas gas_remaining wei
                    args 0, 4, arg1, arg2, address(arg3), 256, floor32(arg4.length) + 320, floor32(arg5.length) + floor32(arg4.length) + 384, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len floor32(arg6.length) + floor32(arg5.length) + floor32(arg4.length) + -ceil32(arg4.length) + 160]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}



}
