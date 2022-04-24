contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1152]




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

function sub_c3fc2807(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 320
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160 len 160] = 0
    s = 0
    t = 0
    idx = 0
    t = 0
    while idx < arg1.length:
        require idx < mem[96]
        _31 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 156 len 4] > 2147483648:
            if uint32(mem[(32 * idx) + 128] xor 2147483648) > block.number:
                return 0
            if uint32(mem[(32 * idx) + 128] xor 2147483648) < block.number - 6:
                s = mem[(32 * idx) + 128] xor 2147483648
                t = mem[(32 * idx) + 128]
                idx = idx + 2
                t = 1
                continue 
            if bool(t) != 1:
                s = mem[(32 * idx) + 128] xor 2147483648
                t = mem[(32 * idx) + 128]
                idx = idx + 1
                t = t
                continue 
            s = mem[(32 * idx) + 128] xor 2147483648
            t = mem[(32 * idx) + 128]
            idx = idx + 1
            t = 0
            continue 
        if t:
            s = s
            t = mem[(32 * idx) + 128]
            idx = idx + 1
            t = t
            continue 
        require idx < mem[96]
        _35 = mem[(32 * idx) + 128]
        mem[mem[64] + 320] = 0
        require ext_code.size(0x6012c8cf97bead5deae237070f9587f8e7a266d)
        call 0x06012c8cf97bead5deae237070f9587f8e7a266d.getKitty(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (_35 << 224)
        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
        require ext_call.success
        mem[64] = mem[64] + 320
        if not ext_call.return_data[0]:
            s = s
            t = _31
            idx = idx + 1
            t = t
            continue 
        if not ext_call.return_data[32]:
            s = s
            t = _31
            idx = idx + 1
            t = t
            continue 
        require idx < mem[96]
        _47 = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 4] = uint32(_47)
        require ext_code.size(0x6012c8cf97bead5deae237070f9587f8e7a266d)
        call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (_47 << 224)
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        if gas_remaining >= 260000:
            s = s
            t = _31
            idx = idx + 1
            t = t
            continue 
        else:
            return 0
    return 0
}



}
