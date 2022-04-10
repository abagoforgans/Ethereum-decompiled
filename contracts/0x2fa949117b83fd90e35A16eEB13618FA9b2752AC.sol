contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
uint256 stor7; offset 2
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14;
uint8 stor14; offset 8
uint16 stor14;

function _fallback() payable {
    uint256(stor7.field_0) = 2000000000 * 10^18
    stor8 = 2500000 * 10^18
    stor9 = 0
    stor10 = 0
    stor11 = 1000000000 * 10^18
    stor12 = Mask(254, 0, stor7.field_2)
    stor13 = Mask(254, 0, stor7.field_2)
    uint8(stor14.field_0) = 0
    uint16(stor14.field_0) = 0
    require not msg.value
    stor5 = code.data[5350 len 20]
    stor6 = code.data[5382 len 20]
    stor3 = code.data[5402 len 32]
    stor4 = code.data[5434 len 32]
    require uint8(stor14.field_8) <= 3
    if uint8(stor14.field_8) != 3:
        require uint8(stor14.field_8) <= 3
        if uint8(stor14.field_8) != 2:
            require uint8(stor14.field_8) <= 3
            if not uint8(stor14.field_8):
                if block.number >= stor3:
                    uint8(stor14.field_8) = 1
            require uint8(stor14.field_8) <= 3
            if uint8(stor14.field_8) == 1:
                if block.number > stor4:
                    uint8(stor14.field_8) = 2
        else:
            if block.number <= stor4:
                require uint8(stor14.field_8) <= 3
                if not uint8(stor14.field_8):
                    if block.number >= stor3:
                        uint8(stor14.field_8) = 1
                require uint8(stor14.field_8) <= 3
                if uint8(stor14.field_8) == 1:
                    if block.number > stor4:
                        uint8(stor14.field_8) = 2
    return code.data[503 len 4835]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
const name = 'CHEX Token'

const decimals = 18

const symbol = 'CHX'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 startBlock;
uint256 endBlock;
address founderAddress;
address owner;
uint256 totalTokens;
uint256 etherCap;
uint256 presaleSupply;
uint256 presaleEtherRaised;
uint256 presaleAllocation;
uint256 ecosystemAllocation;
uint256 reservedAllocation;
uint8 ecosystemAllocated;
uint8 _saleState; offset 8

function endBlock() {
    return endBlock
}

function reservedAllocation() {
    return reservedAllocation
}

function totalSupply() {
    return totalSupply
}

function presaleEtherRaised() {
    return presaleEtherRaised
}

function startBlock() {
    return startBlock
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function etherCap() {
    return etherCap
}

function ecosystemAllocated() {
    return bool(ecosystemAllocated)
}

function totalTokens() {
    return totalTokens
}

function presaleAllocation() {
    return presaleAllocation
}

function owner() {
    return owner
}

function _saleState() {
    require _saleState <= 3
    return _saleState
}

function presaleSupply() {
    return presaleSupply
}

function ecosystemAllocation() {
    return ecosystemAllocation
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function freeze() {
    if owner != msg.sender:
        require founderAddress == msg.sender
    _saleState = 3
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function compareAndApprove(address arg1, uint256 arg2, uint256 arg3) {
    if arg2 != allowance[address(msg.sender)][address(arg1)]:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function price() {
    require _saleState <= 3
    if not _saleState:
        return 6001
    require _saleState <= 3
    if _saleState != 1:
        return 3000
    require endBlock - startBlock
    return ((3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10) + 3000)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function allocateEcosystemTokens() {
    if owner != msg.sender:
        require founderAddress == msg.sender
    require block.number > endBlock
    require not ecosystemAllocated
    require ecosystemAllocation + balanceOf[stor6] >= balanceOf[stor6]
    balanceOf[stor6] += ecosystemAllocation
    require ecosystemAllocation + totalSupply >= totalSupply
    totalSupply += ecosystemAllocation
    require reservedAllocation + balanceOf[stor5] >= balanceOf[stor5]
    balanceOf[stor5] += reservedAllocation
    require reservedAllocation + totalSupply >= totalSupply
    totalSupply += reservedAllocation
    ecosystemAllocated = 1
}

function updateTokenSaleState() {
    require _saleState <= 3
    if _saleState != 3:
        require _saleState <= 3
        if _saleState != 2:
            require _saleState <= 3
            if not _saleState:
                if block.number >= startBlock:
                    _saleState = 1
            require _saleState <= 3
            if _saleState == 1:
                if block.number > endBlock:
                    _saleState = 2
        else:
            if block.number <= endBlock:
                require _saleState <= 3
                if not _saleState:
                    if block.number >= startBlock:
                        _saleState = 1
                require _saleState <= 3
                if _saleState == 1:
                    if block.number > endBlock:
                        _saleState = 2
}

function unfreeze() {
    if owner != msg.sender:
        require founderAddress == msg.sender
    _saleState = 1
    require _saleState <= 3
    if _saleState != 3:
        require _saleState <= 3
        if _saleState != 2:
            require _saleState <= 3
            if not _saleState:
                if block.number >= startBlock:
                    _saleState = 1
            require _saleState <= 3
            if _saleState == 1:
                if block.number > endBlock:
                    _saleState = 2
        else:
            if block.number <= endBlock:
                require _saleState <= 3
                if not _saleState:
                    if block.number >= startBlock:
                        _saleState = 1
                require _saleState <= 3
                if _saleState == 1:
                    if block.number > endBlock:
                        _saleState = 2
}

function startSalePhase(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        require founderAddress == msg.sender
    require _saleState <= 3
    require _saleState != 1
    require arg2
    if arg1:
        startBlock = arg1
        endBlock = arg1 + arg2
    else:
        startBlock = block.number
        endBlock = block.number + arg2
    require _saleState <= 3
    if _saleState != 3:
        require _saleState <= 3
        if _saleState != 2:
            require _saleState <= 3
            if not _saleState:
                if block.number >= startBlock:
                    _saleState = 1
            require _saleState <= 3
            if _saleState == 1:
                if block.number > endBlock:
                    _saleState = 2
        else:
            if block.number <= endBlock:
                require _saleState <= 3
                if not _saleState:
                    if block.number >= startBlock:
                        _saleState = 1
                require _saleState <= 3
                if _saleState == 1:
                    if block.number > endBlock:
                        _saleState = 2
}

function deliver(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if owner != msg.sender:
        require founderAddress == msg.sender
    require arg2
    require totalSupply < totalTokens
    require _saleState <= 3
    require _saleState != 3
    require _saleState <= 3
    if _saleState == 1:
        require presaleSupply < presaleAllocation
    require _saleState <= 3
    if _saleState != 3:
        require _saleState <= 3
        if _saleState != 2:
            require _saleState <= 3
            if not _saleState:
                if block.number >= startBlock:
                    _saleState = 1
            require _saleState <= 3
            if _saleState == 1:
                if block.number > endBlock:
                    _saleState = 2
        else:
            if block.number <= endBlock:
                require _saleState <= 3
                if not _saleState:
                    if block.number >= startBlock:
                        _saleState = 1
                require _saleState <= 3
                if _saleState == 1:
                    if block.number > endBlock:
                        _saleState = 2
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply < totalTokens
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require _saleState <= 3
    if _saleState == 1:
        require arg2 + presaleSupply >= presaleSupply
        presaleSupply += arg2
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 160] = 64
    mem[ceil32(arg3.length) + 192] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 224] = mem[128]
        mem[ceil32(arg3.length) + 256 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit Deliver(arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 224 len arg3.length]), arg1);
}

function buy(address arg1) payable {
    require arg1
    require totalSupply < totalTokens
    require _saleState <= 3
    require _saleState != 3
    require _saleState <= 3
    if _saleState == 1:
        require presaleSupply < presaleAllocation
    require _saleState <= 3
    if _saleState == 1:
        require presaleEtherRaised < etherCap
    require _saleState <= 3
    require _saleState <= 3
    if _saleState != 3:
        if _saleState != 2:
            require _saleState <= 3
            if not _saleState:
                if block.number >= startBlock:
                    _saleState = 1
            require _saleState <= 3
            if _saleState == 1:
                if block.number > endBlock:
                    _saleState = 2
        else:
            if block.number <= endBlock:
                require _saleState <= 3
                if not _saleState:
                    if block.number >= startBlock:
                        _saleState = 1
                require _saleState <= 3
                if _saleState == 1:
                    if block.number > endBlock:
                        _saleState = 2
    if not _saleState:
        if msg.value:
            require msg.value
            require 6001 * msg.value / msg.value == 6001
        require 6001 * msg.value > 0
        require (6001 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 6001 * msg.value
        require (6001 * msg.value) + totalSupply >= totalSupply
        totalSupply += 6001 * msg.value
        require _saleState <= 3
        if _saleState == 1:
            require msg.value + presaleEtherRaised >= presaleEtherRaised
            presaleEtherRaised += msg.value
            require (6001 * msg.value) + presaleSupply >= presaleSupply
            presaleSupply += 6001 * msg.value
        call founderAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Buy(msg.value, 6001 * msg.value, arg1);
    else:
        require _saleState <= 3
        if _saleState != 1:
            if msg.value:
                require msg.value
                require 3000 * msg.value / msg.value == 3000
            require 3000 * msg.value > 0
            require (3000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 3000 * msg.value
            require (3000 * msg.value) + totalSupply >= totalSupply
            totalSupply += 3000 * msg.value
            require _saleState <= 3
            if _saleState == 1:
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require (3000 * msg.value) + presaleSupply >= presaleSupply
                presaleSupply += 3000 * msg.value
            call founderAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Buy(msg.value, 3000 * msg.value, arg1);
        else:
            require endBlock - startBlock
            if msg.value:
                require msg.value
                require (3000 * msg.value) + (3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) / msg.value == (3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10) + 3000
            require (3000 * msg.value) + (3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) > 0
            require (3000 * msg.value) + (3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = (3000 * msg.value) + (3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + balanceOf[address(arg1)]
            require (3000 * msg.value) + (3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalSupply >= totalSupply
            totalSupply = (3000 * msg.value) + (3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalSupply
            require _saleState <= 3
            if _saleState == 1:
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require (3000 * msg.value) + (3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + presaleSupply >= presaleSupply
                presaleSupply = (3000 * msg.value) + (3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + presaleSupply
            call founderAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Buy(msg.value, (3000 * msg.value) + (3 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value), arg1);
}



}
