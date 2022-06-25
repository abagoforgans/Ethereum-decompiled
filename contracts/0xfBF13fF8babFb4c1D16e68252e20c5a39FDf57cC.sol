contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
address stor9; offset 16
uint256 stor9; offset 8
address stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 15
    stor3.length.field_8 = 'HiddenBit Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'HID' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 10^18
    stor7 = 1818
    stor8 = 1612
    uint8(stor9.field_0) = 0
    Mask(248, 0, stor9.field_8) = 1
    address(stor9.field_16) = 0
    stor10 = 0
    stor11 = 17 * 10^6
    stor12 = 7500000
    stor13 = 17 * 10^6
    stor14 = 17 * 10^6
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor10 = msg.sender
    address(stor9.field_16) = msg.sender
    require stor12 <= stor11
    stor11 -= stor12
    stor0 = stor11 * stor6
    stor1[stor10] = stor0
    return code.data[984 len 8745]
}



// =====================  Runtime code  =====================


const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 multiplier;
uint256 sub_b4454a10;
uint256 sub_14f4c54b;
uint8 stor9;
uint8 stor9; offset 8
address stor9;
address founderAddress; offset 16
uint256 stor9; offset 8
address owner;
uint256 totalTokens;
uint256 bounty;
uint256 preIcoCap;
uint256 icoCap;
uint256 presaleTokenSupply;
uint256 presaleEtherRaised;
uint256 preIcoTokenSupply;

function name() {
    return name[0 len name.length]
}

function sub_14f4c54b(?) {
    return sub_14f4c54b
}

function totalSupply() {
    return totalSupply
}

function multiplier() {
    return multiplier
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
    return bool(uint8(stor9.field_8))
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

function owner() {
    return owner
}

function bounty() {
    return bounty
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b4454a10(?) {
    return sub_b4454a10
}

function halted() {
    return bool(uint8(stor9.field_0))
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
    require msg.sender == owner
    uint8(stor9.field_0) = 1
}

function unHalt() {
    require msg.sender == owner
    uint8(stor9.field_0) = 0
}

function sub_0fa4bda0(?) {
    require msg.sender == owner
    sub_b4454a10 = arg1
}

function sub_806e0893(?) {
    require msg.sender == owner
    sub_14f4c54b = arg1
}

function unPreIco() {
    require msg.sender == owner
    Mask(248, 0, stor9.field_8) = 0
}

function setPreIco() {
    require msg.sender == owner
    Mask(248, 0, stor9.field_8) = 1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    balanceOf[address(arg1)] = balanceOf[stor10]
    balanceOf[stor10] = 0
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeFounder(address arg1) {
    require msg.sender == owner
    if founderAddress != owner:
        balanceOf[address(arg1)] = balanceOf[address(stor9.field_0)]
        balanceOf[address(stor9.field_0)] = 0
    founderAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor9.field_0)
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function price() {
    if not uint8(stor9.field_8):
        if sub_14f4c54b > 0:
            if sub_14f4c54b:
                if 10^18 == (sub_14f4c54b * 10^18 / sub_14f4c54b) + (10^18 % sub_14f4c54b):
                    return 0
    else:
        if sub_b4454a10 > 0:
            if sub_b4454a10:
                if 10^18 == (sub_b4454a10 * 10^18 / sub_b4454a10) + (10^18 % sub_b4454a10):
                    return (10^18 / sub_b4454a10)
    revert
}

function sendBounty(address arg1, uint256 arg2) {
    require msg.sender == owner
    require bounty > arg2
    require arg2 <= bounty
    bounty -= arg2
    require balanceOf[address(arg1)] + (arg2 * multiplier) >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + (arg2 * multiplier) >= arg2 * multiplier
    balanceOf[address(arg1)] += arg2 * multiplier
    emit TokensSent((arg2 * multiplier), arg1);
    emit Transfer((arg2 * multiplier), owner, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor9.field_0)
    require msg.sender == owner
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor9.field_0)
    require msg.value > 0
    if not uint8(stor9.field_8):
        require sub_14f4c54b > 0
        require sub_14f4c54b
        require 10^18 == (sub_14f4c54b * 10^18 / sub_14f4c54b) + (10^18 % sub_14f4c54b)
        revert
    else:
        require sub_b4454a10 > 0
        require sub_b4454a10
        require 10^18 == (sub_b4454a10 * 10^18 / sub_b4454a10) + (10^18 % sub_b4454a10)
        require 10^18 / sub_b4454a10
        require balanceOf[stor10] > msg.value / 10^18 / sub_b4454a10 * multiplier
        if not uint8(stor9.field_8):
            require preIcoTokenSupply <= icoCap
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) < icoCap - preIcoTokenSupply
            call founderAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / 10^18 / sub_b4454a10 * multiplier) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + (msg.value / 10^18 / sub_b4454a10 * multiplier) >= msg.value / 10^18 / sub_b4454a10 * multiplier
            balanceOf[address(msg.sender)] += msg.value / 10^18 / sub_b4454a10 * multiplier
            require msg.value / 10^18 / sub_b4454a10 * multiplier <= balanceOf[stor10]
            balanceOf[stor10] += -1 * msg.value / 10^18 / sub_b4454a10 * multiplier
            if not uint8(stor9.field_8):
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                presaleTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 10^18 / sub_b4454a10 * multiplier, msg.sender);
                emit TokensSent((msg.value / 10^18 / sub_b4454a10 * multiplier), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 10^18 / sub_b4454a10 * multiplier), owner, msg.sender);
            else:
                require preIcoTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= preIcoTokenSupply
                require preIcoTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                preIcoTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                presaleTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 10^18 / sub_b4454a10 * multiplier, msg.sender);
                emit TokensSent((msg.value / 10^18 / sub_b4454a10 * multiplier), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 10^18 / sub_b4454a10 * multiplier), owner, msg.sender);
        else:
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) < preIcoCap
            call founderAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / 10^18 / sub_b4454a10 * multiplier) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + (msg.value / 10^18 / sub_b4454a10 * multiplier) >= msg.value / 10^18 / sub_b4454a10 * multiplier
            balanceOf[address(msg.sender)] += msg.value / 10^18 / sub_b4454a10 * multiplier
            require msg.value / 10^18 / sub_b4454a10 * multiplier <= balanceOf[stor10]
            balanceOf[stor10] += -1 * msg.value / 10^18 / sub_b4454a10 * multiplier
            if not uint8(stor9.field_8):
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                presaleTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 10^18 / sub_b4454a10 * multiplier, msg.sender);
                emit TokensSent((msg.value / 10^18 / sub_b4454a10 * multiplier), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 10^18 / sub_b4454a10 * multiplier), owner, msg.sender);
            else:
                require preIcoTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= preIcoTokenSupply
                require preIcoTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                preIcoTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                presaleTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 10^18 / sub_b4454a10 * multiplier, msg.sender);
                emit TokensSent((msg.value / 10^18 / sub_b4454a10 * multiplier), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 10^18 / sub_b4454a10 * multiplier), owner, msg.sender);
}

function buy() payable {
    require not uint8(stor9.field_0)
    require msg.value > 0
    if not uint8(stor9.field_8):
        require sub_14f4c54b > 0
        require sub_14f4c54b
        require 10^18 == (sub_14f4c54b * 10^18 / sub_14f4c54b) + (10^18 % sub_14f4c54b)
        revert
    else:
        require sub_b4454a10 > 0
        require sub_b4454a10
        require 10^18 == (sub_b4454a10 * 10^18 / sub_b4454a10) + (10^18 % sub_b4454a10)
        require 10^18 / sub_b4454a10
        require balanceOf[stor10] > msg.value / 10^18 / sub_b4454a10 * multiplier
        if not uint8(stor9.field_8):
            require preIcoTokenSupply <= icoCap
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) < icoCap - preIcoTokenSupply
            call founderAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / 10^18 / sub_b4454a10 * multiplier) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + (msg.value / 10^18 / sub_b4454a10 * multiplier) >= msg.value / 10^18 / sub_b4454a10 * multiplier
            balanceOf[address(msg.sender)] += msg.value / 10^18 / sub_b4454a10 * multiplier
            require msg.value / 10^18 / sub_b4454a10 * multiplier <= balanceOf[stor10]
            balanceOf[stor10] += -1 * msg.value / 10^18 / sub_b4454a10 * multiplier
            if not uint8(stor9.field_8):
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                presaleTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 10^18 / sub_b4454a10 * multiplier, msg.sender);
                emit TokensSent((msg.value / 10^18 / sub_b4454a10 * multiplier), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 10^18 / sub_b4454a10 * multiplier), owner, msg.sender);
                return 1
            else:
                require preIcoTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= preIcoTokenSupply
                require preIcoTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                preIcoTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                presaleTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 10^18 / sub_b4454a10 * multiplier, msg.sender);
                emit TokensSent((msg.value / 10^18 / sub_b4454a10 * multiplier), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 10^18 / sub_b4454a10 * multiplier), owner, msg.sender);
                return 1
        else:
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
            require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) < preIcoCap
            call founderAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / 10^18 / sub_b4454a10 * multiplier) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + (msg.value / 10^18 / sub_b4454a10 * multiplier) >= msg.value / 10^18 / sub_b4454a10 * multiplier
            balanceOf[address(msg.sender)] += msg.value / 10^18 / sub_b4454a10 * multiplier
            require msg.value / 10^18 / sub_b4454a10 * multiplier <= balanceOf[stor10]
            balanceOf[stor10] += -1 * msg.value / 10^18 / sub_b4454a10 * multiplier
            if not uint8(stor9.field_8):
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                presaleTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 10^18 / sub_b4454a10 * multiplier, msg.sender);
                emit TokensSent((msg.value / 10^18 / sub_b4454a10 * multiplier), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 10^18 / sub_b4454a10 * multiplier), owner, msg.sender);
                return 1
            else:
                require preIcoTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= preIcoTokenSupply
                require preIcoTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                preIcoTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= presaleTokenSupply
                require presaleTokenSupply + (msg.value / 10^18 / sub_b4454a10) >= msg.value / 10^18 / sub_b4454a10
                presaleTokenSupply += msg.value / 10^18 / sub_b4454a10
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                emit Buy(msg.value, msg.value / 10^18 / sub_b4454a10 * multiplier, msg.sender);
                emit TokensSent((msg.value / 10^18 / sub_b4454a10 * multiplier), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 10^18 / sub_b4454a10 * multiplier), owner, msg.sender);
                return 1
}



}
