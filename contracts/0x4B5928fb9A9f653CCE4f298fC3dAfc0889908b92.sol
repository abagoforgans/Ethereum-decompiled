contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[1267 len 20]
    return code.data[123 len 1132]
}



// =====================  Runtime code  =====================


address stor0;

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

function sub_8f764278(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 288
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160 len 128] = 0
    s = (32 * arg1.length) + 128
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _32 = mem[(32 * idx) + 128]
        mem[mem[64] + 320] = 0
        require ext_code.size(0x6012c8cf97bead5deae237070f9587f8e7a266d)
        call 0x06012c8cf97bead5deae237070f9587f8e7a266d.getKitty(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _32
        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
        require ext_call.success
        _38 = mem[64]
        mem[64] = mem[64] + 320
        if ext_call.return_data[0]:
            if not ext_call.return_data[32]:
                if not ext_call.return_data[0]:
                    s = _38 + 160
                    s = ext_call.return_data[128]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[64]
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if block.number + 5 <= ext_call.return_data[96]:
                    s = _38 + 160
                    s = ext_call.return_data[128]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[64]
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require idx < mem[96]
                emit 0x940601c6: 10, mem[(32 * idx) + 128]
                return 0
            require idx < mem[96]
            _45 = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = _45
            require ext_code.size(stor0)
            call stor0.0x88c2a0bf with:
                 gas gas_remaining - 710 wei
                args _45
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
        s = _38 + 160
        s = ext_call.return_data[128]
        s = ext_call.return_data[96]
        s = ext_call.return_data[64]
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 0
}



}
