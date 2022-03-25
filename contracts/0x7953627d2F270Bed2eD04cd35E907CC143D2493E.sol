contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor5;
uint8 stor8;
uint256 stor15;
uint256 stor22;
uint256 stor23;
uint8 stor24;

function _fallback() payable {
    stor1 = 'Token 0.1'
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor24 = 1
    stor23 = 0
    stor15 = 0
    stor2 = 'DVIP'
    stor3 = 'DVIP'
    stor8 = 6
    stor5 = 1
    stor22 = 420768 * 24 * 3600
    return code.data[172 len 12392]
}



// =====================  Runtime code  =====================


#
#  - feeFor(address arg1, address arg2, uint256 arg3)
#
address owner;
uint256 stor0;
uint256 standard;
uint256 name;
uint256 symbol;
uint8 stor5;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 decimals;
uint8 stor8; offset 8
uint256 stor8;
mapping of uint8 stor9;
array of uint256 nameFor;
array of uint256 stor11;
mapping of uint8 stor12;
mapping of address sub_cff10265;
mapping of uint256 sub_74769327;
uint256 totalSupply;
mapping of uint8 stor16;
array of address extractAccountAllowanceRecordLength;
mapping of uint8 stor18;
array of address accountIndex;
mapping of uint8 stor20;
address oversightAddress;
uint256 stor21;
uint256 expiry;
uint256 treasuryBalance;
uint8 isActive;
mapping of uint256 exportFee;
array of uint256 stor26;
mapping of uint8 stor27;
mapping of uint256 importFee;
array of uint256 stor29;
mapping of uint8 stor30;
array of address masterKeyIndex;
array of address exportFeeIndex;
array of address importFeeIndex;

function name() payable {
    return name
}

function totalSupply() payable {
    return totalSupply
}

function nameFor(address arg1) payable {
    return nameFor[address(arg1)][0 len nameFor[address(arg1)].length]
}

function extractExportFeeChargeLength() payable {
    return stor26.length
}

function isActive() payable {
    return bool(isActive)
}

function extractMasterKeyIndexLength() payable {
    return stor11.length
}

function decimals() payable {
    return decimals
}

function treasuryBalance() payable {
    return treasuryBalance
}

function accountIndex(uint256 arg1) payable {
    require arg1 < accountIndex.length
    return address(accountIndex[arg1])
}

function oversightAddress() payable {
    return address(oversightAddress)
}

function extractAccountLength() payable {
    return accountIndex.length
}

function accountActive(address arg1) payable {
    return bool(stor20[arg1])
}

function standard() payable {
    return standard
}

function masterKeyIndex(uint256 arg1) payable {
    require arg1 < stor11.length
    return masterKeyIndex[arg1]
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function sub_74769327(?) payable {
    return sub_74769327[arg1]
}

function extractAccountAllowanceRecordLength(address arg1) payable {
    return uint256(extractAccountAllowanceRecordLength[address(arg1)])
}

function masterKeyActive(address arg1) payable {
    return bool(stor12[arg1])
}

function getOwner() payable {
    return address(owner)
}

function importFeeIndex(uint256 arg1) payable {
    require arg1 < stor29.length
    return importFeeIndex[arg1]
}

function symbol() payable {
    return symbol
}

function allowanceActive(address arg1, address arg2) payable {
    return bool(stor18[arg1][arg2])
}

function isLocked() payable {
    return bool(uint8(stor8.field_8))
}

function allowTransactions() payable {
    return bool(uint8(stor5))
}

function frozenAccount(address arg1) payable {
    return bool(uint8(stor16[arg1]))
}

function allowanceIndex(address arg1, uint256 arg2) payable {
    require arg2 < uint256(extractAccountAllowanceRecordLength[arg1])
    return address(extractAccountAllowanceRecordLength[arg1][arg2])
}

function exportFeeIndex(uint256 arg1) payable {
    require arg1 < stor26.length
    return exportFeeIndex[arg1]
}

function nameRegistry(address arg1) payable {
    return nameFor[arg1][0 len nameFor[arg1].length]
}

function sub_cff10265(?) payable {
    return address(sub_cff10265[arg1])
}

function extractImportFeeChargeLength() payable {
    return stor29.length
}

function exportFee(address arg1) payable {
    return exportFee[arg1]
}

function importFee(address arg1) payable {
    return importFee[arg1]
}

function allowance(address arg1, address arg2) payable {
    return allowance[arg1][arg2]
}

function expiry() payable {
    return expiry
}

function masterKeys(address arg1) payable {
    return bool(stor9[arg1])
}

function voteSuicide(address arg1) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if address(sub_cff10265[call.data[0 len calldata.size]]):
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            selfdestruct(arg1)
        uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
        sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
        emit 0x5622ef83: msg.sender
}

function _fallback() payable {
    revert 
}

function assert(bool arg1) payable {
    require arg1
}

function setTreasuryBalance(uint256 arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    treasuryBalance = arg1
}

function shutdownTransactions() payable {
    require msg.sender == address(oversightAddress)
    uint8(stor5) = 0
    emit TransactionsShutDown(msg.sender);
}

function lock() payable {
    require address(owner) == msg.sender
    require not uint8(stor8.field_8)
    uint8(stor8.field_8) = 1
    emit Locked(msg.sender);
}

function setName(bytes32 arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    name = arg1
    emit 0x4c900651: msg.sender
}

function setSymbol(bytes32 arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    symbol = arg1
    emit 0x4c900651: msg.sender
}

function setStandard(bytes32 arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    standard = arg1
    emit 0x4c900651: msg.sender
}

function setTotalSupply(uint256 arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    totalSupply = arg1
    emit 0x4c900651: msg.sender
}

function setOwner(address arg1) payable {
    require msg.sender == address(owner)
    emit SetOwner(address(owner), arg1);
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setOversight(address arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    uint256(stor21) = arg1 or Mask(96, 160, uint256(stor21))
    emit 0x4c900651: msg.sender
}

function identify(string arg1) payable {
    require stor9[address(msg.sender)]
    nameFor[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    emit NameRegistered(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function setPrecisionDirect(uint8 arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    uint256(stor8.field_0) = arg1 or Mask(248, 8, uint256(stor8.field_0))
    emit PrecisionSet(arg1, msg.sender);
}

function cancel() payable {
    require stor9[address(msg.sender)]
    if not sub_74769327[address(msg.sender)]:
        emit NothingToCancel(msg.sender);
    else:
        emit AuthCancel(msg.sender, msg.sender);
        address(sub_cff10265[stor14[address(msg.sender)]]) = 0
        sub_74769327[address(stor13[sub_74769327[address(msg.sender)]])] = 0
}

function setupExportFee(address arg1, uint256 arg2) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    exportFee[address(arg1)] = arg2
    if not stor27[address(arg1)]:
        stor27[address(arg1)] = 1
        stor26.length++
        if not stor26.length <= stor26.length + 1:
            idx = stor26.length + 1
            while stor26.length > idx:
                stor26[idx] = 0
                idx = idx + 1
                continue 
        stor26[stor26.length] = arg1 or Mask(96, 160, stor26[stor26.length])
    emit FeeSetup(arg2, msg.sender, arg1);
}

function setupImportFee(address arg1, uint256 arg2) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    importFee[address(arg1)] = arg2
    if not stor30[address(arg1)]:
        stor30[address(arg1)] = 1
        stor29.length++
        if not stor29.length <= stor29.length + 1:
            idx = stor29.length + 1
            while stor29.length > idx:
                stor29[idx] = 0
                idx = idx + 1
                continue 
        stor29[stor29.length] = arg1 or Mask(96, 160, stor29[stor29.length])
    emit FeeSetup(arg2, msg.sender, arg1);
}

function setMasterKey(address arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    require not stor9[address(arg1)]
    if not stor12[address(arg1)]:
        stor12[address(arg1)] = 1
        stor11.length++
        if not stor11.length <= stor11.length + 1:
            idx = stor11.length + 1
            while stor11.length > idx:
                stor11[idx] = 0
                idx = idx + 1
                continue 
        stor11[stor11.length] = arg1 or Mask(96, 160, stor11[stor11.length])
    stor9[address(arg1)] = 1
    emit SetMasterKey(msg.sender);
}

function setAccountBalance(address arg1, uint256 arg2) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    balanceOf[address(arg1)] = arg2
    if not stor20[address(arg1)]:
        stor20[address(arg1)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
}

function setAccountFrozenStatus(address arg1, bool arg2) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    if not stor20[address(arg1)]:
        stor20[address(arg1)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
    uint256(stor16[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor16[address(arg1)]))
}

function setExpiry(uint256 arg1) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            expiry = arg1
}

function mint(uint256 arg1) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            treasuryBalance += arg1
            totalSupply += arg1
}

function voteOutMasterKey(address arg1) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            require stor9[address(arg1)]
            stor9[address(arg1)] = 0
}

function destroyTokens(uint256 arg1) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            require treasuryBalance >= arg1
            treasuryBalance -= arg1
            totalSupply -= arg1
}

function voteAllowTransactions(bool arg1) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            require arg1 != bool(uint8(stor5))
            uint256(stor5) = arg1 or Mask(248, 8, uint256(stor5))
}

function setAccountAllowance(address arg1, address arg2, uint256 arg3) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    allowance[address(arg1)][address(arg2)] = arg3
    if not stor18[address(arg1)][address(arg2)]:
        stor18[address(arg1)][address(arg2)] = 1
        uint256(extractAccountAllowanceRecordLength[address(arg1)])++
        if not uint256(extractAccountAllowanceRecordLength[address(arg1)]) <= uint256(extractAccountAllowanceRecordLength[address(arg1)]) + 1:
            idx = uint256(extractAccountAllowanceRecordLength[address(arg1)]) + 1
            while uint256(extractAccountAllowanceRecordLength[address(arg1)]) > idx:
                uint256(extractAccountAllowanceRecordLength[address(arg1)][idx]) = 0
                idx = idx + 1
                continue 
        uint256(extractAccountAllowanceRecordLength[address(arg1)][uint256(extractAccountAllowanceRecordLength[address(arg1)])]) = arg2 or Mask(96, 160, uint256(extractAccountAllowanceRecordLength[address(arg1)][uint256(extractAccountAllowanceRecordLength[address(arg1)])]))
}

function voteInMasterKey(address arg1) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            require not stor9[address(arg1)]
            if not stor12[address(arg1)]:
                stor12[address(arg1)] = 1
                stor11.length++
                if not stor11.length <= stor11.length + 1:
                    idx = stor11.length + 1
                    while stor11.length > idx:
                        stor11[idx] = 0
                        idx = idx + 1
                        continue 
                stor11[stor11.length] = arg1 or Mask(96, 160, stor11[stor11.length])
            stor9[address(arg1)] = 1
}

function freezeAccount(address arg1, bool arg2) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            uint256(stor16[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor16[address(arg1)]))
            if not stor20[address(arg1)]:
                stor20[address(arg1)] = 1
                accountIndex.length++
                if not accountIndex.length <= accountIndex.length + 1:
                    idx = accountIndex.length + 1
                    while accountIndex.length > idx:
                        uint256(accountIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
}

function transferFromTreasury(address arg1, uint256 arg2) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            require treasuryBalance >= arg2
            treasuryBalance -= arg2
            balanceOf[address(arg1)] += arg2
            if not stor20[address(arg1)]:
                stor20[address(arg1)] = 1
                accountIndex.length++
                if not accountIndex.length <= accountIndex.length + 1:
                    idx = accountIndex.length + 1
                    while accountIndex.length > idx:
                        uint256(accountIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
}

function setExportFee(address arg1, uint256 arg2) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            idx = 0
            s = 1
            while uint8(idx) < decimals:
                idx = idx + 1
                s = 10 * s
                continue 
            require arg2 <= (10 * None) + 1
            exportFee[address(arg1)] = arg2
            if not stor27[address(arg1)]:
                stor27[address(arg1)] = 1
                stor26.length++
                if not stor26.length <= stor26.length + 1:
                    idx = stor26.length + 1
                    while stor26.length > idx:
                        stor26[idx] = 0
                        idx = idx + 1
                        continue 
                stor26[stor26.length] = arg1 or Mask(96, 160, stor26[stor26.length])
}

function setImportFee(address arg1, uint256 arg2) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            idx = 0
            s = 1
            while uint8(idx) < decimals:
                idx = idx + 1
                s = 10 * s
                continue 
            require arg2 <= (10 * None) + 1
            importFee[address(arg1)] = arg2
            if not stor30[address(arg1)]:
                stor30[address(arg1)] = 1
                stor29.length++
                if not stor29.length <= stor29.length + 1:
                    idx = stor29.length + 1
                    while stor29.length > idx:
                        stor29[idx] = 0
                        idx = idx + 1
                        continue 
                stor29[stor29.length] = arg1 or Mask(96, 160, stor29[stor29.length])
}

function seizeTokens(address arg1, uint256 arg2) payable {
    require stor9[address(msg.sender)]
    if sub_74769327[address(msg.sender)]:
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            sub_74769327[address(msg.sender)] = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[12360 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            sub_74769327[address(stor13[call.data[0 len calldata.size]])] = 0
            require balanceOf[address(arg1)] >= arg2
            require uint8(stor16[address(arg1)])
            if not stor20[address(arg1)]:
                stor20[address(arg1)] = 1
                accountIndex.length++
                if not accountIndex.length <= accountIndex.length + 1:
                    idx = accountIndex.length + 1
                    while accountIndex.length > idx:
                        uint256(accountIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            balanceOf[address(arg1)] -= arg2
            treasuryBalance += arg2
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require uint8(stor5)
    require not uint8(stor16[address(msg.sender)])
    allowance[address(msg.sender)][address(arg1)] = arg2
    if not stor20[address(msg.sender)]:
        stor20[address(msg.sender)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
    if not stor20[address(arg1)]:
        stor20[address(arg1)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
    if not stor18[address(msg.sender)][address(arg1)]:
        stor18[address(msg.sender)][address(arg1)] = 1
        uint256(extractAccountAllowanceRecordLength[address(msg.sender)])++
        if not uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) <= uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1:
            idx = uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1
            while uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) > idx:
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)][idx]) = 0
                idx = idx + 1
                continue 
        uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]) = arg1 or Mask(96, 160, uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]))
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require uint8(stor5)
    require not uint8(stor16[address(msg.sender)])
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    if stor20[address(msg.sender)]:
        if stor20[address(arg1)]:
            balanceOf[address(msg.sender)] -= arg2
            if arg1 != this.address:
                balanceOf[address(arg1)] += arg2
            else:
                treasuryBalance += arg2
        else:
            stor20[address(arg1)] = 1
            accountIndex.length++
            if not accountIndex.length <= accountIndex.length + 1:
                idx = accountIndex.length + 1
                while accountIndex.length > idx:
                    uint256(accountIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            balanceOf[address(msg.sender)] -= arg2
            if arg1 != this.address:
                balanceOf[address(arg1)] += arg2
            else:
                treasuryBalance += arg2
    else:
        stor20[address(msg.sender)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
        if stor20[address(arg1)]:
            balanceOf[address(msg.sender)] -= arg2
            if arg1 != this.address:
                balanceOf[address(arg1)] += arg2
            else:
                treasuryBalance += arg2
        else:
            stor20[address(arg1)] = 1
            accountIndex.length++
            if not accountIndex.length <= accountIndex.length + 1:
                idx = accountIndex.length + 1
                while accountIndex.length > idx:
                    uint256(accountIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            balanceOf[address(msg.sender)] -= arg2
            if arg1 != this.address:
                balanceOf[address(arg1)] += arg2
            else:
                treasuryBalance += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require uint8(stor5)
    require not uint8(stor16[address(msg.sender)])
    require not uint8(stor16[address(arg1)])
    require balanceOf[address(arg1)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if stor20[address(arg1)]:
        if stor20[address(arg2)]:
            if not stor20[address(msg.sender)]:
                stor20[address(msg.sender)] = 1
                accountIndex.length++
                if not accountIndex.length <= accountIndex.length + 1:
                    idx = accountIndex.length + 1
                    while accountIndex.length > idx:
                        uint256(accountIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
        else:
            stor20[address(arg2)] = 1
            accountIndex.length++
            if not accountIndex.length <= accountIndex.length + 1:
                idx = accountIndex.length + 1
                while accountIndex.length > idx:
                    uint256(accountIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(accountIndex[accountIndex.length]) = arg2 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            if not stor20[address(msg.sender)]:
                stor20[address(msg.sender)] = 1
                accountIndex.length++
                if not accountIndex.length <= accountIndex.length + 1:
                    idx = accountIndex.length + 1
                    while accountIndex.length > idx:
                        uint256(accountIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
    else:
        stor20[address(arg1)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
        if stor20[address(arg2)]:
            if not stor20[address(msg.sender)]:
                stor20[address(msg.sender)] = 1
                accountIndex.length++
                if not accountIndex.length <= accountIndex.length + 1:
                    idx = accountIndex.length + 1
                    while accountIndex.length > idx:
                        uint256(accountIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
        else:
            stor20[address(arg2)] = 1
            accountIndex.length++
            if not accountIndex.length <= accountIndex.length + 1:
                idx = accountIndex.length + 1
                while accountIndex.length > idx:
                    uint256(accountIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(accountIndex[accountIndex.length]) = arg2 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            if not stor20[address(msg.sender)]:
                stor20[address(msg.sender)] = 1
                accountIndex.length++
                if not accountIndex.length <= accountIndex.length + 1:
                    idx = accountIndex.length + 1
                    while accountIndex.length > idx:
                        uint256(accountIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require uint8(stor5)
    require not uint8(stor16[address(msg.sender)])
    allowance[address(msg.sender)][address(arg1)] = arg2
    if stor20[address(msg.sender)]:
        if stor20[address(arg1)]:
            if not stor18[address(msg.sender)][address(arg1)]:
                stor18[address(msg.sender)][address(arg1)] = 1
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)])++
                if not uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) <= uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1:
                    idx = uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1
                    while uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) > idx:
                        uint256(extractAccountAllowanceRecordLength[address(msg.sender)][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]) = arg1 or Mask(96, 160, uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]))
        else:
            stor20[address(arg1)] = 1
            accountIndex.length++
            if not accountIndex.length <= accountIndex.length + 1:
                idx = accountIndex.length + 1
                while accountIndex.length > idx:
                    uint256(accountIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            if not stor18[address(msg.sender)][address(arg1)]:
                stor18[address(msg.sender)][address(arg1)] = 1
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)])++
                if not uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) <= uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1:
                    idx = uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1
                    while uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) > idx:
                        uint256(extractAccountAllowanceRecordLength[address(msg.sender)][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]) = arg1 or Mask(96, 160, uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]))
    else:
        stor20[address(msg.sender)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
        if stor20[address(arg1)]:
            if not stor18[address(msg.sender)][address(arg1)]:
                stor18[address(msg.sender)][address(arg1)] = 1
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)])++
                if not uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) <= uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1:
                    idx = uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1
                    while uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) > idx:
                        uint256(extractAccountAllowanceRecordLength[address(msg.sender)][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]) = arg1 or Mask(96, 160, uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]))
        else:
            stor20[address(arg1)] = 1
            accountIndex.length++
            if not accountIndex.length <= accountIndex.length + 1:
                idx = accountIndex.length + 1
                while accountIndex.length > idx:
                    uint256(accountIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            if not stor18[address(msg.sender)][address(arg1)]:
                stor18[address(msg.sender)][address(arg1)] = 1
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)])++
                if not uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) <= uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1:
                    idx = uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1
                    while uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) > idx:
                        uint256(extractAccountAllowanceRecordLength[address(msg.sender)][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]) = arg1 or Mask(96, 160, uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]))
    emit Approval(arg2, msg.sender, arg1);
    return 1
}



}
