contract main {


// =======================  Init code  ======================


array of address stor1;
address stor2;
address stor3;

function _fallback() payable {
    stor2 = msg.sender
    stor3 = msg.sender
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    return code.data[145 len 2151]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
array of address users;
address oracleAddress;
address tenantAddress;
mapping of uint8 stor4;
address callDestinationAddress;

function users(uint256 arg1) {
    require arg1 < users.length
    return users[arg1]
}

function callDestination() {
    return callDestinationAddress
}

function oracle() {
    return oracleAddress
}

function tenant() {
    return tenantAddress
}

function _fallback() {
    revert 
}

function isUser(address arg1) {
    return (stor0[address(arg1)] > 0)
}

function setOracle(address arg1) {
    require msg.value <= 0
    if oracleAddress == msg.sender:
        oracleAddress = arg1
    emit code.data[2119 len 32]: 6, 0
}

function configure(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    require msg.value <= 0
    if oracleAddress != msg.sender:
        emit code.data[2119 len 32]: 6, 0
        return 0
    if oracleAddress != tenantAddress:
        signer = erecover(sha3(arg1, arg2, arg3), arg4 << 248, arg5, arg6) 
        require erecover.result
        if tenantAddress != address(signer):
            emit code.data[2119 len 32]: 3, arg3
            emit code.data[2119 len 32]: 6, 0
            return 0
        if stor4[arg3]:
            emit code.data[2119 len 32]: 4, arg3
            emit code.data[2119 len 32]: 6, 0
            return 0
        stor4[arg3] = 1
    tenantAddress = arg1
    callDestinationAddress = arg2
    emit code.data[2119 len 32]: 6, 0
    return 1
}

function addUser(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require msg.value <= 0
    if oracleAddress != msg.sender:
        emit code.data[2119 len 32]: 6, 0
        return 0
    if stor0[address(arg1)] > 0:
        emit code.data[2119 len 32]: 2, arg2
        emit code.data[2119 len 32]: 6, 0
        return 0
    signer = erecover(sha3(arg1, arg2), arg3 << 248, arg4, arg5) 
    require erecover.result
    if tenantAddress != address(signer):
        emit code.data[2119 len 32]: 3, arg2
        emit code.data[2119 len 32]: 6, 0
        return 0
    if stor4[arg2]:
        emit code.data[2119 len 32]: 4, arg2
        emit code.data[2119 len 32]: 6, 0
        return 0
    stor4[arg2] = 1
    users.length++
    if not users.length <= users.length + 1:
        idx = users.length + 1
        while users.length > idx:
            users[idx] = 0
            idx = idx + 1
            continue 
    stor0[address(arg1)] = users.length
    require users.length < users.length
    users[users.length] = arg1
    emit Setup(arg2, arg1);
    emit code.data[2119 len 32]: 6, 0
    return 1
}

function recoverUser(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    require msg.value <= 0
    if oracleAddress != msg.sender:
        emit code.data[2119 len 32]: 6, 0
        return 0
    if not stor0[address(arg1)]:
        emit code.data[2119 len 32]: 1, arg3
        emit code.data[2119 len 32]: 6, 0
        return 0
    signer = erecover(sha3(arg1, arg2, arg3), arg4 << 248, arg5, arg6) 
    require erecover.result
    if tenantAddress != address(signer):
        emit code.data[2119 len 32]: 3, arg3
        emit code.data[2119 len 32]: 6, 0
        return 0
    if stor4[arg3]:
        emit code.data[2119 len 32]: 4, arg3
        emit code.data[2119 len 32]: 6, 0
        return 0
    stor4[arg3] = 1
    require ext_code.size(callDestinationAddress)
    call callDestinationAddress.recover(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        emit code.data[2119 len 32]: 5, arg3
        emit code.data[2119 len 32]: 6, 0
        return 0
    require stor0[address(arg1)] < users.length
    users[stor0[address(arg1)]] = arg2
    stor0[address(arg1)] = 0
    stor0[arg2] = stor0[address(arg1)]
    emit Recovery(arg3, arg1, arg2);
    emit code.data[2119 len 32]: 6, 0
    return 1
}



}
