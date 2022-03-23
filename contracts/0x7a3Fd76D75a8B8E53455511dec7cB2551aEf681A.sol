contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint256 stor1;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    address(stor0.field_8) = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    call address(stor0.field_8).forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if bool(ext_call.return_data[0]) == bool(code.data[559 len 32]):
        uint8(stor0.field_0) = 1
    stor1 = code.data[527 len 32] or Mask(96, 160, stor1)
    return code.data[367 len 160]
}



// =====================  Runtime code  =====================


uint8 stor0;
address stor1;

function _fallback() payable {
    require stor0
    require msg.value
    call stor1 with:
       value msg.value wei
         gas 0 wei
    revert 
}



}
