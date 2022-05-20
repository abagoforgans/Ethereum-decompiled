contract main {


// =======================  Init code  ======================


address stor0;
address stor8;
address stor9;
address stor10;

function _fallback() {
    stor0 = msg.sender
    require code.data[5743 len 20]
    require code.data[5775 len 20]
    require code.data[5807 len 20]
    stor8 = code.data[5743 len 20]
    stor9 = code.data[5775 len 20]
    stor10 = code.data[5807 len 20]
    return code.data[217 len 5514]
}



// =====================  Runtime code  =====================


#
#  - getTotalBonusesAmountAvailable(bytes32 arg1)
#  - withdrawBonuses(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, address arg5)
#  - getTotalDepositsAmountLeft()
#
const isTransferAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) = 0


address contractOwner;
address pendingContractOwner;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of struct distributionDeposits;
uint256 firstDepositDate;
uint256 lastDepositDate;
address bonusTokenAddress;
address treasuryAddress;
address walletAddress;

function lastDepositDate() {
    return lastDepositDate
}

function distributionDeposits(uint256 arg1) {
    return distributionDeposits[arg1].field_0, distributionDeposits[arg1].field_256, distributionDeposits[arg1].field_512
}

function bonusToken() {
    return bonusTokenAddress
}

function getDepositsAmountLeft(uint256 arg1) {
    return distributionDeposits[arg1].field_256
}

function firstDepositDate() {
    return firstDepositDate
}

function wallet() {
    return walletAddress
}

function pendingContractOwner() {
    return pendingContractOwner
}

function treasury() {
    return treasuryAddress
}

function oracles(address arg1) {
    return bool(stor2[arg1])
}

function contractOwner() {
    return contractOwner
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function updateWallet(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    walletAddress = arg1
    return 1
}

function updateTreasury(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    treasuryAddress = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function addDistributionSources(address[] arg1) {
    if contractOwner != msg.sender:
        return 0
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
    return 1
}

function removeDistributionSources(address[] arg1) {
    if contractOwner != msg.sender:
        return 0
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + arg1 + 36)])] = 0
        idx = idx + 1
        continue 
    return 1
}

function addOracles(address[] arg1) {
    if contractOwner != msg.sender:
        return 0
    s = 0
    idx = 0
    while idx < arg1.length:
        if address(cd[((32 * idx) + arg1 + 36)]) != 0:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            if not stor2[address(cd[((32 * idx) + arg1 + 36)])]:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                stor2[address(cd[((32 * idx) + arg1 + 36)])] = 1
                mem[96] = address(cd[((32 * idx) + arg1 + 36)])
                emit OracleAdded(address(cd[((32 * idx) + arg1 + 36)]));
        s = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    return 1
}

function removeOracles(address[] arg1) {
    if contractOwner != msg.sender:
        return 0
    s = 0
    idx = 0
    while idx < arg1.length:
        if address(cd[((32 * idx) + arg1 + 36)]) != 0:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            if stor2[address(cd[((32 * idx) + arg1 + 36)])]:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                stor2[address(cd[((32 * idx) + arg1 + 36)])] = 0
                mem[96] = address(cd[((32 * idx) + arg1 + 36)])
                emit OracleRemoved(address(cd[((32 * idx) + arg1 + 36)]));
        s = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    return 1
}

function getBonusesAmountAvailable(bytes32 arg1, uint256 arg2) {
    if distributionDeposits[arg2][3][arg1].field_256:
        return distributionDeposits[arg2][3][arg1].field_0
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0x1fedbc03 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    if not distributionDeposits[arg2].field_0:
        return (ext_call.return_data[0] * distributionDeposits[arg2].field_0 / 10000)
    require distributionDeposits[arg2].field_0
    require ext_call.return_data[0] * distributionDeposits[arg2].field_0 / distributionDeposits[arg2].field_0 == ext_call.return_data[0]
    return (ext_call.return_data[0] * distributionDeposits[arg2].field_0 / 10000)
}

function withdrawnTokens(address[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if contractOwner != msg.sender:
        return 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_21))
        call address(_21).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_21))
            call address(_21).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[0]
        s = _21
        idx = idx + 1
        continue 
    return 1
}

function distributeBonuses(uint256 arg1) {
    require stor3[address(msg.sender)]
    require ext_code.size(bonusTokenAddress)
    call bonusTokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    if ext_call.return_data[0] < arg1:
        emit Error(102001);
        return 102001
    require ext_code.size(bonusTokenAddress)
    call bonusTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, walletAddress, arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error(102003);
        return 102003
    if not firstDepositDate:
        firstDepositDate = block.timestamp
    if lastDepositDate:
        distributionDeposits[stor7].field_512 = block.timestamp
    lastDepositDate = block.timestamp
    distributionDeposits[block.timestamp].field_0 = arg1
    distributionDeposits[block.timestamp].field_256 = arg1
    distributionDeposits[block.timestamp].field_512 = 0
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0xd927b5ad with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit DepositPendingAdded(arg1, msg.sender, block.timestamp);
    return 1
}



}
