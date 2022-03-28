contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    mem[96] = 95 * 10^15
    mem[128] = 19 * 10^16
    mem[160] = 475 * 10^15
    mem[192] = 95 * 10^16
    mem[224] = 475 * 10^16
    stor2 = 5
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = 96
    while 256 > idx:
        uint64(stor[s].field_0) = mem[idx + 24 len 8]
        Mask(192, 0, stor[s].field_64) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad3
    while stor2 + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    return code.data[264 len 1310]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
array of uint256 stor2;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function setAquarium(address arg1) {
    if stor0 == msg.sender:
        stor1 = arg1
}

function slice(uint32[] arg1, uint8 arg2, uint8 arg3) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = arg3
    mem[64] = (32 * arg1.length) + (32 * uint8(arg3)) + 192
    idx = arg2
    while uint8(idx) < uint8(arg2 + arg3):
        require uint8(idx) < arg1.length
        require uint8(idx - arg2) < mem[(32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * uint8(idx - arg2)) + 192] = mem[(32 * uint8(idx)) + 156 len 4]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + (32 * uint8(arg3)) + 192] = 32
    mem[(32 * arg1.length) + (32 * uint8(arg3)) + 224] = mem[(32 * arg1.length) + 160]
    if Mask(251, 0, mem[(32 * arg1.length) + 160]):
        mem[(32 * arg1.length) + (32 * uint8(arg3)) + 256] = mem[(32 * arg1.length) + 192]
        s = (32 * arg1.length) + 192
        t = (32 * arg1.length) + (32 * uint8(arg3)) + 256
        s = 32 * mem[(32 * arg1.length) + 160]
        while s > 32:
            mem[t + 32] = mem[None + 32]
            s = None + 32
            t = t + 32
            s = s - 32
            continue 
    return 32, mem[(32 * arg1.length) + (32 * uint8(arg3)) + 224 len (32 * mem[(32 * arg1.length) + 160]) + 32]
}

function transfer(uint8[] arg1, uint8[] arg2, uint32[] arg3) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require uint8(idx) < arg1.length
        require mem[(32 * uint8(idx)) + 159 len 1] < stor2.length
        mem[0] = 2
        idx = idx + 1
        s = s + (stor2[mem[(32 * uint8(idx)) + 159 len 1]] * mem[(32 * uint8(idx)) + (32 * arg1.length) + 191 len 1])
        continue 
    require msg.value >= s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    s = 0
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < mem[(32 * arg1.length) + 128]
        _82 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require uint8(idx) < mem[96]
        _84 = mem[(32 * uint8(idx)) + 128]
        require mem[(32 * uint8(idx)) + 159 len 1] < stor2.length
        mem[0] = 2
        require uint8(idx) < mem[96]
        _87 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < mem[(32 * arg1.length) + 128]
        _89 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        _90 = mem[64]
        mem[64] = mem[64] + 32
        mem[_90] = 0
        _91 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = uint8(_89)
            mem[64] = mem[64] + (32 * uint8(_89)) + 32
            t = s
            while uint8(t) < uint8(s + _89):
                require uint8(t) < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                require uint8(t - s) < mem[_91]
                mem[_91 + (32 * uint8(t - s)) + 32] = mem[(32 * uint8(t)) + (32 * arg2.length) + (32 * arg1.length) + 220 len 4]
                t = t + 1
                continue 
            mem[mem[64]] = 0xf410a26b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = uint8(_87)
            mem[mem[64] + 68] = 96
            mem[mem[64] + 100] = mem[_91]
            _120 = mem[_91]
            if not Mask(251, 0, mem[_91]):
                require ext_code.size(stor1)
                call stor1.0xf410a26b with:
                   value stor2[uint8(_84)] * uint8(_82) wei
                     gas gas_remaining - 9050 wei
                    args msg.sender, _87 << 248, 96, mem[mem[64] + 100 len (32 * mem[_91]) + 32]
            else:
                mem[mem[64] + 132] = mem[_91 + 32]
                v = _91 + 32
                w = mem[64] + 132
                u = 32 * _120
                while u > 32:
                    mem[w + 32] = mem[v + 32]
                    v = v + 32
                    w = w + 32
                    u = u - 32
                    continue 
                require ext_code.size(stor1)
                call stor1.0xf410a26b with:
                   value stor2[uint8(_84)] * uint8(_82) wei
                     gas gas_remaining - 9050 wei
                    args msg.sender, _87 << 248, 96, mem[mem[64] + 100 len (32 * _120) + 32]
        else:
            _93 = msize
            mem[msize] = uint8(_89)
            mem[64] = _93 + (32 * uint8(_89)) + 32
            t = s
            while uint8(t) < uint8(s + _89):
                require uint8(t) < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                require uint8(t - s) < mem[_93]
                mem[_93 + (32 * uint8(t - s)) + 32] = mem[(32 * uint8(t)) + (32 * arg2.length) + (32 * arg1.length) + 220 len 4]
                t = t + 1
                continue 
            mem[mem[64]] = 0xf410a26b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = uint8(_87)
            mem[mem[64] + 68] = 96
            mem[mem[64] + 100] = mem[_93]
            _123 = mem[_93]
            if not Mask(251, 0, mem[_93]):
                require ext_code.size(stor1)
                call stor1.0xf410a26b with:
                   value stor2[uint8(_84)] * uint8(_82) wei
                     gas gas_remaining - 9050 wei
                    args msg.sender, _87 << 248, 96, mem[mem[64] + 100 len (32 * mem[_93]) + 32]
            else:
                mem[mem[64] + 132] = mem[_93 + 32]
                v = _93 + 32
                w = mem[64] + 132
                u = 32 * _123
                while u > 32:
                    mem[w + 32] = mem[v + 32]
                    v = v + 32
                    w = w + 32
                    u = u - 32
                    continue 
                require ext_code.size(stor1)
                call stor1.0xf410a26b with:
                   value stor2[uint8(_84)] * uint8(_82) wei
                     gas gas_remaining - 9050 wei
                    args msg.sender, _87 << 248, 96, mem[mem[64] + 100 len (32 * _123) + 32]
        require ext_call.success
        require uint8(idx) < mem[(32 * arg1.length) + 128]
        s = mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] + s
        idx = idx + 1
        continue 
}



}
