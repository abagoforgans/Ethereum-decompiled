contract main {




// =====================  Runtime code  =====================


#
#  - sub_70474b4d(?)
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;

function initialized() payable {
    return bool(uint8(stor6.field_160))
}

function _fallback() payable {
    revert
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if uint8(stor6.field_160):
        revert with 0, 'ALREADY_INITIALIZED'
    require ext_code.size(address(stor6.field_0))
    staticcall address(stor6.field_0).0xdf7f453b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_A_SUPER_ADMIN'
    stor0 = arg1
    stor2 = arg2
    stor3 = arg3
    stor5 = arg4
    stor1 = arg5
    Mask(96, 0, stor6.field_160) = 1
}

function sub_47f23a94(?) payable {
    require calldata.size - 4 >= 416
    require calldata.size - 4 >= 352
    require arg13 <= test266151307()
    require arg13 + 35 < calldata.size
    require arg13.length <= test266151307()
    require ceil32(arg13.length) + 480 <= test266151307() and ceil32(arg13.length) + 480 >= 448
    require arg13 + arg13.length + 36 <= calldata.size
    mem[480 len arg13.length] = arg13[all]
    mem[arg13.length + 480] = 0
    mem[ceil32(arg13.length) + 480] = 0
    require ext_code.size(stor0)
    staticcall stor0.getMarket(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(arg13.length) + 576 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(arg13.length) + ceil32(return_data.size) + 672 <= test266151307())
    mem[ceil32(arg13.length) + ceil32(return_data.size) + 576] = ext_call.return_data[12 len 20]
    mem[ceil32(arg13.length) + ceil32(return_data.size) + 608] = ext_call.return_data[58 len 6]
    mem[ceil32(arg13.length) + ceil32(return_data.size) + 640] = ext_call.return_data[90 len 6]
    mem[ceil32(arg13.length) + ceil32(return_data.size) + 1124] = arg8
    mem[ceil32(arg13.length) + ceil32(return_data.size) + 1156] = arg9
    mem[ceil32(arg13.length) + ceil32(return_data.size) + 1188] = arg10
    mem[ceil32(arg13.length) + ceil32(return_data.size) + 1220] = arg11
    mem[ceil32(arg13.length) + ceil32(return_data.size) + 1252] = arg12
    require ext_code.size(stor5)
    staticcall stor5.0xc16cb70e with:
            gas gas_remaining wei
           args arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, address(arg9), address(arg10), arg11, arg12
    mem[ceil32(arg13.length) + ceil32(return_data.size) + 896 len 224] = ext_call.return_data[0 len 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require bool(ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1120 <= test266151307())
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 896] = ext_call.return_data[0]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 928] = ext_call.return_data[32]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 960] = ext_call.return_data[64]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 992] = ext_call.return_data[96]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1024] = ext_call.return_data[128]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1056] = ext_call.return_data[160]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1088] = ext_call.return_data[192]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1120] = 0xc10ebd2d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1124] = arg1
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1156] = arg2
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1188] = arg3
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1220] = arg4
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1252] = arg5
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1284] = arg6
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1316] = arg7
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1348] = arg8
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1380] = arg9
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1412] = arg10
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1444] = arg11
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1476] = mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1508] = mem[ceil32(arg13.length) + ceil32(return_data.size) + 634 len 6]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1540] = mem[ceil32(arg13.length) + ceil32(return_data.size) + 666 len 6]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1572] = arg12
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1604] = msg.sender
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1636] = 544
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1668] = arg13.length
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1700 len ceil32(arg13.length)] = arg13[all], mem[arg13.length + 480 len ceil32(arg13.length) - arg13.length]
    if ceil32(arg13.length) > arg13.length:
        mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + arg13.length + 1700] = 0
    require ext_code.size(stor5)
    staticcall stor5.0xc10ebd2d with:
            gas gas_remaining wei
           args arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, address(arg9), address(arg10), arg11, mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1476 len 96], arg12, msg.sender, 544, arg13.length, arg13[all], mem[arg13.length + 480 len ceil32(arg13.length) - arg13.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1124] = arg1
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1156] = arg2
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1188] = arg3
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1220] = arg4
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1252] = arg5
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1284] = arg6
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1316] = arg7
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1348] = arg8
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1380] = uint64(arg9) << 96
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1412] = uint64(arg10) << 96
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1444] = arg11
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1476] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x13a6f603 with:
         gas gas_remaining wei
        args arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 << 192, arg10 << 192, arg11, ext_call.return_data[0]
    mem[ceil32(arg13.length) + (2 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg13.length) + (4 * ceil32(return_data.size)) + 1120] = 0x15dacbea00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg13.length) + (4 * ceil32(return_data.size)) + 1124] = mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20]
    mem[ceil32(arg13.length) + (4 * ceil32(return_data.size)) + 1156] = arg9
    mem[ceil32(arg13.length) + (4 * ceil32(return_data.size)) + 1188] = stor3
    mem[ceil32(arg13.length) + (4 * ceil32(return_data.size)) + 1220] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20], address(arg9), stor3, ext_call.return_data[0]
    mem[ceil32(arg13.length) + (4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
    require ext_code.size(stor1)
    call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20], address(arg9), stor4, ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CANNOT_TRANSFER_MAKER_ORACLE_FEE'
    if arg6 <= 0:
        mem[ceil32(arg13.length) + (7 * ceil32(return_data.size)) + 1156] = msg.sender
        mem[ceil32(arg13.length) + (7 * ceil32(return_data.size)) + 1188] = stor3
        mem[ceil32(arg13.length) + (7 * ceil32(return_data.size)) + 1220] = ext_call.return_data[32]
        require ext_code.size(stor1)
        call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20], msg.sender, stor3, ext_call.return_data[32]
        mem[ceil32(arg13.length) + (7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1120] = 0x15dacbea00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1124] = mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20]
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1156] = msg.sender
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1188] = stor4
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1220] = ext_call.return_data[128]
        require ext_code.size(stor1)
        call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20], msg.sender, stor4, ext_call.return_data[128]
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    else:
        mem[ceil32(arg13.length) + (7 * ceil32(return_data.size)) + 1156] = arg9
        mem[ceil32(arg13.length) + (7 * ceil32(return_data.size)) + 1188] = arg10
        mem[ceil32(arg13.length) + (7 * ceil32(return_data.size)) + 1220] = ext_call.return_data[160]
        require ext_code.size(stor1)
        call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20], address(arg9), address(arg10), ext_call.return_data[160]
        mem[ceil32(arg13.length) + (7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT_TRANSFER_RELAYER_MAKER_FEE'
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1120] = 0x15dacbea00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1124] = mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20]
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1156] = msg.sender
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1188] = stor3
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1220] = ext_call.return_data[32]
        require ext_code.size(stor1)
        call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20], msg.sender, stor3, ext_call.return_data[32]
        mem[ceil32(arg13.length) + (8 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
        require ext_code.size(stor1)
        call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20], msg.sender, stor4, ext_call.return_data[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CANNOT_TRANSFER_TAKER_ORACLE_FEE'
    if arg7 > 0:
        require ext_code.size(stor1)
        call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg13.length) + ceil32(return_data.size) + 588 len 20], msg.sender, address(arg10), ext_call.return_data[192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT_TRANSFER_RELAYER_TAKER_FEE'
    require ext_code.size(stor3)
    if not arg11:
        call stor3.0x10425f08 with:
             gas gas_remaining wei
            args arg1, msg.sender, ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        call stor3.0x7ca5192 with:
             gas gas_remaining wei
            args arg1, address(arg9), ext_call.return_data[64]
    else:
        call stor3.0x10425f08 with:
             gas gas_remaining wei
            args arg1, address(arg9), ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        call stor3.0x7ca5192 with:
             gas gas_remaining wei
            args arg1, msg.sender, ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.0xc44113c9 with:
         gas gas_remaining wei
        args arg1, address(arg9), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.0xc44113c9 with:
         gas gas_remaining wei
        args arg1, msg.sender, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3bd2463f: ext_call.return_data[0], sha3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, uint8(arg11)), arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 << 192, arg10 << 192, arg11, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], uint64(arg9) << 96, arg1, msg.sender
}

function sub_793578d0(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (352 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 352
        _51 = mem[64]
        require mem[64] + 352 <= test266151307() and mem[64] + 352 >= mem[64]
        mem[64] = mem[64] + 352
        mem[_51] = cd[s]
        mem[_51 + 32] = cd[(s + 32)]
        mem[_51 + 64] = cd[(s + 64)]
        mem[_51 + 96] = cd[(s + 96)]
        mem[_51 + 128] = cd[(s + 128)]
        mem[_51 + 160] = cd[(s + 160)]
        mem[_51 + 192] = cd[(s + 192)]
        mem[_51 + 224] = cd[(s + 224)]
        mem[_51 + 256] = address(cd[(s + 256)])
        mem[_51 + 288] = address(cd[(s + 288)])
        mem[_51 + 320] = bool(cd[(s + 320)])
        mem[t] = _51
        idx = idx + 1
        s = s + 352
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _52 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_52] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _52 + 32
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    _104 = mem[64]
    require mem[64] + (32 * ('cd', 68).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 68).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_104] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _104 + 32
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _161 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_161] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_161 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_161 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _161
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _157 = mem[96]
    idx = 0
    while idx < _157:
        require idx < mem[96]
        _1260 = mem[(32 * idx) + 128]
        require idx < mem[_52]
        _1262 = mem[(32 * idx) + _52 + 32]
        require idx < mem[_104]
        _1264 = mem[(32 * idx) + _104 + 32]
        _1265 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1265] = 0
        mem[_1265 + 32] = 0
        mem[_1265 + 64] = 0
        require ext_code.size(stor0)
        staticcall stor0.getMarket(bytes32 arg1) with:
                gas gas_remaining wei
               args mem[_1260]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1269 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1270 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        mem[_1270] = mem[_1269 + 12 len 20]
        mem[_1270 + 32] = mem[_1269 + 58 len 6]
        mem[_1270 + 64] = mem[_1269 + 90 len 6]
        _1274 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1274] = 0
        mem[_1274 + 32] = 0
        mem[_1274 + 64] = 0
        mem[_1274 + 96] = 0
        mem[_1274 + 128] = 0
        mem[_1274 + 160] = 0
        mem[_1274 + 192] = 0
        mem[mem[64]] = 0xc16cb70e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = mem[_1260]
        mem[mem[64] + 36] = mem[_1260 + 32]
        mem[mem[64] + 68] = mem[_1260 + 64]
        mem[mem[64] + 100] = mem[_1260 + 96]
        mem[mem[64] + 132] = mem[_1260 + 128]
        mem[mem[64] + 164] = mem[_1260 + 160]
        mem[mem[64] + 196] = mem[_1260 + 192]
        mem[mem[64] + 228] = mem[_1260 + 224]
        mem[mem[64] + 260] = mem[_1260 + 268 len 20]
        mem[mem[64] + 292] = mem[_1260 + 300 len 20]
        mem[mem[64] + 324] = bool(mem[_1260 + 320])
        mem[mem[64] + 356] = _1262
        require ext_code.size(stor5)
        staticcall stor5.0xc16cb70e with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len 352], _1262
        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1288 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 224
        _1289 = mem[64]
        require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
        mem[64] = mem[64] + 224
        mem[_1289] = mem[_1288]
        mem[_1289 + 32] = mem[_1288 + 32]
        mem[_1289 + 64] = mem[_1288 + 64]
        mem[_1289 + 96] = mem[_1288 + 96]
        mem[_1289 + 128] = mem[_1288 + 128]
        mem[_1289 + 160] = mem[_1288 + 160]
        mem[_1289 + 192] = mem[_1288 + 192]
        mem[mem[64]] = 0xc10ebd2d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = mem[_1260]
        mem[mem[64] + 36] = mem[_1260 + 32]
        mem[mem[64] + 68] = mem[_1260 + 64]
        mem[mem[64] + 100] = mem[_1260 + 96]
        mem[mem[64] + 132] = mem[_1260 + 128]
        mem[mem[64] + 164] = mem[_1260 + 160]
        mem[mem[64] + 196] = mem[_1260 + 192]
        mem[mem[64] + 228] = mem[_1260 + 224]
        mem[mem[64] + 260] = mem[_1260 + 268 len 20]
        mem[mem[64] + 292] = mem[_1260 + 300 len 20]
        mem[mem[64] + 324] = bool(mem[_1260 + 320])
        mem[mem[64] + 356] = mem[_1270 + 12 len 20]
        mem[mem[64] + 388] = mem[_1270 + 58 len 6]
        mem[mem[64] + 420] = mem[_1270 + 90 len 6]
        mem[mem[64] + 452] = _1262
        mem[mem[64] + 484] = msg.sender
        mem[mem[64] + 516] = 544
        _1312 = mem[_1264]
        mem[mem[64] + 548] = mem[_1264]
        s = 0
        while s < _1312:
            mem[mem[64] + s + 580] = mem[_1264 + s + 32]
            s = s + 32
            continue 
        if ceil32(_1312) <= _1312:
            require ext_code.size(stor5)
            staticcall stor5.0xc10ebd2d with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len 448], _1262, msg.sender, 544, mem[mem[64] + 548 len ceil32(_1312) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1411 = mem[_1289]
            mem[mem[64]] = 0x13a6f60300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[_1260]
            mem[mem[64] + 36] = mem[_1260 + 32]
            mem[mem[64] + 68] = mem[_1260 + 64]
            mem[mem[64] + 100] = mem[_1260 + 96]
            mem[mem[64] + 132] = mem[_1260 + 128]
            mem[mem[64] + 164] = mem[_1260 + 160]
            mem[mem[64] + 196] = mem[_1260 + 192]
            mem[mem[64] + 228] = mem[_1260 + 224]
            mem[mem[64] + 260] = mem[_1260 + 268 len 20]
            mem[mem[64] + 292] = mem[_1260 + 300 len 20]
            mem[mem[64] + 324] = bool(mem[_1260 + 320])
            mem[mem[64] + 356] = _1411
            require ext_code.size(stor2)
            call stor2.0x13a6f603 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 352], _1411
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1439 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1441 = mem[_1439]
            _1444 = mem[_1260 + 256]
            _1445 = mem[_1289]
            mem[mem[64] + 4] = mem[_1270 + 12 len 20]
            mem[mem[64] + 36] = address(_1444)
            mem[mem[64] + 68] = stor3
            mem[mem[64] + 100] = _1445
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_1444), stor3, _1445
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1453 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1453]:
                revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
            _1458 = mem[_1260 + 256]
            _1459 = mem[_1289 + 96]
            mem[mem[64] + 4] = mem[_1270 + 12 len 20]
            mem[mem[64] + 36] = address(_1458)
            mem[mem[64] + 68] = stor4
            mem[mem[64] + 100] = _1459
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_1458), stor4, _1459
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1471 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1471]:
                revert with 0, 'CANNOT_TRANSFER_MAKER_ORACLE_FEE'
            if mem[_1260 + 160] <= 0:
                _1489 = mem[_1289 + 32]
                mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor3
                mem[mem[64] + 100] = _1489
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor3, _1489
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1503]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
                _1512 = mem[_1289 + 128]
                mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor4
                mem[mem[64] + 100] = _1512
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor4, _1512
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1532 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1532]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ORACLE_FEE'
                if mem[_1260 + 192] <= 0:
                    if not mem[_1260 + 320]:
                        _1563 = mem[_1260]
                        _1564 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1563
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1564
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1563, msg.sender, _1564
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1585 = mem[_1260]
                        _1586 = mem[_1260 + 256]
                        _1587 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1585
                        mem[mem[64] + 36] = address(_1586)
                        mem[mem[64] + 68] = _1587
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1585, address(_1586), _1587
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1633 = mem[_1260]
                        _1634 = mem[_1260 + 256]
                        _1635 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1633
                        mem[mem[64] + 36] = address(_1634)
                        mem[mem[64] + 68] = _1635
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1633, address(_1634), _1635
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1693 = mem[_1260]
                        _1694 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1693
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1694
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1693, msg.sender, _1694
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1755 = mem[_1260]
                        _1756 = mem[_1260 + 256]
                        _1785 = mem[_1260 + 32]
                        _1786 = mem[_1260 + 64]
                        _1787 = mem[_1260 + 96]
                        _1788 = mem[_1260 + 128]
                        _1789 = mem[_1260 + 160]
                        _1790 = mem[_1260 + 192]
                        _1791 = mem[_1260 + 224]
                        _1792 = mem[_1260 + 256]
                        _1793 = mem[_1260 + 288]
                        _1794 = mem[_1260 + 320]
                        _1795 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _1785
                        mem[mem[64] + 96] = _1786
                        mem[mem[64] + 128] = _1787
                        mem[mem[64] + 160] = _1788
                        mem[mem[64] + 192] = _1789
                        mem[mem[64] + 224] = _1790
                        mem[mem[64] + 256] = _1791
                        mem[mem[64] + 288] = address(_1792)
                        mem[mem[64] + 308] = address(_1793)
                        mem[mem[64] + 328] = bool(_1794) << 248
                        _1796 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _1798 = sha3(mem[_1796 + 32 len mem[_1796]])
                        mem[_1795 + 329] = _1441
                        mem[_1795 + 361] = _1798
                        mem[_1795 + 393] = mem[_1260]
                        mem[_1795 + 425] = mem[_1260 + 32]
                        mem[_1795 + 457] = mem[_1260 + 64]
                        mem[_1795 + 489] = mem[_1260 + 96]
                        mem[_1795 + 521] = mem[_1260 + 128]
                        mem[_1795 + 553] = mem[_1260 + 160]
                        mem[_1795 + 585] = mem[_1260 + 192]
                        mem[_1795 + 617] = mem[_1260 + 224]
                        mem[_1795 + 649] = mem[_1260 + 268 len 20]
                        mem[_1795 + 681] = mem[_1260 + 300 len 20]
                        mem[_1795 + 713] = bool(mem[_1260 + 320])
                        mem[_1795 + 745] = mem[_1289]
                        mem[_1795 + 777] = mem[_1289 + 32]
                        mem[_1795 + 809] = mem[_1289 + 64]
                        mem[_1795 + 841] = mem[_1289 + 96]
                        mem[_1795 + 873] = mem[_1289 + 128]
                        mem[_1795 + 905] = mem[_1289 + 160]
                        mem[_1795 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1441, _1798, mem[_1795 + 393 len 576], address(_1756), _1755, msg.sender
                    else:
                        _1566 = mem[_1260]
                        _1567 = mem[_1260 + 256]
                        _1568 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1566
                        mem[mem[64] + 36] = address(_1567)
                        mem[mem[64] + 68] = _1568
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1566, address(_1567), _1568
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1589 = mem[_1260]
                        _1590 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1589
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1590
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1589, msg.sender, _1590
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1637 = mem[_1260]
                        _1638 = mem[_1260 + 256]
                        _1639 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1637
                        mem[mem[64] + 36] = address(_1638)
                        mem[mem[64] + 68] = _1639
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1637, address(_1638), _1639
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1696 = mem[_1260]
                        _1697 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1696
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1697
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1696, msg.sender, _1697
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1757 = mem[_1260]
                        _1758 = mem[_1260 + 256]
                        _1800 = mem[_1260 + 32]
                        _1801 = mem[_1260 + 64]
                        _1802 = mem[_1260 + 96]
                        _1803 = mem[_1260 + 128]
                        _1804 = mem[_1260 + 160]
                        _1805 = mem[_1260 + 192]
                        _1806 = mem[_1260 + 224]
                        _1807 = mem[_1260 + 256]
                        _1808 = mem[_1260 + 288]
                        _1809 = mem[_1260 + 320]
                        _1810 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _1800
                        mem[mem[64] + 96] = _1801
                        mem[mem[64] + 128] = _1802
                        mem[mem[64] + 160] = _1803
                        mem[mem[64] + 192] = _1804
                        mem[mem[64] + 224] = _1805
                        mem[mem[64] + 256] = _1806
                        mem[mem[64] + 288] = address(_1807)
                        mem[mem[64] + 308] = address(_1808)
                        mem[mem[64] + 328] = bool(_1809) << 248
                        _1811 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _1813 = sha3(mem[_1811 + 32 len mem[_1811]])
                        mem[_1810 + 329] = _1441
                        mem[_1810 + 361] = _1813
                        mem[_1810 + 393] = mem[_1260]
                        mem[_1810 + 425] = mem[_1260 + 32]
                        mem[_1810 + 457] = mem[_1260 + 64]
                        mem[_1810 + 489] = mem[_1260 + 96]
                        mem[_1810 + 521] = mem[_1260 + 128]
                        mem[_1810 + 553] = mem[_1260 + 160]
                        mem[_1810 + 585] = mem[_1260 + 192]
                        mem[_1810 + 617] = mem[_1260 + 224]
                        mem[_1810 + 649] = mem[_1260 + 268 len 20]
                        mem[_1810 + 681] = mem[_1260 + 300 len 20]
                        mem[_1810 + 713] = bool(mem[_1260 + 320])
                        mem[_1810 + 745] = mem[_1289]
                        mem[_1810 + 777] = mem[_1289 + 32]
                        mem[_1810 + 809] = mem[_1289 + 64]
                        mem[_1810 + 841] = mem[_1289 + 96]
                        mem[_1810 + 873] = mem[_1289 + 128]
                        mem[_1810 + 905] = mem[_1289 + 160]
                        mem[_1810 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1441, _1813, mem[_1810 + 393 len 576], address(_1758), _1757, msg.sender
                else:
                    _1544 = mem[_1260 + 288]
                    _1545 = mem[_1289 + 192]
                    mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_1544)
                    mem[mem[64] + 100] = _1545
                    require ext_code.size(stor1)
                    call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], msg.sender, address(_1544), _1545
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1603 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_1603]:
                        revert with 0, 'CANNOT_TRANSFER_RELAYER_TAKER_FEE'
                    if not mem[_1260 + 320]:
                        _1641 = mem[_1260]
                        _1642 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1641
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1642
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1641, msg.sender, _1642
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1699 = mem[_1260]
                        _1700 = mem[_1260 + 256]
                        _1701 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1699
                        mem[mem[64] + 36] = address(_1700)
                        mem[mem[64] + 68] = _1701
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1699, address(_1700), _1701
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1759 = mem[_1260]
                        _1760 = mem[_1260 + 256]
                        _1761 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1759
                        mem[mem[64] + 36] = address(_1760)
                        mem[mem[64] + 68] = _1761
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1759, address(_1760), _1761
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1895 = mem[_1260]
                        _1896 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1895
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1896
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1895, msg.sender, _1896
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1963 = mem[_1260]
                        _1964 = mem[_1260 + 256]
                        _1982 = mem[_1260 + 32]
                        _1983 = mem[_1260 + 64]
                        _1984 = mem[_1260 + 96]
                        _1985 = mem[_1260 + 128]
                        _1986 = mem[_1260 + 160]
                        _1987 = mem[_1260 + 192]
                        _1988 = mem[_1260 + 224]
                        _1989 = mem[_1260 + 256]
                        _1990 = mem[_1260 + 288]
                        _1991 = mem[_1260 + 320]
                        _1992 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _1982
                        mem[mem[64] + 96] = _1983
                        mem[mem[64] + 128] = _1984
                        mem[mem[64] + 160] = _1985
                        mem[mem[64] + 192] = _1986
                        mem[mem[64] + 224] = _1987
                        mem[mem[64] + 256] = _1988
                        mem[mem[64] + 288] = address(_1989)
                        mem[mem[64] + 308] = address(_1990)
                        mem[mem[64] + 328] = bool(_1991) << 248
                        _1993 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _1995 = sha3(mem[_1993 + 32 len mem[_1993]])
                        mem[_1992 + 329] = _1441
                        mem[_1992 + 361] = _1995
                        mem[_1992 + 393] = mem[_1260]
                        mem[_1992 + 425] = mem[_1260 + 32]
                        mem[_1992 + 457] = mem[_1260 + 64]
                        mem[_1992 + 489] = mem[_1260 + 96]
                        mem[_1992 + 521] = mem[_1260 + 128]
                        mem[_1992 + 553] = mem[_1260 + 160]
                        mem[_1992 + 585] = mem[_1260 + 192]
                        mem[_1992 + 617] = mem[_1260 + 224]
                        mem[_1992 + 649] = mem[_1260 + 268 len 20]
                        mem[_1992 + 681] = mem[_1260 + 300 len 20]
                        mem[_1992 + 713] = bool(mem[_1260 + 320])
                        mem[_1992 + 745] = mem[_1289]
                        mem[_1992 + 777] = mem[_1289 + 32]
                        mem[_1992 + 809] = mem[_1289 + 64]
                        mem[_1992 + 841] = mem[_1289 + 96]
                        mem[_1992 + 873] = mem[_1289 + 128]
                        mem[_1992 + 905] = mem[_1289 + 160]
                        mem[_1992 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1441, _1995, mem[_1992 + 393 len 576], address(_1964), _1963, msg.sender
                    else:
                        _1644 = mem[_1260]
                        _1645 = mem[_1260 + 256]
                        _1646 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1644
                        mem[mem[64] + 36] = address(_1645)
                        mem[mem[64] + 68] = _1646
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1644, address(_1645), _1646
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1703 = mem[_1260]
                        _1704 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1703
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1704
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1703, msg.sender, _1704
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1763 = mem[_1260]
                        _1764 = mem[_1260 + 256]
                        _1765 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1763
                        mem[mem[64] + 36] = address(_1764)
                        mem[mem[64] + 68] = _1765
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1763, address(_1764), _1765
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1898 = mem[_1260]
                        _1899 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1898
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1899
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1898, msg.sender, _1899
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1965 = mem[_1260]
                        _1966 = mem[_1260 + 256]
                        _1997 = mem[_1260 + 32]
                        _1998 = mem[_1260 + 64]
                        _1999 = mem[_1260 + 96]
                        _2000 = mem[_1260 + 128]
                        _2001 = mem[_1260 + 160]
                        _2002 = mem[_1260 + 192]
                        _2003 = mem[_1260 + 224]
                        _2004 = mem[_1260 + 256]
                        _2005 = mem[_1260 + 288]
                        _2006 = mem[_1260 + 320]
                        _2007 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _1997
                        mem[mem[64] + 96] = _1998
                        mem[mem[64] + 128] = _1999
                        mem[mem[64] + 160] = _2000
                        mem[mem[64] + 192] = _2001
                        mem[mem[64] + 224] = _2002
                        mem[mem[64] + 256] = _2003
                        mem[mem[64] + 288] = address(_2004)
                        mem[mem[64] + 308] = address(_2005)
                        mem[mem[64] + 328] = bool(_2006) << 248
                        _2008 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2010 = sha3(mem[_2008 + 32 len mem[_2008]])
                        mem[_2007 + 329] = _1441
                        mem[_2007 + 361] = _2010
                        mem[_2007 + 393] = mem[_1260]
                        mem[_2007 + 425] = mem[_1260 + 32]
                        mem[_2007 + 457] = mem[_1260 + 64]
                        mem[_2007 + 489] = mem[_1260 + 96]
                        mem[_2007 + 521] = mem[_1260 + 128]
                        mem[_2007 + 553] = mem[_1260 + 160]
                        mem[_2007 + 585] = mem[_1260 + 192]
                        mem[_2007 + 617] = mem[_1260 + 224]
                        mem[_2007 + 649] = mem[_1260 + 268 len 20]
                        mem[_2007 + 681] = mem[_1260 + 300 len 20]
                        mem[_2007 + 713] = bool(mem[_1260 + 320])
                        mem[_2007 + 745] = mem[_1289]
                        mem[_2007 + 777] = mem[_1289 + 32]
                        mem[_2007 + 809] = mem[_1289 + 64]
                        mem[_2007 + 841] = mem[_1289 + 96]
                        mem[_2007 + 873] = mem[_1289 + 128]
                        mem[_2007 + 905] = mem[_1289 + 160]
                        mem[_2007 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1441, _2010, mem[_2007 + 393 len 576], address(_1966), _1965, msg.sender
            else:
                _1478 = mem[_1260 + 256]
                _1479 = mem[_1260 + 288]
                _1480 = mem[_1289 + 160]
                mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                mem[mem[64] + 36] = address(_1478)
                mem[mem[64] + 68] = address(_1479)
                mem[mem[64] + 100] = _1480
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_1478), address(_1479), _1480
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1500 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1500]:
                    revert with 0, 'CANNOT_TRANSFER_RELAYER_MAKER_FEE'
                _1516 = mem[_1289 + 32]
                mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor3
                mem[mem[64] + 100] = _1516
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor3, _1516
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1534 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1534]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
                _1547 = mem[_1289 + 128]
                mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor4
                mem[mem[64] + 100] = _1547
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor4, _1547
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1604 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1604]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ORACLE_FEE'
                if mem[_1260 + 192] <= 0:
                    if not mem[_1260 + 320]:
                        _1648 = mem[_1260]
                        _1649 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1648
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1649
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1648, msg.sender, _1649
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1706 = mem[_1260]
                        _1707 = mem[_1260 + 256]
                        _1708 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1706
                        mem[mem[64] + 36] = address(_1707)
                        mem[mem[64] + 68] = _1708
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1706, address(_1707), _1708
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1767 = mem[_1260]
                        _1768 = mem[_1260 + 256]
                        _1769 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1767
                        mem[mem[64] + 36] = address(_1768)
                        mem[mem[64] + 68] = _1769
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1767, address(_1768), _1769
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1901 = mem[_1260]
                        _1902 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1901
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1902
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1901, msg.sender, _1902
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1967 = mem[_1260]
                        _1968 = mem[_1260 + 256]
                        _2012 = mem[_1260 + 32]
                        _2013 = mem[_1260 + 64]
                        _2014 = mem[_1260 + 96]
                        _2015 = mem[_1260 + 128]
                        _2016 = mem[_1260 + 160]
                        _2017 = mem[_1260 + 192]
                        _2018 = mem[_1260 + 224]
                        _2019 = mem[_1260 + 256]
                        _2020 = mem[_1260 + 288]
                        _2021 = mem[_1260 + 320]
                        _2022 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _2012
                        mem[mem[64] + 96] = _2013
                        mem[mem[64] + 128] = _2014
                        mem[mem[64] + 160] = _2015
                        mem[mem[64] + 192] = _2016
                        mem[mem[64] + 224] = _2017
                        mem[mem[64] + 256] = _2018
                        mem[mem[64] + 288] = address(_2019)
                        mem[mem[64] + 308] = address(_2020)
                        mem[mem[64] + 328] = bool(_2021) << 248
                        _2023 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2025 = sha3(mem[_2023 + 32 len mem[_2023]])
                        mem[_2022 + 329] = _1441
                        mem[_2022 + 361] = _2025
                        mem[_2022 + 393] = mem[_1260]
                        mem[_2022 + 425] = mem[_1260 + 32]
                        mem[_2022 + 457] = mem[_1260 + 64]
                        mem[_2022 + 489] = mem[_1260 + 96]
                        mem[_2022 + 521] = mem[_1260 + 128]
                        mem[_2022 + 553] = mem[_1260 + 160]
                        mem[_2022 + 585] = mem[_1260 + 192]
                        mem[_2022 + 617] = mem[_1260 + 224]
                        mem[_2022 + 649] = mem[_1260 + 268 len 20]
                        mem[_2022 + 681] = mem[_1260 + 300 len 20]
                        mem[_2022 + 713] = bool(mem[_1260 + 320])
                        mem[_2022 + 745] = mem[_1289]
                        mem[_2022 + 777] = mem[_1289 + 32]
                        mem[_2022 + 809] = mem[_1289 + 64]
                        mem[_2022 + 841] = mem[_1289 + 96]
                        mem[_2022 + 873] = mem[_1289 + 128]
                        mem[_2022 + 905] = mem[_1289 + 160]
                        mem[_2022 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1441, _2025, mem[_2022 + 393 len 576], address(_1968), _1967, msg.sender
                    else:
                        _1651 = mem[_1260]
                        _1652 = mem[_1260 + 256]
                        _1653 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1651
                        mem[mem[64] + 36] = address(_1652)
                        mem[mem[64] + 68] = _1653
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1651, address(_1652), _1653
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1710 = mem[_1260]
                        _1711 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1710
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1711
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1710, msg.sender, _1711
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1771 = mem[_1260]
                        _1772 = mem[_1260 + 256]
                        _1773 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1771
                        mem[mem[64] + 36] = address(_1772)
                        mem[mem[64] + 68] = _1773
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1771, address(_1772), _1773
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1904 = mem[_1260]
                        _1905 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1904
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1905
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1904, msg.sender, _1905
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1969 = mem[_1260]
                        _1970 = mem[_1260 + 256]
                        _2027 = mem[_1260 + 32]
                        _2028 = mem[_1260 + 64]
                        _2029 = mem[_1260 + 96]
                        _2030 = mem[_1260 + 128]
                        _2031 = mem[_1260 + 160]
                        _2032 = mem[_1260 + 192]
                        _2033 = mem[_1260 + 224]
                        _2034 = mem[_1260 + 256]
                        _2035 = mem[_1260 + 288]
                        _2036 = mem[_1260 + 320]
                        _2037 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _2027
                        mem[mem[64] + 96] = _2028
                        mem[mem[64] + 128] = _2029
                        mem[mem[64] + 160] = _2030
                        mem[mem[64] + 192] = _2031
                        mem[mem[64] + 224] = _2032
                        mem[mem[64] + 256] = _2033
                        mem[mem[64] + 288] = address(_2034)
                        mem[mem[64] + 308] = address(_2035)
                        mem[mem[64] + 328] = bool(_2036) << 248
                        _2038 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2040 = sha3(mem[_2038 + 32 len mem[_2038]])
                        mem[_2037 + 329] = _1441
                        mem[_2037 + 361] = _2040
                        mem[_2037 + 393] = mem[_1260]
                        mem[_2037 + 425] = mem[_1260 + 32]
                        mem[_2037 + 457] = mem[_1260 + 64]
                        mem[_2037 + 489] = mem[_1260 + 96]
                        mem[_2037 + 521] = mem[_1260 + 128]
                        mem[_2037 + 553] = mem[_1260 + 160]
                        mem[_2037 + 585] = mem[_1260 + 192]
                        mem[_2037 + 617] = mem[_1260 + 224]
                        mem[_2037 + 649] = mem[_1260 + 268 len 20]
                        mem[_2037 + 681] = mem[_1260 + 300 len 20]
                        mem[_2037 + 713] = bool(mem[_1260 + 320])
                        mem[_2037 + 745] = mem[_1289]
                        mem[_2037 + 777] = mem[_1289 + 32]
                        mem[_2037 + 809] = mem[_1289 + 64]
                        mem[_2037 + 841] = mem[_1289 + 96]
                        mem[_2037 + 873] = mem[_1289 + 128]
                        mem[_2037 + 905] = mem[_1289 + 160]
                        mem[_2037 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1441, _2040, mem[_2037 + 393 len 576], address(_1970), _1969, msg.sender
                else:
                    _1615 = mem[_1260 + 288]
                    _1616 = mem[_1289 + 192]
                    mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_1615)
                    mem[mem[64] + 100] = _1616
                    require ext_code.size(stor1)
                    call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], msg.sender, address(_1615), _1616
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1735 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_1735]:
                        revert with 0, 'CANNOT_TRANSFER_RELAYER_TAKER_FEE'
                    if not mem[_1260 + 320]:
                        _1775 = mem[_1260]
                        _1776 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1775
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1776
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1775, msg.sender, _1776
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1907 = mem[_1260]
                        _1908 = mem[_1260 + 256]
                        _1909 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1907
                        mem[mem[64] + 36] = address(_1908)
                        mem[mem[64] + 68] = _1909
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1907, address(_1908), _1909
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1971 = mem[_1260]
                        _1972 = mem[_1260 + 256]
                        _1973 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1971
                        mem[mem[64] + 36] = address(_1972)
                        mem[mem[64] + 68] = _1973
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1971, address(_1972), _1973
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2157 = mem[_1260]
                        _2158 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2157
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _2158
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2157, msg.sender, _2158
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2227 = mem[_1260]
                        _2228 = mem[_1260 + 256]
                        _2236 = mem[_1260 + 32]
                        _2237 = mem[_1260 + 64]
                        _2238 = mem[_1260 + 96]
                        _2239 = mem[_1260 + 128]
                        _2240 = mem[_1260 + 160]
                        _2241 = mem[_1260 + 192]
                        _2242 = mem[_1260 + 224]
                        _2243 = mem[_1260 + 256]
                        _2244 = mem[_1260 + 288]
                        _2245 = mem[_1260 + 320]
                        _2246 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _2236
                        mem[mem[64] + 96] = _2237
                        mem[mem[64] + 128] = _2238
                        mem[mem[64] + 160] = _2239
                        mem[mem[64] + 192] = _2240
                        mem[mem[64] + 224] = _2241
                        mem[mem[64] + 256] = _2242
                        mem[mem[64] + 288] = address(_2243)
                        mem[mem[64] + 308] = address(_2244)
                        mem[mem[64] + 328] = bool(_2245) << 248
                        _2247 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2249 = sha3(mem[_2247 + 32 len mem[_2247]])
                        mem[_2246 + 329] = _1441
                        mem[_2246 + 361] = _2249
                        mem[_2246 + 393] = mem[_1260]
                        mem[_2246 + 425] = mem[_1260 + 32]
                        mem[_2246 + 457] = mem[_1260 + 64]
                        mem[_2246 + 489] = mem[_1260 + 96]
                        mem[_2246 + 521] = mem[_1260 + 128]
                        mem[_2246 + 553] = mem[_1260 + 160]
                        mem[_2246 + 585] = mem[_1260 + 192]
                        mem[_2246 + 617] = mem[_1260 + 224]
                        mem[_2246 + 649] = mem[_1260 + 268 len 20]
                        mem[_2246 + 681] = mem[_1260 + 300 len 20]
                        mem[_2246 + 713] = bool(mem[_1260 + 320])
                        mem[_2246 + 745] = mem[_1289]
                        mem[_2246 + 777] = mem[_1289 + 32]
                        mem[_2246 + 809] = mem[_1289 + 64]
                        mem[_2246 + 841] = mem[_1289 + 96]
                        mem[_2246 + 873] = mem[_1289 + 128]
                        mem[_2246 + 905] = mem[_1289 + 160]
                        mem[_2246 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1441, _2249, mem[_2246 + 393 len 576], address(_2228), _2227, msg.sender
                    else:
                        _1778 = mem[_1260]
                        _1779 = mem[_1260 + 256]
                        _1780 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1778
                        mem[mem[64] + 36] = address(_1779)
                        mem[mem[64] + 68] = _1780
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1778, address(_1779), _1780
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1911 = mem[_1260]
                        _1912 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1911
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1912
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1911, msg.sender, _1912
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1975 = mem[_1260]
                        _1976 = mem[_1260 + 256]
                        _1977 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1975
                        mem[mem[64] + 36] = address(_1976)
                        mem[mem[64] + 68] = _1977
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1975, address(_1976), _1977
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2160 = mem[_1260]
                        _2161 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2160
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _2161
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2160, msg.sender, _2161
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2229 = mem[_1260]
                        _2230 = mem[_1260 + 256]
                        _2251 = mem[_1260 + 32]
                        _2252 = mem[_1260 + 64]
                        _2253 = mem[_1260 + 96]
                        _2254 = mem[_1260 + 128]
                        _2255 = mem[_1260 + 160]
                        _2256 = mem[_1260 + 192]
                        _2257 = mem[_1260 + 224]
                        _2258 = mem[_1260 + 256]
                        _2259 = mem[_1260 + 288]
                        _2260 = mem[_1260 + 320]
                        _2261 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _2251
                        mem[mem[64] + 96] = _2252
                        mem[mem[64] + 128] = _2253
                        mem[mem[64] + 160] = _2254
                        mem[mem[64] + 192] = _2255
                        mem[mem[64] + 224] = _2256
                        mem[mem[64] + 256] = _2257
                        mem[mem[64] + 288] = address(_2258)
                        mem[mem[64] + 308] = address(_2259)
                        mem[mem[64] + 328] = bool(_2260) << 248
                        _2262 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2264 = sha3(mem[_2262 + 32 len mem[_2262]])
                        mem[_2261 + 329] = _1441
                        mem[_2261 + 361] = _2264
                        mem[_2261 + 393] = mem[_1260]
                        mem[_2261 + 425] = mem[_1260 + 32]
                        mem[_2261 + 457] = mem[_1260 + 64]
                        mem[_2261 + 489] = mem[_1260 + 96]
                        mem[_2261 + 521] = mem[_1260 + 128]
                        mem[_2261 + 553] = mem[_1260 + 160]
                        mem[_2261 + 585] = mem[_1260 + 192]
                        mem[_2261 + 617] = mem[_1260 + 224]
                        mem[_2261 + 649] = mem[_1260 + 268 len 20]
                        mem[_2261 + 681] = mem[_1260 + 300 len 20]
                        mem[_2261 + 713] = bool(mem[_1260 + 320])
                        mem[_2261 + 745] = mem[_1289]
                        mem[_2261 + 777] = mem[_1289 + 32]
                        mem[_2261 + 809] = mem[_1289 + 64]
                        mem[_2261 + 841] = mem[_1289 + 96]
                        mem[_2261 + 873] = mem[_1289 + 128]
                        mem[_2261 + 905] = mem[_1289 + 160]
                        mem[_2261 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1441, _2264, mem[_2261 + 393 len 576], address(_2230), _2229, msg.sender
        else:
            mem[mem[64] + _1312 + 580] = 0
            require ext_code.size(stor5)
            staticcall stor5.0xc10ebd2d with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len 448], _1262, msg.sender, 544, mem[mem[64] + 548 len ceil32(_1312) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1413 = mem[_1289]
            mem[mem[64]] = 0x13a6f60300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[_1260]
            mem[mem[64] + 36] = mem[_1260 + 32]
            mem[mem[64] + 68] = mem[_1260 + 64]
            mem[mem[64] + 100] = mem[_1260 + 96]
            mem[mem[64] + 132] = mem[_1260 + 128]
            mem[mem[64] + 164] = mem[_1260 + 160]
            mem[mem[64] + 196] = mem[_1260 + 192]
            mem[mem[64] + 228] = mem[_1260 + 224]
            mem[mem[64] + 260] = mem[_1260 + 268 len 20]
            mem[mem[64] + 292] = mem[_1260 + 300 len 20]
            mem[mem[64] + 324] = bool(mem[_1260 + 320])
            mem[mem[64] + 356] = _1413
            require ext_code.size(stor2)
            call stor2.0x13a6f603 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 352], _1413
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1440 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1442 = mem[_1440]
            _1448 = mem[_1260 + 256]
            _1449 = mem[_1289]
            mem[mem[64] + 4] = mem[_1270 + 12 len 20]
            mem[mem[64] + 36] = address(_1448)
            mem[mem[64] + 68] = stor3
            mem[mem[64] + 100] = _1449
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_1448), stor3, _1449
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1454]:
                revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
            _1463 = mem[_1260 + 256]
            _1464 = mem[_1289 + 96]
            mem[mem[64] + 4] = mem[_1270 + 12 len 20]
            mem[mem[64] + 36] = address(_1463)
            mem[mem[64] + 68] = stor4
            mem[mem[64] + 100] = _1464
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_1463), stor4, _1464
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1472 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1472]:
                revert with 0, 'CANNOT_TRANSFER_MAKER_ORACLE_FEE'
            if mem[_1260 + 160] <= 0:
                _1494 = mem[_1289 + 32]
                mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor3
                mem[mem[64] + 100] = _1494
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor3, _1494
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1505 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1505]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
                _1518 = mem[_1289 + 128]
                mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor4
                mem[mem[64] + 100] = _1518
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor4, _1518
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1535 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1535]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ORACLE_FEE'
                if mem[_1260 + 192] <= 0:
                    if not mem[_1260 + 320]:
                        _1573 = mem[_1260]
                        _1574 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1573
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1574
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1573, msg.sender, _1574
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1592 = mem[_1260]
                        _1593 = mem[_1260 + 256]
                        _1594 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1592
                        mem[mem[64] + 36] = address(_1593)
                        mem[mem[64] + 68] = _1594
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1592, address(_1593), _1594
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1659 = mem[_1260]
                        _1660 = mem[_1260 + 256]
                        _1661 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1659
                        mem[mem[64] + 36] = address(_1660)
                        mem[mem[64] + 68] = _1661
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1659, address(_1660), _1661
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1713 = mem[_1260]
                        _1714 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1713
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1714
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1713, msg.sender, _1714
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1814 = mem[_1260]
                        _1815 = mem[_1260 + 256]
                        _1844 = mem[_1260 + 32]
                        _1845 = mem[_1260 + 64]
                        _1846 = mem[_1260 + 96]
                        _1847 = mem[_1260 + 128]
                        _1848 = mem[_1260 + 160]
                        _1849 = mem[_1260 + 192]
                        _1850 = mem[_1260 + 224]
                        _1851 = mem[_1260 + 256]
                        _1852 = mem[_1260 + 288]
                        _1853 = mem[_1260 + 320]
                        _1854 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _1844
                        mem[mem[64] + 96] = _1845
                        mem[mem[64] + 128] = _1846
                        mem[mem[64] + 160] = _1847
                        mem[mem[64] + 192] = _1848
                        mem[mem[64] + 224] = _1849
                        mem[mem[64] + 256] = _1850
                        mem[mem[64] + 288] = address(_1851)
                        mem[mem[64] + 308] = address(_1852)
                        mem[mem[64] + 328] = bool(_1853) << 248
                        _1855 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _1857 = sha3(mem[_1855 + 32 len mem[_1855]])
                        mem[_1854 + 329] = _1442
                        mem[_1854 + 361] = _1857
                        mem[_1854 + 393] = mem[_1260]
                        mem[_1854 + 425] = mem[_1260 + 32]
                        mem[_1854 + 457] = mem[_1260 + 64]
                        mem[_1854 + 489] = mem[_1260 + 96]
                        mem[_1854 + 521] = mem[_1260 + 128]
                        mem[_1854 + 553] = mem[_1260 + 160]
                        mem[_1854 + 585] = mem[_1260 + 192]
                        mem[_1854 + 617] = mem[_1260 + 224]
                        mem[_1854 + 649] = mem[_1260 + 268 len 20]
                        mem[_1854 + 681] = mem[_1260 + 300 len 20]
                        mem[_1854 + 713] = bool(mem[_1260 + 320])
                        mem[_1854 + 745] = mem[_1289]
                        mem[_1854 + 777] = mem[_1289 + 32]
                        mem[_1854 + 809] = mem[_1289 + 64]
                        mem[_1854 + 841] = mem[_1289 + 96]
                        mem[_1854 + 873] = mem[_1289 + 128]
                        mem[_1854 + 905] = mem[_1289 + 160]
                        mem[_1854 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1442, _1857, mem[_1854 + 393 len 576], address(_1815), _1814, msg.sender
                    else:
                        _1576 = mem[_1260]
                        _1577 = mem[_1260 + 256]
                        _1578 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1576
                        mem[mem[64] + 36] = address(_1577)
                        mem[mem[64] + 68] = _1578
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1576, address(_1577), _1578
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1596 = mem[_1260]
                        _1597 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1596
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1597
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1596, msg.sender, _1597
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1663 = mem[_1260]
                        _1664 = mem[_1260 + 256]
                        _1665 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1663
                        mem[mem[64] + 36] = address(_1664)
                        mem[mem[64] + 68] = _1665
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1663, address(_1664), _1665
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1716 = mem[_1260]
                        _1717 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1716
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1717
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1716, msg.sender, _1717
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1816 = mem[_1260]
                        _1817 = mem[_1260 + 256]
                        _1859 = mem[_1260 + 32]
                        _1860 = mem[_1260 + 64]
                        _1861 = mem[_1260 + 96]
                        _1862 = mem[_1260 + 128]
                        _1863 = mem[_1260 + 160]
                        _1864 = mem[_1260 + 192]
                        _1865 = mem[_1260 + 224]
                        _1866 = mem[_1260 + 256]
                        _1867 = mem[_1260 + 288]
                        _1868 = mem[_1260 + 320]
                        _1869 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _1859
                        mem[mem[64] + 96] = _1860
                        mem[mem[64] + 128] = _1861
                        mem[mem[64] + 160] = _1862
                        mem[mem[64] + 192] = _1863
                        mem[mem[64] + 224] = _1864
                        mem[mem[64] + 256] = _1865
                        mem[mem[64] + 288] = address(_1866)
                        mem[mem[64] + 308] = address(_1867)
                        mem[mem[64] + 328] = bool(_1868) << 248
                        _1870 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _1872 = sha3(mem[_1870 + 32 len mem[_1870]])
                        mem[_1869 + 329] = _1442
                        mem[_1869 + 361] = _1872
                        mem[_1869 + 393] = mem[_1260]
                        mem[_1869 + 425] = mem[_1260 + 32]
                        mem[_1869 + 457] = mem[_1260 + 64]
                        mem[_1869 + 489] = mem[_1260 + 96]
                        mem[_1869 + 521] = mem[_1260 + 128]
                        mem[_1869 + 553] = mem[_1260 + 160]
                        mem[_1869 + 585] = mem[_1260 + 192]
                        mem[_1869 + 617] = mem[_1260 + 224]
                        mem[_1869 + 649] = mem[_1260 + 268 len 20]
                        mem[_1869 + 681] = mem[_1260 + 300 len 20]
                        mem[_1869 + 713] = bool(mem[_1260 + 320])
                        mem[_1869 + 745] = mem[_1289]
                        mem[_1869 + 777] = mem[_1289 + 32]
                        mem[_1869 + 809] = mem[_1289 + 64]
                        mem[_1869 + 841] = mem[_1289 + 96]
                        mem[_1869 + 873] = mem[_1289 + 128]
                        mem[_1869 + 905] = mem[_1289 + 160]
                        mem[_1869 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1442, _1872, mem[_1869 + 393 len 576], address(_1817), _1816, msg.sender
                else:
                    _1554 = mem[_1260 + 288]
                    _1555 = mem[_1289 + 192]
                    mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_1554)
                    mem[mem[64] + 100] = _1555
                    require ext_code.size(stor1)
                    call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], msg.sender, address(_1554), _1555
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1605 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_1605]:
                        revert with 0, 'CANNOT_TRANSFER_RELAYER_TAKER_FEE'
                    if not mem[_1260 + 320]:
                        _1667 = mem[_1260]
                        _1668 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1667
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1668
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1667, msg.sender, _1668
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1719 = mem[_1260]
                        _1720 = mem[_1260 + 256]
                        _1721 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1719
                        mem[mem[64] + 36] = address(_1720)
                        mem[mem[64] + 68] = _1721
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1719, address(_1720), _1721
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1818 = mem[_1260]
                        _1819 = mem[_1260 + 256]
                        _1820 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1818
                        mem[mem[64] + 36] = address(_1819)
                        mem[mem[64] + 68] = _1820
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1818, address(_1819), _1820
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1914 = mem[_1260]
                        _1915 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1914
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1915
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1914, msg.sender, _1915
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2041 = mem[_1260]
                        _2042 = mem[_1260 + 256]
                        _2062 = mem[_1260 + 32]
                        _2063 = mem[_1260 + 64]
                        _2064 = mem[_1260 + 96]
                        _2065 = mem[_1260 + 128]
                        _2066 = mem[_1260 + 160]
                        _2067 = mem[_1260 + 192]
                        _2068 = mem[_1260 + 224]
                        _2069 = mem[_1260 + 256]
                        _2070 = mem[_1260 + 288]
                        _2071 = mem[_1260 + 320]
                        _2072 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _2062
                        mem[mem[64] + 96] = _2063
                        mem[mem[64] + 128] = _2064
                        mem[mem[64] + 160] = _2065
                        mem[mem[64] + 192] = _2066
                        mem[mem[64] + 224] = _2067
                        mem[mem[64] + 256] = _2068
                        mem[mem[64] + 288] = address(_2069)
                        mem[mem[64] + 308] = address(_2070)
                        mem[mem[64] + 328] = bool(_2071) << 248
                        _2073 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2075 = sha3(mem[_2073 + 32 len mem[_2073]])
                        mem[_2072 + 329] = _1442
                        mem[_2072 + 361] = _2075
                        mem[_2072 + 393] = mem[_1260]
                        mem[_2072 + 425] = mem[_1260 + 32]
                        mem[_2072 + 457] = mem[_1260 + 64]
                        mem[_2072 + 489] = mem[_1260 + 96]
                        mem[_2072 + 521] = mem[_1260 + 128]
                        mem[_2072 + 553] = mem[_1260 + 160]
                        mem[_2072 + 585] = mem[_1260 + 192]
                        mem[_2072 + 617] = mem[_1260 + 224]
                        mem[_2072 + 649] = mem[_1260 + 268 len 20]
                        mem[_2072 + 681] = mem[_1260 + 300 len 20]
                        mem[_2072 + 713] = bool(mem[_1260 + 320])
                        mem[_2072 + 745] = mem[_1289]
                        mem[_2072 + 777] = mem[_1289 + 32]
                        mem[_2072 + 809] = mem[_1289 + 64]
                        mem[_2072 + 841] = mem[_1289 + 96]
                        mem[_2072 + 873] = mem[_1289 + 128]
                        mem[_2072 + 905] = mem[_1289 + 160]
                        mem[_2072 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1442, _2075, mem[_2072 + 393 len 576], address(_2042), _2041, msg.sender
                    else:
                        _1670 = mem[_1260]
                        _1671 = mem[_1260 + 256]
                        _1672 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1670
                        mem[mem[64] + 36] = address(_1671)
                        mem[mem[64] + 68] = _1672
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1670, address(_1671), _1672
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1723 = mem[_1260]
                        _1724 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1723
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1724
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1723, msg.sender, _1724
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1822 = mem[_1260]
                        _1823 = mem[_1260 + 256]
                        _1824 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1822
                        mem[mem[64] + 36] = address(_1823)
                        mem[mem[64] + 68] = _1824
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1822, address(_1823), _1824
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1917 = mem[_1260]
                        _1918 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1917
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1918
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1917, msg.sender, _1918
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2043 = mem[_1260]
                        _2044 = mem[_1260 + 256]
                        _2077 = mem[_1260 + 32]
                        _2078 = mem[_1260 + 64]
                        _2079 = mem[_1260 + 96]
                        _2080 = mem[_1260 + 128]
                        _2081 = mem[_1260 + 160]
                        _2082 = mem[_1260 + 192]
                        _2083 = mem[_1260 + 224]
                        _2084 = mem[_1260 + 256]
                        _2085 = mem[_1260 + 288]
                        _2086 = mem[_1260 + 320]
                        _2087 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _2077
                        mem[mem[64] + 96] = _2078
                        mem[mem[64] + 128] = _2079
                        mem[mem[64] + 160] = _2080
                        mem[mem[64] + 192] = _2081
                        mem[mem[64] + 224] = _2082
                        mem[mem[64] + 256] = _2083
                        mem[mem[64] + 288] = address(_2084)
                        mem[mem[64] + 308] = address(_2085)
                        mem[mem[64] + 328] = bool(_2086) << 248
                        _2088 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2090 = sha3(mem[_2088 + 32 len mem[_2088]])
                        mem[_2087 + 329] = _1442
                        mem[_2087 + 361] = _2090
                        mem[_2087 + 393] = mem[_1260]
                        mem[_2087 + 425] = mem[_1260 + 32]
                        mem[_2087 + 457] = mem[_1260 + 64]
                        mem[_2087 + 489] = mem[_1260 + 96]
                        mem[_2087 + 521] = mem[_1260 + 128]
                        mem[_2087 + 553] = mem[_1260 + 160]
                        mem[_2087 + 585] = mem[_1260 + 192]
                        mem[_2087 + 617] = mem[_1260 + 224]
                        mem[_2087 + 649] = mem[_1260 + 268 len 20]
                        mem[_2087 + 681] = mem[_1260 + 300 len 20]
                        mem[_2087 + 713] = bool(mem[_1260 + 320])
                        mem[_2087 + 745] = mem[_1289]
                        mem[_2087 + 777] = mem[_1289 + 32]
                        mem[_2087 + 809] = mem[_1289 + 64]
                        mem[_2087 + 841] = mem[_1289 + 96]
                        mem[_2087 + 873] = mem[_1289 + 128]
                        mem[_2087 + 905] = mem[_1289 + 160]
                        mem[_2087 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1442, _2090, mem[_2087 + 393 len 576], address(_2044), _2043, msg.sender
            else:
                _1485 = mem[_1260 + 256]
                _1486 = mem[_1260 + 288]
                _1487 = mem[_1289 + 160]
                mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                mem[mem[64] + 36] = address(_1485)
                mem[mem[64] + 68] = address(_1486)
                mem[mem[64] + 100] = _1487
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_1485), address(_1486), _1487
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1502 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1502]:
                    revert with 0, 'CANNOT_TRANSFER_RELAYER_MAKER_FEE'
                _1524 = mem[_1289 + 32]
                mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor3
                mem[mem[64] + 100] = _1524
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor3, _1524
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1536 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1536]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
                _1557 = mem[_1289 + 128]
                mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor4
                mem[mem[64] + 100] = _1557
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor4, _1557
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1606 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1606]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ORACLE_FEE'
                if mem[_1260 + 192] <= 0:
                    if not mem[_1260 + 320]:
                        _1674 = mem[_1260]
                        _1675 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1674
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1675
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1674, msg.sender, _1675
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1726 = mem[_1260]
                        _1727 = mem[_1260 + 256]
                        _1728 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1726
                        mem[mem[64] + 36] = address(_1727)
                        mem[mem[64] + 68] = _1728
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1726, address(_1727), _1728
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1826 = mem[_1260]
                        _1827 = mem[_1260 + 256]
                        _1828 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1826
                        mem[mem[64] + 36] = address(_1827)
                        mem[mem[64] + 68] = _1828
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1826, address(_1827), _1828
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1920 = mem[_1260]
                        _1921 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1920
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1921
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1920, msg.sender, _1921
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2045 = mem[_1260]
                        _2046 = mem[_1260 + 256]
                        _2092 = mem[_1260 + 32]
                        _2093 = mem[_1260 + 64]
                        _2094 = mem[_1260 + 96]
                        _2095 = mem[_1260 + 128]
                        _2096 = mem[_1260 + 160]
                        _2097 = mem[_1260 + 192]
                        _2098 = mem[_1260 + 224]
                        _2099 = mem[_1260 + 256]
                        _2100 = mem[_1260 + 288]
                        _2101 = mem[_1260 + 320]
                        _2102 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _2092
                        mem[mem[64] + 96] = _2093
                        mem[mem[64] + 128] = _2094
                        mem[mem[64] + 160] = _2095
                        mem[mem[64] + 192] = _2096
                        mem[mem[64] + 224] = _2097
                        mem[mem[64] + 256] = _2098
                        mem[mem[64] + 288] = address(_2099)
                        mem[mem[64] + 308] = address(_2100)
                        mem[mem[64] + 328] = bool(_2101) << 248
                        _2103 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2105 = sha3(mem[_2103 + 32 len mem[_2103]])
                        mem[_2102 + 329] = _1442
                        mem[_2102 + 361] = _2105
                        mem[_2102 + 393] = mem[_1260]
                        mem[_2102 + 425] = mem[_1260 + 32]
                        mem[_2102 + 457] = mem[_1260 + 64]
                        mem[_2102 + 489] = mem[_1260 + 96]
                        mem[_2102 + 521] = mem[_1260 + 128]
                        mem[_2102 + 553] = mem[_1260 + 160]
                        mem[_2102 + 585] = mem[_1260 + 192]
                        mem[_2102 + 617] = mem[_1260 + 224]
                        mem[_2102 + 649] = mem[_1260 + 268 len 20]
                        mem[_2102 + 681] = mem[_1260 + 300 len 20]
                        mem[_2102 + 713] = bool(mem[_1260 + 320])
                        mem[_2102 + 745] = mem[_1289]
                        mem[_2102 + 777] = mem[_1289 + 32]
                        mem[_2102 + 809] = mem[_1289 + 64]
                        mem[_2102 + 841] = mem[_1289 + 96]
                        mem[_2102 + 873] = mem[_1289 + 128]
                        mem[_2102 + 905] = mem[_1289 + 160]
                        mem[_2102 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1442, _2105, mem[_2102 + 393 len 576], address(_2046), _2045, msg.sender
                    else:
                        _1677 = mem[_1260]
                        _1678 = mem[_1260 + 256]
                        _1679 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1677
                        mem[mem[64] + 36] = address(_1678)
                        mem[mem[64] + 68] = _1679
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1677, address(_1678), _1679
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1730 = mem[_1260]
                        _1731 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1730
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1731
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1730, msg.sender, _1731
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1830 = mem[_1260]
                        _1831 = mem[_1260 + 256]
                        _1832 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1830
                        mem[mem[64] + 36] = address(_1831)
                        mem[mem[64] + 68] = _1832
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1830, address(_1831), _1832
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1923 = mem[_1260]
                        _1924 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1923
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1924
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1923, msg.sender, _1924
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2047 = mem[_1260]
                        _2048 = mem[_1260 + 256]
                        _2107 = mem[_1260 + 32]
                        _2108 = mem[_1260 + 64]
                        _2109 = mem[_1260 + 96]
                        _2110 = mem[_1260 + 128]
                        _2111 = mem[_1260 + 160]
                        _2112 = mem[_1260 + 192]
                        _2113 = mem[_1260 + 224]
                        _2114 = mem[_1260 + 256]
                        _2115 = mem[_1260 + 288]
                        _2116 = mem[_1260 + 320]
                        _2117 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _2107
                        mem[mem[64] + 96] = _2108
                        mem[mem[64] + 128] = _2109
                        mem[mem[64] + 160] = _2110
                        mem[mem[64] + 192] = _2111
                        mem[mem[64] + 224] = _2112
                        mem[mem[64] + 256] = _2113
                        mem[mem[64] + 288] = address(_2114)
                        mem[mem[64] + 308] = address(_2115)
                        mem[mem[64] + 328] = bool(_2116) << 248
                        _2118 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2120 = sha3(mem[_2118 + 32 len mem[_2118]])
                        mem[_2117 + 329] = _1442
                        mem[_2117 + 361] = _2120
                        mem[_2117 + 393] = mem[_1260]
                        mem[_2117 + 425] = mem[_1260 + 32]
                        mem[_2117 + 457] = mem[_1260 + 64]
                        mem[_2117 + 489] = mem[_1260 + 96]
                        mem[_2117 + 521] = mem[_1260 + 128]
                        mem[_2117 + 553] = mem[_1260 + 160]
                        mem[_2117 + 585] = mem[_1260 + 192]
                        mem[_2117 + 617] = mem[_1260 + 224]
                        mem[_2117 + 649] = mem[_1260 + 268 len 20]
                        mem[_2117 + 681] = mem[_1260 + 300 len 20]
                        mem[_2117 + 713] = bool(mem[_1260 + 320])
                        mem[_2117 + 745] = mem[_1289]
                        mem[_2117 + 777] = mem[_1289 + 32]
                        mem[_2117 + 809] = mem[_1289 + 64]
                        mem[_2117 + 841] = mem[_1289 + 96]
                        mem[_2117 + 873] = mem[_1289 + 128]
                        mem[_2117 + 905] = mem[_1289 + 160]
                        mem[_2117 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1442, _2120, mem[_2117 + 393 len 576], address(_2048), _2047, msg.sender
                else:
                    _1624 = mem[_1260 + 288]
                    _1625 = mem[_1289 + 192]
                    mem[mem[64] + 4] = mem[_1270 + 12 len 20]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_1624)
                    mem[mem[64] + 100] = _1625
                    require ext_code.size(stor1)
                    call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], msg.sender, address(_1624), _1625
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1736 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_1736]:
                        revert with 0, 'CANNOT_TRANSFER_RELAYER_TAKER_FEE'
                    if not mem[_1260 + 320]:
                        _1834 = mem[_1260]
                        _1835 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1834
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1835
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1834, msg.sender, _1835
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1926 = mem[_1260]
                        _1927 = mem[_1260 + 256]
                        _1928 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1926
                        mem[mem[64] + 36] = address(_1927)
                        mem[mem[64] + 68] = _1928
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1926, address(_1927), _1928
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2049 = mem[_1260]
                        _2050 = mem[_1260 + 256]
                        _2051 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2049
                        mem[mem[64] + 36] = address(_2050)
                        mem[mem[64] + 68] = _2051
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2049, address(_2050), _2051
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2165 = mem[_1260]
                        _2166 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2165
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _2166
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2165, msg.sender, _2166
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2267 = mem[_1260]
                        _2268 = mem[_1260 + 256]
                        _2274 = mem[_1260 + 32]
                        _2275 = mem[_1260 + 64]
                        _2276 = mem[_1260 + 96]
                        _2277 = mem[_1260 + 128]
                        _2278 = mem[_1260 + 160]
                        _2279 = mem[_1260 + 192]
                        _2280 = mem[_1260 + 224]
                        _2281 = mem[_1260 + 256]
                        _2282 = mem[_1260 + 288]
                        _2283 = mem[_1260 + 320]
                        _2284 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _2274
                        mem[mem[64] + 96] = _2275
                        mem[mem[64] + 128] = _2276
                        mem[mem[64] + 160] = _2277
                        mem[mem[64] + 192] = _2278
                        mem[mem[64] + 224] = _2279
                        mem[mem[64] + 256] = _2280
                        mem[mem[64] + 288] = address(_2281)
                        mem[mem[64] + 308] = address(_2282)
                        mem[mem[64] + 328] = bool(_2283) << 248
                        _2285 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2287 = sha3(mem[_2285 + 32 len mem[_2285]])
                        mem[_2284 + 329] = _1442
                        mem[_2284 + 361] = _2287
                        mem[_2284 + 393] = mem[_1260]
                        mem[_2284 + 425] = mem[_1260 + 32]
                        mem[_2284 + 457] = mem[_1260 + 64]
                        mem[_2284 + 489] = mem[_1260 + 96]
                        mem[_2284 + 521] = mem[_1260 + 128]
                        mem[_2284 + 553] = mem[_1260 + 160]
                        mem[_2284 + 585] = mem[_1260 + 192]
                        mem[_2284 + 617] = mem[_1260 + 224]
                        mem[_2284 + 649] = mem[_1260 + 268 len 20]
                        mem[_2284 + 681] = mem[_1260 + 300 len 20]
                        mem[_2284 + 713] = bool(mem[_1260 + 320])
                        mem[_2284 + 745] = mem[_1289]
                        mem[_2284 + 777] = mem[_1289 + 32]
                        mem[_2284 + 809] = mem[_1289 + 64]
                        mem[_2284 + 841] = mem[_1289 + 96]
                        mem[_2284 + 873] = mem[_1289 + 128]
                        mem[_2284 + 905] = mem[_1289 + 160]
                        mem[_2284 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1442, _2287, mem[_2284 + 393 len 576], address(_2268), _2267, msg.sender
                    else:
                        _1837 = mem[_1260]
                        _1838 = mem[_1260 + 256]
                        _1839 = mem[_1289 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1837
                        mem[mem[64] + 36] = address(_1838)
                        mem[mem[64] + 68] = _1839
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1837, address(_1838), _1839
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1930 = mem[_1260]
                        _1931 = mem[_1289 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1930
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1931
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1930, msg.sender, _1931
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2053 = mem[_1260]
                        _2054 = mem[_1260 + 256]
                        _2055 = mem[_1289]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2053
                        mem[mem[64] + 36] = address(_2054)
                        mem[mem[64] + 68] = _2055
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2053, address(_2054), _2055
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2168 = mem[_1260]
                        _2169 = mem[_1289 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2168
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _2169
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2168, msg.sender, _2169
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2269 = mem[_1260]
                        _2270 = mem[_1260 + 256]
                        _2289 = mem[_1260 + 32]
                        _2290 = mem[_1260 + 64]
                        _2291 = mem[_1260 + 96]
                        _2292 = mem[_1260 + 128]
                        _2293 = mem[_1260 + 160]
                        _2294 = mem[_1260 + 192]
                        _2295 = mem[_1260 + 224]
                        _2296 = mem[_1260 + 256]
                        _2297 = mem[_1260 + 288]
                        _2298 = mem[_1260 + 320]
                        _2299 = mem[64]
                        mem[mem[64] + 32] = mem[_1260]
                        mem[mem[64] + 64] = _2289
                        mem[mem[64] + 96] = _2290
                        mem[mem[64] + 128] = _2291
                        mem[mem[64] + 160] = _2292
                        mem[mem[64] + 192] = _2293
                        mem[mem[64] + 224] = _2294
                        mem[mem[64] + 256] = _2295
                        mem[mem[64] + 288] = address(_2296)
                        mem[mem[64] + 308] = address(_2297)
                        mem[mem[64] + 328] = bool(_2298) << 248
                        _2300 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2302 = sha3(mem[_2300 + 32 len mem[_2300]])
                        mem[_2299 + 329] = _1442
                        mem[_2299 + 361] = _2302
                        mem[_2299 + 393] = mem[_1260]
                        mem[_2299 + 425] = mem[_1260 + 32]
                        mem[_2299 + 457] = mem[_1260 + 64]
                        mem[_2299 + 489] = mem[_1260 + 96]
                        mem[_2299 + 521] = mem[_1260 + 128]
                        mem[_2299 + 553] = mem[_1260 + 160]
                        mem[_2299 + 585] = mem[_1260 + 192]
                        mem[_2299 + 617] = mem[_1260 + 224]
                        mem[_2299 + 649] = mem[_1260 + 268 len 20]
                        mem[_2299 + 681] = mem[_1260 + 300 len 20]
                        mem[_2299 + 713] = bool(mem[_1260 + 320])
                        mem[_2299 + 745] = mem[_1289]
                        mem[_2299 + 777] = mem[_1289 + 32]
                        mem[_2299 + 809] = mem[_1289 + 64]
                        mem[_2299 + 841] = mem[_1289 + 96]
                        mem[_2299 + 873] = mem[_1289 + 128]
                        mem[_2299 + 905] = mem[_1289 + 160]
                        mem[_2299 + 937] = mem[_1289 + 192]
                        emit 0x3bd2463f: _1442, _2302, mem[_2299 + 393 len 576], address(_2270), _2269, msg.sender
        idx = idx + 1
        continue 
}

function sub_cce78dce(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (352 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 352
        _56 = mem[64]
        require mem[64] + 352 <= test266151307() and mem[64] + 352 >= mem[64]
        mem[64] = mem[64] + 352
        mem[_56] = cd[s]
        mem[_56 + 32] = cd[(s + 32)]
        mem[_56 + 64] = cd[(s + 64)]
        mem[_56 + 96] = cd[(s + 96)]
        mem[_56 + 128] = cd[(s + 128)]
        mem[_56 + 160] = cd[(s + 160)]
        mem[_56 + 192] = cd[(s + 192)]
        mem[_56 + 224] = cd[(s + 224)]
        mem[_56 + 256] = address(cd[(s + 256)])
        mem[_56 + 288] = address(cd[(s + 288)])
        mem[_56 + 320] = bool(cd[(s + 320)])
        mem[t] = _56
        idx = idx + 1
        s = s + 352
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _57 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_57] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _57 + 32
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    _113 = mem[64]
    require mem[64] + (32 * ('cd', 68).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 68).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_113] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _113 + 32
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _173 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_173] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_173 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_173 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _173
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _171 = mem[96]
    idx = 0
    while idx < _171:
        require idx < mem[96]
        _1280 = mem[(32 * idx) + 128]
        require idx < mem[_57]
        _1285 = mem[(32 * idx) + _57 + 32]
        require idx < mem[_113]
        _1287 = mem[(32 * idx) + _113 + 32]
        _1288 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1288] = 0
        mem[_1288 + 32] = 0
        mem[_1288 + 64] = 0
        require ext_code.size(stor0)
        staticcall stor0.getMarket(bytes32 arg1) with:
                gas gas_remaining wei
               args mem[_1280]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1294 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        mem[_1294] = mem[_1292 + 12 len 20]
        mem[_1294 + 32] = mem[_1292 + 58 len 6]
        mem[_1294 + 64] = mem[_1292 + 90 len 6]
        _1298 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1298] = 0
        mem[_1298 + 32] = 0
        mem[_1298 + 64] = 0
        mem[_1298 + 96] = 0
        mem[_1298 + 128] = 0
        mem[_1298 + 160] = 0
        mem[_1298 + 192] = 0
        mem[mem[64]] = 0xc16cb70e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = mem[_1280]
        mem[mem[64] + 36] = mem[_1280 + 32]
        mem[mem[64] + 68] = mem[_1280 + 64]
        mem[mem[64] + 100] = mem[_1280 + 96]
        mem[mem[64] + 132] = mem[_1280 + 128]
        mem[mem[64] + 164] = mem[_1280 + 160]
        mem[mem[64] + 196] = mem[_1280 + 192]
        mem[mem[64] + 228] = mem[_1280 + 224]
        mem[mem[64] + 260] = mem[_1280 + 268 len 20]
        mem[mem[64] + 292] = mem[_1280 + 300 len 20]
        mem[mem[64] + 324] = bool(mem[_1280 + 320])
        mem[mem[64] + 356] = _1285
        require ext_code.size(stor5)
        staticcall stor5.0xc16cb70e with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len 352], _1285
        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1312 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 224
        _1313 = mem[64]
        require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
        mem[64] = mem[64] + 224
        mem[_1313] = mem[_1312]
        mem[_1313 + 32] = mem[_1312 + 32]
        mem[_1313 + 64] = mem[_1312 + 64]
        mem[_1313 + 96] = mem[_1312 + 96]
        mem[_1313 + 128] = mem[_1312 + 128]
        mem[_1313 + 160] = mem[_1312 + 160]
        mem[_1313 + 192] = mem[_1312 + 192]
        mem[mem[64]] = 0xc10ebd2d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = mem[_1280]
        mem[mem[64] + 36] = mem[_1280 + 32]
        mem[mem[64] + 68] = mem[_1280 + 64]
        mem[mem[64] + 100] = mem[_1280 + 96]
        mem[mem[64] + 132] = mem[_1280 + 128]
        mem[mem[64] + 164] = mem[_1280 + 160]
        mem[mem[64] + 196] = mem[_1280 + 192]
        mem[mem[64] + 228] = mem[_1280 + 224]
        mem[mem[64] + 260] = mem[_1280 + 268 len 20]
        mem[mem[64] + 292] = mem[_1280 + 300 len 20]
        mem[mem[64] + 324] = bool(mem[_1280 + 320])
        mem[mem[64] + 356] = mem[_1294 + 12 len 20]
        mem[mem[64] + 388] = mem[_1294 + 58 len 6]
        mem[mem[64] + 420] = mem[_1294 + 90 len 6]
        mem[mem[64] + 452] = _1285
        mem[mem[64] + 484] = msg.sender
        mem[mem[64] + 516] = 544
        _1336 = mem[_1287]
        mem[mem[64] + 548] = mem[_1287]
        s = 0
        while s < _1336:
            mem[mem[64] + s + 580] = mem[_1287 + s + 32]
            s = s + 32
            continue 
        if ceil32(_1336) <= _1336:
            require ext_code.size(stor5)
            staticcall stor5.0xc10ebd2d with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len 448], _1285, msg.sender, 544, mem[mem[64] + 548 len ceil32(_1336) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1435 = mem[_1313]
            mem[mem[64]] = 0x13a6f60300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[_1280]
            mem[mem[64] + 36] = mem[_1280 + 32]
            mem[mem[64] + 68] = mem[_1280 + 64]
            mem[mem[64] + 100] = mem[_1280 + 96]
            mem[mem[64] + 132] = mem[_1280 + 128]
            mem[mem[64] + 164] = mem[_1280 + 160]
            mem[mem[64] + 196] = mem[_1280 + 192]
            mem[mem[64] + 228] = mem[_1280 + 224]
            mem[mem[64] + 260] = mem[_1280 + 268 len 20]
            mem[mem[64] + 292] = mem[_1280 + 300 len 20]
            mem[mem[64] + 324] = bool(mem[_1280 + 320])
            mem[mem[64] + 356] = _1435
            require ext_code.size(stor2)
            call stor2.0x13a6f603 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 352], _1435
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1465 = mem[_1463]
            _1468 = mem[_1280 + 256]
            _1469 = mem[_1313]
            mem[mem[64] + 4] = mem[_1294 + 12 len 20]
            mem[mem[64] + 36] = address(_1468)
            mem[mem[64] + 68] = stor3
            mem[mem[64] + 100] = _1469
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_1468), stor3, _1469
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1477 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1477]:
                revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
            _1482 = mem[_1280 + 256]
            _1483 = mem[_1313 + 96]
            mem[mem[64] + 4] = mem[_1294 + 12 len 20]
            mem[mem[64] + 36] = address(_1482)
            mem[mem[64] + 68] = stor4
            mem[mem[64] + 100] = _1483
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_1482), stor4, _1483
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1495 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1495]:
                revert with 0, 'CANNOT_TRANSFER_MAKER_ORACLE_FEE'
            if mem[_1280 + 160] <= 0:
                _1513 = mem[_1313 + 32]
                mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor3
                mem[mem[64] + 100] = _1513
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor3, _1513
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1527 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1527]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
                _1536 = mem[_1313 + 128]
                mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor4
                mem[mem[64] + 100] = _1536
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor4, _1536
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1556 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1556]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ORACLE_FEE'
                if mem[_1280 + 192] <= 0:
                    if not mem[_1280 + 320]:
                        _1587 = mem[_1280]
                        _1588 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1587
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1588
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1587, msg.sender, _1588
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1609 = mem[_1280]
                        _1610 = mem[_1280 + 256]
                        _1611 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1609
                        mem[mem[64] + 36] = address(_1610)
                        mem[mem[64] + 68] = _1611
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1609, address(_1610), _1611
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1657 = mem[_1280]
                        _1658 = mem[_1280 + 256]
                        _1659 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1657
                        mem[mem[64] + 36] = address(_1658)
                        mem[mem[64] + 68] = _1659
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1657, address(_1658), _1659
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1717 = mem[_1280]
                        _1718 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1717
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1718
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1717, msg.sender, _1718
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1779 = mem[_1280]
                        _1780 = mem[_1280 + 256]
                        _1809 = mem[_1280 + 32]
                        _1810 = mem[_1280 + 64]
                        _1811 = mem[_1280 + 96]
                        _1812 = mem[_1280 + 128]
                        _1813 = mem[_1280 + 160]
                        _1814 = mem[_1280 + 192]
                        _1815 = mem[_1280 + 224]
                        _1816 = mem[_1280 + 256]
                        _1817 = mem[_1280 + 288]
                        _1818 = mem[_1280 + 320]
                        _1819 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _1809
                        mem[mem[64] + 96] = _1810
                        mem[mem[64] + 128] = _1811
                        mem[mem[64] + 160] = _1812
                        mem[mem[64] + 192] = _1813
                        mem[mem[64] + 224] = _1814
                        mem[mem[64] + 256] = _1815
                        mem[mem[64] + 288] = address(_1816)
                        mem[mem[64] + 308] = address(_1817)
                        mem[mem[64] + 328] = bool(_1818) << 248
                        _1820 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _1822 = sha3(mem[_1820 + 32 len mem[_1820]])
                        mem[_1819 + 329] = _1465
                        mem[_1819 + 361] = _1822
                        mem[_1819 + 393] = mem[_1280]
                        mem[_1819 + 425] = mem[_1280 + 32]
                        mem[_1819 + 457] = mem[_1280 + 64]
                        mem[_1819 + 489] = mem[_1280 + 96]
                        mem[_1819 + 521] = mem[_1280 + 128]
                        mem[_1819 + 553] = mem[_1280 + 160]
                        mem[_1819 + 585] = mem[_1280 + 192]
                        mem[_1819 + 617] = mem[_1280 + 224]
                        mem[_1819 + 649] = mem[_1280 + 268 len 20]
                        mem[_1819 + 681] = mem[_1280 + 300 len 20]
                        mem[_1819 + 713] = bool(mem[_1280 + 320])
                        mem[_1819 + 745] = mem[_1313]
                        mem[_1819 + 777] = mem[_1313 + 32]
                        mem[_1819 + 809] = mem[_1313 + 64]
                        mem[_1819 + 841] = mem[_1313 + 96]
                        mem[_1819 + 873] = mem[_1313 + 128]
                        mem[_1819 + 905] = mem[_1313 + 160]
                        mem[_1819 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1465, _1822, mem[_1819 + 393 len 576], address(_1780), _1779, msg.sender
                    else:
                        _1590 = mem[_1280]
                        _1591 = mem[_1280 + 256]
                        _1592 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1590
                        mem[mem[64] + 36] = address(_1591)
                        mem[mem[64] + 68] = _1592
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1590, address(_1591), _1592
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1613 = mem[_1280]
                        _1614 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1613
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1614
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1613, msg.sender, _1614
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1661 = mem[_1280]
                        _1662 = mem[_1280 + 256]
                        _1663 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1661
                        mem[mem[64] + 36] = address(_1662)
                        mem[mem[64] + 68] = _1663
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1661, address(_1662), _1663
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1720 = mem[_1280]
                        _1721 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1720
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1721
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1720, msg.sender, _1721
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1781 = mem[_1280]
                        _1782 = mem[_1280 + 256]
                        _1824 = mem[_1280 + 32]
                        _1825 = mem[_1280 + 64]
                        _1826 = mem[_1280 + 96]
                        _1827 = mem[_1280 + 128]
                        _1828 = mem[_1280 + 160]
                        _1829 = mem[_1280 + 192]
                        _1830 = mem[_1280 + 224]
                        _1831 = mem[_1280 + 256]
                        _1832 = mem[_1280 + 288]
                        _1833 = mem[_1280 + 320]
                        _1834 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _1824
                        mem[mem[64] + 96] = _1825
                        mem[mem[64] + 128] = _1826
                        mem[mem[64] + 160] = _1827
                        mem[mem[64] + 192] = _1828
                        mem[mem[64] + 224] = _1829
                        mem[mem[64] + 256] = _1830
                        mem[mem[64] + 288] = address(_1831)
                        mem[mem[64] + 308] = address(_1832)
                        mem[mem[64] + 328] = bool(_1833) << 248
                        _1835 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _1837 = sha3(mem[_1835 + 32 len mem[_1835]])
                        mem[_1834 + 329] = _1465
                        mem[_1834 + 361] = _1837
                        mem[_1834 + 393] = mem[_1280]
                        mem[_1834 + 425] = mem[_1280 + 32]
                        mem[_1834 + 457] = mem[_1280 + 64]
                        mem[_1834 + 489] = mem[_1280 + 96]
                        mem[_1834 + 521] = mem[_1280 + 128]
                        mem[_1834 + 553] = mem[_1280 + 160]
                        mem[_1834 + 585] = mem[_1280 + 192]
                        mem[_1834 + 617] = mem[_1280 + 224]
                        mem[_1834 + 649] = mem[_1280 + 268 len 20]
                        mem[_1834 + 681] = mem[_1280 + 300 len 20]
                        mem[_1834 + 713] = bool(mem[_1280 + 320])
                        mem[_1834 + 745] = mem[_1313]
                        mem[_1834 + 777] = mem[_1313 + 32]
                        mem[_1834 + 809] = mem[_1313 + 64]
                        mem[_1834 + 841] = mem[_1313 + 96]
                        mem[_1834 + 873] = mem[_1313 + 128]
                        mem[_1834 + 905] = mem[_1313 + 160]
                        mem[_1834 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1465, _1837, mem[_1834 + 393 len 576], address(_1782), _1781, msg.sender
                else:
                    _1568 = mem[_1280 + 288]
                    _1569 = mem[_1313 + 192]
                    mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_1568)
                    mem[mem[64] + 100] = _1569
                    require ext_code.size(stor1)
                    call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], msg.sender, address(_1568), _1569
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_1627]:
                        revert with 0, 'CANNOT_TRANSFER_RELAYER_TAKER_FEE'
                    if not mem[_1280 + 320]:
                        _1665 = mem[_1280]
                        _1666 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1665
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1666
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1665, msg.sender, _1666
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1723 = mem[_1280]
                        _1724 = mem[_1280 + 256]
                        _1725 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1723
                        mem[mem[64] + 36] = address(_1724)
                        mem[mem[64] + 68] = _1725
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1723, address(_1724), _1725
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1783 = mem[_1280]
                        _1784 = mem[_1280 + 256]
                        _1785 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1783
                        mem[mem[64] + 36] = address(_1784)
                        mem[mem[64] + 68] = _1785
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1783, address(_1784), _1785
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1919 = mem[_1280]
                        _1920 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1919
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1920
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1919, msg.sender, _1920
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1987 = mem[_1280]
                        _1988 = mem[_1280 + 256]
                        _2006 = mem[_1280 + 32]
                        _2007 = mem[_1280 + 64]
                        _2008 = mem[_1280 + 96]
                        _2009 = mem[_1280 + 128]
                        _2010 = mem[_1280 + 160]
                        _2011 = mem[_1280 + 192]
                        _2012 = mem[_1280 + 224]
                        _2013 = mem[_1280 + 256]
                        _2014 = mem[_1280 + 288]
                        _2015 = mem[_1280 + 320]
                        _2016 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2006
                        mem[mem[64] + 96] = _2007
                        mem[mem[64] + 128] = _2008
                        mem[mem[64] + 160] = _2009
                        mem[mem[64] + 192] = _2010
                        mem[mem[64] + 224] = _2011
                        mem[mem[64] + 256] = _2012
                        mem[mem[64] + 288] = address(_2013)
                        mem[mem[64] + 308] = address(_2014)
                        mem[mem[64] + 328] = bool(_2015) << 248
                        _2017 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2019 = sha3(mem[_2017 + 32 len mem[_2017]])
                        mem[_2016 + 329] = _1465
                        mem[_2016 + 361] = _2019
                        mem[_2016 + 393] = mem[_1280]
                        mem[_2016 + 425] = mem[_1280 + 32]
                        mem[_2016 + 457] = mem[_1280 + 64]
                        mem[_2016 + 489] = mem[_1280 + 96]
                        mem[_2016 + 521] = mem[_1280 + 128]
                        mem[_2016 + 553] = mem[_1280 + 160]
                        mem[_2016 + 585] = mem[_1280 + 192]
                        mem[_2016 + 617] = mem[_1280 + 224]
                        mem[_2016 + 649] = mem[_1280 + 268 len 20]
                        mem[_2016 + 681] = mem[_1280 + 300 len 20]
                        mem[_2016 + 713] = bool(mem[_1280 + 320])
                        mem[_2016 + 745] = mem[_1313]
                        mem[_2016 + 777] = mem[_1313 + 32]
                        mem[_2016 + 809] = mem[_1313 + 64]
                        mem[_2016 + 841] = mem[_1313 + 96]
                        mem[_2016 + 873] = mem[_1313 + 128]
                        mem[_2016 + 905] = mem[_1313 + 160]
                        mem[_2016 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1465, _2019, mem[_2016 + 393 len 576], address(_1988), _1987, msg.sender
                    else:
                        _1668 = mem[_1280]
                        _1669 = mem[_1280 + 256]
                        _1670 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1668
                        mem[mem[64] + 36] = address(_1669)
                        mem[mem[64] + 68] = _1670
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1668, address(_1669), _1670
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1727 = mem[_1280]
                        _1728 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1727
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1728
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1727, msg.sender, _1728
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1787 = mem[_1280]
                        _1788 = mem[_1280 + 256]
                        _1789 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1787
                        mem[mem[64] + 36] = address(_1788)
                        mem[mem[64] + 68] = _1789
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1787, address(_1788), _1789
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1922 = mem[_1280]
                        _1923 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1922
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1923
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1922, msg.sender, _1923
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1989 = mem[_1280]
                        _1990 = mem[_1280 + 256]
                        _2021 = mem[_1280 + 32]
                        _2022 = mem[_1280 + 64]
                        _2023 = mem[_1280 + 96]
                        _2024 = mem[_1280 + 128]
                        _2025 = mem[_1280 + 160]
                        _2026 = mem[_1280 + 192]
                        _2027 = mem[_1280 + 224]
                        _2028 = mem[_1280 + 256]
                        _2029 = mem[_1280 + 288]
                        _2030 = mem[_1280 + 320]
                        _2031 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2021
                        mem[mem[64] + 96] = _2022
                        mem[mem[64] + 128] = _2023
                        mem[mem[64] + 160] = _2024
                        mem[mem[64] + 192] = _2025
                        mem[mem[64] + 224] = _2026
                        mem[mem[64] + 256] = _2027
                        mem[mem[64] + 288] = address(_2028)
                        mem[mem[64] + 308] = address(_2029)
                        mem[mem[64] + 328] = bool(_2030) << 248
                        _2032 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2034 = sha3(mem[_2032 + 32 len mem[_2032]])
                        mem[_2031 + 329] = _1465
                        mem[_2031 + 361] = _2034
                        mem[_2031 + 393] = mem[_1280]
                        mem[_2031 + 425] = mem[_1280 + 32]
                        mem[_2031 + 457] = mem[_1280 + 64]
                        mem[_2031 + 489] = mem[_1280 + 96]
                        mem[_2031 + 521] = mem[_1280 + 128]
                        mem[_2031 + 553] = mem[_1280 + 160]
                        mem[_2031 + 585] = mem[_1280 + 192]
                        mem[_2031 + 617] = mem[_1280 + 224]
                        mem[_2031 + 649] = mem[_1280 + 268 len 20]
                        mem[_2031 + 681] = mem[_1280 + 300 len 20]
                        mem[_2031 + 713] = bool(mem[_1280 + 320])
                        mem[_2031 + 745] = mem[_1313]
                        mem[_2031 + 777] = mem[_1313 + 32]
                        mem[_2031 + 809] = mem[_1313 + 64]
                        mem[_2031 + 841] = mem[_1313 + 96]
                        mem[_2031 + 873] = mem[_1313 + 128]
                        mem[_2031 + 905] = mem[_1313 + 160]
                        mem[_2031 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1465, _2034, mem[_2031 + 393 len 576], address(_1990), _1989, msg.sender
            else:
                _1502 = mem[_1280 + 256]
                _1503 = mem[_1280 + 288]
                _1504 = mem[_1313 + 160]
                mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                mem[mem[64] + 36] = address(_1502)
                mem[mem[64] + 68] = address(_1503)
                mem[mem[64] + 100] = _1504
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_1502), address(_1503), _1504
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1524]:
                    revert with 0, 'CANNOT_TRANSFER_RELAYER_MAKER_FEE'
                _1540 = mem[_1313 + 32]
                mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor3
                mem[mem[64] + 100] = _1540
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor3, _1540
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1558 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1558]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
                _1571 = mem[_1313 + 128]
                mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor4
                mem[mem[64] + 100] = _1571
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor4, _1571
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1628 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1628]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ORACLE_FEE'
                if mem[_1280 + 192] <= 0:
                    if not mem[_1280 + 320]:
                        _1672 = mem[_1280]
                        _1673 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1672
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1673
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1672, msg.sender, _1673
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1730 = mem[_1280]
                        _1731 = mem[_1280 + 256]
                        _1732 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1730
                        mem[mem[64] + 36] = address(_1731)
                        mem[mem[64] + 68] = _1732
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1730, address(_1731), _1732
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1791 = mem[_1280]
                        _1792 = mem[_1280 + 256]
                        _1793 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1791
                        mem[mem[64] + 36] = address(_1792)
                        mem[mem[64] + 68] = _1793
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1791, address(_1792), _1793
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1925 = mem[_1280]
                        _1926 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1925
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1926
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1925, msg.sender, _1926
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1991 = mem[_1280]
                        _1992 = mem[_1280 + 256]
                        _2036 = mem[_1280 + 32]
                        _2037 = mem[_1280 + 64]
                        _2038 = mem[_1280 + 96]
                        _2039 = mem[_1280 + 128]
                        _2040 = mem[_1280 + 160]
                        _2041 = mem[_1280 + 192]
                        _2042 = mem[_1280 + 224]
                        _2043 = mem[_1280 + 256]
                        _2044 = mem[_1280 + 288]
                        _2045 = mem[_1280 + 320]
                        _2046 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2036
                        mem[mem[64] + 96] = _2037
                        mem[mem[64] + 128] = _2038
                        mem[mem[64] + 160] = _2039
                        mem[mem[64] + 192] = _2040
                        mem[mem[64] + 224] = _2041
                        mem[mem[64] + 256] = _2042
                        mem[mem[64] + 288] = address(_2043)
                        mem[mem[64] + 308] = address(_2044)
                        mem[mem[64] + 328] = bool(_2045) << 248
                        _2047 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2049 = sha3(mem[_2047 + 32 len mem[_2047]])
                        mem[_2046 + 329] = _1465
                        mem[_2046 + 361] = _2049
                        mem[_2046 + 393] = mem[_1280]
                        mem[_2046 + 425] = mem[_1280 + 32]
                        mem[_2046 + 457] = mem[_1280 + 64]
                        mem[_2046 + 489] = mem[_1280 + 96]
                        mem[_2046 + 521] = mem[_1280 + 128]
                        mem[_2046 + 553] = mem[_1280 + 160]
                        mem[_2046 + 585] = mem[_1280 + 192]
                        mem[_2046 + 617] = mem[_1280 + 224]
                        mem[_2046 + 649] = mem[_1280 + 268 len 20]
                        mem[_2046 + 681] = mem[_1280 + 300 len 20]
                        mem[_2046 + 713] = bool(mem[_1280 + 320])
                        mem[_2046 + 745] = mem[_1313]
                        mem[_2046 + 777] = mem[_1313 + 32]
                        mem[_2046 + 809] = mem[_1313 + 64]
                        mem[_2046 + 841] = mem[_1313 + 96]
                        mem[_2046 + 873] = mem[_1313 + 128]
                        mem[_2046 + 905] = mem[_1313 + 160]
                        mem[_2046 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1465, _2049, mem[_2046 + 393 len 576], address(_1992), _1991, msg.sender
                    else:
                        _1675 = mem[_1280]
                        _1676 = mem[_1280 + 256]
                        _1677 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1675
                        mem[mem[64] + 36] = address(_1676)
                        mem[mem[64] + 68] = _1677
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1675, address(_1676), _1677
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1734 = mem[_1280]
                        _1735 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1734
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1735
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1734, msg.sender, _1735
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1795 = mem[_1280]
                        _1796 = mem[_1280 + 256]
                        _1797 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1795
                        mem[mem[64] + 36] = address(_1796)
                        mem[mem[64] + 68] = _1797
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1795, address(_1796), _1797
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1928 = mem[_1280]
                        _1929 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1928
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1929
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1928, msg.sender, _1929
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1993 = mem[_1280]
                        _1994 = mem[_1280 + 256]
                        _2051 = mem[_1280 + 32]
                        _2052 = mem[_1280 + 64]
                        _2053 = mem[_1280 + 96]
                        _2054 = mem[_1280 + 128]
                        _2055 = mem[_1280 + 160]
                        _2056 = mem[_1280 + 192]
                        _2057 = mem[_1280 + 224]
                        _2058 = mem[_1280 + 256]
                        _2059 = mem[_1280 + 288]
                        _2060 = mem[_1280 + 320]
                        _2061 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2051
                        mem[mem[64] + 96] = _2052
                        mem[mem[64] + 128] = _2053
                        mem[mem[64] + 160] = _2054
                        mem[mem[64] + 192] = _2055
                        mem[mem[64] + 224] = _2056
                        mem[mem[64] + 256] = _2057
                        mem[mem[64] + 288] = address(_2058)
                        mem[mem[64] + 308] = address(_2059)
                        mem[mem[64] + 328] = bool(_2060) << 248
                        _2062 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2064 = sha3(mem[_2062 + 32 len mem[_2062]])
                        mem[_2061 + 329] = _1465
                        mem[_2061 + 361] = _2064
                        mem[_2061 + 393] = mem[_1280]
                        mem[_2061 + 425] = mem[_1280 + 32]
                        mem[_2061 + 457] = mem[_1280 + 64]
                        mem[_2061 + 489] = mem[_1280 + 96]
                        mem[_2061 + 521] = mem[_1280 + 128]
                        mem[_2061 + 553] = mem[_1280 + 160]
                        mem[_2061 + 585] = mem[_1280 + 192]
                        mem[_2061 + 617] = mem[_1280 + 224]
                        mem[_2061 + 649] = mem[_1280 + 268 len 20]
                        mem[_2061 + 681] = mem[_1280 + 300 len 20]
                        mem[_2061 + 713] = bool(mem[_1280 + 320])
                        mem[_2061 + 745] = mem[_1313]
                        mem[_2061 + 777] = mem[_1313 + 32]
                        mem[_2061 + 809] = mem[_1313 + 64]
                        mem[_2061 + 841] = mem[_1313 + 96]
                        mem[_2061 + 873] = mem[_1313 + 128]
                        mem[_2061 + 905] = mem[_1313 + 160]
                        mem[_2061 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1465, _2064, mem[_2061 + 393 len 576], address(_1994), _1993, msg.sender
                else:
                    _1639 = mem[_1280 + 288]
                    _1640 = mem[_1313 + 192]
                    mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_1639)
                    mem[mem[64] + 100] = _1640
                    require ext_code.size(stor1)
                    call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], msg.sender, address(_1639), _1640
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1759 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_1759]:
                        revert with 0, 'CANNOT_TRANSFER_RELAYER_TAKER_FEE'
                    if not mem[_1280 + 320]:
                        _1799 = mem[_1280]
                        _1800 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1799
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1800
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1799, msg.sender, _1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1931 = mem[_1280]
                        _1932 = mem[_1280 + 256]
                        _1933 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1931
                        mem[mem[64] + 36] = address(_1932)
                        mem[mem[64] + 68] = _1933
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1931, address(_1932), _1933
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1995 = mem[_1280]
                        _1996 = mem[_1280 + 256]
                        _1997 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1995
                        mem[mem[64] + 36] = address(_1996)
                        mem[mem[64] + 68] = _1997
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1995, address(_1996), _1997
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2181 = mem[_1280]
                        _2182 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2181
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _2182
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2181, msg.sender, _2182
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2251 = mem[_1280]
                        _2252 = mem[_1280 + 256]
                        _2260 = mem[_1280 + 32]
                        _2261 = mem[_1280 + 64]
                        _2262 = mem[_1280 + 96]
                        _2263 = mem[_1280 + 128]
                        _2264 = mem[_1280 + 160]
                        _2265 = mem[_1280 + 192]
                        _2266 = mem[_1280 + 224]
                        _2267 = mem[_1280 + 256]
                        _2268 = mem[_1280 + 288]
                        _2269 = mem[_1280 + 320]
                        _2270 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2260
                        mem[mem[64] + 96] = _2261
                        mem[mem[64] + 128] = _2262
                        mem[mem[64] + 160] = _2263
                        mem[mem[64] + 192] = _2264
                        mem[mem[64] + 224] = _2265
                        mem[mem[64] + 256] = _2266
                        mem[mem[64] + 288] = address(_2267)
                        mem[mem[64] + 308] = address(_2268)
                        mem[mem[64] + 328] = bool(_2269) << 248
                        _2271 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2273 = sha3(mem[_2271 + 32 len mem[_2271]])
                        mem[_2270 + 329] = _1465
                        mem[_2270 + 361] = _2273
                        mem[_2270 + 393] = mem[_1280]
                        mem[_2270 + 425] = mem[_1280 + 32]
                        mem[_2270 + 457] = mem[_1280 + 64]
                        mem[_2270 + 489] = mem[_1280 + 96]
                        mem[_2270 + 521] = mem[_1280 + 128]
                        mem[_2270 + 553] = mem[_1280 + 160]
                        mem[_2270 + 585] = mem[_1280 + 192]
                        mem[_2270 + 617] = mem[_1280 + 224]
                        mem[_2270 + 649] = mem[_1280 + 268 len 20]
                        mem[_2270 + 681] = mem[_1280 + 300 len 20]
                        mem[_2270 + 713] = bool(mem[_1280 + 320])
                        mem[_2270 + 745] = mem[_1313]
                        mem[_2270 + 777] = mem[_1313 + 32]
                        mem[_2270 + 809] = mem[_1313 + 64]
                        mem[_2270 + 841] = mem[_1313 + 96]
                        mem[_2270 + 873] = mem[_1313 + 128]
                        mem[_2270 + 905] = mem[_1313 + 160]
                        mem[_2270 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1465, _2273, mem[_2270 + 393 len 576], address(_2252), _2251, msg.sender
                    else:
                        _1802 = mem[_1280]
                        _1803 = mem[_1280 + 256]
                        _1804 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1802
                        mem[mem[64] + 36] = address(_1803)
                        mem[mem[64] + 68] = _1804
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1802, address(_1803), _1804
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1935 = mem[_1280]
                        _1936 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1935
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1936
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1935, msg.sender, _1936
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1999 = mem[_1280]
                        _2000 = mem[_1280 + 256]
                        _2001 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1999
                        mem[mem[64] + 36] = address(_2000)
                        mem[mem[64] + 68] = _2001
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1999, address(_2000), _2001
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2184 = mem[_1280]
                        _2185 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2184
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _2185
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2184, msg.sender, _2185
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2253 = mem[_1280]
                        _2254 = mem[_1280 + 256]
                        _2275 = mem[_1280 + 32]
                        _2276 = mem[_1280 + 64]
                        _2277 = mem[_1280 + 96]
                        _2278 = mem[_1280 + 128]
                        _2279 = mem[_1280 + 160]
                        _2280 = mem[_1280 + 192]
                        _2281 = mem[_1280 + 224]
                        _2282 = mem[_1280 + 256]
                        _2283 = mem[_1280 + 288]
                        _2284 = mem[_1280 + 320]
                        _2285 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2275
                        mem[mem[64] + 96] = _2276
                        mem[mem[64] + 128] = _2277
                        mem[mem[64] + 160] = _2278
                        mem[mem[64] + 192] = _2279
                        mem[mem[64] + 224] = _2280
                        mem[mem[64] + 256] = _2281
                        mem[mem[64] + 288] = address(_2282)
                        mem[mem[64] + 308] = address(_2283)
                        mem[mem[64] + 328] = bool(_2284) << 248
                        _2286 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2288 = sha3(mem[_2286 + 32 len mem[_2286]])
                        mem[_2285 + 329] = _1465
                        mem[_2285 + 361] = _2288
                        mem[_2285 + 393] = mem[_1280]
                        mem[_2285 + 425] = mem[_1280 + 32]
                        mem[_2285 + 457] = mem[_1280 + 64]
                        mem[_2285 + 489] = mem[_1280 + 96]
                        mem[_2285 + 521] = mem[_1280 + 128]
                        mem[_2285 + 553] = mem[_1280 + 160]
                        mem[_2285 + 585] = mem[_1280 + 192]
                        mem[_2285 + 617] = mem[_1280 + 224]
                        mem[_2285 + 649] = mem[_1280 + 268 len 20]
                        mem[_2285 + 681] = mem[_1280 + 300 len 20]
                        mem[_2285 + 713] = bool(mem[_1280 + 320])
                        mem[_2285 + 745] = mem[_1313]
                        mem[_2285 + 777] = mem[_1313 + 32]
                        mem[_2285 + 809] = mem[_1313 + 64]
                        mem[_2285 + 841] = mem[_1313 + 96]
                        mem[_2285 + 873] = mem[_1313 + 128]
                        mem[_2285 + 905] = mem[_1313 + 160]
                        mem[_2285 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1465, _2288, mem[_2285 + 393 len 576], address(_2254), _2253, msg.sender
        else:
            mem[mem[64] + _1336 + 580] = 0
            require ext_code.size(stor5)
            staticcall stor5.0xc10ebd2d with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len 448], _1285, msg.sender, 544, mem[mem[64] + 548 len ceil32(_1336) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1437 = mem[_1313]
            mem[mem[64]] = 0x13a6f60300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[_1280]
            mem[mem[64] + 36] = mem[_1280 + 32]
            mem[mem[64] + 68] = mem[_1280 + 64]
            mem[mem[64] + 100] = mem[_1280 + 96]
            mem[mem[64] + 132] = mem[_1280 + 128]
            mem[mem[64] + 164] = mem[_1280 + 160]
            mem[mem[64] + 196] = mem[_1280 + 192]
            mem[mem[64] + 228] = mem[_1280 + 224]
            mem[mem[64] + 260] = mem[_1280 + 268 len 20]
            mem[mem[64] + 292] = mem[_1280 + 300 len 20]
            mem[mem[64] + 324] = bool(mem[_1280 + 320])
            mem[mem[64] + 356] = _1437
            require ext_code.size(stor2)
            call stor2.0x13a6f603 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 352], _1437
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1466 = mem[_1464]
            _1472 = mem[_1280 + 256]
            _1473 = mem[_1313]
            mem[mem[64] + 4] = mem[_1294 + 12 len 20]
            mem[mem[64] + 36] = address(_1472)
            mem[mem[64] + 68] = stor3
            mem[mem[64] + 100] = _1473
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_1472), stor3, _1473
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1478 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1478]:
                revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
            _1487 = mem[_1280 + 256]
            _1488 = mem[_1313 + 96]
            mem[mem[64] + 4] = mem[_1294 + 12 len 20]
            mem[mem[64] + 36] = address(_1487)
            mem[mem[64] + 68] = stor4
            mem[mem[64] + 100] = _1488
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_1487), stor4, _1488
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1496 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1496]:
                revert with 0, 'CANNOT_TRANSFER_MAKER_ORACLE_FEE'
            if mem[_1280 + 160] <= 0:
                _1518 = mem[_1313 + 32]
                mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor3
                mem[mem[64] + 100] = _1518
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor3, _1518
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1529 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1529]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
                _1542 = mem[_1313 + 128]
                mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor4
                mem[mem[64] + 100] = _1542
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor4, _1542
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1559 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1559]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ORACLE_FEE'
                if mem[_1280 + 192] <= 0:
                    if not mem[_1280 + 320]:
                        _1597 = mem[_1280]
                        _1598 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1597
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1598
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1597, msg.sender, _1598
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1616 = mem[_1280]
                        _1617 = mem[_1280 + 256]
                        _1618 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1616
                        mem[mem[64] + 36] = address(_1617)
                        mem[mem[64] + 68] = _1618
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1616, address(_1617), _1618
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1683 = mem[_1280]
                        _1684 = mem[_1280 + 256]
                        _1685 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1683
                        mem[mem[64] + 36] = address(_1684)
                        mem[mem[64] + 68] = _1685
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1683, address(_1684), _1685
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1737 = mem[_1280]
                        _1738 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1737
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1738
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1737, msg.sender, _1738
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1838 = mem[_1280]
                        _1839 = mem[_1280 + 256]
                        _1868 = mem[_1280 + 32]
                        _1869 = mem[_1280 + 64]
                        _1870 = mem[_1280 + 96]
                        _1871 = mem[_1280 + 128]
                        _1872 = mem[_1280 + 160]
                        _1873 = mem[_1280 + 192]
                        _1874 = mem[_1280 + 224]
                        _1875 = mem[_1280 + 256]
                        _1876 = mem[_1280 + 288]
                        _1877 = mem[_1280 + 320]
                        _1878 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _1868
                        mem[mem[64] + 96] = _1869
                        mem[mem[64] + 128] = _1870
                        mem[mem[64] + 160] = _1871
                        mem[mem[64] + 192] = _1872
                        mem[mem[64] + 224] = _1873
                        mem[mem[64] + 256] = _1874
                        mem[mem[64] + 288] = address(_1875)
                        mem[mem[64] + 308] = address(_1876)
                        mem[mem[64] + 328] = bool(_1877) << 248
                        _1879 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _1881 = sha3(mem[_1879 + 32 len mem[_1879]])
                        mem[_1878 + 329] = _1466
                        mem[_1878 + 361] = _1881
                        mem[_1878 + 393] = mem[_1280]
                        mem[_1878 + 425] = mem[_1280 + 32]
                        mem[_1878 + 457] = mem[_1280 + 64]
                        mem[_1878 + 489] = mem[_1280 + 96]
                        mem[_1878 + 521] = mem[_1280 + 128]
                        mem[_1878 + 553] = mem[_1280 + 160]
                        mem[_1878 + 585] = mem[_1280 + 192]
                        mem[_1878 + 617] = mem[_1280 + 224]
                        mem[_1878 + 649] = mem[_1280 + 268 len 20]
                        mem[_1878 + 681] = mem[_1280 + 300 len 20]
                        mem[_1878 + 713] = bool(mem[_1280 + 320])
                        mem[_1878 + 745] = mem[_1313]
                        mem[_1878 + 777] = mem[_1313 + 32]
                        mem[_1878 + 809] = mem[_1313 + 64]
                        mem[_1878 + 841] = mem[_1313 + 96]
                        mem[_1878 + 873] = mem[_1313 + 128]
                        mem[_1878 + 905] = mem[_1313 + 160]
                        mem[_1878 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1466, _1881, mem[_1878 + 393 len 576], address(_1839), _1838, msg.sender
                    else:
                        _1600 = mem[_1280]
                        _1601 = mem[_1280 + 256]
                        _1602 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1600
                        mem[mem[64] + 36] = address(_1601)
                        mem[mem[64] + 68] = _1602
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1600, address(_1601), _1602
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1620 = mem[_1280]
                        _1621 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1620
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1621
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1620, msg.sender, _1621
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1687 = mem[_1280]
                        _1688 = mem[_1280 + 256]
                        _1689 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1687
                        mem[mem[64] + 36] = address(_1688)
                        mem[mem[64] + 68] = _1689
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1687, address(_1688), _1689
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1740 = mem[_1280]
                        _1741 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1740
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1741
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1740, msg.sender, _1741
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1840 = mem[_1280]
                        _1841 = mem[_1280 + 256]
                        _1883 = mem[_1280 + 32]
                        _1884 = mem[_1280 + 64]
                        _1885 = mem[_1280 + 96]
                        _1886 = mem[_1280 + 128]
                        _1887 = mem[_1280 + 160]
                        _1888 = mem[_1280 + 192]
                        _1889 = mem[_1280 + 224]
                        _1890 = mem[_1280 + 256]
                        _1891 = mem[_1280 + 288]
                        _1892 = mem[_1280 + 320]
                        _1893 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _1883
                        mem[mem[64] + 96] = _1884
                        mem[mem[64] + 128] = _1885
                        mem[mem[64] + 160] = _1886
                        mem[mem[64] + 192] = _1887
                        mem[mem[64] + 224] = _1888
                        mem[mem[64] + 256] = _1889
                        mem[mem[64] + 288] = address(_1890)
                        mem[mem[64] + 308] = address(_1891)
                        mem[mem[64] + 328] = bool(_1892) << 248
                        _1894 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _1896 = sha3(mem[_1894 + 32 len mem[_1894]])
                        mem[_1893 + 329] = _1466
                        mem[_1893 + 361] = _1896
                        mem[_1893 + 393] = mem[_1280]
                        mem[_1893 + 425] = mem[_1280 + 32]
                        mem[_1893 + 457] = mem[_1280 + 64]
                        mem[_1893 + 489] = mem[_1280 + 96]
                        mem[_1893 + 521] = mem[_1280 + 128]
                        mem[_1893 + 553] = mem[_1280 + 160]
                        mem[_1893 + 585] = mem[_1280 + 192]
                        mem[_1893 + 617] = mem[_1280 + 224]
                        mem[_1893 + 649] = mem[_1280 + 268 len 20]
                        mem[_1893 + 681] = mem[_1280 + 300 len 20]
                        mem[_1893 + 713] = bool(mem[_1280 + 320])
                        mem[_1893 + 745] = mem[_1313]
                        mem[_1893 + 777] = mem[_1313 + 32]
                        mem[_1893 + 809] = mem[_1313 + 64]
                        mem[_1893 + 841] = mem[_1313 + 96]
                        mem[_1893 + 873] = mem[_1313 + 128]
                        mem[_1893 + 905] = mem[_1313 + 160]
                        mem[_1893 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1466, _1896, mem[_1893 + 393 len 576], address(_1841), _1840, msg.sender
                else:
                    _1578 = mem[_1280 + 288]
                    _1579 = mem[_1313 + 192]
                    mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_1578)
                    mem[mem[64] + 100] = _1579
                    require ext_code.size(stor1)
                    call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], msg.sender, address(_1578), _1579
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_1629]:
                        revert with 0, 'CANNOT_TRANSFER_RELAYER_TAKER_FEE'
                    if not mem[_1280 + 320]:
                        _1691 = mem[_1280]
                        _1692 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1691
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1692
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1691, msg.sender, _1692
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1743 = mem[_1280]
                        _1744 = mem[_1280 + 256]
                        _1745 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1743
                        mem[mem[64] + 36] = address(_1744)
                        mem[mem[64] + 68] = _1745
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1743, address(_1744), _1745
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1842 = mem[_1280]
                        _1843 = mem[_1280 + 256]
                        _1844 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1842
                        mem[mem[64] + 36] = address(_1843)
                        mem[mem[64] + 68] = _1844
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1842, address(_1843), _1844
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1938 = mem[_1280]
                        _1939 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1938
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1939
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1938, msg.sender, _1939
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2065 = mem[_1280]
                        _2066 = mem[_1280 + 256]
                        _2086 = mem[_1280 + 32]
                        _2087 = mem[_1280 + 64]
                        _2088 = mem[_1280 + 96]
                        _2089 = mem[_1280 + 128]
                        _2090 = mem[_1280 + 160]
                        _2091 = mem[_1280 + 192]
                        _2092 = mem[_1280 + 224]
                        _2093 = mem[_1280 + 256]
                        _2094 = mem[_1280 + 288]
                        _2095 = mem[_1280 + 320]
                        _2096 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2086
                        mem[mem[64] + 96] = _2087
                        mem[mem[64] + 128] = _2088
                        mem[mem[64] + 160] = _2089
                        mem[mem[64] + 192] = _2090
                        mem[mem[64] + 224] = _2091
                        mem[mem[64] + 256] = _2092
                        mem[mem[64] + 288] = address(_2093)
                        mem[mem[64] + 308] = address(_2094)
                        mem[mem[64] + 328] = bool(_2095) << 248
                        _2097 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2099 = sha3(mem[_2097 + 32 len mem[_2097]])
                        mem[_2096 + 329] = _1466
                        mem[_2096 + 361] = _2099
                        mem[_2096 + 393] = mem[_1280]
                        mem[_2096 + 425] = mem[_1280 + 32]
                        mem[_2096 + 457] = mem[_1280 + 64]
                        mem[_2096 + 489] = mem[_1280 + 96]
                        mem[_2096 + 521] = mem[_1280 + 128]
                        mem[_2096 + 553] = mem[_1280 + 160]
                        mem[_2096 + 585] = mem[_1280 + 192]
                        mem[_2096 + 617] = mem[_1280 + 224]
                        mem[_2096 + 649] = mem[_1280 + 268 len 20]
                        mem[_2096 + 681] = mem[_1280 + 300 len 20]
                        mem[_2096 + 713] = bool(mem[_1280 + 320])
                        mem[_2096 + 745] = mem[_1313]
                        mem[_2096 + 777] = mem[_1313 + 32]
                        mem[_2096 + 809] = mem[_1313 + 64]
                        mem[_2096 + 841] = mem[_1313 + 96]
                        mem[_2096 + 873] = mem[_1313 + 128]
                        mem[_2096 + 905] = mem[_1313 + 160]
                        mem[_2096 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1466, _2099, mem[_2096 + 393 len 576], address(_2066), _2065, msg.sender
                    else:
                        _1694 = mem[_1280]
                        _1695 = mem[_1280 + 256]
                        _1696 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1694
                        mem[mem[64] + 36] = address(_1695)
                        mem[mem[64] + 68] = _1696
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1694, address(_1695), _1696
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1747 = mem[_1280]
                        _1748 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1747
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1748
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1747, msg.sender, _1748
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1846 = mem[_1280]
                        _1847 = mem[_1280 + 256]
                        _1848 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1846
                        mem[mem[64] + 36] = address(_1847)
                        mem[mem[64] + 68] = _1848
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1846, address(_1847), _1848
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1941 = mem[_1280]
                        _1942 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1941
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1942
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1941, msg.sender, _1942
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2067 = mem[_1280]
                        _2068 = mem[_1280 + 256]
                        _2101 = mem[_1280 + 32]
                        _2102 = mem[_1280 + 64]
                        _2103 = mem[_1280 + 96]
                        _2104 = mem[_1280 + 128]
                        _2105 = mem[_1280 + 160]
                        _2106 = mem[_1280 + 192]
                        _2107 = mem[_1280 + 224]
                        _2108 = mem[_1280 + 256]
                        _2109 = mem[_1280 + 288]
                        _2110 = mem[_1280 + 320]
                        _2111 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2101
                        mem[mem[64] + 96] = _2102
                        mem[mem[64] + 128] = _2103
                        mem[mem[64] + 160] = _2104
                        mem[mem[64] + 192] = _2105
                        mem[mem[64] + 224] = _2106
                        mem[mem[64] + 256] = _2107
                        mem[mem[64] + 288] = address(_2108)
                        mem[mem[64] + 308] = address(_2109)
                        mem[mem[64] + 328] = bool(_2110) << 248
                        _2112 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2114 = sha3(mem[_2112 + 32 len mem[_2112]])
                        mem[_2111 + 329] = _1466
                        mem[_2111 + 361] = _2114
                        mem[_2111 + 393] = mem[_1280]
                        mem[_2111 + 425] = mem[_1280 + 32]
                        mem[_2111 + 457] = mem[_1280 + 64]
                        mem[_2111 + 489] = mem[_1280 + 96]
                        mem[_2111 + 521] = mem[_1280 + 128]
                        mem[_2111 + 553] = mem[_1280 + 160]
                        mem[_2111 + 585] = mem[_1280 + 192]
                        mem[_2111 + 617] = mem[_1280 + 224]
                        mem[_2111 + 649] = mem[_1280 + 268 len 20]
                        mem[_2111 + 681] = mem[_1280 + 300 len 20]
                        mem[_2111 + 713] = bool(mem[_1280 + 320])
                        mem[_2111 + 745] = mem[_1313]
                        mem[_2111 + 777] = mem[_1313 + 32]
                        mem[_2111 + 809] = mem[_1313 + 64]
                        mem[_2111 + 841] = mem[_1313 + 96]
                        mem[_2111 + 873] = mem[_1313 + 128]
                        mem[_2111 + 905] = mem[_1313 + 160]
                        mem[_2111 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1466, _2114, mem[_2111 + 393 len 576], address(_2068), _2067, msg.sender
            else:
                _1509 = mem[_1280 + 256]
                _1510 = mem[_1280 + 288]
                _1511 = mem[_1313 + 160]
                mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                mem[mem[64] + 36] = address(_1509)
                mem[mem[64] + 68] = address(_1510)
                mem[mem[64] + 100] = _1511
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_1509), address(_1510), _1511
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1526 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1526]:
                    revert with 0, 'CANNOT_TRANSFER_RELAYER_MAKER_FEE'
                _1548 = mem[_1313 + 32]
                mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor3
                mem[mem[64] + 100] = _1548
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor3, _1548
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1560 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1560]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ESCROW'
                _1581 = mem[_1313 + 128]
                mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor4
                mem[mem[64] + 100] = _1581
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, stor4, _1581
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1630 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1630]:
                    revert with 0, 'CANNOT_TRANSFER_TAKER_ORACLE_FEE'
                if mem[_1280 + 192] <= 0:
                    if not mem[_1280 + 320]:
                        _1698 = mem[_1280]
                        _1699 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1698
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1699
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1698, msg.sender, _1699
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1750 = mem[_1280]
                        _1751 = mem[_1280 + 256]
                        _1752 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1750
                        mem[mem[64] + 36] = address(_1751)
                        mem[mem[64] + 68] = _1752
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1750, address(_1751), _1752
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1850 = mem[_1280]
                        _1851 = mem[_1280 + 256]
                        _1852 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1850
                        mem[mem[64] + 36] = address(_1851)
                        mem[mem[64] + 68] = _1852
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1850, address(_1851), _1852
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1944 = mem[_1280]
                        _1945 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1944
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1945
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1944, msg.sender, _1945
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2069 = mem[_1280]
                        _2070 = mem[_1280 + 256]
                        _2116 = mem[_1280 + 32]
                        _2117 = mem[_1280 + 64]
                        _2118 = mem[_1280 + 96]
                        _2119 = mem[_1280 + 128]
                        _2120 = mem[_1280 + 160]
                        _2121 = mem[_1280 + 192]
                        _2122 = mem[_1280 + 224]
                        _2123 = mem[_1280 + 256]
                        _2124 = mem[_1280 + 288]
                        _2125 = mem[_1280 + 320]
                        _2126 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2116
                        mem[mem[64] + 96] = _2117
                        mem[mem[64] + 128] = _2118
                        mem[mem[64] + 160] = _2119
                        mem[mem[64] + 192] = _2120
                        mem[mem[64] + 224] = _2121
                        mem[mem[64] + 256] = _2122
                        mem[mem[64] + 288] = address(_2123)
                        mem[mem[64] + 308] = address(_2124)
                        mem[mem[64] + 328] = bool(_2125) << 248
                        _2127 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2129 = sha3(mem[_2127 + 32 len mem[_2127]])
                        mem[_2126 + 329] = _1466
                        mem[_2126 + 361] = _2129
                        mem[_2126 + 393] = mem[_1280]
                        mem[_2126 + 425] = mem[_1280 + 32]
                        mem[_2126 + 457] = mem[_1280 + 64]
                        mem[_2126 + 489] = mem[_1280 + 96]
                        mem[_2126 + 521] = mem[_1280 + 128]
                        mem[_2126 + 553] = mem[_1280 + 160]
                        mem[_2126 + 585] = mem[_1280 + 192]
                        mem[_2126 + 617] = mem[_1280 + 224]
                        mem[_2126 + 649] = mem[_1280 + 268 len 20]
                        mem[_2126 + 681] = mem[_1280 + 300 len 20]
                        mem[_2126 + 713] = bool(mem[_1280 + 320])
                        mem[_2126 + 745] = mem[_1313]
                        mem[_2126 + 777] = mem[_1313 + 32]
                        mem[_2126 + 809] = mem[_1313 + 64]
                        mem[_2126 + 841] = mem[_1313 + 96]
                        mem[_2126 + 873] = mem[_1313 + 128]
                        mem[_2126 + 905] = mem[_1313 + 160]
                        mem[_2126 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1466, _2129, mem[_2126 + 393 len 576], address(_2070), _2069, msg.sender
                    else:
                        _1701 = mem[_1280]
                        _1702 = mem[_1280 + 256]
                        _1703 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1701
                        mem[mem[64] + 36] = address(_1702)
                        mem[mem[64] + 68] = _1703
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1701, address(_1702), _1703
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1754 = mem[_1280]
                        _1755 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1754
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1755
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1754, msg.sender, _1755
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1854 = mem[_1280]
                        _1855 = mem[_1280 + 256]
                        _1856 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1854
                        mem[mem[64] + 36] = address(_1855)
                        mem[mem[64] + 68] = _1856
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1854, address(_1855), _1856
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1947 = mem[_1280]
                        _1948 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1947
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1948
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _1947, msg.sender, _1948
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2071 = mem[_1280]
                        _2072 = mem[_1280 + 256]
                        _2131 = mem[_1280 + 32]
                        _2132 = mem[_1280 + 64]
                        _2133 = mem[_1280 + 96]
                        _2134 = mem[_1280 + 128]
                        _2135 = mem[_1280 + 160]
                        _2136 = mem[_1280 + 192]
                        _2137 = mem[_1280 + 224]
                        _2138 = mem[_1280 + 256]
                        _2139 = mem[_1280 + 288]
                        _2140 = mem[_1280 + 320]
                        _2141 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2131
                        mem[mem[64] + 96] = _2132
                        mem[mem[64] + 128] = _2133
                        mem[mem[64] + 160] = _2134
                        mem[mem[64] + 192] = _2135
                        mem[mem[64] + 224] = _2136
                        mem[mem[64] + 256] = _2137
                        mem[mem[64] + 288] = address(_2138)
                        mem[mem[64] + 308] = address(_2139)
                        mem[mem[64] + 328] = bool(_2140) << 248
                        _2142 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2144 = sha3(mem[_2142 + 32 len mem[_2142]])
                        mem[_2141 + 329] = _1466
                        mem[_2141 + 361] = _2144
                        mem[_2141 + 393] = mem[_1280]
                        mem[_2141 + 425] = mem[_1280 + 32]
                        mem[_2141 + 457] = mem[_1280 + 64]
                        mem[_2141 + 489] = mem[_1280 + 96]
                        mem[_2141 + 521] = mem[_1280 + 128]
                        mem[_2141 + 553] = mem[_1280 + 160]
                        mem[_2141 + 585] = mem[_1280 + 192]
                        mem[_2141 + 617] = mem[_1280 + 224]
                        mem[_2141 + 649] = mem[_1280 + 268 len 20]
                        mem[_2141 + 681] = mem[_1280 + 300 len 20]
                        mem[_2141 + 713] = bool(mem[_1280 + 320])
                        mem[_2141 + 745] = mem[_1313]
                        mem[_2141 + 777] = mem[_1313 + 32]
                        mem[_2141 + 809] = mem[_1313 + 64]
                        mem[_2141 + 841] = mem[_1313 + 96]
                        mem[_2141 + 873] = mem[_1313 + 128]
                        mem[_2141 + 905] = mem[_1313 + 160]
                        mem[_2141 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1466, _2144, mem[_2141 + 393 len 576], address(_2072), _2071, msg.sender
                else:
                    _1648 = mem[_1280 + 288]
                    _1649 = mem[_1313 + 192]
                    mem[mem[64] + 4] = mem[_1294 + 12 len 20]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_1648)
                    mem[mem[64] + 100] = _1649
                    require ext_code.size(stor1)
                    call stor1.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], msg.sender, address(_1648), _1649
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1760 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_1760]:
                        revert with 0, 'CANNOT_TRANSFER_RELAYER_TAKER_FEE'
                    if not mem[_1280 + 320]:
                        _1858 = mem[_1280]
                        _1859 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1858
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1859
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1858, msg.sender, _1859
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1950 = mem[_1280]
                        _1951 = mem[_1280 + 256]
                        _1952 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1950
                        mem[mem[64] + 36] = address(_1951)
                        mem[mem[64] + 68] = _1952
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1950, address(_1951), _1952
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2073 = mem[_1280]
                        _2074 = mem[_1280 + 256]
                        _2075 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2073
                        mem[mem[64] + 36] = address(_2074)
                        mem[mem[64] + 68] = _2075
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2073, address(_2074), _2075
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2189 = mem[_1280]
                        _2190 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2189
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _2190
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2189, msg.sender, _2190
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2291 = mem[_1280]
                        _2292 = mem[_1280 + 256]
                        _2298 = mem[_1280 + 32]
                        _2299 = mem[_1280 + 64]
                        _2300 = mem[_1280 + 96]
                        _2301 = mem[_1280 + 128]
                        _2302 = mem[_1280 + 160]
                        _2303 = mem[_1280 + 192]
                        _2304 = mem[_1280 + 224]
                        _2305 = mem[_1280 + 256]
                        _2306 = mem[_1280 + 288]
                        _2307 = mem[_1280 + 320]
                        _2308 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2298
                        mem[mem[64] + 96] = _2299
                        mem[mem[64] + 128] = _2300
                        mem[mem[64] + 160] = _2301
                        mem[mem[64] + 192] = _2302
                        mem[mem[64] + 224] = _2303
                        mem[mem[64] + 256] = _2304
                        mem[mem[64] + 288] = address(_2305)
                        mem[mem[64] + 308] = address(_2306)
                        mem[mem[64] + 328] = bool(_2307) << 248
                        _2309 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2311 = sha3(mem[_2309 + 32 len mem[_2309]])
                        mem[_2308 + 329] = _1466
                        mem[_2308 + 361] = _2311
                        mem[_2308 + 393] = mem[_1280]
                        mem[_2308 + 425] = mem[_1280 + 32]
                        mem[_2308 + 457] = mem[_1280 + 64]
                        mem[_2308 + 489] = mem[_1280 + 96]
                        mem[_2308 + 521] = mem[_1280 + 128]
                        mem[_2308 + 553] = mem[_1280 + 160]
                        mem[_2308 + 585] = mem[_1280 + 192]
                        mem[_2308 + 617] = mem[_1280 + 224]
                        mem[_2308 + 649] = mem[_1280 + 268 len 20]
                        mem[_2308 + 681] = mem[_1280 + 300 len 20]
                        mem[_2308 + 713] = bool(mem[_1280 + 320])
                        mem[_2308 + 745] = mem[_1313]
                        mem[_2308 + 777] = mem[_1313 + 32]
                        mem[_2308 + 809] = mem[_1313 + 64]
                        mem[_2308 + 841] = mem[_1313 + 96]
                        mem[_2308 + 873] = mem[_1313 + 128]
                        mem[_2308 + 905] = mem[_1313 + 160]
                        mem[_2308 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1466, _2311, mem[_2308 + 393 len 576], address(_2292), _2291, msg.sender
                    else:
                        _1861 = mem[_1280]
                        _1862 = mem[_1280 + 256]
                        _1863 = mem[_1313 + 64]
                        mem[mem[64]] = 0x10425f0800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1861
                        mem[mem[64] + 36] = address(_1862)
                        mem[mem[64] + 68] = _1863
                        require ext_code.size(stor3)
                        call stor3.0x10425f08 with:
                             gas gas_remaining wei
                            args _1861, address(_1862), _1863
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1954 = mem[_1280]
                        _1955 = mem[_1313 + 64]
                        mem[mem[64]] = 0x7ca519200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1954
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1955
                        require ext_code.size(stor3)
                        call stor3.0x7ca5192 with:
                             gas gas_remaining wei
                            args _1954, msg.sender, _1955
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2077 = mem[_1280]
                        _2078 = mem[_1280 + 256]
                        _2079 = mem[_1313]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2077
                        mem[mem[64] + 36] = address(_2078)
                        mem[mem[64] + 68] = _2079
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2077, address(_2078), _2079
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2192 = mem[_1280]
                        _2193 = mem[_1313 + 32]
                        mem[mem[64]] = 0xc44113c900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2192
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _2193
                        require ext_code.size(stor3)
                        call stor3.0xc44113c9 with:
                             gas gas_remaining wei
                            args _2192, msg.sender, _2193
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2293 = mem[_1280]
                        _2294 = mem[_1280 + 256]
                        _2313 = mem[_1280 + 32]
                        _2314 = mem[_1280 + 64]
                        _2315 = mem[_1280 + 96]
                        _2316 = mem[_1280 + 128]
                        _2317 = mem[_1280 + 160]
                        _2318 = mem[_1280 + 192]
                        _2319 = mem[_1280 + 224]
                        _2320 = mem[_1280 + 256]
                        _2321 = mem[_1280 + 288]
                        _2322 = mem[_1280 + 320]
                        _2323 = mem[64]
                        mem[mem[64] + 32] = mem[_1280]
                        mem[mem[64] + 64] = _2313
                        mem[mem[64] + 96] = _2314
                        mem[mem[64] + 128] = _2315
                        mem[mem[64] + 160] = _2316
                        mem[mem[64] + 192] = _2317
                        mem[mem[64] + 224] = _2318
                        mem[mem[64] + 256] = _2319
                        mem[mem[64] + 288] = address(_2320)
                        mem[mem[64] + 308] = address(_2321)
                        mem[mem[64] + 328] = bool(_2322) << 248
                        _2324 = mem[64]
                        mem[mem[64]] = 297
                        mem[64] = mem[64] + 329
                        _2326 = sha3(mem[_2324 + 32 len mem[_2324]])
                        mem[_2323 + 329] = _1466
                        mem[_2323 + 361] = _2326
                        mem[_2323 + 393] = mem[_1280]
                        mem[_2323 + 425] = mem[_1280 + 32]
                        mem[_2323 + 457] = mem[_1280 + 64]
                        mem[_2323 + 489] = mem[_1280 + 96]
                        mem[_2323 + 521] = mem[_1280 + 128]
                        mem[_2323 + 553] = mem[_1280 + 160]
                        mem[_2323 + 585] = mem[_1280 + 192]
                        mem[_2323 + 617] = mem[_1280 + 224]
                        mem[_2323 + 649] = mem[_1280 + 268 len 20]
                        mem[_2323 + 681] = mem[_1280 + 300 len 20]
                        mem[_2323 + 713] = bool(mem[_1280 + 320])
                        mem[_2323 + 745] = mem[_1313]
                        mem[_2323 + 777] = mem[_1313 + 32]
                        mem[_2323 + 809] = mem[_1313 + 64]
                        mem[_2323 + 841] = mem[_1313 + 96]
                        mem[_2323 + 873] = mem[_1313 + 128]
                        mem[_2323 + 905] = mem[_1313 + 160]
                        mem[_2323 + 937] = mem[_1313 + 192]
                        emit 0x3bd2463f: _1466, _2326, mem[_2323 + 393 len 576], address(_2294), _2293, msg.sender
        idx = idx + 1
        continue 
    require 0 < mem[96]
    require ext_code.size(stor3)
    call stor3.0x678ae87d with:
         gas gas_remaining wei
        args msg.sender, mem[mem[128]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
