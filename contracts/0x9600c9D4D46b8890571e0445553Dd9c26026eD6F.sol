contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1048]




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

function sub_8f764278(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 320
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160 len 160] = 0
    require 0 < arg1.length
    if block.number >= mem[128]:
        s = (32 * arg1.length) + 128
        s = 0
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _31 = mem[(32 * idx) + 128]
            mem[mem[64] + 320] = 0
            require ext_code.size(0x6012c8cf97bead5deae237070f9587f8e7a266d)
            call 0x06012c8cf97bead5deae237070f9587f8e7a266d.getKitty(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args _31
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            require ext_call.success
            _37 = mem[64]
            mem[64] = mem[64] + 320
            if ext_call.return_data[0]:
                if not ext_call.return_data[32]:
                    if not ext_call.return_data[0]:
                        s = _37 + 128
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[64]
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if block.number + 5 <= ext_call.return_data[96]:
                        s = _37 + 128
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[64]
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    else:
                        return 0
                require idx < mem[96]
                _43 = mem[(32 * idx) + 128]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 4] = _43
                require ext_code.size(0x6012c8cf97bead5deae237070f9587f8e7a266d)
                call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args _43
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
            s = _37 + 128
            s = ext_call.return_data[96]
            s = ext_call.return_data[64]
            s = ext_call.return_data[32]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}



}
