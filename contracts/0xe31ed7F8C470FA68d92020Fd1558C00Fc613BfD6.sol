contract main {


// =======================  Init code  ======================


uint256 stor3;
uint8 stor4; offset 152
address stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    mem[96] = 28
    mem[128] = 24
    mem[160] = 20
    mem[192] = 16
    mem[224] = 14
    mem[256] = 12
    mem[288] = 10
    mem[320] = 8
    mem[352] = 6
    mem[384] = 4
    mem[416] = 2
    mem[448] = 0
    s = 0
    idx = 96
    while 480 > idx:
        stor3 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor3
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 12
    s = 3
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-10 * None + 3 / 32) + (None * None + 3 / 32) + 3
    while 4 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
    Mask(152, 0, stor4.field_0) = 0x5a29c9d5e5c881b05cffd30c386f485b9d2f8b
    uint8(stor4.field_152) = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    return code.data[526 len 6852]
}



// =====================  Runtime code  =====================


const DECIMALS = 18

const BLOCKS_PER_PHASE = 20160

const MAX_UNSOLD_RATIO = 675

const HARD_CAP = (185185 * 10^15 * 3600)

const BASE_RATE = 10^6

const GOAL = 10^18

const NAME = 'SongLiToken'

const NUM_OF_PHASE = 12

const SYMBOL = 'SLT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint8 bonusPercentages;
address targetAddress;
uint256 firstblock;
uint8 stor6;
uint256 totalEthReceived;
uint256 issueIndex;

function totalSupply() {
    return totalSupply
}

function bonusPercentages(uint256 arg1) {
    require arg1 < 12
    return bonusPercentages[uint8(arg1)].field_0
}

function issueIndex() {
    return issueIndex
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function unsoldTokenIssued() {
    return bool(stor6)
}

function totalEthReceived() {
    return totalEthReceived
}

function target() {
    return targetAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function firstblock() {
    return firstblock
}

function saleDue() {
    return block.number >= firstblock + 241920
}

function hardCapReached() {
    return totalEthReceived >= 185185 * 10^15 * 3600
}

function saleStarted() {
    if firstblock <= 0:
        return (firstblock > 0)
    return block.number >= firstblock
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function saleEnded() {
    if firstblock <= 0:
        return (firstblock > 0)
    if block.number >= firstblock + 241920:
        return block.number >= firstblock + 241920
    return totalEthReceived >= 185185 * 10^15 * 3600
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function start(uint256 arg1) {
    if targetAddress != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    if firstblock > 0:
        if block.number >= firstblock:
            emit InvalidState(Array(len=24, data='Sale has not started yet'));
            revert
    require arg1 > block.number
    firstblock = arg1
    emit SaleStarted()
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function price() {
    if block.number - firstblock / 20160 >= 12:
        require 1000000 * 10^18 * bonusPercentages.length.field_88 / 1000000 * 10^18 == bonusPercentages.length.field_88
        require (1000000 * 10^18 * bonusPercentages.length.field_88 / 100) + 1000000 * 10^18 >= 1000000 * 10^18
        return ((1000000 * 10^18 * bonusPercentages.length.field_88 / 100) + 1000000 * 10^18)
    require block.number - firstblock / 20160 < 12
    require 1000000 * 10^18 * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 1000000 * 10^18 == bonusPercentages[uint8(block.number - stor5 / 20160)].field_0
    require (1000000 * 10^18 * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100) + 1000000 * 10^18 >= 1000000 * 10^18
    return ((1000000 * 10^18 * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100) + 1000000 * 10^18)
}

function close() {
    if targetAddress != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    if firstblock <= 0:
        emit InvalidState(Array(len=21, data='Sale is not ended yet'));
        revert
    if block.number < firstblock + 241920:
        if totalEthReceived < 185185 * 10^15 * 3600:
            emit InvalidState(Array(len=21, data='Sale is not ended yet'));
            revert
    if totalEthReceived < 10^18:
        emit SaleFailed()
    else:
        if stor6:
            emit InvalidState(Array(len=36, data='Unsold token has been issued alr', 'eady'));
        else:
            require totalEthReceived >= 10^18
            require 10^18 <= totalEthReceived
            if totalEthReceived - 10^18 / 10000 * 10^18 > 7:
                if totalSupply / 500:
                    require totalSupply / 500
                    require 500 * totalSupply / 500 / totalSupply / 500 == 500
                require totalSupply + (500 * totalSupply / 500) >= totalSupply
                totalSupply += 500 * totalSupply / 500
                require balanceOf[stor4] + (500 * totalSupply / 500) >= balanceOf[stor4]
                balanceOf[stor4] += 500 * totalSupply / 500
                issueIndex++
                emit Issue(issueIndex, targetAddress, 0, 500 * totalSupply / 500);
            else:
                require (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325
                if totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325:
                    require totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325
                    require (675 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325) - (25 * totalEthReceived - 10^18 / 10000 * 10^18 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325) / totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325 == (-25 * totalEthReceived - 10^18 / 10000 * 10^18) + 675
                require totalSupply + (675 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325) - (25 * totalEthReceived - 10^18 / 10000 * 10^18 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325) >= totalSupply
                totalSupply = totalSupply + (675 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325) - (25 * totalEthReceived - 10^18 / 10000 * 10^18 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325)
                require balanceOf[stor4] + (675 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325) - (25 * totalEthReceived - 10^18 / 10000 * 10^18 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325) >= balanceOf[stor4]
                balanceOf[stor4] = balanceOf[stor4] + (675 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325) - (25 * totalEthReceived - 10^18 / 10000 * 10^18 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325)
                issueIndex++
                emit Issue(issueIndex, targetAddress, 0, (675 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325) - (25 * totalEthReceived - 10^18 / 10000 * 10^18 * totalSupply / (25 * totalEthReceived - 10^18 / 10000 * 10^18) + 325));
            stor6 = 1
        emit SaleSucceeded()
}

function issueToken(address arg1) payable {
    if firstblock <= 0:
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
        revert
    if block.number < firstblock:
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
        revert
    if firstblock > 0:
        if block.number >= firstblock + 241920:
            emit InvalidState(Array(len=23, data='Sale is not in progress'));
            revert
        if totalEthReceived >= 185185 * 10^15 * 3600:
            emit InvalidState(Array(len=23, data='Sale is not in progress'));
            revert
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require 10^6 * msg.value / msg.value == 10^6
    if block.number - firstblock / 20160 >= 12:
        if 10^6 * msg.value:
            require 10^6 * msg.value
            require 10^6 * msg.value * bonusPercentages.length.field_88 / 10^6 * msg.value == bonusPercentages.length.field_88
        require (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100) >= 10^6 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require totalSupply + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100) >= totalSupply
        totalSupply = totalSupply + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100)
        require balanceOf[address(arg1)] + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100)
        issueIndex++
        emit Issue(issueIndex, address(arg1), msg.value, (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100));
    else:
        require block.number - firstblock / 20160 < 12
        if 10^6 * msg.value:
            require 10^6 * msg.value
            require 10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 10^6 * msg.value == bonusPercentages[uint8(block.number - stor5 / 20160)].field_0
        require (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100) >= 10^6 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require totalSupply + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100) >= totalSupply
        totalSupply = totalSupply + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100)
        require balanceOf[address(arg1)] + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100)
        issueIndex++
        emit Issue(issueIndex, address(arg1), msg.value, (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100));
    call targetAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if firstblock <= 0:
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
        revert
    if block.number < firstblock:
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
        revert
    if firstblock > 0:
        if block.number >= firstblock + 241920:
            emit InvalidState(Array(len=23, data='Sale is not in progress'));
            revert
        if totalEthReceived >= 185185 * 10^15 * 3600:
            emit InvalidState(Array(len=23, data='Sale is not in progress'));
            revert
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require 10^6 * msg.value / msg.value == 10^6
    if block.number - firstblock / 20160 >= 12:
        if 10^6 * msg.value:
            require 10^6 * msg.value
            require 10^6 * msg.value * bonusPercentages.length.field_88 / 10^6 * msg.value == bonusPercentages.length.field_88
        require (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100) >= 10^6 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require totalSupply + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100) >= totalSupply
        totalSupply = totalSupply + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100)
        require balanceOf[address(msg.sender)] + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100)
        issueIndex++
        emit Issue(issueIndex, msg.sender, msg.value, (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages.length.field_88 / 100));
    else:
        require block.number - firstblock / 20160 < 12
        if 10^6 * msg.value:
            require 10^6 * msg.value
            require 10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 10^6 * msg.value == bonusPercentages[uint8(block.number - stor5 / 20160)].field_0
        require (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100) >= 10^6 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require totalSupply + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100) >= totalSupply
        totalSupply = totalSupply + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100)
        require balanceOf[address(msg.sender)] + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100)
        issueIndex++
        emit Issue(issueIndex, msg.sender, msg.value, (10^6 * msg.value) + (10^6 * msg.value * bonusPercentages[uint8(block.number - stor5 / 20160)].field_0 / 100));
    call targetAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
