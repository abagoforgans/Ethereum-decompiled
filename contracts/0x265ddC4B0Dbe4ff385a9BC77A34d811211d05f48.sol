contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = code.data[601 len 20]
    stor1 = code.data[621 len 32]
    return code.data[140 len 449]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function getPermissions(address arg1) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < stor1:
        return 0
    return 1
}

function _fallback() payable {
    require unknown_0x160a7925(?????) == uint32(call.func_hash)
    require not msg.value
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < stor1:
        return 0
    return 1
}



}
