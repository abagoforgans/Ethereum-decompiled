contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor6;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor6 = 0
    stor14 = 0
    stor15 = 0
    stor0 = msg.sender
    return code.data[123 len 5476]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
mapping of address stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 contributionOf;
mapping of uint256 periodContributionOf;
mapping of uint8 stor12;
mapping of uint256 tokenCollectedOf;
uint256 totalPeriod;
uint256 currentPeriod;
uint256 maxTarget;

function currentPeriod() {
    return currentPeriod
}

function maxTarget() {
    return maxTarget
}

function contributionOf(uint256 arg1, address arg2) {
    return contributionOf[arg1][address(arg2)]
}

function tokenCollectedOf(uint256 arg1, address arg2) {
    return tokenCollectedOf[arg1][address(arg2)]
}

function periodContributionOf(uint256 arg1) {
    return periodContributionOf[arg1]
}

function owner() {
    return owner
}

function isTokenCollected(uint256 arg1, address arg2) {
    return bool(stor12[arg1][address(arg2)])
}

function totalPeriod() {
    return totalPeriod
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function transferEtherOut(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function goTokenCollection() {
    require msg.sender == owner
    require currentPeriod > 0
    require block.timestamp > stor8[stor15]
    require not stor6
    stor6 = 1
    emit LogCollectionStart(currentPeriod);
}

function transferTokenOut(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function goNextPeriod() {
    require msg.sender == owner
    idx = 1
    while idx <= totalPeriod:
        if currentPeriod < totalPeriod:
            mem[0] = currentPeriod + 1
            mem[32] = 7
            if block.timestamp >= stor7[stor15 + 1]:
                currentPeriod++
                stor6 = 0
                mem[96] = currentPeriod
                emit LogPeriodStart(currentPeriod);
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require currentPeriod > 0
    require block.timestamp >= stor7[stor15]
    require block.timestamp < stor8[stor15]
    require msg.value >= stor4
    require currentPeriod > 0
    if maxTarget:
        require periodContributionOf[stor15] + msg.value <= maxTarget
    require contributionOf[stor15][address(msg.sender)] + msg.value >= contributionOf[stor15][address(msg.sender)]
    contributionOf[stor15][address(msg.sender)] += msg.value
    require periodContributionOf[stor15] + msg.value >= periodContributionOf[stor15]
    periodContributionOf[stor15] += msg.value
    call stor3[stor15] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogContribution(msg.value, currentPeriod, msg.sender);
}

function initTokenSale(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require msg.sender == owner
    require not totalPeriod
    require arg1
    require arg2
    stor3[1] = arg2
    stor9[1] = arg3
    stor2 = arg1
    stor1 = 3600 * arg5
    require msg.sender == owner
    if totalPeriod:
        require block.timestamp < stor7[1]
    totalPeriod = 0
    stor5 = arg4
    require msg.sender == owner
    if currentPeriod:
        require block.timestamp < stor8[stor14]
    require stor5 >= block.timestamp
    require stor5 + stor1 > stor5
    if totalPeriod:
        require stor5 > stor8[stor14]
    totalPeriod++
    stor7[stor14] = stor5
    stor8[stor14] = stor5 + stor1
    periodContributionOf[stor14] = 0
    currentPeriod = 1
    maxTarget = 10^15 * arg6
    stor4 = 10^15 * arg7
}

function collectToken() {
    require stor6
    require currentPeriod > 0
    require block.timestamp > stor8[stor15]
    if currentPeriod != totalPeriod:
        require block.timestamp < stor7[stor15 + 1]
    idx = 1
    s = 0
    while idx <= totalPeriod:
        mem[0] = msg.sender
        mem[32] = sha3(idx, 12)
        if stor12[idx][address(msg.sender)]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = msg.sender
        mem[32] = sha3(idx, 10)
        if contributionOf[idx][address(msg.sender)] <= 0:
            idx = idx + 1
            s = s
            continue 
        if contributionOf[idx][address(msg.sender)]:
            require contributionOf[idx][address(msg.sender)]
            require contributionOf[idx][address(msg.sender)] * stor9[idx] / contributionOf[idx][address(msg.sender)] == stor9[idx]
        require periodContributionOf[idx] > 0
        require periodContributionOf[idx]
        stor12[idx][address(msg.sender)] = 1
        mem[132] = contributionOf[idx][address(msg.sender)] * stor9[idx] / periodContributionOf[idx]
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, contributionOf[idx][address(msg.sender)] * stor9[idx] / periodContributionOf[idx]
        require ext_call.success
        mem[0] = msg.sender
        mem[32] = sha3(idx, 13)
        tokenCollectedOf[idx][address(msg.sender)] = contributionOf[idx][address(msg.sender)] * stor9[idx] / periodContributionOf[idx]
        mem[96] = contributionOf[idx][address(msg.sender)] * stor9[idx] / periodContributionOf[idx]
        mem[128] = idx
        emit LogCollect(contributionOf[idx][address(msg.sender)] * stor9[idx] / periodContributionOf[idx], idx, msg.sender);
        idx = idx + 1
        s = contributionOf[idx][address(msg.sender)] * stor9[idx] / periodContributionOf[idx]
        continue 
}



}
