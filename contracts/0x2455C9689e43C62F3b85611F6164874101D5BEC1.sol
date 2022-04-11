contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0xfe2f0a2d25639366b19e4105068720837277e70f
    stor1 = 0
    require not msg.value
    return code.data[72 len 390]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function _fallback() {
    require ext_code.size(stor0)
    call stor0.0x4bb278f3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xeaa0e760 with:
         gas gas_remaining - 710 wei
        args stor1, stor1 + 4
    require ext_call.success
    stor1 += 5
    require ext_code.size(stor0)
    call stor0.0x4bb278f3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
