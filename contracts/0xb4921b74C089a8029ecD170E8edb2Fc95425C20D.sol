contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor10;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor10 = 600
    return code.data[42 len 5006]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 stor0;
address trustAddress;
uint256 stor1;
address hotWalletAddress;
uint256 stor2;
mapping of uint256 approved;
array of address approvedIndex;
mapping of uint256 expiry;
mapping of uint8 stor6;
mapping of uint8 stor7;
array of address oversight;
mapping of uint8 stor9;
uint256 timeWindow;

function oversightAddresses(address arg1) payable {
    return bool(uint8(stor7[arg1]))
}

function expiry(address arg1) payable {
    return expiry[arg1]
}

function extractApprovedIndexLength() payable {
    return approvedIndex.length
}

function trustAddress() payable {
    return address(trustAddress)
}

function getOwner() payable {
    return owner
}

function oversightAddressActive(address arg1) payable {
    return bool(stor9[arg1])
}

function isLocked() payable {
    return bool(uint8(stor0.field_160))
}

function approvedIndex(uint256 arg1) payable {
    require arg1 < approvedIndex.length
    return address(approvedIndex[arg1])
}

function timeWindow() payable {
    return timeWindow
}

function approved(address arg1) payable {
    return approved[arg1]
}

function currencyActive(address arg1) payable {
    return bool(stor6[arg1])
}

function extractOversightAddressesIndexLength() payable {
    return oversight.length
}

function hotWalletAddress() payable {
    return address(hotWalletAddress)
}

function oversightAddressesIndex(uint256 arg1) payable {
    require arg1 < oversight.length
    return address(oversight[arg1])
}

function _fallback() payable {
  stop
}

function assert(bool arg1) payable {
    require arg1
}

function lock() payable {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Locked(msg.sender);
}

function setupTimeWindow(uint256 arg1) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    timeWindow = arg1
    emit 0x4c900651: msg.sender
}

function setOwner(address arg1) payable {
    require msg.sender == owner
    emit SetOwner(owner, arg1);
    uint256(stor0.field_0) = arg1 or Mask(96, 160, uint256(stor0.field_0))
}

function validate(address arg1, uint256 arg2) payable {
    require msg.sender == address(hotWalletAddress)
    require approved[address(arg1)] >= arg2
    approved[address(arg1)] -= arg2
    return 1
}

function setTrust(address arg1) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    emit 0x4c900651: msg.sender
}

function setHotWallet(address arg1) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    emit 0x4c900651: msg.sender
}

function nameFor(address arg1) payable {
    call address(trustAddress).0x19350aea with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function shutdownTransactions(address arg1) payable {
    require uint8(stor7[address(msg.sender)])
    call arg1.backendContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).shutdownTransactions() with:
         gas gas_remaining - 25050 wei
    emit TransactionsShutDown(msg.sender);
}

function cancel() payable {
    require address(trustAddress) != 0
    call address(trustAddress).authCancel(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[4974 len 32]: msg.sender
        return uint8(ext_call.return_data[0])
    if 1 == ext_call.return_data[31 len 1]:
        emit NothingToCancel(msg.sender);
    else:
        if 2 == ext_call.return_data[31 len 1]:
            emit AuthCancel(msg.sender, msg.sender);
    return ext_call.return_data[31 len 1]
}

function setExpiry(address arg1, uint256 arg2) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    if not stor6[address(arg1)]:
        stor6[address(arg1)] = 1
        approvedIndex.length++
        if not approvedIndex.length <= approvedIndex.length + 1:
            idx = approvedIndex.length + 1
            while approvedIndex.length > idx:
                uint256(approvedIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(approvedIndex[approvedIndex.length]) = arg1 or Mask(96, 160, uint256(approvedIndex[approvedIndex.length]))
    expiry[address(arg1)] = arg2
    emit 0x4c900651: msg.sender
}

function setApproved(address arg1, uint256 arg2) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    if not stor6[address(arg1)]:
        stor6[address(arg1)] = 1
        approvedIndex.length++
        if not approvedIndex.length <= approvedIndex.length + 1:
            idx = approvedIndex.length + 1
            while approvedIndex.length > idx:
                uint256(approvedIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(approvedIndex[approvedIndex.length]) = arg1 or Mask(96, 160, uint256(approvedIndex[approvedIndex.length]))
    approved[address(arg1)] = arg2
    emit 0x4c900651: msg.sender
}

function setOversightAddress(address arg1, bool arg2) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    if not stor9[address(arg1)]:
        stor9[address(arg1)] = 1
        oversight.length++
        if not oversight.length <= oversight.length + 1:
            idx = oversight.length + 1
            while oversight.length > idx:
                uint256(oversight[idx]) = 0
                idx = idx + 1
                continue 
        uint256(oversight[oversight.length]) = arg1 or Mask(96, 160, uint256(oversight[oversight.length]))
    uint256(stor7[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor7[address(arg1)]))
    emit 0x4c900651: msg.sender
}

function setTimeWindow(uint256 arg1) payable {
    require address(trustAddress)
    call address(trustAddress).functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call address(trustAddress).authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[4974 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                timeWindow = arg1
}

function removeOversight(address arg1) payable {
    require address(trustAddress)
    call address(trustAddress).functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call address(trustAddress).authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[4974 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                uint8(stor7[address(arg1)]) = 0
}

function addOversight(address arg1) payable {
    require address(trustAddress)
    call address(trustAddress).functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call address(trustAddress).authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[4974 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                if not stor9[address(arg1)]:
                    stor9[address(arg1)] = 1
                    oversight.length++
                    if not oversight.length <= oversight.length + 1:
                        idx = oversight.length + 1
                        while oversight.length > idx:
                            uint256(oversight[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(oversight[oversight.length]) = arg1 or Mask(96, 160, uint256(oversight[oversight.length]))
                uint8(stor7[address(arg1)]) = 1
}

function approve(address arg1, uint256 arg2) payable {
    require address(trustAddress)
    call address(trustAddress).functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call address(trustAddress).authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[4974 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                if not stor6[address(arg1)]:
                    stor6[address(arg1)] = 1
                    approvedIndex.length++
                    if not approvedIndex.length <= approvedIndex.length + 1:
                        idx = approvedIndex.length + 1
                        while approvedIndex.length > idx:
                            uint256(approvedIndex[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(approvedIndex[approvedIndex.length]) = arg1 or Mask(96, 160, uint256(approvedIndex[approvedIndex.length]))
                approved[address(arg1)] = arg2
                expiry[address(arg1)] = timeWindow + block.timestamp
}



}
