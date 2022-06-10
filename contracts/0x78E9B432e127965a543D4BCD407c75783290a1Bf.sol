contract main {




// =====================  Runtime code  =====================


#
#  - getCertificate(string arg1)
#
address sub_8a999417Address;
array of uint256 stor1;
uint256 total;
array of uint256 stor3;
array of struct stor5;
array of uint256 stor6;
array of uint256 stor99;

function getCreator() {
    return address(stor1.length)
}

function total() {
    return total
}

function sub_8a999417(?) {
    return sub_8a999417Address
}

function _fallback() payable {
    revert
}

function sub_a96ec5d8(?) payable {
    require calldata.size - 4 >= 32
    if address(stor1.length) != msg.sender:
        revert with 0, 'Only the creator can do this'
    sub_8a999417Address = arg1
}

function sub_b10403dc(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = arg5.length
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg5.length + 192] = 0
    if msg.value < 5 * 10^14:
        revert with 0, 'At least send 0.5 finney to pay'
    call sub_8a999417Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 192] = 3
    if uint8(stor5[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), ('cd', ('add', 4, ('param', 'arg5'))))), 0, 0, 0), ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('cd', ('add', 4, ('param', 'arg5')))), ('add', ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg5')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))))))].field_8):
        revert with 0, 'The certificate already exists'
    total++
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 224] = 96
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 256] = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 288] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 320] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 352] = 96
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 384] = arg4
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 416] = ceil32(arg1.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 448] = 96
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 704] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 736] = 96
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 480] = ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 704
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 768] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 800] = 96
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 512] = ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 768
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 544] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 576] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 608] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 832] = 96
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 864] = ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 256
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 896] = ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 384
    require arg6 <= 2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 928] = arg6
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 960] = 1
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 992] = block.timestamp
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 1024 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg1.length) + -(arg1.length % 32) + 1056 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + 1024] = 3
    stor[mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg1.length) + 1024 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg1.length, data=arg1[all])
    uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 1024, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = arg2
    stor[mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg1.length) + 1024 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][2][] = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    stor3[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 1024, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = arg4
    stor[mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg1.length) + 1024 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][4][] = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
    require arg6 <= 2
    uint8(stor5[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 1024, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = arg6
    Mask(248, 0, stor5[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 1024, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = 0
    Mask(248, 0, stor5[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 1024, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = 1
    stor6[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 1024, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = block.timestamp
}



}
