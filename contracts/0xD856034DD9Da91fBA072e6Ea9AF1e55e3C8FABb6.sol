contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address stor14;
address stor15;
address stor16;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 24
    stor3.length.field_8 = 'Crypto Credit Card Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'CCCR' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    require not msg.value
    stor14 = code.data[5495 len 20]
    stor9 = 0
    stor6 = 0
    stor16 = msg.sender
    stor15 = code.data[5431 len 20]
    stor11 = code.data[5451 len 32]
    stor10 = block.timestamp
    stor12 = 10^stor5 * code.data[5515 len 32]
    stor13 = code.data[5547 len 32] * 10^stor5
    stor7 = code.data[5547 len 32] * 10^stor5
    stor1[address(msg.sender)] = code.data[5547 len 32] * 10^stor5
    emit Transfer((code.data[5547 len 32] * 10^stor5), 0, stor16);
    return code.data[600 len 4819]
}



// =====================  Runtime code  =====================


#
#  - bva(address arg1, uint256 arg2, uint256 arg3, address arg4)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 cntMembers;
uint256 totalSupply;
uint256 totalRaised;
uint256 sub_dec94e9f;
uint256 startTimestamp;
uint256 durationSeconds;
uint256 minCap;
uint256 maxCap;
address stuffAddress;
address founderAddress;
address baseowner;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function maxCap() {
    return maxCap
}

function minCap() {
    return minCap
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function durationSeconds() {
    return durationSeconds
}

function stuff() {
    return stuffAddress
}

function totalRaised() {
    return totalRaised
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function baseowner() {
    return baseowner
}

function sub_dec94e9f(?) {
    return sub_dec94e9f
}

function cntMembers() {
    return cntMembers
}

function startTimestamp() {
    return startTimestamp
}

function _fallback() {
    revert
}

function sub_965c2875(?) {
    if not arg1:
        return (10 * arg1 / 100)
    require arg1
    require 10 * arg1 / arg1 == 10
    return (10 * arg1 / 100)
}

function sub_ffc37983(?) {
    if not arg1:
        return (20 * arg1 / 100)
    require arg1
    require 20 * arg1 / arg1 == 20
    return (20 * arg1 / 100)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getIcoDeflator() {
    if block.timestamp <= startTimestamp + (336 * 24 * 3600):
        return 138
    if block.timestamp <= startTimestamp + (672 * 24 * 3600):
        return 123
    if block.timestamp > startTimestamp + (1008 * 24 * 3600):
        return 109
    return 115
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
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
    require block.timestamp >= startTimestamp
    if totalRaised < maxCap:
        require block.timestamp >= startTimestamp + durationSeconds
        require totalRaised >= minCap
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp >= startTimestamp
    if totalRaised < maxCap:
        require block.timestamp >= startTimestamp + durationSeconds
        require totalRaised >= minCap
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function finalize(uint256 arg1) payable {
    require block.timestamp >= startTimestamp
    if totalRaised < maxCap:
        require block.timestamp >= startTimestamp + durationSeconds
        require totalRaised >= minCap
    if stuffAddress == msg.sender:
        if founderAddress == msg.sender:
            call founderAddress with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        require founderAddress == msg.sender
        call founderAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function calculateTokenAmount(uint256 arg1) {
    if block.timestamp <= startTimestamp + (336 * 24 * 3600):
        if not arg1:
            return (138 * arg1 / 100)
        if arg1:
            if 138 * arg1 / arg1 == 138:
                return (138 * arg1 / 100)
    else:
        if block.timestamp <= startTimestamp + (672 * 24 * 3600):
            if not arg1:
                return (123 * arg1 / 100)
            if arg1:
                if 123 * arg1 / arg1 == 123:
                    return (123 * arg1 / 100)
        else:
            if block.timestamp > startTimestamp + (1008 * 24 * 3600):
                if not arg1:
                    return (109 * arg1 / 100)
                if arg1:
                    if 109 * arg1 / arg1 == 109:
                        return (109 * arg1 / 100)
            else:
                if not arg1:
                    return (115 * arg1 / 100)
                if arg1:
                    if 115 * arg1 / arg1 == 115:
                        return (115 * arg1 / 100)
    revert
}

function calculateTokenCount(uint256 arg1, uint256 arg2) {
    require arg2
    if block.timestamp <= startTimestamp + (336 * 24 * 3600):
        if arg2:
            if not arg1 / arg2:
                return (138 * arg1 / arg2 / 100)
            if arg1 / arg2:
                if 138 * arg1 / arg2 / arg1 / arg2 == 138:
                    return (138 * arg1 / arg2 / 100)
    else:
        if block.timestamp <= startTimestamp + (672 * 24 * 3600):
            if arg2:
                if not arg1 / arg2:
                    return (123 * arg1 / arg2 / 100)
                if arg1 / arg2:
                    if 123 * arg1 / arg2 / arg1 / arg2 == 123:
                        return (123 * arg1 / arg2 / 100)
        else:
            if block.timestamp > startTimestamp + (1008 * 24 * 3600):
                if arg2:
                    if not arg1 / arg2:
                        return (109 * arg1 / arg2 / 100)
                    if arg1 / arg2:
                        if 109 * arg1 / arg2 / arg1 / arg2 == 109:
                            return (109 * arg1 / arg2 / 100)
            else:
                if arg2:
                    if not arg1 / arg2:
                        return (115 * arg1 / arg2 / 100)
                    if arg1 / arg2:
                        if 115 * arg1 / arg2 / arg1 / arg2 == 115:
                            return (115 * arg1 / arg2 / 100)
    revert
}



}
