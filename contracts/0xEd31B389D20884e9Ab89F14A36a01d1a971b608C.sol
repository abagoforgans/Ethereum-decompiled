contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;

function _fallback() payable {
    stor6 = 2000000000 * 10^18
    stor7 = 0
    stor8 = 2000000000 * 10^18
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor5 = code.data[4474 len 20]
    stor3 = code.data[4494 len 32]
    stor4 = code.data[4526 len 32]
    require stor10 <= 3
    if stor10 != 3:
        require stor10 <= 3
        if stor10 != 2:
            require stor10 <= 3
            if not stor10:
                if block.number >= stor3:
                    stor10 = 1
            require stor10 <= 3
            if stor10 == 1:
                if block.number > stor4:
                    stor10 = 2
        else:
            if block.number <= stor4:
                require stor10 <= 3
                if not stor10:
                    if block.number >= stor3:
                        stor10 = 1
                require stor10 <= 3
                if stor10 == 1:
                    if block.number > stor4:
                        stor10 = 2
    return code.data[407 len 4055]
}



// =====================  Runtime code  =====================


const name = 'CHEX Token'

const decimals = 18

const symbol = 'CHX'

const HALVING_DELAY = (128 * 3600)

const MIN_ETHER = 10^15


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 startBlock;
uint256 endBlock;
address founderAddress;
uint256 tokenCap;
uint256 crowdsaleSupply;
uint256 crowdsaleAllocation;
uint256 etherRaised;
uint8 _saleState;

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function crowdsaleAllocation() {
    return crowdsaleAllocation
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

function _saleState() {
    require _saleState <= 3
    return _saleState
}

function etherRaised() {
    return etherRaised
}

function crowdsaleSupply() {
    return crowdsaleSupply
}

function tokenCap() {
    return tokenCap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function freeze() {
    require founderAddress == msg.sender
    _saleState = 3
}

function changeFounder(address arg1) {
    require founderAddress == msg.sender
    require arg1
    founderAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawFunds() {
    require founderAddress == msg.sender
    require eth.balance(this.address)
    call founderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function price() {
    require _saleState <= 3
    if not _saleState:
        return 42007
    require _saleState <= 3
    if _saleState != 1:
        return 21000
    if block.number <= startBlock + (128 * 3600):
        return 42000
    return 31500
}

function compareAndApprove(address arg1, uint256 arg2, uint256 arg3) {
    if arg2 != allowance[address(msg.sender)][address(arg1)]:
        return 0
    if arg3:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
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
    require founderAddress == msg.sender
    _saleState = 0
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
            require 42007 * msg.value / msg.value == 42007
        require (42007 * msg.value) + totalSupply >= totalSupply
        require (42007 * msg.value) + crowdsaleSupply >= crowdsaleSupply
        require (42007 * msg.value) + totalSupply < tokenCap
        require (42007 * msg.value) + crowdsaleSupply < crowdsaleAllocation
        require (42007 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 42007 * msg.value
        totalSupply += 42007 * msg.value
        crowdsaleSupply += 42007 * msg.value
        require msg.value + etherRaised >= etherRaised
        etherRaised += msg.value
        emit Transfer((42007 * msg.value), 0, arg1);
        emit Issuance(42007 * msg.value, msg.value, arg1);
    else:
        require _saleState <= 3
        if _saleState != 1:
            if msg.value:
                require msg.value
                require 21000 * msg.value / msg.value == 21000
            require (21000 * msg.value) + totalSupply >= totalSupply
            require (21000 * msg.value) + crowdsaleSupply >= crowdsaleSupply
            require (21000 * msg.value) + totalSupply < tokenCap
            require (21000 * msg.value) + crowdsaleSupply < crowdsaleAllocation
            require (21000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 21000 * msg.value
            totalSupply += 21000 * msg.value
            crowdsaleSupply += 21000 * msg.value
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            emit Transfer((21000 * msg.value), 0, arg1);
            emit Issuance(21000 * msg.value, msg.value, arg1);
        else:
            if block.number <= startBlock + (128 * 3600):
                if msg.value:
                    require msg.value
                    require 42000 * msg.value / msg.value == 42000
                require (42000 * msg.value) + totalSupply >= totalSupply
                require (42000 * msg.value) + crowdsaleSupply >= crowdsaleSupply
                require (42000 * msg.value) + totalSupply < tokenCap
                require (42000 * msg.value) + crowdsaleSupply < crowdsaleAllocation
                require (42000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 42000 * msg.value
                totalSupply += 42000 * msg.value
                crowdsaleSupply += 42000 * msg.value
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
                emit Transfer((42000 * msg.value), 0, arg1);
                emit Issuance(42000 * msg.value, msg.value, arg1);
            else:
                if msg.value:
                    require msg.value
                    require 31500 * msg.value / msg.value == 31500
                require (31500 * msg.value) + totalSupply >= totalSupply
                require (31500 * msg.value) + crowdsaleSupply >= crowdsaleSupply
                require (31500 * msg.value) + totalSupply < tokenCap
                require (31500 * msg.value) + crowdsaleSupply < crowdsaleAllocation
                require (31500 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 31500 * msg.value
                totalSupply += 31500 * msg.value
                crowdsaleSupply += 31500 * msg.value
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
                emit Transfer((31500 * msg.value), 0, arg1);
                emit Issuance(31500 * msg.value, msg.value, arg1);
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
            require 42007 * msg.value / msg.value == 42007
        require (42007 * msg.value) + totalSupply >= totalSupply
        require (42007 * msg.value) + crowdsaleSupply >= crowdsaleSupply
        require (42007 * msg.value) + totalSupply < tokenCap
        require (42007 * msg.value) + crowdsaleSupply < crowdsaleAllocation
        require (42007 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 42007 * msg.value
        totalSupply += 42007 * msg.value
        crowdsaleSupply += 42007 * msg.value
        require msg.value + etherRaised >= etherRaised
        etherRaised += msg.value
        emit Transfer((42007 * msg.value), 0, msg.sender);
        emit Issuance(42007 * msg.value, msg.value, msg.sender);
    else:
        require _saleState <= 3
        if _saleState != 1:
            if msg.value:
                require msg.value
                require 21000 * msg.value / msg.value == 21000
            require (21000 * msg.value) + totalSupply >= totalSupply
            require (21000 * msg.value) + crowdsaleSupply >= crowdsaleSupply
            require (21000 * msg.value) + totalSupply < tokenCap
            require (21000 * msg.value) + crowdsaleSupply < crowdsaleAllocation
            require (21000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 21000 * msg.value
            totalSupply += 21000 * msg.value
            crowdsaleSupply += 21000 * msg.value
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            emit Transfer((21000 * msg.value), 0, msg.sender);
            emit Issuance(21000 * msg.value, msg.value, msg.sender);
        else:
            if block.number <= startBlock + (128 * 3600):
                if msg.value:
                    require msg.value
                    require 42000 * msg.value / msg.value == 42000
                require (42000 * msg.value) + totalSupply >= totalSupply
                require (42000 * msg.value) + crowdsaleSupply >= crowdsaleSupply
                require (42000 * msg.value) + totalSupply < tokenCap
                require (42000 * msg.value) + crowdsaleSupply < crowdsaleAllocation
                require (42000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 42000 * msg.value
                totalSupply += 42000 * msg.value
                crowdsaleSupply += 42000 * msg.value
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
                emit Transfer((42000 * msg.value), 0, msg.sender);
                emit Issuance(42000 * msg.value, msg.value, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 31500 * msg.value / msg.value == 31500
                require (31500 * msg.value) + totalSupply >= totalSupply
                require (31500 * msg.value) + crowdsaleSupply >= crowdsaleSupply
                require (31500 * msg.value) + totalSupply < tokenCap
                require (31500 * msg.value) + crowdsaleSupply < crowdsaleAllocation
                require (31500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 31500 * msg.value
                totalSupply += 31500 * msg.value
                crowdsaleSupply += 31500 * msg.value
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
                emit Transfer((31500 * msg.value), 0, msg.sender);
                emit Issuance(31500 * msg.value, msg.value, msg.sender);
}

function tokenFallback() payable {
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
            require 42007 * msg.value / msg.value == 42007
        require (42007 * msg.value) + totalSupply >= totalSupply
        require (42007 * msg.value) + crowdsaleSupply >= crowdsaleSupply
        require (42007 * msg.value) + totalSupply < tokenCap
        require (42007 * msg.value) + crowdsaleSupply < crowdsaleAllocation
        require (42007 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 42007 * msg.value
        totalSupply += 42007 * msg.value
        crowdsaleSupply += 42007 * msg.value
        require msg.value + etherRaised >= etherRaised
        etherRaised += msg.value
        emit Transfer((42007 * msg.value), 0, msg.sender);
        emit Issuance(42007 * msg.value, msg.value, msg.sender);
    else:
        require _saleState <= 3
        if _saleState != 1:
            if msg.value:
                require msg.value
                require 21000 * msg.value / msg.value == 21000
            require (21000 * msg.value) + totalSupply >= totalSupply
            require (21000 * msg.value) + crowdsaleSupply >= crowdsaleSupply
            require (21000 * msg.value) + totalSupply < tokenCap
            require (21000 * msg.value) + crowdsaleSupply < crowdsaleAllocation
            require (21000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 21000 * msg.value
            totalSupply += 21000 * msg.value
            crowdsaleSupply += 21000 * msg.value
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            emit Transfer((21000 * msg.value), 0, msg.sender);
            emit Issuance(21000 * msg.value, msg.value, msg.sender);
        else:
            if block.number <= startBlock + (128 * 3600):
                if msg.value:
                    require msg.value
                    require 42000 * msg.value / msg.value == 42000
                require (42000 * msg.value) + totalSupply >= totalSupply
                require (42000 * msg.value) + crowdsaleSupply >= crowdsaleSupply
                require (42000 * msg.value) + totalSupply < tokenCap
                require (42000 * msg.value) + crowdsaleSupply < crowdsaleAllocation
                require (42000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 42000 * msg.value
                totalSupply += 42000 * msg.value
                crowdsaleSupply += 42000 * msg.value
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
                emit Transfer((42000 * msg.value), 0, msg.sender);
                emit Issuance(42000 * msg.value, msg.value, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 31500 * msg.value / msg.value == 31500
                require (31500 * msg.value) + totalSupply >= totalSupply
                require (31500 * msg.value) + crowdsaleSupply >= crowdsaleSupply
                require (31500 * msg.value) + totalSupply < tokenCap
                require (31500 * msg.value) + crowdsaleSupply < crowdsaleAllocation
                require (31500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 31500 * msg.value
                totalSupply += 31500 * msg.value
                crowdsaleSupply += 31500 * msg.value
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
                emit Transfer((31500 * msg.value), 0, msg.sender);
                emit Issuance(31500 * msg.value, msg.value, msg.sender);
}



}
