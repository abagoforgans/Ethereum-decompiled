contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[1300 len 32]
    return code.data[55 len 1245]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_f1375f38(?) payable {
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 4, msg.sender, arg1
}

function sub_2d1c5ff8(?) payable {
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    require bool(ext_call.return_data[0]) == 1
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    require Mask(1, 2, ext_call.return_data[0]) != 4
    require arg1 != 0
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, arg2
    require Mask(1, 1, ext_call.return_data[0]) != 2
    require arg2 != 0
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 4, arg1
    require msg.sender == ext_call.return_data[12 len 20]
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 2, address(arg1), ext_call.return_data[0] or 2
    emit 0xa2991119: arg1
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 1, arg1
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 1, arg1
    require ext_call.return_data[0] >= ext_call.return_data[0]
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 1, address(arg1), 0
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 1, arg2
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 1, address(arg2), 2 * ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], arg1, arg2);
}



}
