contract main {


// =======================  Init code  ======================


address stor0;
mapping of struct stor1;

function _fallback() {
    mem[96 len -834] = code.data[1158 len -834]
    mem[64] = -738
    _2 = mem[96]
    _3 = mem[128]
    stor0 = msg.sender
    require stor0 == msg.sender
    _13 = mem[mem[96] + 96]
    idx = 0
    while uint8(idx) < _13:
        _14 = mem[64]
        mem[64] = mem[64] + 64
        require uint8(idx) < mem[_3 + 96]
        mem[_14] = mem[(32 * uint8(idx)) + _3 + 128]
        mem[_14 + 32] = uint64(block.timestamp)
        require uint8(idx) < mem[_2 + 96]
        mem[0] = Mask(64, 192, mem[(32 * uint8(idx)) + _2 + 128])
        mem[32] = 1
        stor1[Mask(64, 192, mem[(32 * uint8(idx)) + _2 + 128])].field_0 = mem[_14]
        stor1[Mask(64, 192, mem[(32 * uint8(idx)) + _2 + 128])].field_256 = uint64(block.timestamp)
        idx = idx + 1
        continue 
    return code.data[324 len 834]
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
    return sub_edc70836[Mask(64, 192, arg1)].field_0, sub_edc70836[Mask(64, 192, arg1)].field_256
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
        _13 = mem[64]
        mem[64] = mem[64] + 64
        require uint8(idx) < mem[(32 * arg1.length) + 128]
        mem[_13] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[_13 + 32] = uint64(block.timestamp)
        require uint8(idx) < mem[96]
        mem[0] = Mask(64, 192, mem[(32 * uint8(idx)) + 128])
        mem[32] = 1
        sub_edc70836[Mask(64, 192, mem[(32 * uint8(idx)) + 128])].field_0 = mem[_13]
        sub_edc70836[Mask(64, 192, mem[(32 * uint8(idx)) + 128])].field_256 = uint64(block.timestamp)
        idx = idx + 1
        continue 
}



}
