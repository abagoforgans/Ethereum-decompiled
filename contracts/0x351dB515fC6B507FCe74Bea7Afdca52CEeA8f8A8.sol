contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[754 len 232], 123
    stor0 = create.new_address or Mask(96, 160, stor0)
    stor1 = 456
    return code.data[109 len 645]
}



// =====================  Runtime code  =====================


const sub_d7f5415e(?) = 0


address xAddress;
uint256 num;

function x() payable {
    return xAddress
}

function num() payable {
    return num
}

function kill() payable {
    call xAddress.0x41c0e1b5 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_b3c11d7c(?) payable {
    call xAddress.0x4e70b1dc with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[28 len 4]
}



}
