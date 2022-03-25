contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor15;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor15 = 600
    return code.data[42 len 6576]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 stor0;
mapping of uint8 stor1;
array of uint256 nameFor;
array of address masterKeyIndex;
mapping of uint8 stor4;
mapping of address sub_cff10265;
mapping of address sub_74769327;
address hotWalletAddress;
uint256 stor7;
mapping of uint256 approved;
array of address approvedIndex;
mapping of uint256 expiry;
mapping of uint8 stor11;
mapping of uint8 stor12;
array of address oversight;
mapping of uint8 stor14;
uint256 timeWindow;

function nameFor(address arg1) payable {
    return nameFor[address(arg1)][0 len nameFor[address(arg1)].length]
}

function oversightAddresses(address arg1) payable {
    return bool(uint8(stor12[arg1]))
}

function expiry(address arg1) payable {
    return expiry[arg1]
}

function extractMasterKeyIndexLength() payable {
    return masterKeyIndex.length
}

function masterKeyIndex(uint256 arg1) payable {
    require arg1 < masterKeyIndex.length
    return address(masterKeyIndex[arg1])
}

function extractApprovedIndexLength() payable {
    return approvedIndex.length
}

function sub_74769327(?) payable {
    return uint256(sub_74769327[arg1])
}

function masterKeyActive(address arg1) payable {
    return bool(stor4[arg1])
}

function getOwner() payable {
    return owner
}

function oversightAddressActive(address arg1) payable {
    return bool(stor14[arg1])
}

function isLocked() payable {
    return bool(uint8(stor0.field_160))
}

function approvedIndex(uint256 arg1) payable {
    require arg1 < approvedIndex.length
    return address(approvedIndex[arg1])
}

function nameRegistry(address arg1) payable {
    return nameFor[arg1][0 len nameFor[arg1].length]
}

function sub_cff10265(?) payable {
    return address(sub_cff10265[arg1])
}

function timeWindow() payable {
    return timeWindow
}

function approved(address arg1) payable {
    return approved[arg1]
}

function currencyActive(address arg1) payable {
    return bool(stor11[arg1])
}

function extractOversightAddressesIndexLength() payable {
    return oversight.length
}

function masterKeys(address arg1) payable {
    return bool(stor1[arg1])
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

function setHotWallet(address arg1) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
    emit 0x4c900651: msg.sender
}

function identify(string arg1) payable {
    require stor1[address(msg.sender)]
    nameFor[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    emit NameRegistered(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function cancel() payable {
    require stor1[address(msg.sender)]
    if not uint256(sub_74769327[address(msg.sender)]):
        emit NothingToCancel(msg.sender);
    else:
        emit AuthCancel(msg.sender, msg.sender);
        address(sub_74769327[address(msg.sender)]) = 0
        uint256(sub_74769327[address(sub_74769327[address(msg.sender)])]) = 0
}

function shutdownTransactions(address arg1) payable {
    require uint8(stor12[address(msg.sender)])
    call arg1.backendContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).shutdownTransactions() with:
         gas gas_remaining - 25050 wei
    emit TransactionsShutDown(msg.sender);
}

function setExpiry(address arg1, uint256 arg2) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    if not stor11[address(arg1)]:
        stor11[address(arg1)] = 1
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
    if not stor11[address(arg1)]:
        stor11[address(arg1)] = 1
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
    if not stor14[address(arg1)]:
        stor14[address(arg1)] = 1
        oversight.length++
        if not oversight.length <= oversight.length + 1:
            idx = oversight.length + 1
            while oversight.length > idx:
                uint256(oversight[idx]) = 0
                idx = idx + 1
                continue 
        uint256(oversight[oversight.length]) = arg1 or Mask(96, 160, uint256(oversight[oversight.length]))
    uint256(stor12[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor12[address(arg1)]))
    emit 0x4c900651: msg.sender
}

function setMasterKey(address arg1) payable {
    require not uint8(stor0.field_160)
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

function setTimeWindow(uint256 arg1) payable {
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6544 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            timeWindow = arg1
}

function removeOversight(address arg1) payable {
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6544 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            uint8(stor12[address(arg1)]) = 0
}

function voteOutMasterKey(address arg1) payable {
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6544 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            require stor1[address(arg1)]
            stor1[address(arg1)] = 0
}

function addOversight(address arg1) payable {
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6544 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            if not stor14[address(arg1)]:
                stor14[address(arg1)] = 1
                oversight.length++
                if not oversight.length <= oversight.length + 1:
                    idx = oversight.length + 1
                    while oversight.length > idx:
                        uint256(oversight[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(oversight[oversight.length]) = arg1 or Mask(96, 160, uint256(oversight[oversight.length]))
            uint8(stor12[address(arg1)]) = 1
}

function voteInMasterKey(address arg1) payable {
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6544 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
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

function approve(address arg1, uint256 arg2) payable {
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6544 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            if not stor11[address(arg1)]:
                stor11[address(arg1)] = 1
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
