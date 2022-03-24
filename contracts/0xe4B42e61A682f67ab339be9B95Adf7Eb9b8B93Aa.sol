contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = code.data[605 len 32]
    call code.data[617 len 20].0x16c72721 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor1 = code.data[637 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[669 len 32] or Mask(96, 160, stor2)
    return code.data[218 len 387]
}



// =====================  Runtime code  =====================


address stor0;
address sub_51226408Address;
address sub_c9dc3bc4Address;

function sub_51226408(?) payable {
    return sub_51226408Address
}

function sub_c9dc3bc4(?) payable {
    return sub_c9dc3bc4Address
}

function _fallback() payable {
    call stor0.0x16c72721 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0]:
        call sub_51226408Address with:
           value msg.value wei
             gas 0 wei
        if ext_call.success:
        call stor0.0x16c72721 with:
             gas gas_remaining - 25050 wei
        revert 
    call stor0.0x16c72721 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require not ext_call.return_data[0]
    call sub_c9dc3bc4Address with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}



}
