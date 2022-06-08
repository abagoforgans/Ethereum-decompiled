contract main {


// =======================  Init code  ======================


uint64 stor0; offset 120
uint128 stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    Mask(120, 0, stor0.field_0) = 0xb3f879cb30fe243b4dfee438691c04
    stor0.field_120 % 1099511627776 = 0
    stor1 = 100
    require not msg.value
    stor2 = msg.sender
    return code.data[179 len 581]
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
