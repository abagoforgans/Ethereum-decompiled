contract main {




// =====================  Runtime code  =====================


const SELFDESTRUCT_DELAY = (672 * 24 * 3600)

const FEE_PERIOD_LENGTH = 6


address owner;
address nominatedOwner;
uint256 initiationTime;
uint8 stor3;
address selfDestructBeneficiaryAddress; offset 8
uint256 stor4;
address feePoolAddress;
array of struct accountsDebtEntry;

function initiationTime() {
    return initiationTime
}

function nominatedOwner() {
    return nominatedOwner
}

function accountIssuanceLedger(address arg1, uint256 arg2) {
    require arg2 < 6
    return accountsDebtEntry[arg1][arg2].field_0, accountsDebtEntry[arg1][arg2].field_256
}

function owner() {
    return owner
}

function feePool() {
    return feePoolAddress
}

function getAccountsDebtEntry(address arg1, uint256 arg2) {
    if arg2 >= 6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'index exceeds the FEE_PERIOD_LENGTH'
    return accountsDebtEntry[address(arg1)][arg2].field_0, accountsDebtEntry[address(arg1)][arg2].field_256
}

function selfDestructInitiated() {
    return bool(stor3)
}

function selfDestructBeneficiary() {
    return selfDestructBeneficiaryAddress
}

function selfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    if not stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Self destruct has not yet been initiated'
    if initiationTime + (672 * 24 * 3600) >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Self destruct delay has not yet elapsed'
    emit SelfDestructed(selfDestructBeneficiaryAddress);
    selfdestruct(selfDestructBeneficiaryAddress)
}

function _fallback() payable {
    revert
}

function setFeePool(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    feePoolAddress = arg1
}

function nominateNewOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function terminateSelfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    initiationTime = 0
    stor3 = 0
    emit SelfDestructTerminated()
}

function initiateSelfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    initiationTime = block.timestamp
    stor3 = 1
    emit SelfDestructInitiated((672 * 24 * 3600));
}

function acceptOwnership() {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function setSelfDestructBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Beneficiary must not be the zero address'
    selfDestructBeneficiaryAddress = arg1
    emit SelfDestructBeneficiaryUpdated(arg1);
}

function appendAccountIssuanceRecord(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if feePoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the FeePool contract can perform this action'
    if arg4 > accountsDebtEntry[address(arg1)].field_256:
        s = 0
        idx = 4
        while idx < 6:
            require idx + 1 < 6
            accountsDebtEntry[address(arg1)][idx + 1].field_0 = accountsDebtEntry[address(arg1)][idx].field_0
            require idx < 6
            mem[0] = arg1
            mem[32] = 6
            require idx + 1 < 6
            accountsDebtEntry[address(arg1)][idx + 1].field_256 = accountsDebtEntry[address(arg1)][idx].field_256
            s = idx + 1
            idx = idx - 1
            continue 
    accountsDebtEntry[address(arg1)].field_0 = arg2
    accountsDebtEntry[address(arg1)].field_256 = arg3
}

function applicableIssuanceData(address arg1, uint256 arg2) {
    mem[64] = 544
    mem[480] = 0
    mem[512] = 0
    mem[var8001] = 480
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[480] = 0
        mem[512] = 0
        mem[s + 32] = 480
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = arg1
    mem[32] = 6
    _9 = mem[64]
    mem[64] = mem[64] + 192
    s = _9
    idx = 0
    while idx < 6:
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = accountsDebtEntry[address(arg1)][idx].field_0
        mem[_11 + 32] = accountsDebtEntry[address(arg1)][idx].field_256
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < 6:
        if arg2 < mem[mem[(32 * idx) + _9] + 32]:
            idx = idx + 1
            continue 
        require idx < 6
        _27 = mem[mem[(32 * idx) + _9] + 32]
        mem[mem[64]] = mem[mem[(32 * idx) + _9]]
        return mem[mem[64]], _27
    return 0
}

function importIssuerData(address[] arg1, uint256[] arg2, uint256 arg3, uint256 arg4) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    if block.timestamp >= stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only perform this action during setup'
    if arg2.length != arg1.length:
        revert with 0, 'Length mismatch'
    idx = 0
    while arg1.length > uint8(idx):
        require uint8(idx) < arg2.length
        require uint8(idx) < arg1.length
        require arg3 < 6
        accountsDebtEntry[address(cd[((32 * uint8(idx)) + arg1 + 36)])][arg3].field_0 = cd[((32 * uint8(idx)) + arg2 + 36)]
        require uint8(idx) < arg1.length
        mem[0] = address(cd[((32 * uint8(idx)) + arg1 + 36)])
        mem[32] = 6
        require arg3 < 6
        accountsDebtEntry[address(cd[((32 * uint8(idx)) + arg1 + 36)])][arg3].field_256 = arg4
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        mem[96] = cd[((32 * uint8(idx)) + arg2 + 36)]
        mem[128] = arg4
        emit IssuanceDebtRatioEntry(cd[((32 * uint8(idx)) + arg2 + 36)], arg4, address(cd[((32 * uint8(idx)) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
