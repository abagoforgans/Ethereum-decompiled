contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[949 len 32]
    return code.data[55 len 894]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_45b4903a(?) payable {
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 1, arg1
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) payable {
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, msg.sender
    require bool(ext_call.return_data[0]) == 1
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, msg.sender
    require Mask(1, 2, ext_call.return_data[0]) != 4
    require msg.sender != 0
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    require Mask(1, 1, ext_call.return_data[0]) != 2
    require arg1 != 0
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 1, msg.sender
    require ext_call.return_data[0] >= arg2
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 1, msg.sender, ext_call.return_data[0] - arg2
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 1, arg1
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 1, address(arg1), ext_call.return_data[0] + arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
