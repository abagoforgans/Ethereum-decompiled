contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = code.data[305 len 32]
    stor1 = code.data[337 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[369 len 32] or Mask(96, 160, stor2)
    return code.data[96 len 209]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    require stor0 == msg.sender
    call stor3.0x4137bcd5 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        call stor2 with:
           value msg.value wei
             gas 0 wei
    else:
        call stor1 with:
           value msg.value wei
             gas 0 wei
}



}
