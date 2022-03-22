contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor0; offset 8
address stor1;
uint256 stor1;

function _fallback() payable {
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    uint8(stor0.field_0) = 0
    emit 0xb96a5204: msg.sender, 0
    call address(code.data[2418 len 32]).buildDSEasyMultisig(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args 4, 6, 24 * 3600
    require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    require address(stor1)
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(code.data[2450 len 32])
    require ext_call.success
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(code.data[2482 len 32])
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(code.data[2514 len 32])
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(code.data[2546 len 32])
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(code.data[2578 len 32])
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(code.data[2610 len 32])
    return code.data[1487 len 931]
}



// =====================  Runtime code  =====================


uint8 _auth_mode;
address _authorityAddress; offset 8
uint256 stor0; offset 8
uint256 stor0;
address sub_d903f866Address;

function _authority() payable {
    return _authorityAddress
}

function _auth_mode() payable {
    return _auth_mode
}

function sub_d903f866(?) payable {
    return sub_d903f866Address
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



}
