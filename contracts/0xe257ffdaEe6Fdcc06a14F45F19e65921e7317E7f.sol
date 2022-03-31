contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 1006]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;

function owner() {
    return owner
}

function suicide() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transfer(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function get(bytes8 arg1) {
    return stor1[Mask(64, 192, arg1)].field_0, 0, stor1[Mask(64, 192, arg1)].field_256
}

function sub_0b782313(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    idx = 0
    while uint8(idx) < arg1.length:
        _16 = mem[64]
        mem[64] = mem[64] + 64
        require uint8(idx) < mem[(32 * arg1.length) + 128]
        mem[_16] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[_16 + 32] = uint64(block.timestamp)
        require uint8(idx) < mem[96]
        mem[0] = Mask(64, 192, mem[(32 * uint8(idx)) + 128])
        mem[32] = 1
        stor1[Mask(64, 192, mem[(32 * uint8(idx)) + 128])].field_0 = mem[_16]
        stor1[Mask(64, 192, mem[(32 * uint8(idx)) + 128])].field_256 = uint64(block.timestamp)
        idx = idx + 1
        continue 
    emit 0xbb1f5afd 
}



}
