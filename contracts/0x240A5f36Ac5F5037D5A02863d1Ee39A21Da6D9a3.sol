contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor6; offset 8
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor3 = 50000000 * 10^18
    stor4 = 30000000 * 10^18
    mem[96] = 30
    mem[128] = 20
    mem[160] = 10
    mem[192] = 0
    s = 0
    idx = 96
    while 224 > idx:
        stor5 = mem[idx + 31 len 1] * 256^s or !(65535 * 256^s) and stor5
        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
        idx = idx + 32
        continue 
    idx = 8
    s = 5
    while idx:
        uint256(stor[s]) = !(65535 * 256^idx) and uint256(stor[s])
        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
        s = (idx + 3 / 32) + s
        continue 
    idx = (Mask(254, 1, None - 5) + 11 / 32 * uint255(None - 5) >> 1) + 5
    while 6 > idx:
        uint16(stor[idx]) = 0
        idx = idx + 1
        continue 
    uint8(stor6.field_0) = 0
    Mask(248, 0, stor6.field_8) = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    require not msg.value
    return code.data[419 len 8800]
}



// =====================  Runtime code  =====================


const name = 'CompletelyDecentralizedWorld'

const addr_communityBuildingToken = 0x8e5a7df3fdbbb467a1d6feed337ec2e1938aab3f

const decimals = 18

const symbol = 'CDW'

const target = 0xead3346c806803e1500d96b9a2d7065d0526caf6

const addr_teamPartToken = 0x898f9ca9cf198e059396337a7bbbbbed59856089

const HARD_CAP = 20000 * 10^18

const BASE_RATE = 25000

const NUM_OF_PHASE = 4

const BLOCK_PER_PHASE = 150000


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor3;
uint256 stor4;
array of uint16 bonusPercentages;
uint8 stor6;
uint8 stor6; offset 8
uint256 stor6; offset 8
uint256 firstblock;
uint256 totalEthReceived;
uint256 issueIndex;

function totalSupply() {
    return totalSupply
}

function bonusPercentages(uint256 arg1) {
    require arg1 < 4
    return bonusPercentages[uint8(arg1)].field_0
}

function issueIndex() {
    return issueIndex
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalEthReceived() {
    return totalEthReceived
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function firstblock() {
    return firstblock
}

function saleDue() {
    return block.number >= firstblock + 600000
}

function hardCapReached() {
    return totalEthReceived >= 20000 * 10^18
}

function saleStarted() {
    if firstblock <= 0:
        return (firstblock > 0)
    return block.number >= firstblock
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function saleEnded() {
    if firstblock <= 0:
        return (firstblock > 0)
    if block.number >= firstblock + 600000:
        return block.number >= firstblock + 600000
    return totalEthReceived >= 20000 * 10^18
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
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function price() {
    if block.number - firstblock / 150000 >= 4:
        if 25000 * 10^18 * bonusPercentages.length.field_48 / 25000 * 10^18 == bonusPercentages.length.field_48:
            if (25000 * 10^18 * bonusPercentages.length.field_48 / 100) + 25000 * 10^18 >= 25000 * 10^18:
                return ((25000 * 10^18 * bonusPercentages.length.field_48 / 100) + 25000 * 10^18)
    else:
        if block.number - firstblock / 150000 < 4:
            if 25000 * 10^18 * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 25000 * 10^18 == bonusPercentages[uint8(block.number - stor7 / 150000)].field_0:
                if (25000 * 10^18 * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100) + 25000 * 10^18 >= 25000 * 10^18:
                    return ((25000 * 10^18 * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100) + 25000 * 10^18)
    revert
}

function start(uint256 arg1) {
    if msg.sender != 0xead3346c806803e1500d96b9a2d7065d0526caf6:
        emit InvalidCaller(msg.sender);
        revert
    if firstblock > 0:
        if block.number >= firstblock:
            emit InvalidState(Array(len=24, data='Sale has not started yet'));
            revert
    require arg1 > block.number
    firstblock = arg1
    emit SaleStarted()
    if uint8(stor6.field_0):
        emit InvalidState(Array(len=37, data='teamPartToken has been issued al', 'ready'));
    else:
        require totalSupply + stor3 >= totalSupply
        totalSupply += stor3
        require balanceOf[0x898f9ca9cf198e059396337a7bbbbbed59856089] + stor3 >= balanceOf[0x898f9ca9cf198e059396337a7bbbbbed59856089]
        balanceOf[0x898f9ca9cf198e059396337a7bbbbbed59856089] += stor3
        issueIndex++
        emit Issue(issueIndex, 0x898f9ca9cf198e059396337a7bbbbbed59856089, 0, stor3);
        uint8(stor6.field_0) = 1
    if uint8(stor6.field_8):
        emit InvalidState(Array(len=46, data='communityBuildingToken has been ', 'issued already'));
    else:
        require totalSupply + stor4 >= totalSupply
        totalSupply += stor4
        require balanceOf[0x8e5a7df3fdbbb467a1d6feed337ec2e1938aab3f] + stor4 >= balanceOf[0x8e5a7df3fdbbb467a1d6feed337ec2e1938aab3f]
        balanceOf[0x8e5a7df3fdbbb467a1d6feed337ec2e1938aab3f] += stor4
        issueIndex++
        emit Issue(issueIndex, 0x8e5a7df3fdbbb467a1d6feed337ec2e1938aab3f, 0, stor4);
        Mask(248, 0, stor6.field_8) = 1
}

function close() {
    if msg.sender != 0xead3346c806803e1500d96b9a2d7065d0526caf6:
        emit InvalidCaller(msg.sender);
        revert
    if firstblock <= 0:
        emit InvalidState(Array(len=21, data='Sale is not ended yet'));
        revert
    if block.number < firstblock + 600000:
        if totalEthReceived < 20000 * 10^18:
            emit InvalidState(Array(len=21, data='Sale is not ended yet'));
            revert
    if uint8(stor6.field_0):
        emit InvalidState(Array(len=37, data='teamPartToken has been issued al', 'ready'));
    else:
        require totalSupply + stor3 >= totalSupply
        totalSupply += stor3
        require balanceOf[0x898f9ca9cf198e059396337a7bbbbbed59856089] + stor3 >= balanceOf[0x898f9ca9cf198e059396337a7bbbbbed59856089]
        balanceOf[0x898f9ca9cf198e059396337a7bbbbbed59856089] += stor3
        issueIndex++
        emit Issue(issueIndex, 0x898f9ca9cf198e059396337a7bbbbbed59856089, 0, stor3);
        uint8(stor6.field_0) = 1
    if uint8(stor6.field_8):
        emit InvalidState(Array(len=46, data='communityBuildingToken has been ', 'issued already'));
    else:
        require totalSupply + stor4 >= totalSupply
        totalSupply += stor4
        require balanceOf[0x8e5a7df3fdbbb467a1d6feed337ec2e1938aab3f] + stor4 >= balanceOf[0x8e5a7df3fdbbb467a1d6feed337ec2e1938aab3f]
        balanceOf[0x8e5a7df3fdbbb467a1d6feed337ec2e1938aab3f] += stor4
        issueIndex++
        emit Issue(issueIndex, 0x8e5a7df3fdbbb467a1d6feed337ec2e1938aab3f, 0, stor4);
        Mask(248, 0, stor6.field_8) = 1
    emit SaleSucceeded()
}

function issueToken(address arg1) payable {
    if firstblock <= 0:
        emit InvalidState(Array(len=23, data='Sale is not in Progress'));
        revert
    if block.number < firstblock:
        emit InvalidState(Array(len=23, data='Sale is not in Progress'));
        revert
    if firstblock > 0:
        if block.number >= firstblock + 600000:
            emit InvalidState(Array(len=23, data='Sale is not in Progress'));
            revert
        if totalEthReceived >= 20000 * 10^18:
            emit InvalidState(Array(len=23, data='Sale is not in Progress'));
            revert
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require 25000 * msg.value / msg.value == 25000
    if block.number - firstblock / 150000 >= 4:
        if 25000 * msg.value:
            require 25000 * msg.value
            require 25000 * msg.value * bonusPercentages.length.field_48 / 25000 * msg.value == bonusPercentages.length.field_48
        require (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100) >= 25000 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require totalSupply + (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100) >= totalSupply
        totalSupply = totalSupply + (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100)
        require balanceOf[address(arg1)] + (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100)
        issueIndex++
        emit Issue(issueIndex, address(arg1), msg.value, (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100));
    else:
        require block.number - firstblock / 150000 < 4
        if 25000 * msg.value:
            require 25000 * msg.value
            require 25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 25000 * msg.value == bonusPercentages[uint8(block.number - stor7 / 150000)].field_0
        require (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100) >= 25000 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require totalSupply + (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100) >= totalSupply
        totalSupply = totalSupply + (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100)
        require balanceOf[address(arg1)] + (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100)
        issueIndex++
        emit Issue(issueIndex, address(arg1), msg.value, (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100));
    call 0xead3346c806803e1500d96b9a2d7065d0526caf6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if firstblock <= 0:
        emit InvalidState(Array(len=23, data='Sale is not in Progress'));
        revert
    if block.number < firstblock:
        emit InvalidState(Array(len=23, data='Sale is not in Progress'));
        revert
    if firstblock > 0:
        if block.number >= firstblock + 600000:
            emit InvalidState(Array(len=23, data='Sale is not in Progress'));
            revert
        if totalEthReceived >= 20000 * 10^18:
            emit InvalidState(Array(len=23, data='Sale is not in Progress'));
            revert
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require 25000 * msg.value / msg.value == 25000
    if block.number - firstblock / 150000 >= 4:
        if 25000 * msg.value:
            require 25000 * msg.value
            require 25000 * msg.value * bonusPercentages.length.field_48 / 25000 * msg.value == bonusPercentages.length.field_48
        require (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100) >= 25000 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require totalSupply + (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100) >= totalSupply
        totalSupply = totalSupply + (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100)
        require balanceOf[address(msg.sender)] + (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100)
        issueIndex++
        emit Issue(issueIndex, msg.sender, msg.value, (25000 * msg.value) + (25000 * msg.value * bonusPercentages.length.field_48 / 100));
    else:
        require block.number - firstblock / 150000 < 4
        if 25000 * msg.value:
            require 25000 * msg.value
            require 25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 25000 * msg.value == bonusPercentages[uint8(block.number - stor7 / 150000)].field_0
        require (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100) >= 25000 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require totalSupply + (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100) >= totalSupply
        totalSupply = totalSupply + (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100)
        require balanceOf[address(msg.sender)] + (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100)
        issueIndex++
        emit Issue(issueIndex, msg.sender, msg.value, (25000 * msg.value) + (25000 * msg.value * bonusPercentages[uint8(block.number - stor7 / 150000)].field_0 / 100));
    call 0xead3346c806803e1500d96b9a2d7065d0526caf6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
