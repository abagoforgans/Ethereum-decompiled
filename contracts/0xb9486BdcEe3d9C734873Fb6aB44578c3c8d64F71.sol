contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x3df4c372a29376d2c8df33a1b5f001cd8d68b0e
    stor1 = 0x8918f1137d2b8ceda87926aa43039e09494a5c27
    require not msg.value
    return code.data[199 len 1195]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(stor0)
    if stor1 == msg.sender:
        call stor0.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor1, ext_call.return_data[0]
        require ext_call.success
    call stor0.CurrentMined() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.MaxMiningReward() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if var15003 >= 0 / 100 * 10^6:
    mem[128] = 0
    mem[96] = 0x42c8705b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.mem[var19003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var19003 + 4 len var19004 - 4]
    mem[var19005] = ext_call.return_data[0]
    require ext_call.success
    if var25003 >= 0 / 100 * 10^6:
    mem[128] = 0
    mem[96] = 0x42c8705b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.mem[var29003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var29003 + 4 len var29004 - 4]
    mem[var29005] = ext_call.return_data[0]
    require ext_call.success
    if var35003 >= 0 / 100 * 10^6:
    mem[128] = 0
    mem[96] = 0x42c8705b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.mem[var39003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var39003 + 4 len var39004 - 4]
    mem[var39005] = ext_call.return_data[0]
    require ext_call.success
    if var45003 >= 0 / 100 * 10^6:
    mem[128] = 0
    mem[96] = 0x42c8705b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.mem[var49003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var49003 + 4 len var49004 - 4]
    require ext_call.success
    # nil
}



}
