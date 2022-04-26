contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor5;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint8 stor28;

function _fallback() payable {
    stor24 = 10
    stor25 = 0
    stor27 = 0
    stor28 = 1
    require not msg.value
    stor5 = code.data[12712 len 20]
    stor6 = code.data[12744 len 20]
    stor7 = code.data[12776 len 20]
    stor0 = 1000000000 * 10^18
    if stor0:
        require stor0
        require 10 * stor0 / stor0 == 10
    stor8 = 10 * stor0 / 100
    if stor0:
        require stor0
        require 10 * stor0 / stor0 == 10
    stor9 = 10 * stor0 / 100
    if stor0:
        require stor0
        require 40 * stor0 / stor0 == 40
    stor10 = 40 * stor0 / 100
    if stor0:
        require stor0
        require stor0 / stor0 == 1
    stor11 = stor0 / 100
    if stor0:
        require stor0
        require 4 * stor0 / stor0 == 4
    stor12 = 4 * stor0 / 100
    if stor0:
        require stor0
        require 14 * stor0 / stor0 == 14
    stor13 = 14 * stor0 / 100
    if stor0:
        require stor0
        require 10 * stor0 / stor0 == 10
    stor14 = 10 * stor0 / 100
    if stor0:
        require stor0
        require 11 * stor0 / stor0 == 11
    stor15 = 11 * stor0 / 100
    stor16 = stor8
    stor17 = stor9
    stor18 = stor10
    stor19 = stor11
    stor20 = stor12
    stor21 = stor13
    stor22 = stor14
    stor23 = stor15
    if code.data[12796 len 32] >= block.timestamp:
        stor26 = code.data[12796 len 32]
    else:
        stor26 = block.timestamp
    return code.data[1201 len 11499]
}



// =====================  Runtime code  =====================


const name = 'DNN'

const decimals = 18

const symbol = 'DNN'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address allocatorAddress;
address crowdfundContractAddress;
address cofounderAAddress;
address cofounderBAddress;
address platformAddress;
uint256 earlyBackerSupply;
uint256 pRETDESupply;
uint256 tDESupply;
uint256 bountySupply;
uint256 writerAccountSupply;
uint256 advisorySupply;
uint256 cofoundersSupply;
uint256 platformSupply;
uint256 earlyBackerSupplyRemaining;
uint256 pRETDESupplyRemaining;
uint256 tDESupplyRemaining;
uint256 bountySupplyRemaining;
uint256 writerAccountSupplyRemaining;
uint256 advisorySupplyRemaining;
uint256 cofoundersSupplyRemaining;
uint256 platformSupplyRemaining;
uint256 cofoundersSupplyVestingTranches;
uint256 cofoundersSupplyVestingTranchesIssued;
uint256 cofoundersSupplyVestingStartDate;
uint256 cofoundersSupplyDistributed;
uint8 tokensLocked;

function cofoundersSupplyRemaining() {
    return cofoundersSupplyRemaining
}

function writerAccountSupplyRemaining() {
    return writerAccountSupplyRemaining
}

function cofoundersSupply() {
    return cofoundersSupply
}

function totalSupply() {
    return totalSupply
}

function PRETDESupply() {
    return pRETDESupply
}

function cofoundersSupplyVestingTranches() {
    return cofoundersSupplyVestingTranches
}

function cofoundersSupplyVestingStartDate() {
    return cofoundersSupplyVestingStartDate
}

function earlyBackerSupply() {
    return earlyBackerSupply
}

function platformSupplyRemaining() {
    return platformSupplyRemaining
}

function cofoundersSupplyVestingTranchesIssued() {
    return cofoundersSupplyVestingTranchesIssued
}

function platform() {
    return platformAddress
}

function cofounderB() {
    return cofounderBAddress
}

function TDESupplyRemaining() {
    return tDESupplyRemaining
}

function cofoundersSupplyDistributed() {
    return cofoundersSupplyDistributed
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function platformSupply() {
    return platformSupply
}

function bountySupply() {
    return bountySupply
}

function allocatorAddress() {
    return allocatorAddress
}

function tokensLocked() {
    return bool(tokensLocked)
}

function advisorySupplyRemaining() {
    return advisorySupplyRemaining
}

function writerAccountSupply() {
    return writerAccountSupply
}

function crowdfundContract() {
    return crowdfundContractAddress
}

function PRETDESupplyRemaining() {
    return pRETDESupplyRemaining
}

function advisorySupply() {
    return advisorySupply
}

function bountySupplyRemaining() {
    return bountySupplyRemaining
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function cofounderA() {
    return cofounderAAddress
}

function TDESupply() {
    return tDESupply
}

function earlyBackerSupplyRemaining() {
    return earlyBackerSupplyRemaining
}

function _fallback() payable {
    revert
}

function changeCofounderA(address arg1) {
    require msg.sender == cofounderAAddress
    cofounderAAddress = arg1
}

function changeCofounderB(address arg1) {
    require msg.sender == cofounderBAddress
    cofounderBAddress = arg1
}

function unlockTokens() {
    require msg.sender == crowdfundContractAddress
    require bool(tokensLocked) == 1
    tokensLocked = 0
}

function changePlatform(address arg1) {
    if cofounderAAddress != msg.sender:
        require msg.sender == cofounderBAddress
    platformAddress = arg1
}

function changeCrowdfundContract(address arg1) {
    if cofounderAAddress != msg.sender:
        require msg.sender == cofounderBAddress
    require not crowdfundContractAddress
    crowdfundContractAddress = arg1
}

function changeAllocator(address arg1) {
    if cofounderAAddress != msg.sender:
        require msg.sender == cofounderBAddress
    if allocatorAddress:
        require not tokensLocked
    allocatorAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendUnsoldPRETDETokensToTDE() {
    require msg.sender == crowdfundContractAddress
    if pRETDESupplyRemaining > 0:
        require tDESupplyRemaining + pRETDESupplyRemaining >= tDESupplyRemaining
        tDESupplyRemaining += pRETDESupplyRemaining
        pRETDESupplyRemaining = 0
}

function sendUnsoldTDETokensToPlatform() {
    require msg.sender == crowdfundContractAddress
    if tDESupplyRemaining > 0:
        require platformSupplyRemaining + tDESupplyRemaining >= platformSupplyRemaining
        platformSupplyRemaining += tDESupplyRemaining
        tDESupplyRemaining = 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not tokensLocked
    emit Transfer(arg2, msg.sender, arg1);
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not tokensLocked
    emit Transfer(arg3, arg1, arg2);
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function issueCofoundersTokensIfPossible() {
    if cofounderAAddress != msg.sender:
        require msg.sender == cofounderBAddress
    require cofoundersSupplyVestingStartDate
    require block.timestamp - cofoundersSupplyVestingStartDate >= 672 * 24 * 3600
    require cofoundersSupplyVestingStartDate <= block.timestamp
    require cofoundersSupplyVestingTranchesIssued != cofoundersSupplyVestingTranches
    require block.timestamp - cofoundersSupplyVestingStartDate / 672 * 24 * 3600 > cofoundersSupplyVestingTranchesIssued
    require cofoundersSupplyVestingTranches
    if cofoundersSupply / cofoundersSupplyVestingTranches > cofoundersSupplyRemaining:
        return 0
    cofoundersSupplyRemaining -= cofoundersSupply / cofoundersSupplyVestingTranches
    require cofoundersSupplyDistributed + (cofoundersSupply / cofoundersSupplyVestingTranches) >= cofoundersSupplyDistributed
    cofoundersSupplyDistributed += cofoundersSupply / cofoundersSupplyVestingTranches
    require balanceOf[stor5] + (cofoundersSupply / cofoundersSupplyVestingTranches / 2) >= balanceOf[stor5]
    balanceOf[stor5] += cofoundersSupply / cofoundersSupplyVestingTranches / 2
    require balanceOf[stor6] + (cofoundersSupply / cofoundersSupplyVestingTranches / 2) >= balanceOf[stor6]
    balanceOf[stor6] += cofoundersSupply / cofoundersSupplyVestingTranches / 2
    cofoundersSupplyVestingTranchesIssued++
    return 1
}

function issueTokens(address arg1, uint256 arg2, uint8 arg3) {
    if msg.sender == allocatorAddress:
        if platformAddress != msg.sender:
            if tokensLocked:
                if crowdfundContractAddress != msg.sender:
                    if tokensLocked:
                        if platformAddress != msg.sender:
                            return 0
                        require arg3 <= 6
                        if arg3 != 6:
                            return 0
                        if arg2 > platformSupplyRemaining:
                            return 0
                        platformSupplyRemaining -= arg2
                    else:
                        require arg3 <= 6
                        if arg3 != 3:
                            if tokensLocked:
                                if platformAddress != msg.sender:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 6:
                                    return 0
                                if arg2 > platformSupplyRemaining:
                                    return 0
                                platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 4:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= writerAccountSupplyRemaining:
                                        writerAccountSupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                        else:
                            if arg2 <= bountySupplyRemaining:
                                bountySupplyRemaining -= arg2
                            else:
                                if tokensLocked:
                                    if platformAddress != msg.sender:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                else:
                    require arg3 <= 6
                    if arg3 == 1:
                        if pRETDESupplyRemaining >= arg2:
                            require arg2 <= pRETDESupplyRemaining
                            pRETDESupplyRemaining -= arg2
                        else:
                            if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                return 0
                            require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                            tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                            pRETDESupplyRemaining = 0
                    else:
                        if crowdfundContractAddress != msg.sender:
                            if tokensLocked:
                                if platformAddress != msg.sender:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 6:
                                    return 0
                                if arg2 > platformSupplyRemaining:
                                    return 0
                                platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 3:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= bountySupplyRemaining:
                                        bountySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 != 2:
                                if tokensLocked:
                                    if platformAddress != msg.sender:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= tDESupplyRemaining:
                                    tDESupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
            else:
                require arg3 <= 6
                if arg3:
                    if crowdfundContractAddress != msg.sender:
                        if tokensLocked:
                            if platformAddress != msg.sender:
                                return 0
                            require arg3 <= 6
                            if arg3 != 6:
                                return 0
                            if arg2 > platformSupplyRemaining:
                                return 0
                            platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 != 3:
                                if tokensLocked:
                                    if platformAddress != msg.sender:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= bountySupplyRemaining:
                                    bountySupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                    else:
                        require arg3 <= 6
                        if arg3 == 1:
                            if pRETDESupplyRemaining >= arg2:
                                require arg2 <= pRETDESupplyRemaining
                                pRETDESupplyRemaining -= arg2
                            else:
                                if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                    return 0
                                require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                pRETDESupplyRemaining = 0
                        else:
                            if crowdfundContractAddress != msg.sender:
                                if tokensLocked:
                                    if platformAddress != msg.sender:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 2:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= tDESupplyRemaining:
                                        tDESupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                else:
                    if arg2 <= earlyBackerSupplyRemaining:
                        earlyBackerSupplyRemaining -= arg2
                    else:
                        if crowdfundContractAddress != msg.sender:
                            if tokensLocked:
                                if platformAddress != msg.sender:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 6:
                                    return 0
                                if arg2 > platformSupplyRemaining:
                                    return 0
                                platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 3:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= bountySupplyRemaining:
                                        bountySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 == 1:
                                if pRETDESupplyRemaining >= arg2:
                                    require arg2 <= pRETDESupplyRemaining
                                    pRETDESupplyRemaining -= arg2
                                else:
                                    if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                        return 0
                                    require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                    tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                    pRETDESupplyRemaining = 0
                            else:
                                if crowdfundContractAddress != msg.sender:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 2:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= tDESupplyRemaining:
                                            tDESupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 3:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= bountySupplyRemaining:
                                                        bountySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 4:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= writerAccountSupplyRemaining:
                                                                    writerAccountSupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
        else:
            if tokensLocked:
                if crowdfundContractAddress != msg.sender:
                    if tokensLocked:
                        return 0
                    require arg3 <= 6
                    if arg3 != 3:
                        if tokensLocked:
                            return 0
                        require arg3 <= 6
                        if arg3 != 4:
                            if tokensLocked:
                                return 0
                            require arg3 <= 6
                            if arg3 != 5:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 6:
                                    return 0
                                if arg2 > platformSupplyRemaining:
                                    return 0
                                platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= advisorySupplyRemaining:
                                    advisorySupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                        else:
                            if arg2 <= writerAccountSupplyRemaining:
                                writerAccountSupplyRemaining -= arg2
                            else:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 5:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= advisorySupplyRemaining:
                                        advisorySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                    else:
                        if arg2 <= bountySupplyRemaining:
                            bountySupplyRemaining -= arg2
                        else:
                            if tokensLocked:
                                return 0
                            require arg3 <= 6
                            if arg3 != 4:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 5:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= advisorySupplyRemaining:
                                        advisorySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= writerAccountSupplyRemaining:
                                    writerAccountSupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 5:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= advisorySupplyRemaining:
                                            advisorySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                else:
                    require arg3 <= 6
                    if arg3 == 1:
                        if pRETDESupplyRemaining >= arg2:
                            require arg2 <= pRETDESupplyRemaining
                            pRETDESupplyRemaining -= arg2
                        else:
                            if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                return 0
                            require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                            tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                            pRETDESupplyRemaining = 0
                    else:
                        if crowdfundContractAddress != msg.sender:
                            if tokensLocked:
                                return 0
                            require arg3 <= 6
                            if arg3 != 3:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 4:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 5:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= advisorySupplyRemaining:
                                            advisorySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= writerAccountSupplyRemaining:
                                        writerAccountSupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= bountySupplyRemaining:
                                    bountySupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 != 2:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 3:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= bountySupplyRemaining:
                                        bountySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= tDESupplyRemaining:
                                    tDESupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
            else:
                require arg3 <= 6
                if arg3:
                    if crowdfundContractAddress != msg.sender:
                        if tokensLocked:
                            return 0
                        require arg3 <= 6
                        if arg3 != 3:
                            if tokensLocked:
                                return 0
                            require arg3 <= 6
                            if arg3 != 4:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 5:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= advisorySupplyRemaining:
                                        advisorySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= writerAccountSupplyRemaining:
                                    writerAccountSupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 5:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= advisorySupplyRemaining:
                                            advisorySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                        else:
                            if arg2 <= bountySupplyRemaining:
                                bountySupplyRemaining -= arg2
                            else:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 4:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 5:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= advisorySupplyRemaining:
                                            advisorySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= writerAccountSupplyRemaining:
                                        writerAccountSupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                    else:
                        require arg3 <= 6
                        if arg3 == 1:
                            if pRETDESupplyRemaining >= arg2:
                                require arg2 <= pRETDESupplyRemaining
                                pRETDESupplyRemaining -= arg2
                            else:
                                if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                    return 0
                                require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                pRETDESupplyRemaining = 0
                        else:
                            if crowdfundContractAddress != msg.sender:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 3:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= bountySupplyRemaining:
                                        bountySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 2:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= tDESupplyRemaining:
                                        tDESupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                else:
                    if arg2 <= earlyBackerSupplyRemaining:
                        earlyBackerSupplyRemaining -= arg2
                    else:
                        if crowdfundContractAddress != msg.sender:
                            if tokensLocked:
                                return 0
                            require arg3 <= 6
                            if arg3 != 3:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 4:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 5:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= advisorySupplyRemaining:
                                            advisorySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= writerAccountSupplyRemaining:
                                        writerAccountSupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= bountySupplyRemaining:
                                    bountySupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 == 1:
                                if pRETDESupplyRemaining >= arg2:
                                    require arg2 <= pRETDESupplyRemaining
                                    pRETDESupplyRemaining -= arg2
                                else:
                                    if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                        return 0
                                    require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                    tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                    pRETDESupplyRemaining = 0
                            else:
                                if crowdfundContractAddress != msg.sender:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 2:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= tDESupplyRemaining:
                                            tDESupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
    else:
        if crowdfundContractAddress != msg.sender:
            require msg.sender == platformAddress
        if allocatorAddress != msg.sender:
            if platformAddress != msg.sender:
                if allocatorAddress != msg.sender:
                    if crowdfundContractAddress != msg.sender:
                        if allocatorAddress != msg.sender:
                            if platformAddress != msg.sender:
                                return 0
                            require arg3 <= 6
                            if arg3 != 6:
                                return 0
                            if arg2 > platformSupplyRemaining:
                                return 0
                            platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 != 3:
                                if allocatorAddress != msg.sender:
                                    if platformAddress != msg.sender:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if allocatorAddress != msg.sender:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if allocatorAddress != msg.sender:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= bountySupplyRemaining:
                                    bountySupplyRemaining -= arg2
                                else:
                                    if allocatorAddress != msg.sender:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if allocatorAddress != msg.sender:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                    else:
                        require arg3 <= 6
                        if arg3 == 1:
                            if pRETDESupplyRemaining >= arg2:
                                require arg2 <= pRETDESupplyRemaining
                                pRETDESupplyRemaining -= arg2
                            else:
                                if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                    return 0
                                require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                pRETDESupplyRemaining = 0
                        else:
                            if crowdfundContractAddress != msg.sender:
                                if allocatorAddress != msg.sender:
                                    if platformAddress != msg.sender:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if allocatorAddress != msg.sender:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if allocatorAddress != msg.sender:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 2:
                                    if allocatorAddress != msg.sender:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if allocatorAddress != msg.sender:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= tDESupplyRemaining:
                                        tDESupplyRemaining -= arg2
                                    else:
                                        if allocatorAddress != msg.sender:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if allocatorAddress != msg.sender:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                else:
                    require arg3 <= 6
                    if arg3:
                        if crowdfundContractAddress != msg.sender:
                            if allocatorAddress != msg.sender:
                                if platformAddress != msg.sender:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 6:
                                    return 0
                                if arg2 > platformSupplyRemaining:
                                    return 0
                                platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 3:
                                    if allocatorAddress != msg.sender:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if allocatorAddress != msg.sender:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= bountySupplyRemaining:
                                        bountySupplyRemaining -= arg2
                                    else:
                                        if allocatorAddress != msg.sender:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 == 1:
                                if pRETDESupplyRemaining >= arg2:
                                    require arg2 <= pRETDESupplyRemaining
                                    pRETDESupplyRemaining -= arg2
                                else:
                                    if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                        return 0
                                    require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                    tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                    pRETDESupplyRemaining = 0
                            else:
                                if crowdfundContractAddress != msg.sender:
                                    if allocatorAddress != msg.sender:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if allocatorAddress != msg.sender:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 2:
                                        if allocatorAddress != msg.sender:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if allocatorAddress != msg.sender:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= tDESupplyRemaining:
                                            tDESupplyRemaining -= arg2
                                        else:
                                            if allocatorAddress != msg.sender:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 3:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if allocatorAddress != msg.sender:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= bountySupplyRemaining:
                                                        bountySupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 4:
                                                                if allocatorAddress != msg.sender:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= writerAccountSupplyRemaining:
                                                                    writerAccountSupplyRemaining -= arg2
                                                                else:
                                                                    if allocatorAddress != msg.sender:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                    else:
                        if arg2 <= earlyBackerSupplyRemaining:
                            earlyBackerSupplyRemaining -= arg2
                        else:
                            if crowdfundContractAddress != msg.sender:
                                if allocatorAddress != msg.sender:
                                    if platformAddress != msg.sender:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if allocatorAddress != msg.sender:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if allocatorAddress != msg.sender:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 == 1:
                                    if pRETDESupplyRemaining >= arg2:
                                        require arg2 <= pRETDESupplyRemaining
                                        pRETDESupplyRemaining -= arg2
                                    else:
                                        if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                            return 0
                                        require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                        tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                        pRETDESupplyRemaining = 0
                                else:
                                    if crowdfundContractAddress != msg.sender:
                                        if allocatorAddress != msg.sender:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if allocatorAddress != msg.sender:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 2:
                                            if allocatorAddress != msg.sender:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 3:
                                                    if allocatorAddress != msg.sender:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if allocatorAddress != msg.sender:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= bountySupplyRemaining:
                                                        bountySupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 4:
                                                                if allocatorAddress != msg.sender:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= writerAccountSupplyRemaining:
                                                                    writerAccountSupplyRemaining -= arg2
                                                                else:
                                                                    if allocatorAddress != msg.sender:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= tDESupplyRemaining:
                                                tDESupplyRemaining -= arg2
                                            else:
                                                if allocatorAddress != msg.sender:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 3:
                                                        if allocatorAddress != msg.sender:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 4:
                                                                if allocatorAddress != msg.sender:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= writerAccountSupplyRemaining:
                                                                    writerAccountSupplyRemaining -= arg2
                                                                else:
                                                                    if allocatorAddress != msg.sender:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= bountySupplyRemaining:
                                                            bountySupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 4:
                                                                    if allocatorAddress != msg.sender:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= writerAccountSupplyRemaining:
                                                                        writerAccountSupplyRemaining -= arg2
                                                                    else:
                                                                        if allocatorAddress != msg.sender:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            require arg3 <= 6
                                                                            if arg3 != 5:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                                                            else:
                                                                                if arg2 <= advisorySupplyRemaining:
                                                                                    advisorySupplyRemaining -= arg2
                                                                                else:
                                                                                    if platformAddress != msg.sender:
                                                                                        return 0
                                                                                    require arg3 <= 6
                                                                                    if arg3 != 6:
                                                                                        return 0
                                                                                    if arg2 > platformSupplyRemaining:
                                                                                        return 0
                                                                                    platformSupplyRemaining -= arg2
            else:
                if allocatorAddress != msg.sender:
                    if crowdfundContractAddress != msg.sender:
                        if allocatorAddress != msg.sender:
                            if tokensLocked:
                                return 0
                            require arg3 <= 6
                            if arg3 != 6:
                                return 0
                            if arg2 > platformSupplyRemaining:
                                return 0
                            platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 != 3:
                                if allocatorAddress != msg.sender:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if allocatorAddress != msg.sender:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if allocatorAddress != msg.sender:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= bountySupplyRemaining:
                                    bountySupplyRemaining -= arg2
                                else:
                                    if allocatorAddress != msg.sender:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if allocatorAddress != msg.sender:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                    else:
                        require arg3 <= 6
                        if arg3 == 1:
                            if pRETDESupplyRemaining >= arg2:
                                require arg2 <= pRETDESupplyRemaining
                                pRETDESupplyRemaining -= arg2
                            else:
                                if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                    return 0
                                require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                pRETDESupplyRemaining = 0
                        else:
                            if crowdfundContractAddress != msg.sender:
                                if allocatorAddress != msg.sender:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if allocatorAddress != msg.sender:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if allocatorAddress != msg.sender:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 2:
                                    if allocatorAddress != msg.sender:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if allocatorAddress != msg.sender:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= tDESupplyRemaining:
                                        tDESupplyRemaining -= arg2
                                    else:
                                        if allocatorAddress != msg.sender:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if allocatorAddress != msg.sender:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                else:
                    require arg3 <= 6
                    if arg3:
                        if crowdfundContractAddress != msg.sender:
                            if allocatorAddress != msg.sender:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 6:
                                    return 0
                                if arg2 > platformSupplyRemaining:
                                    return 0
                                platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 3:
                                    if allocatorAddress != msg.sender:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if allocatorAddress != msg.sender:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= bountySupplyRemaining:
                                        bountySupplyRemaining -= arg2
                                    else:
                                        if allocatorAddress != msg.sender:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 == 1:
                                if pRETDESupplyRemaining >= arg2:
                                    require arg2 <= pRETDESupplyRemaining
                                    pRETDESupplyRemaining -= arg2
                                else:
                                    if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                        return 0
                                    require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                    tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                    pRETDESupplyRemaining = 0
                            else:
                                if crowdfundContractAddress != msg.sender:
                                    if allocatorAddress != msg.sender:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if allocatorAddress != msg.sender:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 2:
                                        if allocatorAddress != msg.sender:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if allocatorAddress != msg.sender:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= tDESupplyRemaining:
                                            tDESupplyRemaining -= arg2
                                        else:
                                            if allocatorAddress != msg.sender:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 3:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if allocatorAddress != msg.sender:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= bountySupplyRemaining:
                                                        bountySupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 4:
                                                                if allocatorAddress != msg.sender:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= writerAccountSupplyRemaining:
                                                                    writerAccountSupplyRemaining -= arg2
                                                                else:
                                                                    if allocatorAddress != msg.sender:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if tokensLocked:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                    else:
                        if arg2 <= earlyBackerSupplyRemaining:
                            earlyBackerSupplyRemaining -= arg2
                        else:
                            if crowdfundContractAddress != msg.sender:
                                if allocatorAddress != msg.sender:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if allocatorAddress != msg.sender:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if allocatorAddress != msg.sender:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 == 1:
                                    if pRETDESupplyRemaining >= arg2:
                                        require arg2 <= pRETDESupplyRemaining
                                        pRETDESupplyRemaining -= arg2
                                    else:
                                        if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                            return 0
                                        require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                        tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                        pRETDESupplyRemaining = 0
                                else:
                                    if crowdfundContractAddress != msg.sender:
                                        if allocatorAddress != msg.sender:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if allocatorAddress != msg.sender:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 2:
                                            if allocatorAddress != msg.sender:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 3:
                                                    if allocatorAddress != msg.sender:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if allocatorAddress != msg.sender:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= bountySupplyRemaining:
                                                        bountySupplyRemaining -= arg2
                                                    else:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 4:
                                                                if allocatorAddress != msg.sender:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= writerAccountSupplyRemaining:
                                                                    writerAccountSupplyRemaining -= arg2
                                                                else:
                                                                    if allocatorAddress != msg.sender:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if tokensLocked:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= tDESupplyRemaining:
                                                tDESupplyRemaining -= arg2
                                            else:
                                                if allocatorAddress != msg.sender:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 3:
                                                        if allocatorAddress != msg.sender:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 4:
                                                                if allocatorAddress != msg.sender:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= writerAccountSupplyRemaining:
                                                                    writerAccountSupplyRemaining -= arg2
                                                                else:
                                                                    if allocatorAddress != msg.sender:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if tokensLocked:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= bountySupplyRemaining:
                                                            bountySupplyRemaining -= arg2
                                                        else:
                                                            if allocatorAddress != msg.sender:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 4:
                                                                    if allocatorAddress != msg.sender:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if tokensLocked:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= writerAccountSupplyRemaining:
                                                                        writerAccountSupplyRemaining -= arg2
                                                                    else:
                                                                        if allocatorAddress != msg.sender:
                                                                            if tokensLocked:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            require arg3 <= 6
                                                                            if arg3 != 5:
                                                                                if tokensLocked:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                                                            else:
                                                                                if arg2 <= advisorySupplyRemaining:
                                                                                    advisorySupplyRemaining -= arg2
                                                                                else:
                                                                                    if tokensLocked:
                                                                                        return 0
                                                                                    require arg3 <= 6
                                                                                    if arg3 != 6:
                                                                                        return 0
                                                                                    if arg2 > platformSupplyRemaining:
                                                                                        return 0
                                                                                    platformSupplyRemaining -= arg2
        else:
            if platformAddress != msg.sender:
                if tokensLocked:
                    if crowdfundContractAddress != msg.sender:
                        if tokensLocked:
                            if platformAddress != msg.sender:
                                return 0
                            require arg3 <= 6
                            if arg3 != 6:
                                return 0
                            if arg2 > platformSupplyRemaining:
                                return 0
                            platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 != 3:
                                if tokensLocked:
                                    if platformAddress != msg.sender:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= bountySupplyRemaining:
                                    bountySupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                    else:
                        require arg3 <= 6
                        if arg3 == 1:
                            if pRETDESupplyRemaining >= arg2:
                                require arg2 <= pRETDESupplyRemaining
                                pRETDESupplyRemaining -= arg2
                            else:
                                if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                    return 0
                                require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                pRETDESupplyRemaining = 0
                        else:
                            if crowdfundContractAddress != msg.sender:
                                if tokensLocked:
                                    if platformAddress != msg.sender:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 2:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= tDESupplyRemaining:
                                        tDESupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                else:
                    require arg3 <= 6
                    if arg3:
                        if crowdfundContractAddress != msg.sender:
                            if tokensLocked:
                                if platformAddress != msg.sender:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 6:
                                    return 0
                                if arg2 > platformSupplyRemaining:
                                    return 0
                                platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 3:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= bountySupplyRemaining:
                                        bountySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 == 1:
                                if pRETDESupplyRemaining >= arg2:
                                    require arg2 <= pRETDESupplyRemaining
                                    pRETDESupplyRemaining -= arg2
                                else:
                                    if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                        return 0
                                    require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                    tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                    pRETDESupplyRemaining = 0
                            else:
                                if crowdfundContractAddress != msg.sender:
                                    if tokensLocked:
                                        if platformAddress != msg.sender:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 2:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= tDESupplyRemaining:
                                            tDESupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 3:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= bountySupplyRemaining:
                                                        bountySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 4:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= writerAccountSupplyRemaining:
                                                                    writerAccountSupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                    else:
                        if arg2 <= earlyBackerSupplyRemaining:
                            earlyBackerSupplyRemaining -= arg2
                        else:
                            if crowdfundContractAddress != msg.sender:
                                if tokensLocked:
                                    if platformAddress != msg.sender:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 == 1:
                                    if pRETDESupplyRemaining >= arg2:
                                        require arg2 <= pRETDESupplyRemaining
                                        pRETDESupplyRemaining -= arg2
                                    else:
                                        if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                            return 0
                                        require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                        tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                        pRETDESupplyRemaining = 0
                                else:
                                    if crowdfundContractAddress != msg.sender:
                                        if tokensLocked:
                                            if platformAddress != msg.sender:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 2:
                                            if tokensLocked:
                                                if platformAddress != msg.sender:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                require arg3 <= 6
                                                if arg3 != 3:
                                                    if tokensLocked:
                                                        if platformAddress != msg.sender:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= bountySupplyRemaining:
                                                        bountySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 4:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= writerAccountSupplyRemaining:
                                                                    writerAccountSupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= tDESupplyRemaining:
                                                tDESupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    if platformAddress != msg.sender:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    require arg3 <= 6
                                                    if arg3 != 3:
                                                        if tokensLocked:
                                                            if platformAddress != msg.sender:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            require arg3 <= 6
                                                            if arg3 != 4:
                                                                if tokensLocked:
                                                                    if platformAddress != msg.sender:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    require arg3 <= 6
                                                                    if arg3 != 5:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        if arg2 <= advisorySupplyRemaining:
                                                                            advisorySupplyRemaining -= arg2
                                                                        else:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= writerAccountSupplyRemaining:
                                                                    writerAccountSupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= bountySupplyRemaining:
                                                            bountySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                if platformAddress != msg.sender:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                require arg3 <= 6
                                                                if arg3 != 4:
                                                                    if tokensLocked:
                                                                        if platformAddress != msg.sender:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
                                                                    else:
                                                                        require arg3 <= 6
                                                                        if arg3 != 5:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            if arg2 <= advisorySupplyRemaining:
                                                                                advisorySupplyRemaining -= arg2
                                                                            else:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= writerAccountSupplyRemaining:
                                                                        writerAccountSupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            if platformAddress != msg.sender:
                                                                                return 0
                                                                            require arg3 <= 6
                                                                            if arg3 != 6:
                                                                                return 0
                                                                            if arg2 > platformSupplyRemaining:
                                                                                return 0
                                                                            platformSupplyRemaining -= arg2
                                                                        else:
                                                                            require arg3 <= 6
                                                                            if arg3 != 5:
                                                                                if platformAddress != msg.sender:
                                                                                    return 0
                                                                                require arg3 <= 6
                                                                                if arg3 != 6:
                                                                                    return 0
                                                                                if arg2 > platformSupplyRemaining:
                                                                                    return 0
                                                                                platformSupplyRemaining -= arg2
                                                                            else:
                                                                                if arg2 <= advisorySupplyRemaining:
                                                                                    advisorySupplyRemaining -= arg2
                                                                                else:
                                                                                    if platformAddress != msg.sender:
                                                                                        return 0
                                                                                    require arg3 <= 6
                                                                                    if arg3 != 6:
                                                                                        return 0
                                                                                    if arg2 > platformSupplyRemaining:
                                                                                        return 0
                                                                                    platformSupplyRemaining -= arg2
            else:
                if tokensLocked:
                    if crowdfundContractAddress != msg.sender:
                        if tokensLocked:
                            return 0
                        require arg3 <= 6
                        if arg3 != 3:
                            if tokensLocked:
                                return 0
                            require arg3 <= 6
                            if arg3 != 4:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 5:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 6:
                                        return 0
                                    if arg2 > platformSupplyRemaining:
                                        return 0
                                    platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= advisorySupplyRemaining:
                                        advisorySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= writerAccountSupplyRemaining:
                                    writerAccountSupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 5:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= advisorySupplyRemaining:
                                            advisorySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                        else:
                            if arg2 <= bountySupplyRemaining:
                                bountySupplyRemaining -= arg2
                            else:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 4:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 5:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= advisorySupplyRemaining:
                                            advisorySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= writerAccountSupplyRemaining:
                                        writerAccountSupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                    else:
                        require arg3 <= 6
                        if arg3 == 1:
                            if pRETDESupplyRemaining >= arg2:
                                require arg2 <= pRETDESupplyRemaining
                                pRETDESupplyRemaining -= arg2
                            else:
                                if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                    return 0
                                require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                pRETDESupplyRemaining = 0
                        else:
                            if crowdfundContractAddress != msg.sender:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 3:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= bountySupplyRemaining:
                                        bountySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 != 2:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= tDESupplyRemaining:
                                        tDESupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                else:
                    require arg3 <= 6
                    if arg3:
                        if crowdfundContractAddress != msg.sender:
                            if tokensLocked:
                                return 0
                            require arg3 <= 6
                            if arg3 != 3:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 4:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 5:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 6:
                                            return 0
                                        if arg2 > platformSupplyRemaining:
                                            return 0
                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= advisorySupplyRemaining:
                                            advisorySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= writerAccountSupplyRemaining:
                                        writerAccountSupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                            else:
                                if arg2 <= bountySupplyRemaining:
                                    bountySupplyRemaining -= arg2
                                else:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                        else:
                            require arg3 <= 6
                            if arg3 == 1:
                                if pRETDESupplyRemaining >= arg2:
                                    require arg2 <= pRETDESupplyRemaining
                                    pRETDESupplyRemaining -= arg2
                                else:
                                    if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                        return 0
                                    require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                    tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                    pRETDESupplyRemaining = 0
                            else:
                                if crowdfundContractAddress != msg.sender:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 3:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= bountySupplyRemaining:
                                            bountySupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                else:
                                    require arg3 <= 6
                                    if arg3 != 2:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= tDESupplyRemaining:
                                            tDESupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                    else:
                        if arg2 <= earlyBackerSupplyRemaining:
                            earlyBackerSupplyRemaining -= arg2
                        else:
                            if crowdfundContractAddress != msg.sender:
                                if tokensLocked:
                                    return 0
                                require arg3 <= 6
                                if arg3 != 3:
                                    if tokensLocked:
                                        return 0
                                    require arg3 <= 6
                                    if arg3 != 4:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 5:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 6:
                                                return 0
                                            if arg2 > platformSupplyRemaining:
                                                return 0
                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= advisorySupplyRemaining:
                                                advisorySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                    else:
                                        if arg2 <= writerAccountSupplyRemaining:
                                            writerAccountSupplyRemaining -= arg2
                                        else:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                else:
                                    if arg2 <= bountySupplyRemaining:
                                        bountySupplyRemaining -= arg2
                                    else:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 4:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 5:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 6:
                                                    return 0
                                                if arg2 > platformSupplyRemaining:
                                                    return 0
                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= advisorySupplyRemaining:
                                                    advisorySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= writerAccountSupplyRemaining:
                                                writerAccountSupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                            else:
                                require arg3 <= 6
                                if arg3 == 1:
                                    if pRETDESupplyRemaining >= arg2:
                                        require arg2 <= pRETDESupplyRemaining
                                        pRETDESupplyRemaining -= arg2
                                    else:
                                        if pRETDESupplyRemaining + tDESupplyRemaining < arg2:
                                            return 0
                                        require arg2 - pRETDESupplyRemaining <= tDESupplyRemaining
                                        tDESupplyRemaining = tDESupplyRemaining - arg2 + pRETDESupplyRemaining
                                        pRETDESupplyRemaining = 0
                                else:
                                    if crowdfundContractAddress != msg.sender:
                                        if tokensLocked:
                                            return 0
                                        require arg3 <= 6
                                        if arg3 != 3:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 4:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 5:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 6:
                                                        return 0
                                                    if arg2 > platformSupplyRemaining:
                                                        return 0
                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= advisorySupplyRemaining:
                                                        advisorySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= writerAccountSupplyRemaining:
                                                    writerAccountSupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= bountySupplyRemaining:
                                                bountySupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                    else:
                                        require arg3 <= 6
                                        if arg3 != 2:
                                            if tokensLocked:
                                                return 0
                                            require arg3 <= 6
                                            if arg3 != 3:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 4:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 5:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 6:
                                                            return 0
                                                        if arg2 > platformSupplyRemaining:
                                                            return 0
                                                        platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= advisorySupplyRemaining:
                                                            advisorySupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= writerAccountSupplyRemaining:
                                                        writerAccountSupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                            else:
                                                if arg2 <= bountySupplyRemaining:
                                                    bountySupplyRemaining -= arg2
                                                else:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                        else:
                                            if arg2 <= tDESupplyRemaining:
                                                tDESupplyRemaining -= arg2
                                            else:
                                                if tokensLocked:
                                                    return 0
                                                require arg3 <= 6
                                                if arg3 != 3:
                                                    if tokensLocked:
                                                        return 0
                                                    require arg3 <= 6
                                                    if arg3 != 4:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 5:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 6:
                                                                return 0
                                                            if arg2 > platformSupplyRemaining:
                                                                return 0
                                                            platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= advisorySupplyRemaining:
                                                                advisorySupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                    else:
                                                        if arg2 <= writerAccountSupplyRemaining:
                                                            writerAccountSupplyRemaining -= arg2
                                                        else:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                else:
                                                    if arg2 <= bountySupplyRemaining:
                                                        bountySupplyRemaining -= arg2
                                                    else:
                                                        if tokensLocked:
                                                            return 0
                                                        require arg3 <= 6
                                                        if arg3 != 4:
                                                            if tokensLocked:
                                                                return 0
                                                            require arg3 <= 6
                                                            if arg3 != 5:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 6:
                                                                    return 0
                                                                if arg2 > platformSupplyRemaining:
                                                                    return 0
                                                                platformSupplyRemaining -= arg2
                                                            else:
                                                                if arg2 <= advisorySupplyRemaining:
                                                                    advisorySupplyRemaining -= arg2
                                                                else:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                        else:
                                                            if arg2 <= writerAccountSupplyRemaining:
                                                                writerAccountSupplyRemaining -= arg2
                                                            else:
                                                                if tokensLocked:
                                                                    return 0
                                                                require arg3 <= 6
                                                                if arg3 != 5:
                                                                    if tokensLocked:
                                                                        return 0
                                                                    require arg3 <= 6
                                                                    if arg3 != 6:
                                                                        return 0
                                                                    if arg2 > platformSupplyRemaining:
                                                                        return 0
                                                                    platformSupplyRemaining -= arg2
                                                                else:
                                                                    if arg2 <= advisorySupplyRemaining:
                                                                        advisorySupplyRemaining -= arg2
                                                                    else:
                                                                        if tokensLocked:
                                                                            return 0
                                                                        require arg3 <= 6
                                                                        if arg3 != 6:
                                                                            return 0
                                                                        if arg2 > platformSupplyRemaining:
                                                                            return 0
                                                                        platformSupplyRemaining -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    return 1
}



}
