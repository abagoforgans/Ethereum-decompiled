contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 7023]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_986ba392;
array of uint256 stor99;

function sub_986ba392(?) {
    mem[384] = sub_986ba392[arg1][2].field_0
    idx = 384
    s = 0
    while sub_986ba392[arg1][2].length + 384 > idx + 32:
        mem[idx + 32] = sub_986ba392[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_986ba392[arg1].field_0), 
           address(sub_986ba392[arg1].field_256),
           Array(len=sub_986ba392[arg1][2].length, data=mem[384 len sub_986ba392[arg1][2].length + (floor32(sub_986ba392[arg1][2].length - 1) + -sub_986ba392[arg1][2].length + 32 % 32)]),
           sub_986ba392[arg1].field_768,
           sub_986ba392[arg1].field_1024,
           sub_986ba392[arg1].field_1280,
           bool(uint8(sub_986ba392[arg1].field_1536)),
           bool(uint8(sub_986ba392[arg1].field_1544))
}

function _fallback() payable {
    revert
}

function refund(bytes32 arg1) {
    require not uint8(sub_986ba392[arg1].field_1544)
    if not uint8(sub_986ba392[arg1].field_1536):
        require uint8(sub_986ba392[arg1].field_1536)
    else:
        require address(sub_986ba392[arg1].field_0) == msg.sender
    require block.timestamp > sub_986ba392[arg1].field_1024
    Mask(248, 0, sub_986ba392[arg1].field_1544) = 1
    mem[96] = sub_986ba392[arg1][2].field_0
    idx = 96
    s = 0
    while sub_986ba392[arg1][2].length + 96 > idx + 32:
        mem[idx + 32] = sub_986ba392[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_986ba392[arg1][2].length + 96] = 2
    require uint8(sub_986ba392[sha3(mem[96 len sub_986ba392[arg1][2].length + 32])].field_0) <= 1
    if uint8(sub_986ba392[sha3(mem[96 len sub_986ba392[arg1][2].length + 32])].field_0):
        call address(sub_986ba392[arg1].field_0) with:
           value sub_986ba392[arg1].field_768 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(address(sub_986ba392[sha3(mem[96 len sub_986ba392[arg1][2].length + 32])].field_8))
        call address(sub_986ba392[sha3(mem[96 len sub_986ba392[arg1][2].length + 32])].field_8).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(sub_986ba392[arg1].field_0), sub_986ba392[arg1].field_768
        require ext_call.success
        require ext_call.return_data[0]
    mem[256] = sub_986ba392[arg1][2].field_0
    idx = 256
    s = 0
    while sub_986ba392[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = sub_986ba392[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x9e0c2e9b: address(sub_986ba392[arg1].field_0), Array(len=sub_986ba392[arg1][2].length, data=mem[256 len sub_986ba392[arg1][2].length + (floor32(sub_986ba392[arg1][2].length - 1) + -sub_986ba392[arg1][2].length + 32 % 32)]), sub_986ba392[arg1].field_768, arg1
}

function sub_21a8528b(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    if not uint8(sub_986ba392[arg3].field_1536):
        if uint8(sub_986ba392[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_168):
            require uint8(sub_986ba392[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) <= 1
            if uint8(sub_986ba392[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0):
                uint8(sub_986ba392[arg3].field_1536) = 1
                sub_986ba392[arg3][2][].field_0 = Array(len=arg1.length, data=arg1[all])
                address(sub_986ba392[arg3].field_0) = msg.sender
                address(sub_986ba392[arg3].field_256) = arg4
                sub_986ba392[arg3].field_768 = msg.value
                sub_986ba392[arg3].field_1280 = block.timestamp
                sub_986ba392[arg3].field_1024 = block.timestamp + arg5
                Mask(248, 0, sub_986ba392[arg3].field_1544) = 0
                emit 0x2075c73b: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), msg.value, arg3, sub_986ba392[arg3].field_1024
            else:
                require ext_code.size(address(sub_986ba392[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8))
                call address(sub_986ba392[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8).0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), arg2
                require ext_call.success
                require ext_call.return_data[0]
                uint8(sub_986ba392[arg3].field_1536) = 1
                sub_986ba392[arg3][2][].field_0 = Array(len=arg1.length, data=arg1[all])
                address(sub_986ba392[arg3].field_0) = msg.sender
                address(sub_986ba392[arg3].field_256) = arg4
                sub_986ba392[arg3].field_768 = arg2
                sub_986ba392[arg3].field_1280 = block.timestamp
                sub_986ba392[arg3].field_1024 = block.timestamp + arg5
                Mask(248, 0, sub_986ba392[arg3].field_1544) = 0
                emit 0x2075c73b: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), arg2, arg3, sub_986ba392[arg3].field_1024
}

function claim(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    mem[ceil32(arg1.length) + 128] = hash
    require sha256hash.result
    require not uint8(sub_986ba392[hash].field_1544)
    if not uint8(sub_986ba392[hash].field_1536):
        require uint8(sub_986ba392[hash].field_1536)
    else:
        require address(sub_986ba392[hash].field_256) == msg.sender
    require block.timestamp < sub_986ba392[hash].field_1024
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    Mask(248, 0, sub_986ba392[hash].field_1544) = 1
    mem[ceil32(arg1.length) + 128] = sub_986ba392[hash][2].field_0
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + sub_986ba392[hash][2].length + 128 > idx + 32:
        mem[idx + 32] = sub_986ba392[hash][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + sub_986ba392[hash][2].length + 128] = 2
    require uint8(sub_986ba392[sha3(mem[ceil32(arg1.length) + 128 len sub_986ba392[hash][2].length + 32])].field_0) <= 1
    if uint8(sub_986ba392[sha3(mem[ceil32(arg1.length) + 128 len sub_986ba392[hash][2].length + 32])].field_0):
        call address(sub_986ba392[hash].field_256) with:
           value sub_986ba392[hash].field_768 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(address(sub_986ba392[sha3(mem[ceil32(arg1.length) + 128 len sub_986ba392[hash][2].length + 32])].field_8))
        call address(sub_986ba392[sha3(mem[ceil32(arg1.length) + 128 len sub_986ba392[hash][2].length + 32])].field_8).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(sub_986ba392[hash].field_256), sub_986ba392[hash].field_768
        require ext_call.success
        require ext_call.return_data[0]
    mem[ceil32(arg1.length) + 128] = address(sub_986ba392[hash].field_256)
    mem[ceil32(arg1.length) + 288] = sub_986ba392[hash][2].field_0
    idx = ceil32(arg1.length) + 288
    s = 0
    while ceil32(arg1.length) + sub_986ba392[hash][2].length + 288 > idx + 32:
        mem[idx + 32] = sub_986ba392[hash][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + sub_986ba392[hash][2].length + (floor32(sub_986ba392[hash][2].length - 1) + -sub_986ba392[hash][2].length + 32 % 32) + 288] = arg1.length
    mem[ceil32(arg1.length) + sub_986ba392[hash][2].length + (floor32(sub_986ba392[hash][2].length - 1) + -sub_986ba392[hash][2].length + 32 % 32) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x98ab2e66: address(sub_986ba392[hash].field_256), Array(len=sub_986ba392[hash][2].length, data=mem[ceil32(arg1.length) + 288 len sub_986ba392[hash][2].length + (floor32(sub_986ba392[hash][2].length - 1) + -sub_986ba392[hash][2].length + 32 % 32) + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), sub_986ba392[hash].field_768, sub_986ba392[hash][2].length + (floor32(sub_986ba392[hash][2].length - 1) + -sub_986ba392[hash][2].length + 32 % 32) + 160
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + sub_986ba392[hash][2].length + (floor32(sub_986ba392[hash][2].length - 1) + -sub_986ba392[hash][2].length + 32 % 32) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + sub_986ba392[hash][2].length + (floor32(sub_986ba392[hash][2].length - 1) + -sub_986ba392[hash][2].length + 32 % 32) + -(arg1.length % 32) + 352 len arg1.length % 32]
        emit 0x98ab2e66: address(sub_986ba392[hash].field_256), Array(len=sub_986ba392[hash][2].length, data=mem[ceil32(arg1.length) + 288 len sub_986ba392[hash][2].length + (floor32(sub_986ba392[hash][2].length - 1) + -sub_986ba392[hash][2].length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + sub_986ba392[hash][2].length + (floor32(sub_986ba392[hash][2].length - 1) + -sub_986ba392[hash][2].length + 32 % 32) + 320 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), sub_986ba392[hash].field_768, sub_986ba392[hash][2].length + (floor32(sub_986ba392[hash][2].length - 1) + -sub_986ba392[hash][2].length + 32 % 32) + 160
}

function sub_512a5a33(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == stor0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    require not uint8(sub_986ba392[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_168)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    if arg3:
        uint8(sub_986ba392[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0) = 0
    else:
        uint8(sub_986ba392[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0) = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    if arg3:
        address(sub_986ba392[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_8) = arg4
    Mask(88, 0, sub_986ba392[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_168) = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xaad709ac: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 288 len arg1.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128, address(arg4)
    else:
        mem[floor32(arg1.length) + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg1.length) + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
        emit 0xaad709ac: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 288 len floor32(arg1.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128, address(arg4)
}



}
