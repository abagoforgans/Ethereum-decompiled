contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = code.data[2211 len 32]
    return code.data[69 len 2142]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address curatorAddress;
uint256 stor1;
address daoAddress;
uint256 stor2;
uint256 counter;
uint256 sub_371fa854;
uint256 sub_26f5a8c9;
address nextAddress;
uint256 stor6;
address sub_5970c915Address;
uint256 stor7;

function sub_26f5a8c9(?) payable {
    return sub_26f5a8c9
}

function sub_371fa854(?) payable {
    return sub_371fa854
}

function dao() payable {
    return address(daoAddress)
}

function next() payable {
    return address(nextAddress)
}

function sub_5970c915(?) payable {
    return address(sub_5970c915Address)
}

function counter() payable {
    return counter
}

function owner() payable {
    return address(owner)
}

function curator() payable {
    return address(curatorAddress)
}

function sub_7f9f519f(?) payable {
    require msg.sender == address(owner)
    sub_26f5a8c9 = arg1
    emit 0xbab6859b: arg1
    return 1
}

function setDao(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    emit 0xce6a5015: arg1
    return 1
}

function setOwner(address arg1) payable {
    require msg.sender == address(owner)
    emit NewOwner(arg1);
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function vote(uint256 arg1, bool arg2) payable {
    require msg.sender == address(owner)
    call address(daoAddress).0xc9d27afe with:
         gas gas_remaining - 25050 wei
        args arg1, arg2
    require ext_call.success
    emit Vote(arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    call address(daoAddress).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
    emit Transfer(address(arg1), arg2);
    return 1
}

function sub_625e847d(?) payable {
    require msg.sender == address(owner)
    counter = 1
    call address(sub_5970c915Address) with:
       value eth.balance(this.address) wei
         gas 0 wei
    call address(daoAddress).splitDAO(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args sub_371fa854, address(curatorAddress)
    require ext_call.success
    return 1
}

function sub_c4463c80(?) payable {
    require msg.sender == address(owner)
    uint256(stor6) = arg3 or Mask(96, 160, uint256(stor6))
    counter = 1
    uint256(stor1) = arg2 or Mask(96, 160, uint256(stor1))
    sub_371fa854 = arg1
    sub_26f5a8c9 = arg4
    uint256(stor7) = arg5 or Mask(96, 160, uint256(stor7))
    call address(arg5) with:
       value eth.balance(this.address) wei
         gas 0 wei
    call address(daoAddress).splitDAO(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args sub_371fa854, address(curatorAddress)
    require ext_call.success
    emit 0xa1ab7317: sub_371fa854, address(nextAddress)
    return 1
}

function _fallback() payable {
    call address(daoAddress).rewardAccount() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        emit 0xa6af7265: ext_call.return_data[0], msg.sender, 15, 'constuctor fail'
    else:
        if counter <= sub_26f5a8c9 - 1:
            counter++
            call address(daoAddress).splitDAO(uint256 rg1, address rg2) with:
                 gas gas_remaining - 25050 wei
                args sub_371fa854, address(curatorAddress)
            require ext_call.success
        else:
            call address(daoAddress).balanceOf(address rg1) with:
                 gas gas_remaining - 25050 wei
                args this.address
            require ext_call.success
            call address(daoAddress).0xa9059cbb with:
                 gas gas_remaining - 25050 wei
                args address(nextAddress), ext_call.return_data[0]
            counter = 1
    return 1
}



}
