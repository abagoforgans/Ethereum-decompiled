contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
bool stor6; offset 256
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 40
uint32 stor6; offset 16
address stor6; offset 48
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
    uint8(stor6.field_8) = 1
    stor6.field_16 % 16777216 = 0
    uint8(stor6.field_40) = 1
    address(stor6.field_48) = 0x20dba9d9a3315f97f968257445bab9cf59e67d91
    stor6.field_256 % 1 = 0
    stor6.field_256 % 1 = 0
    stor7 = 0x20dba9d9a3315f97f968257445bab9cf59e67d91
    stor8 = 3 * 10^17
    stor9 = 0
    stor10 = 3 * 10^16
    stor11 = 300000
    stor12 = 30 * 10^6
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor7 = msg.sender
    address(stor6.field_48) = code.data[6997 len 20]
    stor1[code.data[6997 len 20]] = stor9
    require stor9 <= stor8
    stor8 -= stor9
    require stor10 <= stor8 - stor9
    stor8 = stor8 - stor9 - stor10
    stor0 = stor8 - stor9 - stor10
    stor1[stor7] = stor8 - stor9 - stor10
    return code.data[767 len 6218]
}



// =====================  Runtime code  =====================


const price = 4 * 10^13

const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint8 stor6; offset 24
uint8 stor6; offset 32
uint8 stor6; offset 40
uint16 stor6; offset 8
uint32 stor6; offset 8
address stor6;
address founderAddress; offset 48
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
    return bool(uint8(stor6.field_24))
}

function stageOne() {
    return bool(uint8(stor6.field_16))
}

function presaleEtherRaised() {
    return presaleEtherRaised
}

function founder() {
    return founderAddress
}

function preTge() {
    return bool(uint8(stor6.field_8))
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
    return bool(uint8(stor6.field_0))
}

function presaleTokenSupply() {
    return presaleTokenSupply
}

function stageThree() {
    return bool(uint8(stor6.field_32))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function freeze() {
    require owner == msg.sender
    uint8(stor6.field_40) = 1
}

function unFreeze() {
    require owner == msg.sender
    uint8(stor6.field_40) = 0
}

function PreTgeEnable() {
    require owner == msg.sender
    uint8(stor6.field_8) = 1
}

function PreTgeDisable() {
    require owner == msg.sender
    uint8(stor6.field_8) = 0
}

function StageTwoEnable() {
    require owner == msg.sender
    uint8(stor6.field_24) = 1
}

function StageOneEnable() {
    require owner == msg.sender
    uint8(stor6.field_16) = 1
}

function StageTwoDisable() {
    require owner == msg.sender
    uint8(stor6.field_24) = 0
}

function StageOneDisable() {
    require owner == msg.sender
    uint8(stor6.field_16) = 0
}

function StageThreeEnable() {
    require owner == msg.sender
    uint8(stor6.field_32) = 1
}

function EventEmergencyStop() {
    require owner == msg.sender
    uint8(stor6.field_0) = 1
}

function StageThreeDisable() {
    require owner == msg.sender
    uint8(stor6.field_32) = 0
}

function EventEmergencyContinue() {
    require owner == msg.sender
    uint8(stor6.field_0) = 0
}

function changeOwner(address arg1) {
    require owner == msg.sender
    balanceOf[arg1] = balanceOf[stor7]
    balanceOf[stor7] = 0
    owner = arg1
}

function changeFounder(address arg1) {
    require owner == msg.sender
    balanceOf[arg1] = balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_48)] = 0
    founderAddress = arg1
}

function burnRemainingTokens() {
    require not uint8(stor6.field_0)
    require not uint8(stor6.field_40)
    require owner == msg.sender
    emit Burn(balanceOf[stor7], owner);
    balanceOf[stor7] = 0
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendBounty(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= bounty
    bounty -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    emit 0xeff18d5a: arg2, arg1
    emit Transfer(arg2, owner, arg1);
}

function sendSupplyTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= balanceOf[stor7]
    balanceOf[stor7] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xeff18d5a: arg2, arg1
    emit Transfer(arg2, owner, arg1);
}

function sendTeamTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xeff18d5a: arg2, arg1
    emit Transfer(arg2, owner, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_0)
    require not uint8(stor6.field_40)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor6.field_0)
    require not uint8(stor6.field_40)
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor6.field_0)
    require msg.value > 0
    require balanceOf[stor7] > msg.value / 4 * 10^13
    if uint8(stor6.field_32):
        stor6.field_8 % 16777216 = 0
    if not uint8(stor6.field_24):
        if not uint8(stor6.field_16):
            if uint8(stor6.field_8):
                require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + presaleTokenSupply < preTgeCap
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 4 * 10^13 / 2) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: ((msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13)), owner, msg.sender);
            else:
                require preTgeTokenSupply <= tgeCap
                require (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require (msg.value / 4 * 10^13) + presaleTokenSupply >= msg.value / 4 * 10^13
                require (msg.value / 4 * 10^13) + presaleTokenSupply < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= msg.value / 4 * 10^13
                balanceOf[address(msg.sender)] += msg.value / 4 * 10^13
                require msg.value / 4 * 10^13 <= balanceOf[stor7]
                balanceOf[stor7] -= msg.value / 4 * 10^13
                if uint8(stor6.field_8):
                    require (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require (msg.value / 4 * 10^13) + preTgeTokenSupply >= msg.value / 4 * 10^13
                    preTgeTokenSupply += msg.value / 4 * 10^13
                require (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require (msg.value / 4 * 10^13) + presaleTokenSupply >= msg.value / 4 * 10^13
                presaleTokenSupply += msg.value / 4 * 10^13
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 4 * 10^13, msg.sender);
                emit 0xeff18d5a: (msg.value / 4 * 10^13), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 4 * 10^13), owner, msg.sender);
        else:
            uint8(stor6.field_8) = 0
            if uint8(stor6.field_8):
                require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply < preTgeCap
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) - (msg.value / 4 * 10^13 / 5) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: (((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13)), owner, msg.sender);
            else:
                require preTgeTokenSupply <= tgeCap
                require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 4 * 10^13 / 5) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13)), owner, msg.sender);
    else:
        uint16(stor6.field_8) = 0
        if not uint8(stor6.field_16):
            if uint8(stor6.field_8):
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply < preTgeCap
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) - (msg.value / 4 * 10^13 / 10) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), owner, msg.sender);
            else:
                require preTgeTokenSupply <= tgeCap
                require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 4 * 10^13 / 10) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), owner, msg.sender);
        else:
            uint8(stor6.field_8) = 0
            if uint8(stor6.field_8):
                require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply < preTgeCap
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) - ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) - (msg.value / 4 * 10^13 / 10) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: ((((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), owner, msg.sender);
            else:
                require preTgeTokenSupply <= tgeCap
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) - (msg.value / 4 * 10^13 / 10) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), owner, msg.sender);
}

function buy() payable {
    require not uint8(stor6.field_0)
    require msg.value > 0
    require balanceOf[stor7] > msg.value / 4 * 10^13
    if uint8(stor6.field_32):
        stor6.field_8 % 16777216 = 0
    if not uint8(stor6.field_24):
        if not uint8(stor6.field_16):
            if uint8(stor6.field_8):
                require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + presaleTokenSupply < preTgeCap
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 4 * 10^13 / 2) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: ((msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 4 * 10^13 / 2) + (msg.value / 4 * 10^13)), owner, msg.sender);
            else:
                require preTgeTokenSupply <= tgeCap
                require (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require (msg.value / 4 * 10^13) + presaleTokenSupply >= msg.value / 4 * 10^13
                require (msg.value / 4 * 10^13) + presaleTokenSupply < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= msg.value / 4 * 10^13
                balanceOf[address(msg.sender)] += msg.value / 4 * 10^13
                require msg.value / 4 * 10^13 <= balanceOf[stor7]
                balanceOf[stor7] -= msg.value / 4 * 10^13
                if uint8(stor6.field_8):
                    require (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require (msg.value / 4 * 10^13) + preTgeTokenSupply >= msg.value / 4 * 10^13
                    preTgeTokenSupply += msg.value / 4 * 10^13
                require (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require (msg.value / 4 * 10^13) + presaleTokenSupply >= msg.value / 4 * 10^13
                presaleTokenSupply += msg.value / 4 * 10^13
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 4 * 10^13, msg.sender);
                emit 0xeff18d5a: (msg.value / 4 * 10^13), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 4 * 10^13), owner, msg.sender);
        else:
            uint8(stor6.field_8) = 0
            if uint8(stor6.field_8):
                require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply < preTgeCap
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) - (msg.value / 4 * 10^13 / 5) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: (((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13)), owner, msg.sender);
            else:
                require preTgeTokenSupply <= tgeCap
                require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 4 * 10^13 / 5) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: ((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 4 * 10^13 / 5) + (msg.value / 4 * 10^13)), owner, msg.sender);
    else:
        uint16(stor6.field_8) = 0
        if not uint8(stor6.field_16):
            if uint8(stor6.field_8):
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply < preTgeCap
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) - (msg.value / 4 * 10^13 / 10) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), owner, msg.sender);
            else:
                require preTgeTokenSupply <= tgeCap
                require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 4 * 10^13 / 10) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), owner, msg.sender);
        else:
            uint8(stor6.field_8) = 0
            if uint8(stor6.field_8):
                require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply < preTgeCap
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) - ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) - (msg.value / 4 * 10^13 / 10) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: ((((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 2) + ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), owner, msg.sender);
            else:
                require preTgeTokenSupply <= tgeCap
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply < tgeCap - preTgeTokenSupply
                call founderAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + balanceOf[address(msg.sender)]
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) - (msg.value / 4 * 10^13 / 10) - (msg.value / 4 * 10^13)
                if uint8(stor6.field_8):
                    require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply >= preTgeTokenSupply
                    require preTgeTokenSupply >= 0
                    preTgeTokenSupply = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + preTgeTokenSupply
                require ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply >= presaleTokenSupply
                require presaleTokenSupply >= 0
                presaleTokenSupply = ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) + presaleTokenSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                require msg.value + presaleEtherRaised >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, ((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13), msg.sender);
                emit 0xeff18d5a: (((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), msg.sender
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((((msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13) / 5) + (msg.value / 4 * 10^13 / 10) + (msg.value / 4 * 10^13)), owner, msg.sender);
    return 1
}



}
