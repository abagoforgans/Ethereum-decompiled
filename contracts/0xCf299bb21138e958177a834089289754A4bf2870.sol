contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor0 = 0x88d60255f917e3eb94eae199d827dad837fac4cb
    stor1 = 100
    require not msg.value
    stor2 = msg.sender
    return code.data[184 len 581]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xa0712d68 with:
         gas gas_remaining - 710 wei
        args stor1
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor2, stor1
    require ext_call.success
}



}
