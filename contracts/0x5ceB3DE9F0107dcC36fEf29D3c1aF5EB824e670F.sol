contract main {




// =====================  Runtime code  =====================


array of struct messages;

function getMessages() {
    return messages[0 len messages.length].field_0
}

function _fallback() payable {
    revert
}

function sub_f976ae5c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = messages.length
    mem[ceil32(arg1.length) + 160] = uint256(messages.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + messages.length + 128 > idx:
        mem[idx + 32] = messages[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(messages.length) + 160] = 1
    mem[ceil32(arg1.length) + ceil32(messages.length) + 192] = ' '
    mem[ceil32(arg1.length) + ceil32(messages.length) + 224] = messages.length + arg1.length + 1
    if messages.length + arg1.length + 1:
        mem[ceil32(arg1.length) + ceil32(messages.length) + 256 len 32 * messages.length + arg1.length + 1] = code.data[1407 len 32 * messages.length + arg1.length + 1]
    idx = 0
    s = 0
    while idx < messages.length:
        require idx < messages.length
        require s < messages.length + arg1.length + 1
        mem[ceil32(arg1.length) + ceil32(messages.length) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = messages.length
    while idx < 1:
        require idx < 1
        require s < messages.length + arg1.length + 1
        mem[ceil32(arg1.length) + ceil32(messages.length) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'messages', 0))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'messages', 0))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = messages.length + 1
    while idx < arg1.length:
        require idx < arg1.length
        require s < messages.length + arg1.length + 1
        mem[ceil32(arg1.length) + ceil32(messages.length) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    messages[].field_0 = Array(len=messages.length + arg1.length + 1, data=mem[ceil32(arg1.length) + ceil32(messages.length) + 256 len messages.length + arg1.length + 1])
    return 'The message is formed!'
}



}
