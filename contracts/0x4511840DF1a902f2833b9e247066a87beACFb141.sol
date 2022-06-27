contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_64a51d97(?) {
    call 0xce0d3b44a9415c5be856fbf3ed9a27739477dea7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bd90a7eb(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x95428ac02714244929215638f8f99e9a5a43c8ed)
    call 0x95428ac02714244929215638f8f99e9a5a43c8ed.getHistory(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 2784
    emit 0x1f9925ca: ext_call.return_data[1344], ext_call.return_data[1344]
    call 0xce0d3b44a9415c5be856fbf3ed9a27739477dea7 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
