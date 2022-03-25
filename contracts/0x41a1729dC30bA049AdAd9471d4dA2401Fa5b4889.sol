contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor5;
uint8 stor8;
uint256 stor9;
uint256 stor16;
uint256 stor17;
uint8 stor18;

function _fallback() payable {
    stor1 = 'Token 0.1'
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor18 = 1
    stor17 = 0
    stor9 = 0
    stor2 = 'DVIP'
    stor3 = 'DVIP'
    stor8 = 6
    stor5 = 1
    stor16 = 420768 * 24 * 3600
    return code.data[172 len 11412]
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
address trustAddress; offset 16
uint256 stor8; offset 16
uint256 stor8;
uint256 totalSupply;
mapping of uint8 stor10;
array of address extractAccountAllowanceRecordLength;
mapping of uint8 stor12;
array of address accountIndex;
mapping of uint8 stor14;
address oversightAddress;
uint256 stor15;
uint256 expiry;
uint256 treasuryBalance;
uint8 isActive;
mapping of uint256 exportFee;
array of uint256 stor20;
mapping of uint8 stor21;
mapping of uint256 importFee;
array of uint256 stor23;
mapping of uint8 stor24;
array of address importFeeIndex;
array of address exportFeeIndex;

function name() payable {
    return name
}

function totalSupply() payable {
    return totalSupply
}

function extractExportFeeChargeLength() payable {
    return stor20.length
}

function isActive() payable {
    return bool(isActive)
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
    return bool(stor14[arg1])
}

function standard() payable {
    return standard
}

function trustAddress() payable {
    return trustAddress
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function extractAccountAllowanceRecordLength(address arg1) payable {
    return uint256(extractAccountAllowanceRecordLength[address(arg1)])
}

function getOwner() payable {
    return address(owner)
}

function importFeeIndex(uint256 arg1) payable {
    require arg1 < stor23.length
    return importFeeIndex[arg1]
}

function symbol() payable {
    return symbol
}

function allowanceActive(address arg1, address arg2) payable {
    return bool(stor12[arg1][arg2])
}

function isLocked() payable {
    return bool(uint8(stor8.field_8))
}

function allowTransactions() payable {
    return bool(uint8(stor5))
}

function frozenAccount(address arg1) payable {
    return bool(uint8(stor10[arg1]))
}

function allowanceIndex(address arg1, uint256 arg2) payable {
    require arg2 < uint256(extractAccountAllowanceRecordLength[arg1])
    return address(extractAccountAllowanceRecordLength[arg1][arg2])
}

function exportFeeIndex(uint256 arg1) payable {
    require arg1 < stor20.length
    return exportFeeIndex[arg1]
}

function extractImportFeeChargeLength() payable {
    return stor23.length
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

function voteSuicide(address arg1) payable {
    require trustAddress
    call trustAddress.functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call trustAddress.authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if 2 == ext_call.return_data[31 len 1]:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                selfdestruct(arg1)
            if 3 == ext_call.return_data[31 len 1]:
                emit AuthPending(msg.sender);
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

function nameFor(address arg1) payable {
    call trustAddress.0x19350aea with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function setTrust(address arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    Mask(240, 0, stor8.field_16) = Mask(240, 0, arg1)
    emit 0x4c900651: msg.sender
}

function setOversight(address arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    uint256(stor15) = arg1 or Mask(96, 160, uint256(stor15))
    emit 0x4c900651: msg.sender
}

function setPrecisionDirect(uint8 arg1) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    uint256(stor8.field_0) = arg1 or Mask(248, 8, uint256(stor8.field_0))
    emit PrecisionSet(arg1, msg.sender);
}

function cancel() payable {
    require trustAddress != 0
    call trustAddress.authCancel(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
        return uint8(ext_call.return_data[0])
    if 1 == ext_call.return_data[31 len 1]:
        emit NothingToCancel(msg.sender);
    else:
        if 2 == ext_call.return_data[31 len 1]:
            emit AuthCancel(msg.sender, msg.sender);
    return ext_call.return_data[31 len 1]
}

function setupExportFee(address arg1, uint256 arg2) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    exportFee[address(arg1)] = arg2
    if not stor21[address(arg1)]:
        stor21[address(arg1)] = 1
        stor20.length++
        if not stor20.length <= stor20.length + 1:
            idx = stor20.length + 1
            while stor20.length > idx:
                stor20[idx] = 0
                idx = idx + 1
                continue 
        stor20[stor20.length] = arg1 or Mask(96, 160, stor20[stor20.length])
    emit FeeSetup(arg2, msg.sender, arg1);
}

function setupImportFee(address arg1, uint256 arg2) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    importFee[address(arg1)] = arg2
    if not stor24[address(arg1)]:
        stor24[address(arg1)] = 1
        stor23.length++
        if not stor23.length <= stor23.length + 1:
            idx = stor23.length + 1
            while stor23.length > idx:
                stor23[idx] = 0
                idx = idx + 1
                continue 
        stor23[stor23.length] = arg1 or Mask(96, 160, stor23[stor23.length])
    emit FeeSetup(arg2, msg.sender, arg1);
}

function setAccountBalance(address arg1, uint256 arg2) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    balanceOf[address(arg1)] = arg2
    if not stor14[address(arg1)]:
        stor14[address(arg1)] = 1
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
    if not stor14[address(arg1)]:
        stor14[address(arg1)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
    uint256(stor10[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor10[address(arg1)]))
}

function setExpiry(uint256 arg1) payable {
    require trustAddress
    call trustAddress.functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call trustAddress.authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                expiry = arg1
}

function mint(uint256 arg1) payable {
    require trustAddress
    call trustAddress.functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call trustAddress.authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                treasuryBalance += arg1
                totalSupply += arg1
}

function destroyTokens(uint256 arg1) payable {
    require trustAddress
    call trustAddress.functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call trustAddress.authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                require treasuryBalance >= arg1
                treasuryBalance -= arg1
                totalSupply -= arg1
}

function voteAllowTransactions(bool arg1) payable {
    require trustAddress
    call trustAddress.functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call trustAddress.authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                require arg1 != bool(uint8(stor5))
                uint256(stor5) = arg1 or Mask(248, 8, uint256(stor5))
}

function setAccountAllowance(address arg1, address arg2, uint256 arg3) payable {
    require not uint8(stor8.field_8)
    require msg.sender == address(owner)
    allowance[address(arg1)][address(arg2)] = arg3
    if not stor12[address(arg1)][address(arg2)]:
        stor12[address(arg1)][address(arg2)] = 1
        uint256(extractAccountAllowanceRecordLength[address(arg1)])++
        if not uint256(extractAccountAllowanceRecordLength[address(arg1)]) <= uint256(extractAccountAllowanceRecordLength[address(arg1)]) + 1:
            idx = uint256(extractAccountAllowanceRecordLength[address(arg1)]) + 1
            while uint256(extractAccountAllowanceRecordLength[address(arg1)]) > idx:
                uint256(extractAccountAllowanceRecordLength[address(arg1)][idx]) = 0
                idx = idx + 1
                continue 
        uint256(extractAccountAllowanceRecordLength[address(arg1)][uint256(extractAccountAllowanceRecordLength[address(arg1)])]) = arg2 or Mask(96, 160, uint256(extractAccountAllowanceRecordLength[address(arg1)][uint256(extractAccountAllowanceRecordLength[address(arg1)])]))
}

function freezeAccount(address arg1, bool arg2) payable {
    require trustAddress
    call trustAddress.functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call trustAddress.authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                uint256(stor10[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor10[address(arg1)]))
                if not stor14[address(arg1)]:
                    stor14[address(arg1)] = 1
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
    require trustAddress
    call trustAddress.functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call trustAddress.authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                require treasuryBalance >= arg2
                treasuryBalance -= arg2
                balanceOf[address(arg1)] += arg2
                if not stor14[address(arg1)]:
                    stor14[address(arg1)] = 1
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
    require trustAddress
    call trustAddress.functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call trustAddress.authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                idx = 0
                s = 1
                while uint8(idx) < decimals:
                    idx = idx + 1
                    s = 10 * s
                    continue 
                require arg2 <= (10 * None) + 1
                exportFee[address(arg1)] = arg2
                if not stor21[address(arg1)]:
                    stor21[address(arg1)] = 1
                    stor20.length++
                    if not stor20.length <= stor20.length + 1:
                        idx = stor20.length + 1
                        while stor20.length > idx:
                            stor20[idx] = 0
                            idx = idx + 1
                            continue 
                    stor20[stor20.length] = arg1 or Mask(96, 160, stor20[stor20.length])
}

function setImportFee(address arg1, uint256 arg2) payable {
    require trustAddress
    call trustAddress.functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call trustAddress.authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                idx = 0
                s = 1
                while uint8(idx) < decimals:
                    idx = idx + 1
                    s = 10 * s
                    continue 
                require arg2 <= (10 * None) + 1
                importFee[address(arg1)] = arg2
                if not stor24[address(arg1)]:
                    stor24[address(arg1)] = 1
                    stor23.length++
                    if not stor23.length <= stor23.length + 1:
                        idx = stor23.length + 1
                        while stor23.length > idx:
                            stor23[idx] = 0
                            idx = idx + 1
                            continue 
                    stor23[stor23.length] = arg1 or Mask(96, 160, stor23[stor23.length])
}

function seizeTokens(address arg1, uint256 arg2) payable {
    require trustAddress
    call trustAddress.functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call trustAddress.authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[11380 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0xdb5fe5b8: address(ext_call.return_data[0]), msg.sender
                require balanceOf[address(arg1)] >= arg2
                require uint8(stor10[address(arg1)])
                if not stor14[address(arg1)]:
                    stor14[address(arg1)] = 1
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
    require not uint8(stor10[address(msg.sender)])
    allowance[address(msg.sender)][address(arg1)] = arg2
    if not stor14[address(msg.sender)]:
        stor14[address(msg.sender)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
    if not stor14[address(arg1)]:
        stor14[address(arg1)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
    if not stor12[address(msg.sender)][address(arg1)]:
        stor12[address(msg.sender)][address(arg1)] = 1
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
    require not uint8(stor10[address(msg.sender)])
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    if stor14[address(msg.sender)]:
        if stor14[address(arg1)]:
            balanceOf[address(msg.sender)] -= arg2
            if arg1 != this.address:
                balanceOf[address(arg1)] += arg2
            else:
                treasuryBalance += arg2
        else:
            stor14[address(arg1)] = 1
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
        stor14[address(msg.sender)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
        if stor14[address(arg1)]:
            balanceOf[address(msg.sender)] -= arg2
            if arg1 != this.address:
                balanceOf[address(arg1)] += arg2
            else:
                treasuryBalance += arg2
        else:
            stor14[address(arg1)] = 1
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
    require not uint8(stor10[address(msg.sender)])
    require not uint8(stor10[address(arg1)])
    require balanceOf[address(arg1)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if stor14[address(arg1)]:
        if stor14[address(arg2)]:
            if not stor14[address(msg.sender)]:
                stor14[address(msg.sender)] = 1
                accountIndex.length++
                if not accountIndex.length <= accountIndex.length + 1:
                    idx = accountIndex.length + 1
                    while accountIndex.length > idx:
                        uint256(accountIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
        else:
            stor14[address(arg2)] = 1
            accountIndex.length++
            if not accountIndex.length <= accountIndex.length + 1:
                idx = accountIndex.length + 1
                while accountIndex.length > idx:
                    uint256(accountIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(accountIndex[accountIndex.length]) = arg2 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            if not stor14[address(msg.sender)]:
                stor14[address(msg.sender)] = 1
                accountIndex.length++
                if not accountIndex.length <= accountIndex.length + 1:
                    idx = accountIndex.length + 1
                    while accountIndex.length > idx:
                        uint256(accountIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
    else:
        stor14[address(arg1)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
        if stor14[address(arg2)]:
            if not stor14[address(msg.sender)]:
                stor14[address(msg.sender)] = 1
                accountIndex.length++
                if not accountIndex.length <= accountIndex.length + 1:
                    idx = accountIndex.length + 1
                    while accountIndex.length > idx:
                        uint256(accountIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
        else:
            stor14[address(arg2)] = 1
            accountIndex.length++
            if not accountIndex.length <= accountIndex.length + 1:
                idx = accountIndex.length + 1
                while accountIndex.length > idx:
                    uint256(accountIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(accountIndex[accountIndex.length]) = arg2 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            if not stor14[address(msg.sender)]:
                stor14[address(msg.sender)] = 1
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
    require not uint8(stor10[address(msg.sender)])
    allowance[address(msg.sender)][address(arg1)] = arg2
    if stor14[address(msg.sender)]:
        if stor14[address(arg1)]:
            if not stor12[address(msg.sender)][address(arg1)]:
                stor12[address(msg.sender)][address(arg1)] = 1
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)])++
                if not uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) <= uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1:
                    idx = uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1
                    while uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) > idx:
                        uint256(extractAccountAllowanceRecordLength[address(msg.sender)][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]) = arg1 or Mask(96, 160, uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]))
        else:
            stor14[address(arg1)] = 1
            accountIndex.length++
            if not accountIndex.length <= accountIndex.length + 1:
                idx = accountIndex.length + 1
                while accountIndex.length > idx:
                    uint256(accountIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            if not stor12[address(msg.sender)][address(arg1)]:
                stor12[address(msg.sender)][address(arg1)] = 1
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)])++
                if not uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) <= uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1:
                    idx = uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1
                    while uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) > idx:
                        uint256(extractAccountAllowanceRecordLength[address(msg.sender)][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]) = arg1 or Mask(96, 160, uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]))
    else:
        stor14[address(msg.sender)] = 1
        accountIndex.length++
        if not accountIndex.length <= accountIndex.length + 1:
            idx = accountIndex.length + 1
            while accountIndex.length > idx:
                uint256(accountIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(accountIndex[accountIndex.length]) = msg.sender or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
        if stor14[address(arg1)]:
            if not stor12[address(msg.sender)][address(arg1)]:
                stor12[address(msg.sender)][address(arg1)] = 1
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)])++
                if not uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) <= uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1:
                    idx = uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) + 1
                    while uint256(extractAccountAllowanceRecordLength[address(msg.sender)]) > idx:
                        uint256(extractAccountAllowanceRecordLength[address(msg.sender)][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]) = arg1 or Mask(96, 160, uint256(extractAccountAllowanceRecordLength[address(msg.sender)][uint256(extractAccountAllowanceRecordLength[address(msg.sender)])]))
        else:
            stor14[address(arg1)] = 1
            accountIndex.length++
            if not accountIndex.length <= accountIndex.length + 1:
                idx = accountIndex.length + 1
                while accountIndex.length > idx:
                    uint256(accountIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(accountIndex[accountIndex.length]) = arg1 or Mask(96, 160, uint256(accountIndex[accountIndex.length]))
            if not stor12[address(msg.sender)][address(arg1)]:
                stor12[address(msg.sender)][address(arg1)] = 1
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
