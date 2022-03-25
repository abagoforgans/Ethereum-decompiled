contract main {


// =======================  Init code  ======================


address stor4;
uint256 stor4;
address stor5;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor8;
address stor9;
uint256 stor9;

function _fallback() payable {
    stor6 = code.data[17826 len 32]
    uint256(stor4) = code.data[17698 len 32]
    stor7 = code.data[17730 len 32]
    call address(stor4)._authority() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor5) = ext_call.return_data[0] or Mask(96, 160, uint256(stor5))
    uint256(stor9) = code.data[17762 len 32] or Mask(96, 160, uint256(stor9))
    uint256(stor8) = code.data[17794 len 32] or Mask(96, 160, uint256(stor8))
    require address(stor4)
    call address(stor4).getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'MKR'
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require address(stor5)
    require address(stor8)
    require address(stor9)
    call address(stor9).isMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    call address(stor8).getActionStatus(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    require ext_call.return_data[64]
    return code.data[1398 len 16300]
}



// =====================  Runtime code  =====================


address sub_707cf514Address;
uint256 stor0;
uint32 stor1;
address sub_6f1cddb9Address;
uint256 stor1;
uint32 stor2;
address sub_1e00fbbdAddress;
uint256 stor2;
uint32 stor3;
address sub_51a089f2Address;
uint256 stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
uint256 stor10;
uint8 stor11;

function sub_1e00fbbd(?) payable {
    return address(sub_1e00fbbdAddress)
}

function sub_51a089f2(?) payable {
    return address(sub_51a089f2Address)
}

function sub_6f1cddb9(?) payable {
    return address(sub_6f1cddb9Address)
}

function sub_707cf514(?) payable {
    return address(sub_707cf514Address)
}

function _fallback() payable {
  stop
}

function cancel() payable {
    call stor8.isMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    call stor5.updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args stor9, 0
    require ext_call.success
}

function step2() payable {
    require not stor11
    require 2 == stor10 + 1
    stor11 = 1
    call stor8.isMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    call stor5.updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args stor6, 0
    require ext_call.success
    call stor6.0xb6a44bbd with:
         gas gas_remaining - 25050 wei
        args stor5
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    call stor5.setCanCall(address rg1, address rg2, string rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, stor4, 128, 1, 20, 'set(bytes32,bytes32)'
    call stor4.set(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args 'TEST', address(sub_707cf514Address)
    call stor5.setCanCall(address rg1, address rg2, string rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, stor4, 128, 0, 20, 'set(bytes32,bytes32)'
    call address(sub_707cf514Address).getController() with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).getBalanceDB() with:
         gas gas_remaining - 25050 wei
    create contract with 0 wei
                    code: code.data[9935 len 2109], address(ext_call.return_data[0])
    uint256(stor1) = create.new_address or Mask(96, 160, uint256(stor1))
    call stor5.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(stor1), address(ext_call.return_data[0]), Mask(32, 224, sha3('addBalance(address,uint256)')), 1
    call stor5.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(stor1), address(ext_call.return_data[0]), Mask(32, 224, sha3('subBalance(address,uint256)')), 1
    call address(sub_6f1cddb9Address).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args stor5, 1
    stor10++
    stor11 = 0
}

function step1() payable {
    require not stor11
    require 1 == stor10 + 1
    stor11 = 1
    call stor8.isMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    call stor4.getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'DAI'
    require ext_call.success
    call address(ext_call.return_data[0]).getController() with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).getBalanceDB() with:
         gas gas_remaining - 25050 wei
    call stor4.getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'MKR'
    call address(ext_call.return_data[0]).getController() with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).getBalanceDB() with:
         gas gas_remaining - 25050 wei
    create contract with 0 wei
                    code: code.data[12044 len 2128], address(ext_call.return_data[0])
    uint256(stor2) = create.new_address or Mask(96, 160, uint256(stor2))
    create contract with 0 wei
                    code: code.data[14172 len 2128], address(ext_call.return_data[0])
    uint256(stor3) = create.new_address or Mask(96, 160, uint256(stor3))
    call stor5.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(stor2), address(ext_call.return_data[0]), Mask(32, 224, sha3('addBalance(address,uint256)')), 1
    call stor5.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(stor3), address(ext_call.return_data[0]), Mask(32, 224, sha3('addBalance(address,uint256)')), 1
    call stor5.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(stor2), address(ext_call.return_data[0]), Mask(32, 224, sha3('subBalance(address,uint256)')), 1
    call stor5.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(stor3), address(ext_call.return_data[0]), Mask(32, 224, sha3('subBalance(address,uint256)')), 1
    call address(sub_51a089f2Address).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args stor5, 1
    call address(sub_1e00fbbdAddress).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args stor5, 1
    stor10++
    stor11 = 0
}

function step3() payable {
    require not stor11
    require 3 == stor10 + 1
    stor11 = 1
    call stor8.isMember(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    call stor4.getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'DAI'
    require ext_call.success
    call address(ext_call.return_data[0]).getController() with:
         gas gas_remaining - 25050 wei
    call stor5.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('transfer(address,address,uint256', ')')), 1
    call address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args stor9, stor7
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args stor9
    call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args stor9, stor8, 0
    call stor5.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('transfer(address,address,uint256', ')')), 0
    call stor4.getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'MKR'
    call address(ext_call.return_data[0]).getController() with:
         gas gas_remaining - 25050 wei
    call stor5.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('transfer(address,address,uint256', ')')), 1
    call address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args stor9, stor7
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args stor9
    call address(ext_call.return_data[0]).transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args stor9, stor8, 0
    call stor5.setCanCall(address rg1, address rg2, bytes4 rg3, bool rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, address(ext_call.return_data[0]), Mask(32, 224, sha3('transfer(address,address,uint256', ')')), 0
    call stor5.updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args stor8, 0
    call stor4._authority() with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0])._authority() with:
         gas gas_remaining - 25050 wei
    require ext_call.return_data[12 len 20] == stor8
    call stor4.getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'MKR'
    require ext_call.success
    call stor4.getToken(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'DAI'
    call address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args stor9, stor7
    call address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args stor9, stor7
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args stor9
    require ext_call.return_data[0] == ext_call.return_data[0]
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args stor9
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[0]
    stor10++
    stor11 = 0
}



}
