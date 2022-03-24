contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    call 0x882fb4240f9a11e197923d0507de9a983ed69239.0x37b0574a with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor0 = ext_call.return_data[0] or Mask(248, 8, stor0)
    return code.data[169 len 383]
}



// =====================  Runtime code  =====================


uint8 stor0;

function _fallback() payable {
  stop
}

function transfer(address arg1) payable {
    if not stor0:
        call arg1 with:
           value msg.value wei
             gas 0 wei
    else:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}

function classicTransfer(address arg1) payable {
    if stor0:
        call arg1 with:
           value msg.value wei
             gas 0 wei
    else:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}



}
