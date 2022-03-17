contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor4;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[388] = mem[417 len 3]
    call address(stor0).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[388])
    require ext_call.success
    mem[484] = mem[513 len 3]
    mem[580] = mem[610 len 2]
    mem[644] = mem[673 len 3]
    call address(stor0).0x77228659 with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 0, 128, 192, 288, 3, mem[484], 34, '1AAcCo21EUc1jbocjssSQDzLna9Vem2U', 'N5', mem[580], 3, mem[644]
    require ext_call.success
    stor4 = ext_call.return_data[0]
    return code.data[982 len 349]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
address sub_6a67498eAddress;

function sub_6a67498e(?) payable {
    return sub_6a67498eAddress
}

function kill() payable {
    if stor1 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function oraclize_setProof(bytes1 arg1) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor0 = ext_call.return_data[0] or Mask(96, 160, stor0)
    call address(ext_call.return_data[0]).0x688dcfd7 with:
         gas gas_remaining - 25050 wei
        args arg1
}



}
