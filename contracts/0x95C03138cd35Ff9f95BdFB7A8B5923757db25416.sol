contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor3;
address stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    mem[96] = 20
    mem[128] = 10
    mem[160] = 0
    s = 0
    idx = 96
    while 192 > idx:
        stor3 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor3
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 3
    s = 3
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = -(None + 3 / 32) + (None * None + 3 / 32) + 3
    while 4 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    stor4 = code.data[6800 len 20]
    stor0 = 100000000 * 10^18
    stor1[stor4] = stor0
    return code.data[570 len 6218]
}



// =====================  Runtime code  =====================


const DECIMALS = 18

const BLOCKS_PER_PHASE = 1500

const HARD_CAP = 10^17

const BASE_RATE = 1000

const GOAL = 5 * 10^16

const NAME = 'HPBCoin'

const NUM_OF_PHASE = 3

const SYMBOL = 'HPB1'


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
    require arg1 < 10
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

function hardCapReached() {
    return totalEthReceived >= 10^17
}

function saleDue() {
    return block.number >= firstblock + 4500
}

function saleStarted() {
    if firstblock <= 0:
        return (firstblock > 0)
    return block.number >= firstblock
}

function saleEnded() {
    if firstblock <= 0:
        return (firstblock > 0)
    if block.number >= firstblock + 4500:
        return block.number >= firstblock + 4500
    return totalEthReceived >= 10^17
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function close() {
    if targetAddress != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    if firstblock <= 0:
        emit InvalidState(Array(len=21, data='Sale is not ended yet'));
        revert
    if block.number < firstblock + 4500:
        if totalEthReceived < 10^17:
            emit InvalidState(Array(len=21, data='Sale is not ended yet'));
            revert
    if totalEthReceived >= 5 * 10^16:
        emit SaleSucceeded()
    else:
        emit SaleFailed()
}

function price() {
    if block.number - firstblock / 1500 >= 10:
        require 1000 * 10^18 * bonusPercentages.length.field_72 / 1000 * 10^18 == bonusPercentages.length.field_72
        require (1000 * 10^18 * bonusPercentages.length.field_72 / 100) + 1000 * 10^18 >= 1000 * 10^18
        return ((1000 * 10^18 * bonusPercentages.length.field_72 / 100) + 1000 * 10^18)
    require block.number - firstblock / 1500 < 10
    require 1000 * 10^18 * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 1000 * 10^18 == bonusPercentages[uint8(block.number - stor5 / 1500)].field_0
    require (1000 * 10^18 * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100) + 1000 * 10^18 >= 1000 * 10^18
    return ((1000 * 10^18 * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100) + 1000 * 10^18)
}

function _fallback() payable {
    if firstblock <= 0:
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
        revert
    if block.number < firstblock:
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
        revert
    if firstblock > 0:
        if block.number >= firstblock + 4500:
            emit InvalidState(Array(len=23, data='Sale is not in progress'));
            revert
        if totalEthReceived >= 10^17:
            emit InvalidState(Array(len=23, data='Sale is not in progress'));
            revert
    require msg.value >= 10^16
    require totalEthReceived + msg.value < 10^17
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    if block.number - firstblock / 1500 >= 10:
        if 1000 * msg.value:
            require 1000 * msg.value
            require 1000 * msg.value * bonusPercentages.length.field_72 / 1000 * msg.value == bonusPercentages.length.field_72
        require (1000 * msg.value) + (1000 * msg.value * bonusPercentages.length.field_72 / 100) >= 1000 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require balanceOf[address(msg.sender)] + (1000 * msg.value) + (1000 * msg.value * bonusPercentages.length.field_72 / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + (1000 * msg.value * bonusPercentages.length.field_72 / 100)
        require (1000 * msg.value) + (1000 * msg.value * bonusPercentages.length.field_72 / 100) <= balanceOf[stor4]
        balanceOf[stor4] = balanceOf[stor4] - (1000 * msg.value) - (1000 * msg.value * bonusPercentages.length.field_72 / 100)
        issueIndex++
        emit Issue(issueIndex, msg.sender, msg.value, (1000 * msg.value) + (1000 * msg.value * bonusPercentages.length.field_72 / 100));
    else:
        require block.number - firstblock / 1500 < 10
        if 1000 * msg.value:
            require 1000 * msg.value
            require 1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 1000 * msg.value == bonusPercentages[uint8(block.number - stor5 / 1500)].field_0
        require (1000 * msg.value) + (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100) >= 1000 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require balanceOf[address(msg.sender)] + (1000 * msg.value) + (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100)
        require (1000 * msg.value) + (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100) <= balanceOf[stor4]
        balanceOf[stor4] = balanceOf[stor4] - (1000 * msg.value) - (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100)
        issueIndex++
        emit Issue(issueIndex, msg.sender, msg.value, (1000 * msg.value) + (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100));
    call targetAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function issueToken(address arg1) payable {
    if firstblock <= 0:
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
        revert
    if block.number < firstblock:
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
        revert
    if firstblock > 0:
        if block.number >= firstblock + 4500:
            emit InvalidState(Array(len=23, data='Sale is not in progress'));
            revert
        if totalEthReceived >= 10^17:
            emit InvalidState(Array(len=23, data='Sale is not in progress'));
            revert
    require msg.value >= 10^16
    require totalEthReceived + msg.value < 10^17
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    if block.number - firstblock / 1500 >= 10:
        if 1000 * msg.value:
            require 1000 * msg.value
            require 1000 * msg.value * bonusPercentages.length.field_72 / 1000 * msg.value == bonusPercentages.length.field_72
        require (1000 * msg.value) + (1000 * msg.value * bonusPercentages.length.field_72 / 100) >= 1000 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require balanceOf[address(msg.sender)] + (1000 * msg.value) + (1000 * msg.value * bonusPercentages.length.field_72 / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + (1000 * msg.value * bonusPercentages.length.field_72 / 100)
        require (1000 * msg.value) + (1000 * msg.value * bonusPercentages.length.field_72 / 100) <= balanceOf[stor4]
        balanceOf[stor4] = balanceOf[stor4] - (1000 * msg.value) - (1000 * msg.value * bonusPercentages.length.field_72 / 100)
        issueIndex++
        emit Issue(issueIndex, address(arg1), msg.value, (1000 * msg.value) + (1000 * msg.value * bonusPercentages.length.field_72 / 100));
    else:
        require block.number - firstblock / 1500 < 10
        if 1000 * msg.value:
            require 1000 * msg.value
            require 1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 1000 * msg.value == bonusPercentages[uint8(block.number - stor5 / 1500)].field_0
        require (1000 * msg.value) + (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100) >= 1000 * msg.value
        require totalEthReceived + msg.value >= totalEthReceived
        totalEthReceived += msg.value
        require balanceOf[address(msg.sender)] + (1000 * msg.value) + (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100)
        require (1000 * msg.value) + (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100) <= balanceOf[stor4]
        balanceOf[stor4] = balanceOf[stor4] - (1000 * msg.value) - (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100)
        issueIndex++
        emit Issue(issueIndex, address(arg1), msg.value, (1000 * msg.value) + (1000 * msg.value * bonusPercentages[uint8(block.number - stor5 / 1500)].field_0 / 100));
    call targetAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
