contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint8 stor6;
address stor6;
address stor6; offset 48
uint256 stor6; offset 40
uint256 stor6; offset 32
uint256 stor6; offset 24
uint256 stor6; offset 16
uint256 stor6; offset 8
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'YOVI' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'YOVI' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 8
    uint8(stor6.field_0) = 0
    Mask(248, 0, stor6.field_8) = 1
    Mask(240, 0, stor6.field_16) = 0
    Mask(232, 0, stor6.field_24) = 0
    Mask(224, 0, stor6.field_32) = 0
    Mask(216, 0, stor6.field_40) = 1
    address(stor6.field_48) = 0x20dba9d9a3315f97f968257445bab9cf59e67d91
    stor7 = 0x20dba9d9a3315f97f968257445bab9cf59e67d91
    stor8 = 3 * 10^17
    stor9 = 0
    stor10 = 0
    stor11 = 3 * 10^13
    stor12 = 3 * 10^15
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor7 = msg.sender
    address(stor6.field_48) = code.data[12647 len 20]
    stor1[address(stor6.field_0)] = stor9
    require stor9 <= stor8
    stor8 -= stor9
    require stor10 <= stor8
    stor8 -= stor10
    stor0 = stor8
    stor1[stor7] = stor0
    return code.data[1239 len 11396]
}



// =====================  Runtime code  =====================


const price = 500 * 10^6

const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 halted;
uint8 preTge; offset 8
uint8 stageOne; offset 16
uint8 stageTwo; offset 24
uint8 stageThree; offset 32
uint8 stor6; offset 40
address stor6;
address founderAddress; offset 48
uint256 stor6; offset 40
uint256 stor6; offset 32
uint256 stor6; offset 24
uint256 stor6; offset 16
uint256 stor6; offset 8
address owner;
uint256 totalTokens;
uint256 team;
uint256 bounty;
uint256 preTgeCap;
uint256 tgeCap;
uint256 presaleTokenSupply;
uint256 presaleEtherRaised;
uint256 preTgeTokenSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function stageTwo() {
    return bool(stageTwo)
}

function stageOne() {
    return bool(stageOne)
}

function presaleEtherRaised() {
    return presaleEtherRaised
}

function founder() {
    return founderAddress
}

function preTge() {
    return bool(preTge)
}

function preTgeTokenSupply() {
    return preTgeTokenSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalTokens() {
    return totalTokens
}

function team() {
    return team
}

function tgeCap() {
    return tgeCap
}

function owner() {
    return owner
}

function bounty() {
    return bounty
}

function symbol() {
    return symbol[0 len symbol.length]
}

function preTgeCap() {
    return preTgeCap
}

function halted() {
    return bool(halted)
}

function presaleTokenSupply() {
    return presaleTokenSupply
}

function stageThree() {
    return bool(stageThree)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function EventEmergencyStop() {
    require msg.sender == owner
    halted = 1
}

function EventEmergencyContinue() {
    require msg.sender == owner
    halted = 0
}

function freeze() {
    require msg.sender == owner
    Mask(216, 0, stor6.field_40) = 1
}

function unFreeze() {
    require msg.sender == owner
    Mask(216, 0, stor6.field_40) = 0
}

function PreTgeEnable() {
    require msg.sender == owner
    Mask(248, 0, stor6.field_8) = 1
}

function PreTgeDisable() {
    require msg.sender == owner
    Mask(248, 0, stor6.field_8) = 0
}

function StageTwoEnable() {
    require msg.sender == owner
    Mask(232, 0, stor6.field_24) = 1
}

function StageOneEnable() {
    require msg.sender == owner
    Mask(240, 0, stor6.field_16) = 1
}

function StageTwoDisable() {
    require msg.sender == owner
    Mask(232, 0, stor6.field_24) = 0
}

function StageOneDisable() {
    require msg.sender == owner
    Mask(240, 0, stor6.field_16) = 0
}

function StageThreeEnable() {
    require msg.sender == owner
    Mask(224, 0, stor6.field_32) = 1
}

function StageThreeDisable() {
    require msg.sender == owner
    Mask(224, 0, stor6.field_32) = 0
}

function changeOwner(address arg1) {
    require msg.sender == owner
    balanceOf[address(arg1)] = balanceOf[stor7]
    balanceOf[stor7] = 0
    owner = arg1
}

function burnRemainingTokens() {
    require not halted
    require not uint8(stor6.field_40)
    require msg.sender == owner
    emit Burn(balanceOf[stor7], owner);
    balanceOf[stor7] = 0
}

function changeFounder(address arg1) {
    require msg.sender == owner
    balanceOf[address(arg1)] = balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] = 0
    founderAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendBounty(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= bounty
    bounty -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit TokensSent(arg2, arg1);
    emit Transfer(arg2, owner, arg1);
}

function sendSupplyTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[stor7]
    balanceOf[stor7] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit TokensSent(arg2, arg1);
    emit Transfer(arg2, owner, arg1);
}

function sendTeamTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit TokensSent(arg2, arg1);
    emit Transfer(arg2, owner, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not halted
    require not uint8(stor6.field_40)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not halted
    require not uint8(stor6.field_40)
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not halted
    require msg.value > 0
    require balanceOf[stor7] > msg.value / 500 * 10^6
    if stageThree:
        Mask(248, 0, stor6.field_8) = 0
        Mask(240, 0, stor6.field_16) = 0
        Mask(232, 0, stor6.field_24) = 0
    if not stageTwo:
        if not stageOne:
            if not preTge:
                require preTgeTokenSupply <= tgeCap
                require presaleTokenSupply + (msg.value / 500 * 10^6) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 500 * 10^6) >= msg.value / 500 * 10^6
                require presaleTokenSupply + (msg.value / 500 * 10^6) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) >= msg.value / 500 * 10^6
                balanceOf[address(msg.sender)] += msg.value / 500 * 10^6
                require msg.value / 500 * 10^6 <= balanceOf[stor7]
                balanceOf[stor7] -= msg.value / 500 * 10^6
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) >= preTgeTokenSupply
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) >= msg.value / 500 * 10^6
                    preTgeTokenSupply += msg.value / 500 * 10^6
                require presaleTokenSupply + (msg.value / 500 * 10^6) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 500 * 10^6) >= msg.value / 500 * 10^6
                presaleTokenSupply += msg.value / 500 * 10^6
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 500 * 10^6, msg.sender);
                emit TokensSent((msg.value / 500 * 10^6), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 500 * 10^6), owner, msg.sender);
            else:
                if preTge:
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) < preTgeCap
                else:
                    require preTgeTokenSupply <= tgeCap
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 2)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2)), owner, msg.sender);
        else:
            Mask(248, 0, stor6.field_8) = 0
            if not preTge:
                require preTgeTokenSupply <= tgeCap
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 5)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5)), owner, msg.sender);
            else:
                if preTge:
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) < preTgeCap
                else:
                    require preTgeTokenSupply <= tgeCap
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 5) - ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)), owner, msg.sender);
    else:
        Mask(248, 0, stor6.field_8) = 0
        Mask(240, 0, stor6.field_16) = 0
        if not stageOne:
            if not preTge:
                require preTgeTokenSupply <= tgeCap
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 10)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10)), owner, msg.sender);
            else:
                if preTge:
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) < preTgeCap
                else:
                    require preTgeTokenSupply <= tgeCap
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 10) - ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)), owner, msg.sender);
        else:
            Mask(248, 0, stor6.field_8) = 0
            if not preTge:
                require preTgeTokenSupply <= tgeCap
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 10) - ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)), owner, msg.sender);
            else:
                if preTge:
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) < preTgeCap
                else:
                    require preTgeTokenSupply <= tgeCap
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 10) - ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) - ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)), owner, msg.sender);
}

function buy() payable {
    require not halted
    require msg.value > 0
    require balanceOf[stor7] > msg.value / 500 * 10^6
    if stageThree:
        Mask(248, 0, stor6.field_8) = 0
        Mask(240, 0, stor6.field_16) = 0
        Mask(232, 0, stor6.field_24) = 0
    if not stageTwo:
        if not stageOne:
            if not preTge:
                require preTgeTokenSupply <= tgeCap
                require presaleTokenSupply + (msg.value / 500 * 10^6) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 500 * 10^6) >= msg.value / 500 * 10^6
                require presaleTokenSupply + (msg.value / 500 * 10^6) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) >= msg.value / 500 * 10^6
                balanceOf[address(msg.sender)] += msg.value / 500 * 10^6
                require msg.value / 500 * 10^6 <= balanceOf[stor7]
                balanceOf[stor7] -= msg.value / 500 * 10^6
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) >= preTgeTokenSupply
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) >= msg.value / 500 * 10^6
                    preTgeTokenSupply += msg.value / 500 * 10^6
                require presaleTokenSupply + (msg.value / 500 * 10^6) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 500 * 10^6) >= msg.value / 500 * 10^6
                presaleTokenSupply += msg.value / 500 * 10^6
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 500 * 10^6, msg.sender);
                emit TokensSent((msg.value / 500 * 10^6), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 500 * 10^6), owner, msg.sender);
            else:
                if preTge:
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) < preTgeCap
                else:
                    require preTgeTokenSupply <= tgeCap
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 2)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 2)), owner, msg.sender);
        else:
            Mask(248, 0, stor6.field_8) = 0
            if not preTge:
                require preTgeTokenSupply <= tgeCap
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 5)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5)), owner, msg.sender);
            else:
                if preTge:
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) < preTgeCap
                else:
                    require preTgeTokenSupply <= tgeCap
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 5) - ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 5) / 2)), owner, msg.sender);
    else:
        Mask(248, 0, stor6.field_8) = 0
        Mask(240, 0, stor6.field_16) = 0
        if not stageOne:
            if not preTge:
                require preTgeTokenSupply <= tgeCap
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 10)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10)), owner, msg.sender);
            else:
                if preTge:
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) < preTgeCap
                else:
                    require preTgeTokenSupply <= tgeCap
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 10) - ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 2)), owner, msg.sender);
        else:
            Mask(248, 0, stor6.field_8) = 0
            if not preTge:
                require preTgeTokenSupply <= tgeCap
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 10) - ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5)), owner, msg.sender);
            else:
                if preTge:
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) < preTgeCap
                else:
                    require preTgeTokenSupply <= tgeCap
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) >= presaleTokenSupply
                    require presaleTokenSupply >= 0
                    require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)
                require (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 500 * 10^6) - (msg.value / 500 * 10^6 / 10) - ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) - ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)
                if preTge:
                    require preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = preTgeTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)
                require presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2) >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = presaleTokenSupply + (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2), msg.sender);
                emit TokensSent(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) + ((msg.value / 500 * 10^6) + (msg.value / 500 * 10^6 / 10) / 5) / 2)), owner, msg.sender);
    return 1
}



}
