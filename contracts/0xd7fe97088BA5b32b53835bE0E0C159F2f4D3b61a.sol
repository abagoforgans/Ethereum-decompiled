contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function decode(uint256 arg1) {
    mem[128 len 1536] = code.data[1004 len 1536]
    idx = 0
    while idx < 48:
        require idx < 48
        mem[(32 * idx) + 128] = uint8(arg1 and 31 * 2^(5 * idx) / 2^(5 * idx))
        idx = idx + 1
        continue 
    return Array(len=48, data=mem[128], mem[1760 len 1504])
}

function getKitty(uint256 arg1) {
    require ext_code.size(0x6012c8cf97bead5deae237070f9587f8e7a266d)
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.0xe98b7f4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    return Array(len=48, data=code.data[1004 len 32], ext_call.return_data[96 len 224], mem[1984 len 1280])
}



}
