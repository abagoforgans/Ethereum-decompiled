contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[58 len 957]
}



// =====================  Runtime code  =====================


address sub_9c0eff72Address;

function sub_9c0eff72(?) {
    return sub_9c0eff72Address
}

function sub_c5563720(?) {
    selfdestruct(sub_9c0eff72Address)
}

function _fallback() payable {
  stop
}

function sub_e29940b9(?) {
    call sub_9c0eff72Address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_61cc4b44(?) {
    require ext_code.size(0xca9b7047a30b48942f61a729ecb1905e4b2a98dc)
    call 0xca9b7047a30b48942f61a729ecb1905e4b2a98dc.claimWinnings() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_4e797d94(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if mem[(32 * idx) + 128] % 16 != Mask(4, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) - 256:
            s = uint8(mem[(32 * idx) + 128]) / 16
            s = mem[(32 * idx) + 128] % 16
            s = mem[(32 * idx) + 128] << 248
            idx = idx + 1
            continue 
        if uint8(mem[(32 * idx) + 128]) / 16 != Mask(4, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) + 260, 31) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) - 260:
            s = uint8(mem[(32 * idx) + 128]) / 16
            s = mem[(32 * idx) + 128] % 16
            s = mem[(32 * idx) + 128] << 248
            idx = idx + 1
            continue 
        require ext_code.size(0xca9b7047a30b48942f61a729ecb1905e4b2a98dc)
        call 0xca9b7047a30b48942f61a729ecb1905e4b2a98dc.claimTile(uint256 rg1, uint256 rg2, uint256 rg3) with:
           value 5 * 10^15 wei
             gas gas_remaining - 9710 wei
            args mem[(32 * idx) + 128] << 252, Mask(4, 4, mem[(32 * idx) + 128]) << 248, arg1
        require ext_call.success
}



}
