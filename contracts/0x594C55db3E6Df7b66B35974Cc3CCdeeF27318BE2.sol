contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[4639 len 32]
    return code.data[92 len 4547]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function createAuthority() payable {
    call stor0.buildDSBasicAuthority() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function giveOwnership(address arg1) payable {
    call arg1.updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    require ext_call.success
}

function sub_255c9f58(?) payable {
    call stor0.buildDSEasyMultisig(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args arg2, arg3, arg4
    require ext_call.success
    call arg1.updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args address(ext_call.return_data[0]), 0
    return address(ext_call.return_data[0])
}

function createToken(address arg1) payable {
    call arg1.updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args stor0, 0
    require ext_call.success
    call stor0.0xb6a44bbd with:
         gas gas_remaining - 25050 wei
        args arg1
    call address(ext_call.return_data[0]).getController() with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).getBalanceDB() with:
         gas gas_remaining - 25050 wei
    create contract with 0 wei
                    code: code.data[2419 len 2128], address(ext_call.return_data[0])
    call arg1.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('addBalance(address,uint256)')), 1
    call arg1.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('subBalance(address,uint256)')), 1
    call address(create.new_address).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), 1
    call arg1.updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args address(this.address), 0
    return address(ext_call.return_data[0]), address(create.new_address)
}



}
