contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor0 = msg.sender
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    require not msg.value
    return code.data[78 len 3615]
}



// =====================  Runtime code  =====================


#
#  - getStats()
#
const name = 'Vilijavis Shares'

const decimals = 18

const symbol = 'VLJ'


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 currentRoundIndex;
uint256 currentRoundMultiplier;
uint256 currentRoundBudget;
uint256 totalContribution;
uint256 totalIssued;

function totalContribution() {
    return totalContribution
}

function currentRoundIndex() {
    return currentRoundIndex
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function currentRoundMultiplier() {
    return currentRoundMultiplier
}

function currentRoundBudget() {
    return currentRoundBudget
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalIssued() {
    return totalIssued
}

function setOwner(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function stopCrowdsale() {
    require stor0 == msg.sender
    require currentRoundIndex
    # nil
}

function isCrowdsaleAllowed() {
    if currentRoundIndex <= 0:
        return (currentRoundIndex > 0)
    if currentRoundMultiplier <= 0:
        return (currentRoundMultiplier > 0)
    return (currentRoundBudget > 0)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function roundParameters(uint256 arg1) {
    if 1 == arg1:
        return 200, 500 * 10^18
    if 2 == arg1:
        return 175, 2500 * 10^18
    if 3 == arg1:
        return 160, 6000 * 10^18
    if arg1 != 4:
        return 0
    return 150, 11000 * 10^18
}

function currentRoundParameters() {
    if 1 == currentRoundIndex:
        return 200, 500 * 10^18
    if 2 == currentRoundIndex:
        return 175, 2500 * 10^18
    if 3 == currentRoundIndex:
        return 160, 6000 * 10^18
    if currentRoundIndex != 4:
        return 0
    return 150, 11000 * 10^18
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require stor0 == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if not arg3:
        return 0
    if balanceOf[address(arg1)] > arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] > arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function startCrowdsale() {
    require stor0 == msg.sender
    require not currentRoundIndex
    currentRoundIndex = 1
    if 1 == currentRoundIndex:
        currentRoundBudget = 500 * 10^18
        currentRoundMultiplier = 200
    else:
        if 2 == currentRoundIndex:
            currentRoundBudget = 2500 * 10^18
            currentRoundMultiplier = 175
        else:
            if 3 == currentRoundIndex:
                currentRoundBudget = 6000 * 10^18
                currentRoundMultiplier = 160
            else:
                if currentRoundIndex != 4:
                    currentRoundBudget = 0
                    currentRoundMultiplier = 0
                else:
                    currentRoundBudget = 11000 * 10^18
                    currentRoundMultiplier = 150
}

function _fallback() payable {
    require currentRoundIndex > 0
    require currentRoundMultiplier > 0
    require currentRoundBudget > 0
    require msg.value >= 10^12
    s = 0
    t = 0
    idx = msg.value
    while idx >= currentRoundBudget:
        currentRoundIndex++
        if 1 == currentRoundIndex:
            currentRoundBudget = 500 * 10^18
            currentRoundMultiplier = 200
        else:
            if 2 == currentRoundIndex:
                currentRoundBudget = 2500 * 10^18
                currentRoundMultiplier = 175
            else:
                if 3 == currentRoundIndex:
                    currentRoundBudget = 6000 * 10^18
                    currentRoundMultiplier = 160
                else:
                    if currentRoundIndex != 4:
                        currentRoundBudget = 0
                        currentRoundMultiplier = 0
                    else:
                        currentRoundBudget = 11000 * 10^18
                        currentRoundMultiplier = 150
        if idx - currentRoundBudget > 0:
            if currentRoundIndex > 0:
                if currentRoundMultiplier > 0:
                    if currentRoundBudget > 0:
                        s = (currentRoundMultiplier * currentRoundBudget) + s
                        t = currentRoundBudget + t
                        idx = idx - currentRoundBudget
                        continue 
        call stor0 with:
           value currentRoundBudget + t wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if idx - currentRoundBudget > 0:
            call msg.sender with:
               value idx - currentRoundBudget wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        totalContribution = currentRoundBudget + t + totalContribution
        balanceOf[address(msg.sender)] = (currentRoundMultiplier * currentRoundBudget) + s + balanceOf[address(msg.sender)]
        totalIssued = (currentRoundMultiplier * currentRoundBudget) + s + totalIssued
        emit Transfer(((currentRoundMultiplier * currentRoundBudget) + s), this.address, msg.sender);
    currentRoundBudget -= idx
    call stor0 with:
       value idx + t wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalContribution = idx + t + totalContribution
    balanceOf[address(msg.sender)] = (idx * currentRoundMultiplier) + s + balanceOf[address(msg.sender)]
    totalIssued = (idx * currentRoundMultiplier) + s + totalIssued
    emit Transfer(((idx * currentRoundMultiplier) + s), this.address, msg.sender);
}



}
