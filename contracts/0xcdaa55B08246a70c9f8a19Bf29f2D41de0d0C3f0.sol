contract main {




// =====================  Runtime code  =====================


array of struct userId;
address owner;

function userId() {
    return userId[0 len userId.length].field_0
}

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    emit 0x843666fd: block.timestamp
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_544541b3(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = uint256(userId.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 288
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + userId.length + 288 > idx + 32:
        mem[idx + 32] = userId[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 288] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 352 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0x5846cb51: Array(len=userId.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 128, arg1.length + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 160, block.timestamp
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + -(arg2.length % 32) + 384 len arg2.length % 32]
            emit 0x5846cb51: Array(len=userId.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 128, arg1.length + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 160, block.timestamp
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + -(arg1.length % 32) + 352 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 352] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 384 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0x5846cb51: Array(len=userId.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]), userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 128, floor32(arg1.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 192, block.timestamp
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + -(arg2.length % 32) + 416 len arg2.length % 32]
            emit 0x5846cb51: Array(len=userId.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]), userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 128, floor32(arg1.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 192, block.timestamp
}

function sign(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = uint256(userId.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 288
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + userId.length + 288 > idx + 32:
        mem[idx + 32] = userId[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 288] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 352 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0x5846cb51: Array(len=userId.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 128, arg1.length + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 160, block.timestamp
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + -(arg2.length % 32) + 384 len arg2.length % 32]
            emit 0x5846cb51: Array(len=userId.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 128, arg1.length + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 160, block.timestamp
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + -(arg1.length % 32) + 352 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 352] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 384 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0x5846cb51: Array(len=userId.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]), userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 128, floor32(arg1.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 192, block.timestamp
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + -(arg2.length % 32) + 416 len arg2.length % 32]
            emit 0x5846cb51: Array(len=userId.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 320 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]), userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 128, floor32(arg1.length) + userId.length + (floor32(userId.length - 1) + -userId.length + 32 % 32) + 192, block.timestamp
}



}
