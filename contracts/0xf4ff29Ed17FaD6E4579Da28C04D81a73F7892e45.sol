contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
array of address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = 0
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    return code.data[145 len 2469]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
mapping of uint256 stor1;
array of struct users;
address oracleAddress;
uint256 stor3;
address tenantAddress;
uint256 stor4;
mapping of uint8 stor5;
address callDestinationAddress;
uint256 stor6;

function users(uint256 arg1) payable {
    require arg1 < users.length
    return users[arg1].field_0
}

function callDestination() payable {
    return address(callDestinationAddress)
}

function oracle() payable {
    return address(oracleAddress)
}

function tenant() payable {
    return address(tenantAddress)
}

function isUser(address arg1) payable {
    return (stor1[address(arg1)] > 0)
}

function setupStackDepthLib(address arg1) payable {
    if address(stor0) != 0:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function _fallback() payable {
    if msg.value <= 0:
    call msg.sender with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function setOracle(address arg1) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if msg.sender == address(oracleAddress):
        uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
    emit code.data[2437 len 32]: 0x564f7261636c65206163636573732064656e6965640000000000000000000000
}

function configure(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if address(oracleAddress) != msg.sender:
        emit code.data[2437 len 32]: 0x564f7261636c65206163636573732064656e6965640000000000000000000000
        return 0
    if address(oracleAddress) != address(tenantAddress):
        signer = erecover(sha3(arg1, arg2, arg3), arg4 << 248, arg5, arg6) 
        require erecover.result
        if address(tenantAddress) != address(signer):
            emit code.data[2437 len 32]: 'Signature not by tenant'
            return 0
        if stor5[arg3]:
            emit code.data[2437 len 32]: 'Nonce/signature used before'
            return 0
        stor5[arg3] = 1
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
    uint256(stor6) = arg2 or Mask(96, 160, uint256(stor6))
    return 1
}

function addUser(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if address(oracleAddress) != msg.sender:
        emit code.data[2437 len 32]: 0x564f7261636c65206163636573732064656e6965640000000000000000000000
        return 0
    if stor1[address(arg1)] > 0:
        emit code.data[2437 len 32]: 'User already exists'
        return 0
    signer = erecover(sha3(arg1, arg2), arg3 << 248, arg4, arg5) 
    require erecover.result
    if address(tenantAddress) != address(signer):
        emit code.data[2437 len 32]: 'Signature not by tenant'
        return 0
    if stor5[arg2]:
        emit code.data[2437 len 32]: 'Nonce/signature used before'
        return 0
    stor5[arg2] = 1
    users.length++
    if not users.length <= users.length + 1:
        idx = users.length + 1
        while users.length > idx:
            users[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[address(arg1)] = users.length
    require users.length < users.length
    users[users.length].field_0 = users[users.length].field_160
    emit Setup(arg2, arg1);
    return 1
}

function recoverUser(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    if address(oracleAddress) != msg.sender:
        emit code.data[2437 len 32]: 0x564f7261636c65206163636573732064656e6965640000000000000000000000
        return 0
    if not stor1[address(arg1)]:
        emit code.data[2437 len 32]: 'User does not exist'
        return 0
    signer = erecover(sha3(arg1, arg2, arg3), arg4 << 248, arg5, arg6) 
    require erecover.result
    if address(tenantAddress) != address(signer):
        emit code.data[2437 len 32]: 'Signature not by tenant'
        return 0
    if stor5[arg3]:
        emit code.data[2437 len 32]: 'Nonce/signature used before'
        return 0
    stor5[arg3] = 1
    call address(callDestinationAddress).recover(address rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        emit code.data[2437 len 32]: 'Contract call failed'
        return 0
    require stor1[address(arg1)] < users.length
    users[stor1[address(arg1)]].field_0 = arg2 or Mask(96, 160, users[stor1[address(arg1)]].field_0)
    stor1[address(arg1)] = 0
    stor1[arg2] = stor1[address(arg1)]
    emit Recovery(arg3, arg1, arg2);
    return 1
}



}
