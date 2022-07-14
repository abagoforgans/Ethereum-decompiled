contract main {




// =====================  Runtime code  =====================


address adminAddress;
mapping of address contract;

function getContract(address arg1) {
    require msg.sender == adminAddress
    return contract[address(arg1)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function addContract(address arg1) {
    contract[address(arg1)] = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function removeContract(address arg1) {
    require msg.sender == adminAddress
    contract[address(arg1)] = 0
    return 1
}

function sub_07ce29a7(?) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.approve(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_2a64f214(?) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.removeKey(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_61ea3006(?) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.keyHasPurpose(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function removeClaim(address arg1, bytes32 arg2) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.removeClaim(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_9aefaff8(?) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.0xb61d27f6 with:
         gas gas_remaining wei
        args address(arg2), arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_237ed9b4(?) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.addKey(bytes32 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_70609bf5(?) {
    require msg.sender == adminAddress
    mem[(32 * arg2.length) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(arg1)
    call arg1.0x5dbe4b06 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 260 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_3468ed3d(?) {
    require msg.sender == adminAddress
    mem[96] = 0x9010f72600000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(arg1)
    call arg1.getKeysByPurpose(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function sub_85048035(?) {
    require msg.sender == adminAddress
    mem[96] = 0x80e9e9e100000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(arg1)
    call arg1.getClaimIdsByTopic(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function sub_314f5c11(?) {
    require msg.sender == adminAddress
    mem[96] = 0x12aaac7000000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(arg1)
    call arg1.getKey(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    _7 = mem[160]
    mem[ceil32(return_data.size) + 128] = uint32(arg2), mem[132 len 28]
    mem[ceil32(return_data.size) + 160] = _7
    mem[ceil32(return_data.size) + 96] = 96
    mem[ceil32(return_data.size) + 192] = mem[_4 + 96]
    _10 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 96, mem[ceil32(return_data.size) + 128], _7, mem[ceil32(return_data.size) + 192 len (32 * _10) + 32]
}

function sub_ed71842a(?) {
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 128] = arg6.length
    mem[ceil32(arg5.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = arg7.length
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 192 len arg7.length] = arg7[all]
    require msg.sender == adminAddress
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 192] = 0xb1a34e0d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 420 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 420] = arg6.length
    mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 452 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg5.length) + arg6.length + 160 len ceil32(arg6.length) - arg6.length]
    if not arg6.length % 32:
        mem[arg6.length + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 452] = arg7.length
        mem[arg6.length + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 484 len ceil32(arg7.length)] = arg7[all], mem[ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 192 len ceil32(arg7.length) - arg7.length]
        if not arg7.length % 32:
            require ext_code.size(arg1)
            call arg1.addClaim(uint256 arg1, uint256 arg2, address arg3, bytes arg4, bytes arg5, string arg6) with:
                 gas gas_remaining wei
                args arg2, arg3, address(arg4), Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + ceil32(arg7.length) + 420 len arg7.length + arg6.length + arg5.length + -ceil32(arg5.length) + 64]), arg5.length + 224, arg6.length + arg5.length + 256
        else:
            mem[floor32(arg7.length) + arg6.length + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 484] = mem[floor32(arg7.length) + arg6.length + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg7.length % 32) + 516 len arg7.length % 32]
            require ext_code.size(arg1)
            call arg1.addClaim(uint256 arg1, uint256 arg2, address arg3, bytes arg4, bytes arg5, string arg6) with:
                 gas gas_remaining wei
                args arg2, arg3, address(arg4), Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + ceil32(arg7.length) + 420 len floor32(arg7.length) + arg6.length + arg5.length + -ceil32(arg5.length) + 96]), arg5.length + 224, arg6.length + arg5.length + 256
    else:
        mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 452] = mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg6.length % 32) + 484 len arg6.length % 32]
        mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 484] = arg7.length
        mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 516 len ceil32(arg7.length)] = arg7[all], mem[ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 192 len ceil32(arg7.length) - arg7.length]
        if not arg7.length % 32:
            require ext_code.size(arg1)
            call arg1.addClaim(uint256 arg1, uint256 arg2, address arg3, bytes arg4, bytes arg5, string arg6) with:
                 gas gas_remaining wei
                args arg2, arg3, address(arg4), Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + ceil32(arg7.length) + 420 len arg7.length + floor32(arg6.length) + arg5.length + -ceil32(arg5.length) + 96]), arg5.length + 224, floor32(arg6.length) + arg5.length + 288
        else:
            mem[floor32(arg7.length) + floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 516] = mem[floor32(arg7.length) + floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + -(arg7.length % 32) + 548 len arg7.length % 32]
            require ext_code.size(arg1)
            call arg1.addClaim(uint256 arg1, uint256 arg2, address arg3, bytes arg4, bytes arg5, string arg6) with:
                 gas gas_remaining wei
                args arg2, arg3, address(arg4), Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + ceil32(arg7.length) + 420 len floor32(arg7.length) + floor32(arg6.length) + arg5.length + -ceil32(arg5.length) + 128]), arg5.length + 224, floor32(arg6.length) + arg5.length + 288
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getClaim(address arg1, bytes32 arg2) {
    require msg.sender == adminAddress
    mem[96] = 0xc9100bcb00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(arg1)
    call arg1.getClaim(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 192
    _5 = uint32(arg2), mem[132 len 28]
    _6 = mem[160]
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
    mem[ceil32(return_data.size) + 96] = mem[96 len 4], Mask(224, 32, arg2) >> 32
    mem[ceil32(return_data.size) + 128] = _5
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
                       _5,
                       address(_6),
                       192,
                       _15 + 224,
                       _52 + _15 + 256,
                       mem[ceil32(return_data.size) + 288 len _87 + _52 + _15 + 96]
            mem[floor32(_87) + _52 + _15 + ceil32(return_data.size) + 384] = mem[floor32(_87) + _52 + _15 + ceil32(return_data.size) + -(_87 % 32) + 416 len _87 % 32]
            return mem[ceil32(return_data.size) + 96], 
                   _5,
                   address(_6),
                   192,
                   _15 + 224,
                   _52 + _15 + 256,
                   mem[ceil32(return_data.size) + 288 len floor32(_87) + _52 + _15 + 128]
        mem[floor32(_52) + _15 + ceil32(return_data.size) + 352] = mem[floor32(_52) + _15 + ceil32(return_data.size) + -(_52 % 32) + 384 len _52 % 32]
        mem[ceil32(return_data.size) + 256] = floor32(_52) + _15 + 288
        mem[floor32(_52) + _15 + ceil32(return_data.size) + 384] = mem[_11 + 96]
        _93 = mem[_11 + 96]
        mem[floor32(_52) + _15 + ceil32(return_data.size) + 416 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
        if not _93 % 32:
            return mem[ceil32(return_data.size) + 96], 
                   _5,
                   address(_6),
                   192,
                   _15 + 224,
                   floor32(_52) + _15 + 288,
                   mem[ceil32(return_data.size) + 288 len _93 + floor32(_52) + _15 + 128]
        mem[floor32(_93) + floor32(_52) + _15 + ceil32(return_data.size) + 416] = mem[floor32(_93) + floor32(_52) + _15 + ceil32(return_data.size) + -(_93 % 32) + 448 len _93 % 32]
        return mem[ceil32(return_data.size) + 96], 
               _5,
               address(_6),
               192,
               _15 + 224,
               floor32(_52) + _15 + 288,
               mem[ceil32(return_data.size) + 288 len floor32(_93) + floor32(_52) + _15 + 160]
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
                   _5,
                   address(_6),
                   192,
                   floor32(_15) + 256,
                   _55 + floor32(_15) + 288,
                   mem[ceil32(return_data.size) + 288 len _90 + _55 + floor32(_15) + 128]
        mem[floor32(_90) + _55 + floor32(_15) + ceil32(return_data.size) + 416] = mem[floor32(_90) + _55 + floor32(_15) + ceil32(return_data.size) + -(_90 % 32) + 448 len _90 % 32]
        return mem[ceil32(return_data.size) + 96], 
               _5,
               address(_6),
               192,
               floor32(_15) + 256,
               _55 + floor32(_15) + 288,
               mem[ceil32(return_data.size) + 288 len floor32(_90) + _55 + floor32(_15) + 160]
    mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + 384] = mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + -(_55 % 32) + 416 len _55 % 32]
    mem[ceil32(return_data.size) + 256] = floor32(_55) + floor32(_15) + 320
    mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + 416] = mem[_11 + 96]
    _95 = mem[_11 + 96]
    mem[floor32(_55) + floor32(_15) + ceil32(return_data.size) + 448 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
    if not _95 % 32:
        return mem[ceil32(return_data.size) + 96], 
               _5,
               address(_6),
               192,
               floor32(_15) + 256,
               floor32(_55) + floor32(_15) + 320,
               mem[ceil32(return_data.size) + 288 len _95 + floor32(_55) + floor32(_15) + 160]
    mem[floor32(_95) + floor32(_55) + floor32(_15) + ceil32(return_data.size) + 448] = mem[floor32(_95) + floor32(_55) + floor32(_15) + ceil32(return_data.size) + -(_95 % 32) + 480 len _95 % 32]
    return mem[ceil32(return_data.size) + 96], 
           _5,
           address(_6),
           192,
           floor32(_15) + 256,
           floor32(_55) + floor32(_15) + 320,
           mem[ceil32(return_data.size) + 288 len floor32(_95) + floor32(_55) + floor32(_15) + 192]
}



}
