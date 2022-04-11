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
uint16 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint8 stor20;

function _fallback() payable {
    uint256(stor7.field_0) = 2000000000 * 10^18
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 1000000000 * 10^18
    stor12 = Mask(254, 0, stor7.field_2)
    stor13 = Mask(254, 0, stor7.field_2)
    stor14 = 0
    stor15 = 48 * 24 * 3600
    stor16 = 241920
    stor17 = 0
    stor18 = Mask(254, 0, stor7.field_2) / 10
    stor19 = 48 * 24 * 3600
    stor20 = 0
    require not msg.value
    stor5 = code.data[5584 len 20]
    stor6 = code.data[5616 len 20]
    stor3 = code.data[5636 len 32]
    stor4 = code.data[5668 len 32]
    require stor20 <= 3
    if stor20 != 3:
        require stor20 <= 3
        if stor20 != 2:
            require stor20 <= 3
            if not stor20:
                if block.number >= stor3:
                    stor20 = 1
            require stor20 <= 3
            if stor20 == 1:
                if block.number > stor4:
                    stor20 = 2
        else:
            if block.number <= stor4:
                require stor20 <= 3
                if not stor20:
                    if block.number >= stor3:
                        stor20 = 1
                require stor20 <= 3
                if stor20 == 1:
                    if block.number > stor4:
                        stor20 = 2
    return code.data[514 len 5058]
}



// =====================  Runtime code  =====================


const name = 'CHEX Token'

const decimals = 18

const symbol = 'CHX'

const MIN_ETHER = 10^15


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 startBlock;
uint256 endBlock;
address founderAddress;
address owner;
uint256 totalSupply;
uint256 totalTokens;
uint256 presaleSupply;
uint256 presaleEtherRaised;
uint256 presaleAllocation;
uint256 strategicAllocation;
uint256 reserveAllocation;
uint8 strategicAllocated;
uint8 reserveAllocated; offset 8
uint256 transferLockup;
uint256 reserveLockup;
uint256 reserveWave;
uint256 reserveWaveTokens;
uint256 reserveWaveLockup;
uint8 _saleState;

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function reserveAllocated() {
    return bool(reserveAllocated)
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

function strategicAllocated() {
    return bool(strategicAllocated)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalTokens() {
    return totalTokens
}

function presaleAllocation() {
    return presaleAllocation
}

function strategicAllocation() {
    return strategicAllocation
}

function owner() {
    return owner
}

function _saleState() {
    require _saleState <= 3
    return _saleState
}

function reserveWave() {
    return reserveWave
}

function presaleSupply() {
    return presaleSupply
}

function transferLockup() {
    return transferLockup
}

function reserveWaveLockup() {
    return reserveWaveLockup
}

function reserveLockup() {
    return reserveLockup
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function reserveWaveTokens() {
    return reserveWaveTokens
}

function reserveAllocation() {
    return reserveAllocation
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

function price() {
    require _saleState <= 3
    if not _saleState:
        return 12002
    require _saleState <= 3
    if _saleState != 1:
        return 6000
    require endBlock - startBlock
    return ((6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10) + 6000)
}

function allocateStrategicTokens() {
    if owner != msg.sender:
        require founderAddress == msg.sender
    require not strategicAllocated
    require strategicAllocation + balanceOf[stor6] >= balanceOf[stor6]
    balanceOf[stor6] += strategicAllocation
    require strategicAllocation + totalTokens >= totalTokens
    totalTokens += strategicAllocation
    strategicAllocated = 1
    emit Transfer(strategicAllocation, 0, owner);
}

function transfer(address arg1, uint256 arg2) {
    if block.number <= startBlock + transferLockup:
        if founderAddress != msg.sender:
            require owner == msg.sender
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function allocateReserveTokens() {
    if owner != msg.sender:
        require founderAddress == msg.sender
    require block.number > (reserveWave * reserveWaveLockup) + endBlock + reserveLockup
    require not reserveAllocated
    require reserveWaveTokens + balanceOf[stor5] >= balanceOf[stor5]
    balanceOf[stor5] += reserveWaveTokens
    require reserveWaveTokens + totalTokens >= totalTokens
    totalTokens += reserveWaveTokens
    reserveWave++
    if reserveWave + 1 >= 10:
        reserveAllocated = 1
    emit Transfer(reserveWaveTokens, 0, founderAddress);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.number <= startBlock + transferLockup:
        if founderAddress != msg.sender:
            require owner == msg.sender
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
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

function buy(address arg1) payable {
    require arg1
    require msg.value >= 10^15
    require _saleState <= 3
    require _saleState != 3
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
            require 12002 * msg.value / msg.value == 12002
        require (12002 * msg.value) + totalTokens >= totalTokens
        require (12002 * msg.value) + presaleSupply >= presaleSupply
        require (12002 * msg.value) + totalTokens < totalSupply
        require (12002 * msg.value) + presaleSupply < presaleAllocation
        require (12002 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 12002 * msg.value
        presaleSupply += 12002 * msg.value
        totalTokens += 12002 * msg.value
        require _saleState <= 3
        if not _saleState:
            require msg.value + presaleEtherRaised >= presaleEtherRaised
            presaleEtherRaised += msg.value
        else:
            require _saleState <= 3
            if _saleState == 1:
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
        call founderAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((12002 * msg.value), 0, arg1);
        emit Buy(msg.value, 12002 * msg.value, arg1);
    else:
        require _saleState <= 3
        if _saleState != 1:
            if msg.value:
                require msg.value
                require 6000 * msg.value / msg.value == 6000
            require (6000 * msg.value) + totalTokens >= totalTokens
            require (6000 * msg.value) + presaleSupply >= presaleSupply
            require (6000 * msg.value) + totalTokens < totalSupply
            require (6000 * msg.value) + presaleSupply < presaleAllocation
            require (6000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 6000 * msg.value
            presaleSupply += 6000 * msg.value
            totalTokens += 6000 * msg.value
            require _saleState <= 3
            if not _saleState:
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
            else:
                require _saleState <= 3
                if _saleState == 1:
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
            call founderAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((6000 * msg.value), 0, arg1);
            emit Buy(msg.value, 6000 * msg.value, arg1);
        else:
            require endBlock - startBlock
            if msg.value:
                require msg.value
                require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) / msg.value == (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10) + 6000
            require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalTokens >= totalTokens
            require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + presaleSupply >= presaleSupply
            require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalTokens < totalSupply
            require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + presaleSupply < presaleAllocation
            require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + balanceOf[address(arg1)]
            presaleSupply = (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + presaleSupply
            totalTokens = (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalTokens
            require _saleState <= 3
            if not _saleState:
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
            else:
                require _saleState <= 3
                if _saleState == 1:
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
            call founderAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer(((6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value)), 0, arg1);
            emit Buy(msg.value, (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value), arg1);
}

function _fallback() payable {
    require msg.sender
    require msg.value >= 10^15
    require _saleState <= 3
    require _saleState != 3
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
            require 12002 * msg.value / msg.value == 12002
        require (12002 * msg.value) + totalTokens >= totalTokens
        require (12002 * msg.value) + presaleSupply >= presaleSupply
        require (12002 * msg.value) + totalTokens < totalSupply
        require (12002 * msg.value) + presaleSupply < presaleAllocation
        require (12002 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 12002 * msg.value
        presaleSupply += 12002 * msg.value
        totalTokens += 12002 * msg.value
        require _saleState <= 3
        if not _saleState:
            require msg.value + presaleEtherRaised >= presaleEtherRaised
            presaleEtherRaised += msg.value
        else:
            require _saleState <= 3
            if _saleState == 1:
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
        call founderAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((12002 * msg.value), 0, msg.sender);
        emit Buy(msg.value, 12002 * msg.value, msg.sender);
    else:
        require _saleState <= 3
        if _saleState != 1:
            if msg.value:
                require msg.value
                require 6000 * msg.value / msg.value == 6000
            require (6000 * msg.value) + totalTokens >= totalTokens
            require (6000 * msg.value) + presaleSupply >= presaleSupply
            require (6000 * msg.value) + totalTokens < totalSupply
            require (6000 * msg.value) + presaleSupply < presaleAllocation
            require (6000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 6000 * msg.value
            presaleSupply += 6000 * msg.value
            totalTokens += 6000 * msg.value
            require _saleState <= 3
            if not _saleState:
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
            else:
                require _saleState <= 3
                if _saleState == 1:
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
            call founderAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((6000 * msg.value), 0, msg.sender);
            emit Buy(msg.value, 6000 * msg.value, msg.sender);
        else:
            require endBlock - startBlock
            if msg.value:
                require msg.value
                require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) / msg.value == (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10) + 6000
            require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalTokens >= totalTokens
            require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + presaleSupply >= presaleSupply
            require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalTokens < totalSupply
            require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + presaleSupply < presaleAllocation
            require (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + balanceOf[address(msg.sender)]
            presaleSupply = (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + presaleSupply
            totalTokens = (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value) + totalTokens
            require _saleState <= 3
            if not _saleState:
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
            else:
                require _saleState <= 3
                if _saleState == 1:
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
            call founderAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer(((6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value)), 0, msg.sender);
            emit Buy(msg.value, (6000 * msg.value) + (6 * ((10000 * endBlock) - (10000 * block.number) / endBlock - startBlock) + 5 / 10 * msg.value), msg.sender);
}



}
