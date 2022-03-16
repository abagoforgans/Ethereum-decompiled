contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[522 len 232], 123
    stor0 = create.new_address or Mask(96, 160, stor0)
    return code.data[97 len 425]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    call stor0.0x41c0e1b5 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_b3c11d7c(?) payable {
    call stor0.num() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[28 len 4]
}



}
