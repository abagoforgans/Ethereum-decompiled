contract main {


// =======================  Init code  ======================


array of address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    return code.data[128 len 2081]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
array of struct users;
address oracleAddress;
uint256 stor2;
address tenantAddress;
uint256 stor3;
mapping of uint8 stor4;
address callDestinationAddress;
uint256 stor5;

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

function _fallback() payable {
    revert 
}

function isUser(address arg1) payable {
    return (stor0[address(arg1)] > 0)
}

function setOracle(address arg1) payable {
    require msg.value <= 0
    if msg.sender == address(oracleAddress):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    emit code.data[2049 len 32]: 6, 0
}

function configure(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require msg.value <= 0
    if address(oracleAddress) != msg.sender:
        emit code.data[2049 len 32]: 6, 0
        return 0
    if address(oracleAddress) != address(tenantAddress):
        signer = erecover(sha3(arg1, arg2, arg3), arg4 << 248, arg5, arg6) 
        require erecover.result
        if address(tenantAddress) != address(signer):
            emit code.data[2049 len 32]: 3, arg3
            return 0
        if stor4[arg3]:
            emit code.data[2049 len 32]: 4, arg3
            return 0
        stor4[arg3] = 1
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
    uint256(stor5) = arg2 or Mask(96, 160, uint256(stor5))
    return 1
}

function addUser(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    require msg.value <= 0
    if address(oracleAddress) != msg.sender:
        emit code.data[2049 len 32]: 6, 0
        return 0
    if stor0[address(arg1)] > 0:
        emit code.data[2049 len 32]: 2, arg2
        return 0
    signer = erecover(sha3(arg1, arg2), arg3 << 248, arg4, arg5) 
    require erecover.result
    if address(tenantAddress) != address(signer):
        emit code.data[2049 len 32]: 3, arg2
        return 0
    if stor4[arg2]:
        emit code.data[2049 len 32]: 4, arg2
        return 0
    stor4[arg2] = 1
    users.length++
    if not users.length <= users.length + 1:
        idx = users.length + 1
        while users.length > idx:
            users[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor0[address(arg1)] = users.length
    require users.length < users.length
    users[users.length].field_0 = users[users.length].field_160
    emit Setup(arg2, arg1);
    return 1
}

function recoverUser(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require msg.value <= 0
    if address(oracleAddress) != msg.sender:
        emit code.data[2049 len 32]: 6, 0
        return 0
    if not stor0[address(arg1)]:
        emit code.data[2049 len 32]: 1, arg3
        return 0
    signer = erecover(sha3(arg1, arg2, arg3), arg4 << 248, arg5, arg6) 
    require erecover.result
    if address(tenantAddress) != address(signer):
        emit code.data[2049 len 32]: 3, arg3
        return 0
    if stor4[arg3]:
        emit code.data[2049 len 32]: 4, arg3
        return 0
    stor4[arg3] = 1
    call address(callDestinationAddress).recover(address rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        emit code.data[2049 len 32]: 5, arg3
        return 0
    require stor0[address(arg1)] < users.length
    users[stor0[address(arg1)]].field_0 = arg2 or Mask(96, 160, users[stor0[address(arg1)]].field_0)
    stor0[address(arg1)] = 0
    stor0[arg2] = stor0[address(arg1)]
    emit Recovery(arg3, arg1, arg2);
    return 1
}



}
