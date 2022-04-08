contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = code.data[361 len 20]
    stor1 = code.data[381 len 32]
    return code.data[88 len 261]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function sub_4af5fb0f(?) {
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
