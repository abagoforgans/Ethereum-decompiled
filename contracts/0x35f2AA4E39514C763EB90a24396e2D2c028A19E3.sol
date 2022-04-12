contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint8 stor5;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor3 = 10^17
    stor5 = 0
    stor13 = 0
    stor14 = 0
    stor0 = msg.sender
    return code.data[135 len 5784]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of address stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 contributionOf;
mapping of uint256 periodContributionOf;
mapping of uint8 stor11;
mapping of uint256 tokenCollectedOf;
uint256 totalPeriod;
uint256 currentPeriod;

function currentPeriod() {
    return currentPeriod
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
    return bool(stor11[arg1][address(arg2)])
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
    require block.timestamp > stor7[stor14]
    require not stor5
    stor5 = 1
    emit LogCollectionStart(currentPeriod);
}

function transferTokenOut(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
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
            mem[32] = 6
            if block.timestamp >= stor6[stor14 + 1]:
                currentPeriod++
                stor5 = 0
                mem[96] = currentPeriod
                emit LogPeriodStart(currentPeriod);
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require currentPeriod > 0
    require block.timestamp >= stor6[stor14]
    require block.timestamp < stor7[stor14]
    require msg.value >= stor3
    require contributionOf[stor14][address(msg.sender)] + msg.value >= contributionOf[stor14][address(msg.sender)]
    contributionOf[stor14][address(msg.sender)] += msg.value
    require periodContributionOf[stor14] + msg.value >= periodContributionOf[stor14]
    periodContributionOf[stor14] += msg.value
    call stor2[stor14] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogContribution(msg.value, currentPeriod, msg.sender);
}

function initTokenSale(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require msg.sender == owner
    require not totalPeriod
    require arg1
    require arg2
    require arg3
    stor2[1] = arg2
    stor2[2] = arg3
    stor8[1] = arg4
    stor8[2] = arg5
    stor1 = arg1
    require ext_code.size(stor1)
    call stor1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == owner
    require msg.sender == owner
    if totalPeriod:
        require block.timestamp < stor6[1]
    totalPeriod = 0
    stor4 = arg6
    require msg.sender == owner
    if currentPeriod:
        require block.timestamp < stor7[stor13]
    require stor4 >= block.timestamp
    require stor4 + (2 * 3600) > stor4
    if totalPeriod:
        require stor4 > stor7[stor13]
    totalPeriod++
    stor6[stor13] = stor4
    stor7[stor13] = stor4 + (2 * 3600)
    periodContributionOf[stor13] = 0
    require msg.sender == owner
    if currentPeriod:
        require block.timestamp < stor7[stor13]
    require stor4 + (4 * 3600) >= block.timestamp
    if totalPeriod:
        require stor4 + (4 * 3600) > stor7[stor13]
    totalPeriod++
    stor6[stor13] = stor4 + (4 * 3600)
    stor7[stor13] = stor4 + (6 * 3600)
    periodContributionOf[stor13] = 0
    currentPeriod = 1
}

function collectToken() {
    require stor5
    require currentPeriod > 0
    require block.timestamp > stor7[stor14]
    if currentPeriod != totalPeriod:
        require block.timestamp < stor6[stor14 + 1]
    idx = 1
    s = 0
    while idx <= totalPeriod:
        mem[0] = msg.sender
        mem[32] = sha3(idx, 11)
        if stor11[idx][address(msg.sender)]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = msg.sender
        mem[32] = sha3(idx, 9)
        if contributionOf[idx][address(msg.sender)] <= 0:
            idx = idx + 1
            s = s
            continue 
        if contributionOf[idx][address(msg.sender)]:
            require contributionOf[idx][address(msg.sender)]
            require contributionOf[idx][address(msg.sender)] * stor8[idx] / contributionOf[idx][address(msg.sender)] == stor8[idx]
        require periodContributionOf[idx] > 0
        require periodContributionOf[idx]
        stor11[idx][address(msg.sender)] = 1
        mem[132] = contributionOf[idx][address(msg.sender)] * stor8[idx] / periodContributionOf[idx]
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, contributionOf[idx][address(msg.sender)] * stor8[idx] / periodContributionOf[idx]
        require ext_call.success
        mem[0] = msg.sender
        mem[32] = sha3(idx, 12)
        tokenCollectedOf[idx][address(msg.sender)] = contributionOf[idx][address(msg.sender)] * stor8[idx] / periodContributionOf[idx]
        mem[96] = contributionOf[idx][address(msg.sender)] * stor8[idx] / periodContributionOf[idx]
        mem[128] = idx
        emit LogCollect(contributionOf[idx][address(msg.sender)] * stor8[idx] / periodContributionOf[idx], idx, msg.sender);
        idx = idx + 1
        s = contributionOf[idx][address(msg.sender)] * stor8[idx] / periodContributionOf[idx]
        continue 
}



}
