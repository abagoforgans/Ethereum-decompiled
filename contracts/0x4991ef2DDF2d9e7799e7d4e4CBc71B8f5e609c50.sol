contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = code.data[1592 len 32]
    stor1 = code.data[1624 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[1656 len 32] or Mask(96, 160, stor2)
    stor3 = code.data[1688 len 32] or Mask(96, 160, stor3)
    return code.data[100 len 1492]
}



// =====================  Runtime code  =====================


address stor0;
address sub_72cfc9dcAddress;
uint256 stor1;
address sub_85a0f282Address;
uint256 stor2;
address account;

function account() payable {
    return account
}

function sub_72cfc9dc(?) payable {
    return address(sub_72cfc9dcAddress)
}

function sub_85a0f282(?) payable {
    return address(sub_85a0f282Address)
}

function _fallback() payable {
  stop
}

function sub_90f28e74(?) payable {
    require msg.sender == address(sub_85a0f282Address)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_b10725e8(?) payable {
    require msg.sender == address(sub_72cfc9dcAddress)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_b9b0330f(?) payable {
    require msg.sender == address(sub_85a0f282Address)
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    require Mask(1, 1, ext_call.return_data[0]) != 2
    require arg1 != 0
}

function freezeAccount(address arg1) payable {
    require msg.sender == address(sub_72cfc9dcAddress)
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
        args 2, address(arg1), ext_call.return_data[0] or 4
    emit 0xc0a52010: 1, arg1
}

function unfreezeAccount(address arg1) payable {
    require msg.sender == address(sub_72cfc9dcAddress)
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
        args 2, address(arg1), Mask(253, 3, ext_call.return_data[0]) or ext_call.return_data[0] % 4
    emit 0xc0a52010: 0, arg1
}

function withdraw(address arg1, uint256 arg2) payable {
    require address(sub_72cfc9dcAddress) == msg.sender
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, account
    require Mask(1, 1, ext_call.return_data[0]) != 2
    require account != 0
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 1, arg1
    require ext_call.return_data[0] >= arg2
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 1, address(arg1), ext_call.return_data[0] - arg2
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 1, account
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 1, account, ext_call.return_data[0] + arg2
    emit Transfer(arg2, arg1, account);
}



}
