contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = code.data[8277 len 32]
    stor1 = code.data[8309 len 32]
    stor0 = code.data[8341 len 32]
    return code.data[206 len 8071]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function sub_b6a44bbd(?) payable {
    call stor0.0x3358d2d3 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call stor1.0x7d4cf602 with:
         gas gas_remaining - 25050 wei
    call stor1.0xacf4280c with:
         gas gas_remaining - 25050 wei
    create contract with 0 wei
                    code: code.data[4618 len 2066], address(ext_call.return_data[0])
    create contract with 0 wei
                    code: code.data[6684 len 1387], address(ext_call.return_data[0])
    call stor0.0x6db0db1a with:
         gas gas_remaining - 25050 wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(ext_call.return_data[0])
    call address(ext_call.return_data[0]).setController(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(ext_call.return_data[0])
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), 1
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), 1
    call address(create.new_address).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), 1
    call address(create.new_address).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), 1
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), 1
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), 1
    call arg1.setCanCall(address rg1, address rg2, string rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), 128, 1, 31, 'emitEtherSpent(address,uint256)'
    call arg1.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('moveBalance(address,address,uint', '256)')), 1
    call arg1.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('setApproval(address,address,uint', '256)')), 1
    call arg1.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('emitTransfer(address,address,uin', 't256)')), 1
    call arg1.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('emitApproval(address,address,uin', 't256)')), 1
    call arg1.setCanCall(address rg1, address rg2, string rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(create.new_address), 128, 1, 15, 'demand(uint256)'
    call arg1.setCanCall(address rg1, address rg2, string rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(create.new_address), 128, 1, 25, 'withdraw(address,uint256)'
    call arg1.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('transfer(address,address,uint256', ')')), 1
    call arg1.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('transferFrom(address,address,add', 'ress,uint256)')), 1
    call arg1.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('approve(address,address,uint256)')), 1
    call arg1.setCanCall(address rg1, address rg2, string rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), 128, 1, 15, 'demand(uint256)'
    call arg1.setCanCall(address rg1, address rg2, string rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(msg.sender), address(ext_call.return_data[0]), 128, 1, 25, 'withdraw(address,uint256)'
    call arg1.updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}



}
