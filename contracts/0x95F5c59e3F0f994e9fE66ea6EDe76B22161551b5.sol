contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[497 len 32]
    return code.data[55 len 442]
}



// =====================  Runtime code  =====================


address sub_516c4b84Address;
uint256 stor0;
mapping of uint256 sub_295f36d7;

function sub_295f36d7(?) payable {
    return sub_295f36d7[arg1][arg2]
}

function sub_516c4b84(?) payable {
    return address(sub_516c4b84Address)
}

function _fallback() payable {
  stop
}

function sub_461b09c0(?) payable {
    call address(sub_516c4b84Address).0xe814861e with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    sub_295f36d7[arg1][arg2] = arg3
}

function sub_fb55a055(?) payable {
    call address(sub_516c4b84Address).0x9afd453c with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}



}
