contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 792]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sendEther(address arg1, uint256 arg2) {
    require msg.sender == 0x328319cdb9a16462d17b65df1da61e0ffb3915c7
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_3d67a1d6(?) {
    mem[96 len 128] = call.data[4 len 128]
    mem[224] = 'giveBirth(uint256)'
    s = 0
    t = 0
    idx = 0
    while uint8(idx) < 4:
        u = 0
        v = s
        t = 0
        w = 0
        while uint16(t) < 256:
            if uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t)) > 2147483648:
                if uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t)) xor 2147483648 > block.number:
                    return 0
                if uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t)) xor 2147483648 < block.number - 8:
                    return 0
                if uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t)) xor 2147483648 >= block.number - 3:
                    u = uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t)) xor 2147483648
                    v = uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t))
                    t = t + 32
                    w = 0
                    continue 
                u = uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t)) xor 2147483648
                v = uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t))
                t = t + 64
                w = 1
                continue 
            if w:
                u = u
                v = uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t))
                t = t + 32
                w = w
                continue 
            if not uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t)):
                s = uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t))
                t = mem[(32 * uint8(idx)) + 96]
                idx = idx + 1
                continue 
            mem[0] = sha3('giveBirth(uint256)')
            mem[4] = uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t))
            call 0x06012c8cf97bead5deae237070f9587f8e7a266d with:
               funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                 gas 260000 wei
                args uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t))
            if gas_remaining >= 284000:
                u = u
                v = uint32(mem[(32 * uint8(idx)) + 96] / 2^uint16(t))
                t = t + 32
                w = w
                continue 
            else:
                return 0
        s = v
        t = mem[(32 * uint8(idx)) + 96]
        idx = idx + 1
        continue 
    return 0
}



}
