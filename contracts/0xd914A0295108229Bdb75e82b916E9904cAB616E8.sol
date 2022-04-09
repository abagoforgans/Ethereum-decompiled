contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;
address stor5;
address stor6;
array of address stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;

function _fallback() payable {
    stor8 = 10^16
    stor9 = 5 * 10^10
    stor10 = 0
    require not msg.value
    mem[96 len -9993] = code.data[10410 len -9993]
    mem[64] = -9897
    stor0 = msg.sender
    require 3 == mem[mem[224] + 96]
    stor3 = mem[108 len 20]
    stor4 = mem[140 len 20]
    stor5 = mem[172 len 20]
    stor6 = mem[204 len 20]
    stor7.length = mem[mem[224] + 96]
    if not mem[mem[224] + 96]:
        idx = 0
        while stor7.length > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[224] + 128
        while mem[224] + (32 * mem[mem[224] + 96]) + 128 > idx:
            stor7[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[224] + 96]) + 31) >> 5
        while stor7.length > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    return code.data[417 len 9993]
}



// =====================  Runtime code  =====================


#
#  - getUncompensatedContributors(uint256 arg1, uint256 arg2)
#  - compensateContributors(uint256 arg1, uint256 arg2)
#
const getNow = block.timestamp

const EARLY_CONTRIBUTOR_STAKE = 5000000 * 10^18

const COMMUNITY_ADVISERS_STAKE = 5000000 * 10^18

const ADVISER_STAKE = 5000000 * 10^18

const TEAM_VESTING_CLIFF = (4032 * 24 * 3600)

const EARLY_CONTRIBUTOR_VESTING_CLIFF = (2016 * 24 * 3600)

const FOUNDER2_STAKE = 80000000 * 10^18

const CONTRIB_PERIOD2_STAKE = 140000000 * 10^18

const CONTRIB_PERIOD3_STAKE = 40000000 * 10^18

const TEAM_VESTING_PERIOD = (16128 * 24 * 3600)

const CONTRIB_PERIOD1_STAKE = 600000000 * 10^18

const EARLY_CONTRIBUTOR_VESTING_PERIOD = (4032 * 24 * 3600)

const FOUNDER1_STAKE = 120000000 * 10^18


uint8 stor0; offset 160
address owner;
address district0xNetworkTokenAddress;
address multisigWalletAddress;
address founder1Address;
address founder2Address;
address earlySponsorAddress;
array of address advisers;
uint256 minContribAmount;
uint256 maxGasPrice;
uint8 stor10;
uint256 softCapAmount;
uint256 afterSoftCapDuration;
uint256 hardCapAmount;
uint64 stor14;
uint256 startTime;
uint256 endTime;
uint8 isEnabled;
uint8 softCapReached; offset 8
uint8 hardCapReached; offset 16
uint256 totalContributed;
array of address contributorsKeys;
mapping of struct contributor;

function totalContributed() {
    return totalContributed
}

function advisers(uint256 arg1) {
    require arg1 < advisers.length
    return advisers[arg1].field_0
}

function founder1() {
    return founder1Address
}

function contributors(address arg1) {
    return contributor[arg1].field_0, bool(contributor[arg1].field_256), contributor[arg1].field_512
}

function softCapReached() {
    return bool(softCapReached)
}

function endTime() {
    return endTime
}

function getContributor(address arg1) {
    return contributor[address(arg1)].field_0, bool(contributor[address(arg1)].field_256), contributor[address(arg1)].field_512
}

function maxGasPrice() {
    return maxGasPrice
}

function contributorsKeys(uint256 arg1) {
    require arg1 < contributorsKeys.length
    return address(contributorsKeys[arg1])
}

function minContribAmount() {
    return minContribAmount
}

function afterSoftCapDuration() {
    return afterSoftCapDuration
}

function isEnabled() {
    return bool(isEnabled)
}

function stopped() {
    return bool(stor0)
}

function startTime() {
    return uint256(startTime)
}

function founder2() {
    return founder2Address
}

function earlySponsor() {
    return earlySponsorAddress
}

function owner() {
    return owner
}

function multisigWallet() {
    return multisigWalletAddress
}

function hardCapReached() {
    return bool(hardCapReached)
}

function tokenTransfersEnabled() {
    return bool(stor10)
}

function hardCapAmount() {
    return hardCapAmount
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    return bool(stor10)
}

function district0xNetworkToken() {
    return district0xNetworkTokenAddress
}

function softCapAmount() {
    return softCapAmount
}

function kill(address arg1) {
    require multisigWalletAddress == msg.sender
    selfdestruct(arg1)
}

function proxyPayment(address arg1) payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function isTokenSaleToken(address arg1) {
    return (district0xNetworkTokenAddress == arg1)
}

function emergencyStop() {
    require owner == msg.sender
    stor0 = 1
    emit onEmergencyChanged(1);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function release() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit onEmergencyChanged(0);
}

function enableDistrict0xNetworkTokenTransfers() {
    require owner == msg.sender
    require endTime < block.timestamp
    stor10 = 1
}

function enableContribPeriod() {
    require multisigWalletAddress == msg.sender
    require uint256(startTime) > block.timestamp
    isEnabled = 1
}

function setMaxGasPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require uint256(startTime) > block.timestamp
    maxGasPrice = arg1
}

function setMinContribAmount(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require uint256(startTime) > block.timestamp
    minContribAmount = arg1
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    if stor10:
        return bool(stor10)
    if arg1 == this.address:
        return True
    return (arg2 == this.address)
}

function isContribPeriodRunning() {
    if hardCapReached:
        return not bool(hardCapReached)
    if not isEnabled:
        return bool(isEnabled)
    if uint256(startTime) > block.timestamp:
        return uint256(startTime) <= block.timestamp
    return (endTime > block.timestamp)
}

function getContribPeriod() {
    return bool(isEnabled), 
           bool(softCapReached), bool(hardCapReached) >> 256,
           softCapAmount,
           afterSoftCapDuration,
           hardCapAmount,
           uint256(startTime),
           endTime,
           totalContributed,
           contributorsKeys.length,
           600000000 * 10^18
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require district0xNetworkTokenAddress != arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function setDistrict0xNetworkToken(address arg1) {
    require owner == msg.sender
    require arg1
    require not isEnabled
    district0xNetworkTokenAddress = arg1
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
    require ext_code.size(district0xNetworkTokenAddress)
    call district0xNetworkTokenAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args address(this.address), 820000000 * 10^18
    require ext_call.success
    require ext_code.size(district0xNetworkTokenAddress)
    call district0xNetworkTokenAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args multisigWalletAddress, 50000 * 10^18 * 3600
    require ext_call.success
}

function getConfiguration() {
    idx = 0
    while idx < advisers.length:
        mem[0] = 7
        require idx < advisers.length
        mem[(32 * idx) + 160] = advisers[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * advisers.length) + 160] = bool(stor0)
    mem[(32 * advisers.length) + 192] = multisigWalletAddress
    if Mask(251, 0, advisers.length):
        mem[(32 * advisers.length) + 448] = mem[160]
        mem[(32 * advisers.length) + 480 len floor32((32 * advisers.length) - 1)] = mem[192 len (32 * advisers.length) + 32], founder1Address, founder2Address, earlySponsorAddress, Array(len=mem[160], data=mem[(32 * advisers.length) + 480 len floor32((32 * advisers.length) - 1) + -(32 * advisers.length) - 288]), bool(stor10), maxGasPrice, advisers.length
    return bool(stor0), 
           multisigWalletAddress,
           founder1Address,
           founder2Address,
           earlySponsorAddress,
           Array(len=advisers.length, data=mem[(32 * advisers.length) + 448 len 32 * advisers.length]),
           bool(stor10),
           maxGasPrice
}

function contributeWithAddress(address arg1) payable {
    require not stor0
    require block.gasprice <= maxGasPrice
    require msg.value >= minContribAmount
    require not hardCapReached
    require isEnabled
    require uint256(startTime) <= block.timestamp
    require endTime > block.timestamp
    require msg.value + totalContributed >= totalContributed
    totalContributed += msg.value
    if msg.value + totalContributed >= softCapAmount:
        if totalContributed < softCapAmount:
            softCapReached = 1
            require block.timestamp + afterSoftCapDuration >= afterSoftCapDuration
            endTime = block.timestamp + afterSoftCapDuration
            emit onSoftCapReached((block.timestamp + afterSoftCapDuration));
    if msg.value + totalContributed < hardCapAmount:
        if not contributor[address(arg1)].field_0:
            contributorsKeys.length++
            if not contributorsKeys.length <= contributorsKeys.length + 1:
                idx = contributorsKeys.length + 1
                while contributorsKeys.length > idx:
                    uint256(contributorsKeys[idx]) = 0
                    idx = idx + 1
                    continue 
            address(contributorsKeys[contributorsKeys.length]) = arg1
        require msg.value + contributor[address(arg1)].field_0 >= contributor[address(arg1)].field_0
        contributor[address(arg1)].field_0 += msg.value
        call multisigWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit onContribution(msg.value + totalContributed, msg.value, contributorsKeys.length, arg1);
    else:
        if totalContributed >= hardCapAmount:
            if not contributor[address(arg1)].field_0:
                contributorsKeys.length++
                if not contributorsKeys.length <= contributorsKeys.length + 1:
                    idx = contributorsKeys.length + 1
                    while contributorsKeys.length > idx:
                        uint256(contributorsKeys[idx]) = 0
                        idx = idx + 1
                        continue 
                address(contributorsKeys[contributorsKeys.length]) = arg1
            require msg.value + contributor[address(arg1)].field_0 >= contributor[address(arg1)].field_0
            contributor[address(arg1)].field_0 += msg.value
            call multisigWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit onContribution(msg.value + totalContributed, msg.value, contributorsKeys.length, arg1);
        else:
            hardCapReached = 1
            endTime = block.timestamp
            emit onHardCapReached(block.timestamp);
            require hardCapAmount <= msg.value + totalContributed
            require msg.value + totalContributed - hardCapAmount <= msg.value
            totalContributed = hardCapAmount
            if not contributor[address(arg1)].field_0:
                contributorsKeys.length++
                if not contributorsKeys.length <= contributorsKeys.length + 1:
                    idx = contributorsKeys.length + 1
                    while contributorsKeys.length > idx:
                        uint256(contributorsKeys[idx]) = 0
                        idx = idx + 1
                        continue 
                address(contributorsKeys[contributorsKeys.length]) = arg1
            require -totalContributed + hardCapAmount + contributor[address(arg1)].field_0 >= contributor[address(arg1)].field_0
            contributor[address(arg1)].field_0 = -totalContributed + hardCapAmount + contributor[address(arg1)].field_0
            call multisigWalletAddress with:
               value -totalContributed + hardCapAmount wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value + totalContributed - hardCapAmount > 0:
                call msg.sender with:
                   value msg.value + totalContributed - hardCapAmount wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit onContribution(msg.value + totalContributed, -totalContributed + hardCapAmount, contributorsKeys.length, arg1);
}

function _fallback() payable {
    require not stor0
    require block.gasprice <= maxGasPrice
    require msg.value >= minContribAmount
    require not hardCapReached
    require isEnabled
    require uint256(startTime) <= block.timestamp
    require endTime > block.timestamp
    require msg.value + totalContributed >= totalContributed
    totalContributed += msg.value
    if msg.value + totalContributed >= softCapAmount:
        if totalContributed < softCapAmount:
            softCapReached = 1
            require block.timestamp + afterSoftCapDuration >= afterSoftCapDuration
            endTime = block.timestamp + afterSoftCapDuration
            emit onSoftCapReached((block.timestamp + afterSoftCapDuration));
    if msg.value + totalContributed < hardCapAmount:
        if not contributor[address(msg.sender)].field_0:
            contributorsKeys.length++
            if not contributorsKeys.length <= contributorsKeys.length + 1:
                idx = contributorsKeys.length + 1
                while contributorsKeys.length > idx:
                    uint256(contributorsKeys[idx]) = 0
                    idx = idx + 1
                    continue 
            address(contributorsKeys[contributorsKeys.length]) = msg.sender
        require msg.value + contributor[address(msg.sender)].field_0 >= contributor[address(msg.sender)].field_0
        contributor[address(msg.sender)].field_0 += msg.value
        call multisigWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit onContribution(msg.value + totalContributed, msg.value, contributorsKeys.length, msg.sender);
    else:
        if totalContributed >= hardCapAmount:
            if not contributor[address(msg.sender)].field_0:
                contributorsKeys.length++
                if not contributorsKeys.length <= contributorsKeys.length + 1:
                    idx = contributorsKeys.length + 1
                    while contributorsKeys.length > idx:
                        uint256(contributorsKeys[idx]) = 0
                        idx = idx + 1
                        continue 
                address(contributorsKeys[contributorsKeys.length]) = msg.sender
            require msg.value + contributor[address(msg.sender)].field_0 >= contributor[address(msg.sender)].field_0
            contributor[address(msg.sender)].field_0 += msg.value
            call multisigWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit onContribution(msg.value + totalContributed, msg.value, contributorsKeys.length, msg.sender);
        else:
            hardCapReached = 1
            endTime = block.timestamp
            emit onHardCapReached(block.timestamp);
            require hardCapAmount <= msg.value + totalContributed
            require msg.value + totalContributed - hardCapAmount <= msg.value
            totalContributed = hardCapAmount
            if not contributor[address(msg.sender)].field_0:
                contributorsKeys.length++
                if not contributorsKeys.length <= contributorsKeys.length + 1:
                    idx = contributorsKeys.length + 1
                    while contributorsKeys.length > idx:
                        uint256(contributorsKeys[idx]) = 0
                        idx = idx + 1
                        continue 
                address(contributorsKeys[contributorsKeys.length]) = msg.sender
            require -totalContributed + hardCapAmount + contributor[address(msg.sender)].field_0 >= contributor[address(msg.sender)].field_0
            contributor[address(msg.sender)].field_0 = -totalContributed + hardCapAmount + contributor[address(msg.sender)].field_0
            call multisigWalletAddress with:
               value -totalContributed + hardCapAmount wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value + totalContributed - hardCapAmount > 0:
                call msg.sender with:
                   value msg.value + totalContributed - hardCapAmount wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit onContribution(msg.value + totalContributed, -totalContributed + hardCapAmount, contributorsKeys.length, msg.sender);
}

function contribute() payable {
    require not stor0
    require block.gasprice <= maxGasPrice
    require msg.value >= minContribAmount
    require not hardCapReached
    require isEnabled
    require uint256(startTime) <= block.timestamp
    require endTime > block.timestamp
    require msg.value + totalContributed >= totalContributed
    totalContributed += msg.value
    if msg.value + totalContributed >= softCapAmount:
        if totalContributed < softCapAmount:
            softCapReached = 1
            require block.timestamp + afterSoftCapDuration >= afterSoftCapDuration
            endTime = block.timestamp + afterSoftCapDuration
            emit onSoftCapReached((block.timestamp + afterSoftCapDuration));
    if msg.value + totalContributed < hardCapAmount:
        if not contributor[address(msg.sender)].field_0:
            contributorsKeys.length++
            if not contributorsKeys.length <= contributorsKeys.length + 1:
                idx = contributorsKeys.length + 1
                while contributorsKeys.length > idx:
                    uint256(contributorsKeys[idx]) = 0
                    idx = idx + 1
                    continue 
            address(contributorsKeys[contributorsKeys.length]) = msg.sender
        require msg.value + contributor[address(msg.sender)].field_0 >= contributor[address(msg.sender)].field_0
        contributor[address(msg.sender)].field_0 += msg.value
        call multisigWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit onContribution(msg.value + totalContributed, msg.value, contributorsKeys.length, msg.sender);
    else:
        if totalContributed >= hardCapAmount:
            if not contributor[address(msg.sender)].field_0:
                contributorsKeys.length++
                if not contributorsKeys.length <= contributorsKeys.length + 1:
                    idx = contributorsKeys.length + 1
                    while contributorsKeys.length > idx:
                        uint256(contributorsKeys[idx]) = 0
                        idx = idx + 1
                        continue 
                address(contributorsKeys[contributorsKeys.length]) = msg.sender
            require msg.value + contributor[address(msg.sender)].field_0 >= contributor[address(msg.sender)].field_0
            contributor[address(msg.sender)].field_0 += msg.value
            call multisigWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit onContribution(msg.value + totalContributed, msg.value, contributorsKeys.length, msg.sender);
        else:
            hardCapReached = 1
            endTime = block.timestamp
            emit onHardCapReached(block.timestamp);
            require hardCapAmount <= msg.value + totalContributed
            require msg.value + totalContributed - hardCapAmount <= msg.value
            totalContributed = hardCapAmount
            if not contributor[address(msg.sender)].field_0:
                contributorsKeys.length++
                if not contributorsKeys.length <= contributorsKeys.length + 1:
                    idx = contributorsKeys.length + 1
                    while contributorsKeys.length > idx:
                        uint256(contributorsKeys[idx]) = 0
                        idx = idx + 1
                        continue 
                address(contributorsKeys[contributorsKeys.length]) = msg.sender
            require -totalContributed + hardCapAmount + contributor[address(msg.sender)].field_0 >= contributor[address(msg.sender)].field_0
            contributor[address(msg.sender)].field_0 = -totalContributed + hardCapAmount + contributor[address(msg.sender)].field_0
            call multisigWalletAddress with:
               value -totalContributed + hardCapAmount wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value + totalContributed - hardCapAmount > 0:
                call msg.sender with:
                   value msg.value + totalContributed - hardCapAmount wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit onContribution(msg.value + totalContributed, -totalContributed + hardCapAmount, contributorsKeys.length, msg.sender);
}

function setContribPeriod(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require owner == msg.sender
    require arg1 > 0
    require arg3 > arg1
    require arg2 > 0
    require arg4 > block.timestamp
    require arg5 > arg4
    require not isEnabled
    softCapAmount = arg1
    afterSoftCapDuration = arg2
    hardCapAmount = arg3
    uint256(startTime) = arg4
    endTime = arg5
    require ext_code.size(district0xNetworkTokenAddress)
    call district0xNetworkTokenAddress.revokeAllTokenGrants(address rg1) with:
         gas gas_remaining - 710 wei
        args founder1Address
    require ext_call.success
    require ext_code.size(district0xNetworkTokenAddress)
    call district0xNetworkTokenAddress.revokeAllTokenGrants(address rg1) with:
         gas gas_remaining - 710 wei
        args founder2Address
    require ext_call.success
    require ext_code.size(district0xNetworkTokenAddress)
    call district0xNetworkTokenAddress.revokeAllTokenGrants(address rg1) with:
         gas gas_remaining - 710 wei
        args earlySponsorAddress
    require ext_call.success
    idx = 0
    while idx < advisers.length:
        mem[0] = 7
        mem[96] = 0xd169843000000000000000000000000000000000000000000000000000000000
        mem[100] = advisers[idx].field_0
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.revokeAllTokenGrants(address rg1) with:
             gas gas_remaining - 710 wei
            args advisers[idx].field_0
        require ext_call.success
        idx = idx + 1
        continue 
    require uint256(startTime) + (16128 * 24 * 3600) >= uint256(startTime)
    require uint256(startTime) + (4032 * 24 * 3600) >= uint256(startTime)
    require uint256(startTime) + (2016 * 24 * 3600) >= uint256(startTime)
    if ext_code.size(district0xNetworkTokenAddress):
        call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
             gas gas_remaining - 710 wei
            args founder1Address, 120000000 * 10^18, uint64(stor14), uint256(startTime) + (4032 * 24 * 3600) << 192, uint256(startTime) + (16128 * 24 * 3600) << 192, 1, 0
        if ext_call.success:
            if ext_code.size(district0xNetworkTokenAddress):
                call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
                     gas gas_remaining - 710 wei
                    args founder2Address, 80000000 * 10^18, uint64(stor14), uint256(startTime) + (4032 * 24 * 3600) << 192, uint256(startTime) + (16128 * 24 * 3600) << 192, 1, 0
                if ext_call.success:
                    if ext_code.size(district0xNetworkTokenAddress):
                        call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
                             gas gas_remaining - 710 wei
                            args earlySponsorAddress, 5000000 * 10^18, uint64(stor14), uint256(startTime) + (2016 * 24 * 3600) << 192, uint256(startTime) + (4032 * 24 * 3600) << 192, 1, 0
                        if ext_call.success:
                            if 0 < advisers.length:
                                if ext_code.size(district0xNetworkTokenAddress):
                                    call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
                                         gas gas_remaining - 710 wei
                                        args address(advisers.field_0), 5000000 * 10^18, uint64(stor14), uint256(startTime) + (4032 * 24 * 3600) << 192, uint256(startTime) + (16128 * 24 * 3600) << 192, 1, 0
                                    if ext_call.success:
                                        if 1 < advisers.length:
                                            if ext_code.size(district0xNetworkTokenAddress):
                                                call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
                                                     gas gas_remaining - 710 wei
                                                    args address(advisers.field_256), 5000000 * 10^18, uint64(stor14), uint256(startTime) + (4032 * 24 * 3600) << 192, uint256(startTime) + (16128 * 24 * 3600) << 192, 1, 0
                                                if ext_call.success:
                                                    if 2 < advisers.length:
                                                        if ext_code.size(district0xNetworkTokenAddress):
                                                            call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(advisers.field_512), 5000000 * 10^18, uint64(stor14), uint64(stor14), uint64(stor14), 1, 0
                                                            if ext_call.success:
    revert
}



}
