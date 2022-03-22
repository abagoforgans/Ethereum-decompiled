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
    call address(code.data[2346 len 32]).buildDSEasyMultisig(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args 4, 6, 24 * 3600
    require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    require address(stor1)
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args 0x656b4a61e8a96e60158fe5e8351379f10329ff26
    require ext_call.success
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args 0xca2230a88a50a9eefbfbb825862147572123bc81
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args 0x523c43ff16071f3811660e8713ea76f096711938
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args 0x7391c8c21ebb5e271a1c96df9fac8a80b49e920b
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args 0xe822a156d8fd21477bdd310fb73afa2ff2e2f5ce
    call address(stor1).addMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args 0x29a566c6f4fa3a692d1f6d7b598cb8b4fc772ddb
    return code.data[1415 len 931]
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
