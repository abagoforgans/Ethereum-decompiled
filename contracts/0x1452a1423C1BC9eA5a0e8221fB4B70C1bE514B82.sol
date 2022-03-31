contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[55 len 741]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_edc70836;

function get(bytes8 arg1) {
    return sub_edc70836[Mask(64, 192, arg1)].field_0, sub_edc70836[Mask(64, 192, arg1)].field_256
}

function owner() {
    return owner
}

function sub_edc70836(?) {
    return sub_edc70836[arg1].field_0, sub_edc70836[arg1].field_256
}

function _fallback() payable {
    revert 
}

function transfer(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_b9107cb2(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    idx = 0
    while uint8(idx) < arg1.length:
        _15 = mem[64]
        mem[64] = mem[64] + 64
        require uint8(idx) < mem[(32 * arg1.length) + 128]
        mem[_15] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[_15 + 32] = block.timestamp
        require uint8(idx) < mem[96]
        mem[0] = Mask(64, 192, mem[(32 * uint8(idx)) + 128])
        mem[32] = 1
        sub_edc70836[Mask(64, 192, mem[(32 * uint8(idx)) + 128])].field_0 = mem[_15]
        sub_edc70836[Mask(64, 192, mem[(32 * uint8(idx)) + 128])].field_256 = uint64(block.timestamp)
        idx = idx + 1
        continue 
    emit 0xbb1f5afd 
}



}
