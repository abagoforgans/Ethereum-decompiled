contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor2; offset 160
address stor2;
uint128 stor3; offset 160
address stor3;
uint128 stor4; offset 160
address stor4;
uint128 stor5; offset 160
address stor5;
uint256 stor259;

function _fallback() payable {
    stor0 = 1
    stor1 = 4
    stor259 = msg.sender or Mask(96, 160, stor259)
    address(stor2.field_0) = msg.sender
    Mask(96, 0, stor2.field_160) = 0
    address(stor3.field_0) = msg.sender
    Mask(96, 0, stor3.field_160) = 0
    address(stor4.field_0) = msg.sender
    Mask(96, 0, stor4.field_160) = 0
    address(stor5.field_0) = msg.sender
    Mask(96, 0, stor5.field_160) = 0
    return code.data[82 len 1217]
}



// =====================  Runtime code  =====================


uint256 m_required;
uint256 m_numOwners;
uint128 stor2; offset 160
address stor2;
uint128 stor3; offset 160
address stor3;
uint128 stor4; offset 160
address stor4;
uint128 stor5; offset 160
address stor5;
mapping of uint8 stor258;
address stor259;
uint256 stor259;

function m_numOwners() payable {
    return m_numOwners
}

function m_required() payable {
    return m_required
}

function kill() payable {
    require address(stor259) == msg.sender
    selfdestruct(address(stor259))
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(tx.origin, msg.value);
}

function authorizeAddress(address arg1) payable {
    require address(stor259) == msg.sender
    stor258[address(arg1)] = 1
}

function deauthorizeAddress(address arg1) payable {
    require address(stor259) == msg.sender
    stor258[address(arg1)] = 0
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    require address(stor259) == msg.sender
    emit SingleTransact(tx.origin, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34050 wei
        args arg3[all]
    return 0
}

function setOwner(address arg1) payable {
    require address(stor259) == msg.sender
    uint256(stor259) = arg1 or Mask(96, 160, uint256(stor259))
    address(stor2.field_0) = arg1
    Mask(96, 0, stor2.field_160) = 0
    address(stor3.field_0) = arg1
    Mask(96, 0, stor3.field_160) = 0
    address(stor4.field_0) = arg1
    Mask(96, 0, stor4.field_160) = 0
    address(stor5.field_0) = arg1
    Mask(96, 0, stor5.field_160) = 0
}

function sub_00c9b1de(?) payable {
    require arg4 <= block.timestamp
    require arg4 - block.timestamp <= 1800
    require arg5 == sha3(address(msg.sender), arg1, arg2, arg3[all], arg4)
    signer = erecover(arg5, arg6 << 248, arg7, arg8) 
    require erecover.result
    require stor258[address(signer)] == 1
    emit 0x44cce17e: tx.origin, address(signer), arg2, address(arg1), Array(len=arg3.length, data=arg3[all])
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining - 34050 wei
        args arg3[all]
}



}
