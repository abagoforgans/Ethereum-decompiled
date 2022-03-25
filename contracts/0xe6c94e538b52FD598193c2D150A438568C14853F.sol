contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 4656]
}



// =====================  Runtime code  =====================


uint8 isLocked; offset 160
address owner;
uint256 stor0;
mapping of uint8 stor1;
mapping of uint256 nameFor;
array of address masterKeyIndex;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of address functionCalls;
mapping of uint256 functionCalling;

function nameFor(address arg1) payable {
    return nameFor[address(arg1)]
}

function extractMasterKeyIndexLength() payable {
    return masterKeyIndex.length
}

function trustedClients(address arg1) payable {
    return bool(stor5[arg1])
}

function masterKeyIndex(uint256 arg1) payable {
    require arg1 < masterKeyIndex.length
    return address(masterKeyIndex[arg1])
}

function masterKeyActive(address arg1) payable {
    return bool(stor4[arg1])
}

function getOwner() payable {
    return owner
}

function isLocked() payable {
    return bool(isLocked)
}

function nameRegistry(address arg1) payable {
    return nameFor[arg1]
}

function functionCalling(address arg1) payable {
    return functionCalling[arg1]
}

function functionCalls(uint256 arg1) payable {
    return address(functionCalls[arg1])
}

function masterKeys(address arg1) payable {
    return bool(stor1[arg1])
}

function _fallback() payable {
  stop
}

function assert(bool arg1) payable {
    require arg1
}

function lock() payable {
    require owner == msg.sender
    require not isLocked
    isLocked = 1
    emit Locked(msg.sender);
}

function setOwner(address arg1) payable {
    require msg.sender == owner
    emit SetOwner(owner, arg1);
    stor0 = arg1 or Mask(96, 160, stor0)
}

function identify(bytes32 arg1) payable {
    require stor1[address(msg.sender)]
    nameFor[address(msg.sender)] = arg1
    emit NameRegistered(msg.sender, arg1);
}

function setTrustedClient(address arg1) payable {
    require not isLocked
    require msg.sender == owner
    stor5[address(arg1)] = 1
    emit PropertySet(msg.sender);
}

function cancel() payable {
    if not stor1[address(msg.sender)]:
        emit code.data[4624 len 32]: msg.sender
        return 0
    if not functionCalling[address(msg.sender)]:
        emit NothingToCancel(msg.sender);
        return 1
    emit AuthCancel(msg.sender, msg.sender);
    functionCalling[address(msg.sender)] = 0
    address(functionCalls[stor7[address(msg.sender)]]) = 0
    return 2
}

function authCancel(address arg1) payable {
    if not stor1[address(arg1)]:
        emit code.data[4624 len 32]: arg1
        return 0
    if not stor5[address(msg.sender)]:
        emit code.data[4624 len 32]: arg1
        return 0
    if not functionCalling[address(arg1)]:
        emit NothingToCancel(arg1);
        return 1
    emit AuthCancel(arg1, arg1);
    functionCalling[address(arg1)] = 0
    address(functionCalls[stor7[address(arg1)]]) = 0
    return 2
}

function setMasterKey(address arg1) payable {
    require not isLocked
    require msg.sender == owner
    require not stor1[address(arg1)]
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        masterKeyIndex.length++
        if not masterKeyIndex.length <= masterKeyIndex.length + 1:
            idx = masterKeyIndex.length + 1
            while masterKeyIndex.length > idx:
                uint256(masterKeyIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(masterKeyIndex[masterKeyIndex.length]) = arg1 or Mask(96, 160, uint256(masterKeyIndex[masterKeyIndex.length]))
    stor1[address(arg1)] = 1
    emit SetMasterKey(msg.sender);
}

function authCall(address arg1, bytes32 arg2) payable {
    if not stor1[address(arg1)]:
        emit code.data[4624 len 32]: arg1
        return 0
    if not stor5[address(msg.sender)]:
        emit code.data[4624 len 32]: arg1
        return 0
    if functionCalling[address(arg1)]:
        emit AuthPending(arg1);
        return 3
    if address(functionCalls[arg2]):
        emit 0x4c5fe5b8: address(functionCalls[arg2]), arg1
        address(functionCalls[arg2]) = 0
        functionCalling[address(stor6[arg2])] = 0
        return 2
    uint256(functionCalls[arg2]) = arg1 or Mask(96, 160, uint256(functionCalls[arg2]))
    functionCalling[address(arg1)] = arg2
    emit 0x5622ef83: arg1
    return 1
}

function trustClient(address arg1) payable {
    if not stor1[address(msg.sender)]:
        emit code.data[4624 len 32]: msg.sender
    else:
        if functionCalling[address(msg.sender)]:
            emit AuthPending(msg.sender);
        else:
            if not address(functionCalls[call.data[0 len calldata.size]]):
                uint256(functionCalls[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(functionCalls[call.data[0 len calldata.size]]))
                functionCalling[address(msg.sender)] = sha3(call.data[0 len calldata.size])
                emit 0x5622ef83: msg.sender
            else:
                emit 0x4c5fe5b8: address(functionCalls[call.data[0 len calldata.size]]), msg.sender
                address(functionCalls[call.data[0 len calldata.size]]) = 0
                functionCalling[address(stor6[call.data[0 len calldata.size]])] = 0
                stor5[address(arg1)] = 1
}

function untrustClient(address arg1) payable {
    if not stor1[address(msg.sender)]:
        emit code.data[4624 len 32]: msg.sender
    else:
        if functionCalling[address(msg.sender)]:
            emit AuthPending(msg.sender);
        else:
            if not address(functionCalls[call.data[0 len calldata.size]]):
                uint256(functionCalls[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(functionCalls[call.data[0 len calldata.size]]))
                functionCalling[address(msg.sender)] = sha3(call.data[0 len calldata.size])
                emit 0x5622ef83: msg.sender
            else:
                emit 0x4c5fe5b8: address(functionCalls[call.data[0 len calldata.size]]), msg.sender
                address(functionCalls[call.data[0 len calldata.size]]) = 0
                functionCalling[address(stor6[call.data[0 len calldata.size]])] = 0
                stor5[address(arg1)] = 0
}

function voteOutMasterKey(address arg1) payable {
    if not stor1[address(msg.sender)]:
        emit code.data[4624 len 32]: msg.sender
    else:
        if functionCalling[address(msg.sender)]:
            emit AuthPending(msg.sender);
        else:
            if not address(functionCalls[call.data[0 len calldata.size]]):
                uint256(functionCalls[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(functionCalls[call.data[0 len calldata.size]]))
                functionCalling[address(msg.sender)] = sha3(call.data[0 len calldata.size])
                emit 0x5622ef83: msg.sender
            else:
                emit 0x4c5fe5b8: address(functionCalls[call.data[0 len calldata.size]]), msg.sender
                address(functionCalls[call.data[0 len calldata.size]]) = 0
                functionCalling[address(stor6[call.data[0 len calldata.size]])] = 0
                require stor1[address(arg1)]
                stor1[address(arg1)] = 0
}

function voteInMasterKey(address arg1) payable {
    if not stor1[address(msg.sender)]:
        emit code.data[4624 len 32]: msg.sender
    else:
        if functionCalling[address(msg.sender)]:
            emit AuthPending(msg.sender);
        else:
            if not address(functionCalls[call.data[0 len calldata.size]]):
                uint256(functionCalls[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(functionCalls[call.data[0 len calldata.size]]))
                functionCalling[address(msg.sender)] = sha3(call.data[0 len calldata.size])
                emit 0x5622ef83: msg.sender
            else:
                emit 0x4c5fe5b8: address(functionCalls[call.data[0 len calldata.size]]), msg.sender
                address(functionCalls[call.data[0 len calldata.size]]) = 0
                functionCalling[address(stor6[call.data[0 len calldata.size]])] = 0
                require not stor1[address(arg1)]
                if not stor4[address(arg1)]:
                    stor4[address(arg1)] = 1
                    masterKeyIndex.length++
                    if not masterKeyIndex.length <= masterKeyIndex.length + 1:
                        idx = masterKeyIndex.length + 1
                        while masterKeyIndex.length > idx:
                            uint256(masterKeyIndex[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(masterKeyIndex[masterKeyIndex.length]) = arg1 or Mask(96, 160, uint256(masterKeyIndex[masterKeyIndex.length]))
                stor1[address(arg1)] = 1
}



}
