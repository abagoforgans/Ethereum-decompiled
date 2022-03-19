contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor0; offset 8
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor14;

function _fallback() payable {
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    uint8(stor0.field_0) = 0
    emit 0xb96a5204: msg.sender, 0
    stor1 = code.data[7619 len 32]
    stor4 = code.data[7683 len 32]
    stor5 = code.data[7715 len 32]
    stor6 = code.data[7747 len 32]
    stor7 = code.data[7779 len 32]
    stor8 = code.data[7811 len 32]
    stor9 = code.data[7843 len 32]
    stor2 = code.data[7651 len 32]
    stor14 = 0
    return code.data[617 len 7002]
}



// =====================  Runtime code  =====================


uint8 _auth_mode;
address _authorityAddress; offset 8
uint256 stor0; offset 8
uint256 stor0;
address stor1;
address stor2;
address sub_d903f866Address;
uint256 stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address authorityAddress;
uint256 stor10;
address sub_adb8db49Address;
uint256 stor11;
address sub_5984c6b4Address;
uint256 stor12;
address sub_d4b1ad4bAddress;
uint256 stor13;
uint256 sub_0baf144a;

function sub_0baf144a(?) payable {
    return sub_0baf144a
}

function sub_5984c6b4(?) payable {
    return address(sub_5984c6b4Address)
}

function sub_adb8db49(?) payable {
    return address(sub_adb8db49Address)
}

function authority() payable {
    return address(authorityAddress)
}

function _authority() payable {
    return _authorityAddress
}

function sub_d4b1ad4b(?) payable {
    return address(sub_d4b1ad4bAddress)
}

function _auth_mode() payable {
    return _auth_mode
}

function sub_d903f866(?) payable {
    return address(sub_d903f866Address)
}

function _fallback() payable {
  stop
}

function updateAuthority(address arg1, uint8 arg2) payable {
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
    uint256(stor0.field_0) = arg2 or Mask(248, 8, uint256(stor0.field_0))
    emit 0xb96a5204: arg1, arg2
}

function step2() payable {
    require 2 == sub_0baf144a + 1
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    call stor1.0x73e1743a with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor10) = ext_call.return_data[0] or Mask(96, 160, uint256(stor10))
    require address(authorityAddress)
    sub_0baf144a++
}

function step3() payable {
    require 3 == sub_0baf144a + 1
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    call stor1.0xa7c5052e with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor11) = ext_call.return_data[0] or Mask(96, 160, uint256(stor11))
    require address(sub_adb8db49Address)
    sub_0baf144a++
}

function step1() payable {
    require 1 == sub_0baf144a + 1
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    call stor1.0x2bed55b0 with:
         gas gas_remaining - 25050 wei
        args 4, 6, 24 * 3600
    require ext_call.success
    uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
    require address(sub_d903f866Address)
    sub_0baf144a++
}

function step5() payable {
    require 5 == sub_0baf144a + 1
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    call address(authorityAddress).0x7e1db2a1 with:
         gas gas_remaining - 25050 wei
        args stor1, 0
    require ext_call.success
    call stor1.0xb6a44bbd with:
         gas gas_remaining - 25050 wei
        args address(authorityAddress)
    uint256(stor12) = ext_call.return_data[0] or Mask(96, 160, uint256(stor12))
    sub_0baf144a++
}

function step7() payable {
    require 7 == sub_0baf144a + 1
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    call address(authorityAddress).0x7e1db2a1 with:
         gas gas_remaining - 25050 wei
        args stor1, 0
    require ext_call.success
    call stor1.0xb6a44bbd with:
         gas gas_remaining - 25050 wei
        args address(authorityAddress)
    uint256(stor13) = ext_call.return_data[0] or Mask(96, 160, uint256(stor13))
    sub_0baf144a++
}

function step8() payable {
    require 8 == sub_0baf144a + 1
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    call address(sub_adb8db49Address).set(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args 'DAI', address(sub_d4b1ad4bAddress)
    require ext_call.success
    call address(sub_adb8db49Address).set(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args 'MKR', address(sub_5984c6b4Address)
    call address(sub_adb8db49Address).set(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args 'ETH', stor2
    call address(sub_adb8db49Address).0x7e1db2a1 with:
         gas gas_remaining - 25050 wei
        args address(authorityAddress), 1
    call address(authorityAddress).0x7e1db2a1 with:
         gas gas_remaining - 25050 wei
        args address(sub_d903f866Address), 0
    sub_0baf144a++
}

function step4() payable {
    require 4 == sub_0baf144a + 1
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    call address(sub_d903f866Address).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args stor4
    require ext_call.success
    call address(sub_d903f866Address).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args stor5
    call address(sub_d903f866Address).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args stor6
    call address(sub_d903f866Address).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args stor7
    call address(sub_d903f866Address).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args stor8
    call address(sub_d903f866Address).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args stor9
    sub_0baf144a++
}

function step6() payable {
    require 6 == sub_0baf144a + 1
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    call address(sub_5984c6b4Address).getController() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).getBalanceDB() with:
         gas gas_remaining - 25050 wei
    call address(authorityAddress).setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('setBalance(address,uint256)')), 1
    call address(ext_call.return_data[0]).setBalance(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(sub_d903f866Address), 1000000 * 10^18
    call address(authorityAddress).setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('setBalance(address,uint256)')), 0
    sub_0baf144a++
}



}
