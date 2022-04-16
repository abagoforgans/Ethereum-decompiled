contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[60 len 1708]
}



// =====================  Runtime code  =====================


array of struct name;
address stor1;

function name() {
    return name[0 len name.length].field_0
}

function getName() {
    return name[0 len name.length].field_0
}

function kill() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function setName(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 256] = name.length
    mem[ceil32(arg1.length) + 288] = uint256(name.field_0)
    idx = ceil32(arg1.length) + 288
    s = 0
    while ceil32(arg1.length) + name.length + 288 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + 224] = name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 128
    mem[ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288] = arg1.length
    mem[ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x9c8a5a1d: msg.sender, Array(len=name.length, data=mem[ceil32(arg1.length) + 288 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 128
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + -(arg1.length % 32) + 352 len arg1.length % 32]
        emit 0x9c8a5a1d: msg.sender, Array(len=name.length, data=mem[ceil32(arg1.length) + 288 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 320 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 128
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 192] = uint256(name.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + name.length + 160 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=name.length, data=mem[ceil32(arg1.length) + 192 len name.length])
}



}
