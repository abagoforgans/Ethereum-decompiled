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
address stor6; offset 16
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
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'QVT' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'QVT' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    uint8(stor6.field_0) = 0
    uint8(stor6.field_8) = 1
    address(stor6.field_16) = 0
    stor6.field_256 % 1 = 0
    stor7 = 0
    stor8 = 218750000
    stor9 = 41562500
    stor10 = 2187500
    stor11 = 17500000
    stor12 = 175 * 10^6
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor7 = msg.sender
    address(stor6.field_16) = code.data[5007 len 20]
    stor1[code.data[5007 len 20]] = stor9
    require stor9 <= stor8
    stor8 -= stor9
    require stor10 <= stor8 - stor9
    stor8 = stor8 - stor9 - stor10
    stor0 = stor8 - stor9 - stor10
    return code.data[658 len 4337]
}



// =====================  Runtime code  =====================


const price = 10^15

const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor6;
uint8 stor6; offset 8
address stor6;
address founderAddress; offset 16
address owner;
uint256 totalTokens;
uint256 team;
uint256 bounty;
uint256 preIcoCap;
uint256 icoCap;
uint256 presaleTokenSupply;
uint256 presaleEtherRaised;
uint256 preIcoTokenSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function preIcoTokenSupply() {
    return preIcoTokenSupply
}

function decimals() {
    return decimals
}

function presaleEtherRaised() {
    return presaleEtherRaised
}

function preIco() {
    return bool(uint8(stor6.field_8))
}

function founder() {
    return founderAddress
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

function owner() {
    return owner
}

function bounty() {
    return bounty
}

function symbol() {
    return symbol[0 len symbol.length]
}

function halted() {
    return bool(uint8(stor6.field_0))
}

function presaleTokenSupply() {
    return presaleTokenSupply
}

function preIcoCap() {
    return preIcoCap
}

function icoCap() {
    return icoCap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function halt() {
    require owner == msg.sender
    uint8(stor6.field_0) = 1
}

function unHalt() {
    require owner == msg.sender
    uint8(stor6.field_0) = 0
}

function unPreIco() {
    require owner == msg.sender
    uint8(stor6.field_8) = 0
}

function setPreIco() {
    require owner == msg.sender
    uint8(stor6.field_8) = 1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function burnRemainingTokens() {
    require not uint8(stor6.field_0)
    require owner == msg.sender
    totalSupply = 0
}

function changeFounder(address arg1) {
    require owner == msg.sender
    balanceOf[arg1] = balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_16)] = 0
    founderAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendTeamTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= bounty
    bounty -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
}

function sendBounty(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_0)
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
    require totalSupply > msg.value / 10^15
    if uint8(stor6.field_8):
        require (msg.value / 10^15 / 2) + (msg.value / 10^15) + presaleTokenSupply >= presaleTokenSupply
        require presaleTokenSupply >= 0
        require (msg.value / 10^15 / 2) + (msg.value / 10^15) + presaleTokenSupply < preIcoCap
        call founderAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require (msg.value / 10^15 / 2) + (msg.value / 10^15) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= 0
        balanceOf[address(msg.sender)] = (msg.value / 10^15 / 2) + (msg.value / 10^15) + balanceOf[address(msg.sender)]
        require (msg.value / 10^15 / 2) + (msg.value / 10^15) <= totalSupply
        totalSupply = totalSupply - (msg.value / 10^15 / 2) - (msg.value / 10^15)
        if uint8(stor6.field_8):
            require (msg.value / 10^15 / 2) + (msg.value / 10^15) + preIcoTokenSupply >= preIcoTokenSupply
            require preIcoTokenSupply >= 0
            preIcoTokenSupply = (msg.value / 10^15 / 2) + (msg.value / 10^15) + preIcoTokenSupply
        require (msg.value / 10^15 / 2) + (msg.value / 10^15) + presaleTokenSupply >= presaleTokenSupply
        require presaleTokenSupply >= 0
        presaleTokenSupply = (msg.value / 10^15 / 2) + (msg.value / 10^15) + presaleTokenSupply
        require msg.value + presaleEtherRaised >= presaleEtherRaised
        require msg.value + presaleEtherRaised >= msg.value
        presaleEtherRaised += msg.value
        emit Buy(msg.value, (msg.value / 10^15 / 2) + (msg.value / 10^15), msg.sender);
    else:
        require preIcoTokenSupply <= icoCap
        require (msg.value / 10^15) + presaleTokenSupply >= presaleTokenSupply
        require (msg.value / 10^15) + presaleTokenSupply >= msg.value / 10^15
        require (msg.value / 10^15) + presaleTokenSupply < icoCap - preIcoTokenSupply
        call founderAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require (msg.value / 10^15) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require (msg.value / 10^15) + balanceOf[address(msg.sender)] >= msg.value / 10^15
        balanceOf[address(msg.sender)] += msg.value / 10^15
        require msg.value / 10^15 <= totalSupply
        totalSupply -= msg.value / 10^15
        if uint8(stor6.field_8):
            require (msg.value / 10^15) + preIcoTokenSupply >= preIcoTokenSupply
            require (msg.value / 10^15) + preIcoTokenSupply >= msg.value / 10^15
            preIcoTokenSupply += msg.value / 10^15
        require (msg.value / 10^15) + presaleTokenSupply >= presaleTokenSupply
        require (msg.value / 10^15) + presaleTokenSupply >= msg.value / 10^15
        presaleTokenSupply += msg.value / 10^15
        require msg.value + presaleEtherRaised >= presaleEtherRaised
        require msg.value + presaleEtherRaised >= msg.value
        presaleEtherRaised += msg.value
        emit Buy(msg.value, msg.value / 10^15, msg.sender);
}

function buy() payable {
    require not uint8(stor6.field_0)
    require msg.value > 0
    require totalSupply > msg.value / 10^15
    if uint8(stor6.field_8):
        require (msg.value / 10^15 / 2) + (msg.value / 10^15) + presaleTokenSupply >= presaleTokenSupply
        require presaleTokenSupply >= 0
        require (msg.value / 10^15 / 2) + (msg.value / 10^15) + presaleTokenSupply < preIcoCap
        call founderAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require (msg.value / 10^15 / 2) + (msg.value / 10^15) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= 0
        balanceOf[address(msg.sender)] = (msg.value / 10^15 / 2) + (msg.value / 10^15) + balanceOf[address(msg.sender)]
        require (msg.value / 10^15 / 2) + (msg.value / 10^15) <= totalSupply
        totalSupply = totalSupply - (msg.value / 10^15 / 2) - (msg.value / 10^15)
        if uint8(stor6.field_8):
            require (msg.value / 10^15 / 2) + (msg.value / 10^15) + preIcoTokenSupply >= preIcoTokenSupply
            require preIcoTokenSupply >= 0
            preIcoTokenSupply = (msg.value / 10^15 / 2) + (msg.value / 10^15) + preIcoTokenSupply
        require (msg.value / 10^15 / 2) + (msg.value / 10^15) + presaleTokenSupply >= presaleTokenSupply
        require presaleTokenSupply >= 0
        presaleTokenSupply = (msg.value / 10^15 / 2) + (msg.value / 10^15) + presaleTokenSupply
        require msg.value + presaleEtherRaised >= presaleEtherRaised
        require msg.value + presaleEtherRaised >= msg.value
        presaleEtherRaised += msg.value
        emit Buy(msg.value, (msg.value / 10^15 / 2) + (msg.value / 10^15), msg.sender);
    else:
        require preIcoTokenSupply <= icoCap
        require (msg.value / 10^15) + presaleTokenSupply >= presaleTokenSupply
        require (msg.value / 10^15) + presaleTokenSupply >= msg.value / 10^15
        require (msg.value / 10^15) + presaleTokenSupply < icoCap - preIcoTokenSupply
        call founderAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require (msg.value / 10^15) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require (msg.value / 10^15) + balanceOf[address(msg.sender)] >= msg.value / 10^15
        balanceOf[address(msg.sender)] += msg.value / 10^15
        require msg.value / 10^15 <= totalSupply
        totalSupply -= msg.value / 10^15
        if uint8(stor6.field_8):
            require (msg.value / 10^15) + preIcoTokenSupply >= preIcoTokenSupply
            require (msg.value / 10^15) + preIcoTokenSupply >= msg.value / 10^15
            preIcoTokenSupply += msg.value / 10^15
        require (msg.value / 10^15) + presaleTokenSupply >= presaleTokenSupply
        require (msg.value / 10^15) + presaleTokenSupply >= msg.value / 10^15
        presaleTokenSupply += msg.value / 10^15
        require msg.value + presaleEtherRaised >= presaleEtherRaised
        require msg.value + presaleEtherRaised >= msg.value
        presaleEtherRaised += msg.value
        emit Buy(msg.value, msg.value / 10^15, msg.sender);
    return 1
}



}
