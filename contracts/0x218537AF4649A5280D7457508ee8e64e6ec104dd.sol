contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[1241 len 32]
    return code.data[55 len 1186]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;

function _fallback() payable {
  stop
}

function sub_fb55a055(?) payable {
    call address(stor0).0x9afd453c with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] != msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function statusOf(address arg1) payable {
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 1, arg1
    return ext_call.return_data[0]
}

function isApproved(address arg1) payable {
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    return (bool(ext_call.return_data[0]) == 1)
}

function isClosed(address arg1) payable {
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    return (Mask(1, 1, ext_call.return_data[0]) == 2)
}

function isFrozen(address arg1) payable {
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    return (Mask(1, 2, ext_call.return_data[0]) == 4)
}

function transfer(address arg1, uint256 arg2) payable {
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, msg.sender
    require bool(ext_call.return_data[0]) == 1
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, msg.sender
    require Mask(1, 2, ext_call.return_data[0]) != 4
    require msg.sender != 0
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, arg1
    require Mask(1, 1, ext_call.return_data[0]) != 2
    require arg1 != 0
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 1, msg.sender
    require ext_call.return_data[0] >= arg2
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x461b09c0 with:
         gas gas_remaining - 25050 wei
        args 1, msg.sender, ext_call.return_data[0] - arg2
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 1, arg1
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x461b09c0 with:
         gas gas_remaining - 25050 wei
        args 1, address(arg1), ext_call.return_data[0] + arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
