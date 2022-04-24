contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;
array of uint256 stor7;
uint8 stor8;
uint256 stor12;
address stor13;
address stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = '1.0' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 0
    stor16 = 460
    stor17 = 115 * 10^12
    require not msg.value
    stor3 = msg.sender
    stor15 = code.data[10175 len 32]
    stor0 = 100000000 * 10^18
    stor12 = 0
    stor13 = msg.sender
    stor14 = code.data[10251 len 20]
    require stor16
    require stor17
    require stor13
    require stor14
    require stor15
    require stor0
    require stor15 > block.number
    return code.data[847 len 9328]
}



// =====================  Runtime code  =====================


const name = 'Mudra'

const tokenCreationMax = 10000000 * 10^18

const decimals = 18

const _totalSupply = 100000000 * 10^18

const minBtcValue = 10000

const symbol = 'MDR'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address owner1;
address owner2;
uint8 stor6; offset 160
uint128 stor6; offset 160
address owner3;
array of uint256 version;
uint8 stor8;
uint256 investmentETH;
uint256 investmentBTC;
mapping of uint8 stor11;
uint256 initialSupply;
address stor13;
address stor14;
uint256 fundingStartBlock;
uint256 tokensPerEther;
uint256 tokensPerBTC;
array of address investors;

function totalSupply() {
    return totalSupply
}

function investorsCount() {
    return investors.length
}

function initialSupply() {
    return initialSupply
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return address(investors[arg1])
}

function getTokens(address arg1) {
    return balanceOf[address(arg1)]
}

function owner2() {
    return owner2
}

function version() {
    return version[0 len version.length]
}

function tradingStarted() {
    return bool(stor8)
}

function investmentETH() {
    return investmentETH
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner1() {
    return owner1
}

function stopped() {
    return bool(uint8(stor6.field_160))
}

function owner() {
    return owner
}

function owner3() {
    return owner3
}

function investmentBTC() {
    return investmentBTC
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokensPerBTC() {
    return tokensPerBTC
}

function tokensPerEther() {
    return tokensPerEther
}

function Ownable1() {
    owner1 = msg.sender
}

function Ownable2() {
    owner2 = msg.sender
}

function Ownable3() {
    owner3 = msg.sender
}

function startTrading() {
    require msg.sender == stor13
    stor8 = 1
}

function emergencyStop() {
    if msg.sender == owner:
        Mask(96, 0, stor6.field_160) = 1
}

function blacklist(address arg1) {
    require msg.sender == stor13
    balanceOf[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        if arg1:
            owner = arg1
}

function release() {
    if msg.sender == owner:
        require uint8(stor6.field_160)
        Mask(96, 0, stor6.field_160) = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeExchangeRate(uint256 arg1, uint256 arg2) {
    require msg.sender == stor13
    require arg1
    require arg2
    tokensPerEther = arg1
    tokensPerBTC = arg2
}

function getState() {
    if block.number < fundingStartBlock:
        return 0
    if block.number <= fundingStartBlock:
        if initialSupply < 10000000 * 10^18:
            return 3
        return 2
    if initialSupply >= 10000000 * 10^18:
        return 2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor8
    if balanceOf[address(msg.sender)] >= arg2:
        if arg2 > 0:
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 0
        else:
            return 0
    else:
        return 0
}

function getStateFunding() {
    if block.number < fundingStartBlock + (50 * 3600):
        return 20
    if block.number < fundingStartBlock + 180001:
        return 0
    if block.number < fundingStartBlock + (75 * 3600):
        return 10
    if block.number < fundingStartBlock + 270001:
        return 0
    if block.number >= fundingStartBlock + (10 * 3600):
        return 0
    return 5
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor8
    if balanceOf[address(arg1)] >= arg3:
        if allowance[address(arg1)][address(msg.sender)] >= arg3:
            if arg3 > 0:
                balanceOf[address(arg2)] += arg3
                balanceOf[address(arg1)] -= arg3
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function calNewTokens(uint256 arg1) {
    if block.number < fundingStartBlock + (50 * 3600):
        if not arg1:
            if 20 * arg1 == (100 * 20 * arg1 / 100) + (20 * arg1 % 100):
                if arg1 + (20 * arg1 / 100) >= arg1:
                    if arg1 + (20 * arg1 / 100) >= 20 * arg1 / 100:
                        return (arg1 + (20 * arg1 / 100))
        else:
            if arg1:
                if 20 * arg1 / arg1 == 20:
                    if 20 * arg1 == (100 * 20 * arg1 / 100) + (20 * arg1 % 100):
                        if arg1 + (20 * arg1 / 100) >= arg1:
                            if arg1 + (20 * arg1 / 100) >= 20 * arg1 / 100:
                                return (arg1 + (20 * arg1 / 100))
    else:
        if block.number < fundingStartBlock + 180001:
            if not arg1:
                if arg1 >= arg1:
                    if arg1 >= 0:
                        return arg1
            else:
                if arg1:
                    if not 0 / arg1:
                        if arg1 >= arg1:
                            if arg1 >= 0:
                                return arg1
        else:
            if block.number < fundingStartBlock + (75 * 3600):
                if not arg1:
                    if 10 * arg1 == (100 * 10 * arg1 / 100) + (10 * arg1 % 100):
                        if arg1 + (10 * arg1 / 100) >= arg1:
                            if arg1 + (10 * arg1 / 100) >= 10 * arg1 / 100:
                                return (arg1 + (10 * arg1 / 100))
                else:
                    if arg1:
                        if 10 * arg1 / arg1 == 10:
                            if 10 * arg1 == (100 * 10 * arg1 / 100) + (10 * arg1 % 100):
                                if arg1 + (10 * arg1 / 100) >= arg1:
                                    if arg1 + (10 * arg1 / 100) >= 10 * arg1 / 100:
                                        return (arg1 + (10 * arg1 / 100))
            else:
                if block.number < fundingStartBlock + 270001:
                    if not arg1:
                        if arg1 >= arg1:
                            if arg1 >= 0:
                                return arg1
                    else:
                        if arg1:
                            if not 0 / arg1:
                                if arg1 >= arg1:
                                    if arg1 >= 0:
                                        return arg1
                else:
                    if block.number >= fundingStartBlock + (10 * 3600):
                        if not arg1:
                            if arg1 >= arg1:
                                if arg1 >= 0:
                                    return arg1
                        else:
                            if arg1:
                                if not 0 / arg1:
                                    if arg1 >= arg1:
                                        if arg1 >= 0:
                                            return arg1
                    else:
                        if not arg1:
                            if 5 * arg1 == (100 * 5 * arg1 / 100) + (5 * arg1 % 100):
                                if arg1 + (5 * arg1 / 100) >= arg1:
                                    if arg1 + (5 * arg1 / 100) >= 5 * arg1 / 100:
                                        return (arg1 + (5 * arg1 / 100))
                        else:
                            if arg1:
                                if 5 * arg1 / arg1 == 5:
                                    if 5 * arg1 == (100 * 5 * arg1 / 100) + (5 * arg1 % 100):
                                        if arg1 + (5 * arg1 / 100) >= arg1:
                                            if arg1 + (5 * arg1 / 100) >= 5 * arg1 / 100:
                                                return (arg1 + (5 * arg1 / 100))
    revert
}

function tokenAssignExchange(address arg1, uint256 arg2) {
    require msg.sender == stor13
    if block.number >= fundingStartBlock:
        require initialSupply < 10000000 * 10^18
    require arg2
    require arg2
    require arg2 * tokensPerEther / arg2 == tokensPerEther
    if block.number < fundingStartBlock + (50 * 3600):
        if arg2 * tokensPerEther:
            require arg2 * tokensPerEther
            require 20 * arg2 * tokensPerEther / arg2 * tokensPerEther == 20
        require 20 * arg2 * tokensPerEther == (100 * 20 * arg2 * tokensPerEther / 100) + (20 * arg2 * tokensPerEther % 100)
        require (arg2 * tokensPerEther) + (20 * arg2 * tokensPerEther / 100) >= arg2 * tokensPerEther
        require (arg2 * tokensPerEther) + (20 * arg2 * tokensPerEther / 100) >= 20 * arg2 * tokensPerEther / 100
        require initialSupply + (arg2 * tokensPerEther) + (20 * arg2 * tokensPerEther / 100) >= initialSupply
        require initialSupply >= 0
        initialSupply = initialSupply + (arg2 * tokensPerEther) + (20 * arg2 * tokensPerEther / 100)
        require initialSupply <= 10000000 * 10^18
        if not balanceOf[address(arg1)]:
            investors.length++
            if not investors.length <= investors.length + 1:
                idx = investors.length + 1
                while investors.length > idx:
                    uint256(investors[idx]) = 0
                    idx = idx + 1
                    continue 
            address(investors[investors.length]) = arg1
        investmentETH += arg2
        require balanceOf[address(arg1)] + (arg2 * tokensPerEther) + (20 * arg2 * tokensPerEther / 100) >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= 0
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 * tokensPerEther) + (20 * arg2 * tokensPerEther / 100)
    else:
        if block.number < fundingStartBlock + 180001:
            if arg2 * tokensPerEther:
                require arg2 * tokensPerEther
                require not 0 / arg2 * tokensPerEther
            require arg2 * tokensPerEther >= arg2 * tokensPerEther
            require arg2 * tokensPerEther >= 0
            require initialSupply + (arg2 * tokensPerEther) >= initialSupply
            require initialSupply + (arg2 * tokensPerEther) >= arg2 * tokensPerEther
            initialSupply += arg2 * tokensPerEther
            require initialSupply <= 10000000 * 10^18
            if not balanceOf[address(arg1)]:
                investors.length++
                if not investors.length <= investors.length + 1:
                    idx = investors.length + 1
                    while investors.length > idx:
                        uint256(investors[idx]) = 0
                        idx = idx + 1
                        continue 
                address(investors[investors.length]) = arg1
            investmentETH += arg2
            require balanceOf[address(arg1)] + (arg2 * tokensPerEther) >= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] + (arg2 * tokensPerEther) >= arg2 * tokensPerEther
            balanceOf[address(arg1)] += arg2 * tokensPerEther
        else:
            if block.number < fundingStartBlock + (75 * 3600):
                if arg2 * tokensPerEther:
                    require arg2 * tokensPerEther
                    require 10 * arg2 * tokensPerEther / arg2 * tokensPerEther == 10
                require 10 * arg2 * tokensPerEther == (100 * 10 * arg2 * tokensPerEther / 100) + (10 * arg2 * tokensPerEther % 100)
                require (arg2 * tokensPerEther) + (10 * arg2 * tokensPerEther / 100) >= arg2 * tokensPerEther
                require (arg2 * tokensPerEther) + (10 * arg2 * tokensPerEther / 100) >= 10 * arg2 * tokensPerEther / 100
                require initialSupply + (arg2 * tokensPerEther) + (10 * arg2 * tokensPerEther / 100) >= initialSupply
                require initialSupply >= 0
                initialSupply = initialSupply + (arg2 * tokensPerEther) + (10 * arg2 * tokensPerEther / 100)
                require initialSupply <= 10000000 * 10^18
                if not balanceOf[address(arg1)]:
                    investors.length++
                    if not investors.length <= investors.length + 1:
                        idx = investors.length + 1
                        while investors.length > idx:
                            uint256(investors[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(investors[investors.length]) = arg1
                investmentETH += arg2
                require balanceOf[address(arg1)] + (arg2 * tokensPerEther) + (10 * arg2 * tokensPerEther / 100) >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 * tokensPerEther) + (10 * arg2 * tokensPerEther / 100)
            else:
                if block.number < fundingStartBlock + 270001:
                    if arg2 * tokensPerEther:
                        require arg2 * tokensPerEther
                        require not 0 / arg2 * tokensPerEther
                    require arg2 * tokensPerEther >= arg2 * tokensPerEther
                    require arg2 * tokensPerEther >= 0
                    require initialSupply + (arg2 * tokensPerEther) >= initialSupply
                    require initialSupply + (arg2 * tokensPerEther) >= arg2 * tokensPerEther
                    initialSupply += arg2 * tokensPerEther
                    require initialSupply <= 10000000 * 10^18
                    if not balanceOf[address(arg1)]:
                        investors.length++
                        if not investors.length <= investors.length + 1:
                            idx = investors.length + 1
                            while investors.length > idx:
                                uint256(investors[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(investors[investors.length]) = arg1
                    investmentETH += arg2
                    require balanceOf[address(arg1)] + (arg2 * tokensPerEther) >= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] + (arg2 * tokensPerEther) >= arg2 * tokensPerEther
                    balanceOf[address(arg1)] += arg2 * tokensPerEther
                else:
                    if block.number >= fundingStartBlock + (10 * 3600):
                        if arg2 * tokensPerEther:
                            require arg2 * tokensPerEther
                            require not 0 / arg2 * tokensPerEther
                        require arg2 * tokensPerEther >= arg2 * tokensPerEther
                        require arg2 * tokensPerEther >= 0
                        require initialSupply + (arg2 * tokensPerEther) >= initialSupply
                        require initialSupply + (arg2 * tokensPerEther) >= arg2 * tokensPerEther
                        initialSupply += arg2 * tokensPerEther
                        require initialSupply <= 10000000 * 10^18
                        if not balanceOf[address(arg1)]:
                            investors.length++
                            if not investors.length <= investors.length + 1:
                                idx = investors.length + 1
                                while investors.length > idx:
                                    uint256(investors[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(investors[investors.length]) = arg1
                        investmentETH += arg2
                        require balanceOf[address(arg1)] + (arg2 * tokensPerEther) >= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] + (arg2 * tokensPerEther) >= arg2 * tokensPerEther
                        balanceOf[address(arg1)] += arg2 * tokensPerEther
                    else:
                        if arg2 * tokensPerEther:
                            require arg2 * tokensPerEther
                            require 5 * arg2 * tokensPerEther / arg2 * tokensPerEther == 5
                        require 5 * arg2 * tokensPerEther == (100 * 5 * arg2 * tokensPerEther / 100) + (5 * arg2 * tokensPerEther % 100)
                        require (arg2 * tokensPerEther) + (5 * arg2 * tokensPerEther / 100) >= arg2 * tokensPerEther
                        require (arg2 * tokensPerEther) + (5 * arg2 * tokensPerEther / 100) >= 5 * arg2 * tokensPerEther / 100
                        require initialSupply + (arg2 * tokensPerEther) + (5 * arg2 * tokensPerEther / 100) >= initialSupply
                        require initialSupply >= 0
                        initialSupply = initialSupply + (arg2 * tokensPerEther) + (5 * arg2 * tokensPerEther / 100)
                        require initialSupply <= 10000000 * 10^18
                        if not balanceOf[address(arg1)]:
                            investors.length++
                            if not investors.length <= investors.length + 1:
                                idx = investors.length + 1
                                while investors.length > idx:
                                    uint256(investors[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(investors[investors.length]) = arg1
                        investmentETH += arg2
                        require balanceOf[address(arg1)] + (arg2 * tokensPerEther) + (5 * arg2 * tokensPerEther / 100) >= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] >= 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 * tokensPerEther) + (5 * arg2 * tokensPerEther / 100)
}

function _fallback() payable {
    require not uint8(stor6.field_160)
    if block.number >= fundingStartBlock:
        require initialSupply < 10000000 * 10^18
    require msg.value
    require msg.value
    require msg.value * tokensPerEther / msg.value == tokensPerEther
    if block.number < fundingStartBlock + (50 * 3600):
        if msg.value * tokensPerEther:
            require msg.value * tokensPerEther
            require 20 * msg.value * tokensPerEther / msg.value * tokensPerEther == 20
        require 20 * msg.value * tokensPerEther == (100 * 20 * msg.value * tokensPerEther / 100) + (20 * msg.value * tokensPerEther % 100)
        require (msg.value * tokensPerEther) + (20 * msg.value * tokensPerEther / 100) >= msg.value * tokensPerEther
        require (msg.value * tokensPerEther) + (20 * msg.value * tokensPerEther / 100) >= 20 * msg.value * tokensPerEther / 100
        require initialSupply + (msg.value * tokensPerEther) + (20 * msg.value * tokensPerEther / 100) >= initialSupply
        require initialSupply >= 0
        initialSupply = initialSupply + (msg.value * tokensPerEther) + (20 * msg.value * tokensPerEther / 100)
        require initialSupply <= 10000000 * 10^18
        if not balanceOf[address(msg.sender)]:
            investors.length++
            if not investors.length <= investors.length + 1:
                idx = investors.length + 1
                while investors.length > idx:
                    uint256(investors[idx]) = 0
                    idx = idx + 1
                    continue 
            address(investors[investors.length]) = msg.sender
        investmentETH += msg.value
        require balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) + (20 * msg.value * tokensPerEther / 100) >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= 0
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) + (20 * msg.value * tokensPerEther / 100)
    else:
        if block.number < fundingStartBlock + 180001:
            if msg.value * tokensPerEther:
                require msg.value * tokensPerEther
                require not 0 / msg.value * tokensPerEther
            require msg.value * tokensPerEther >= msg.value * tokensPerEther
            require msg.value * tokensPerEther >= 0
            require initialSupply + (msg.value * tokensPerEther) >= initialSupply
            require initialSupply + (msg.value * tokensPerEther) >= msg.value * tokensPerEther
            initialSupply += msg.value * tokensPerEther
            require initialSupply <= 10000000 * 10^18
            if not balanceOf[address(msg.sender)]:
                investors.length++
                if not investors.length <= investors.length + 1:
                    idx = investors.length + 1
                    while investors.length > idx:
                        uint256(investors[idx]) = 0
                        idx = idx + 1
                        continue 
                address(investors[investors.length]) = msg.sender
            investmentETH += msg.value
            require balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) >= msg.value * tokensPerEther
            balanceOf[address(msg.sender)] += msg.value * tokensPerEther
        else:
            if block.number < fundingStartBlock + (75 * 3600):
                if msg.value * tokensPerEther:
                    require msg.value * tokensPerEther
                    require 10 * msg.value * tokensPerEther / msg.value * tokensPerEther == 10
                require 10 * msg.value * tokensPerEther == (100 * 10 * msg.value * tokensPerEther / 100) + (10 * msg.value * tokensPerEther % 100)
                require (msg.value * tokensPerEther) + (10 * msg.value * tokensPerEther / 100) >= msg.value * tokensPerEther
                require (msg.value * tokensPerEther) + (10 * msg.value * tokensPerEther / 100) >= 10 * msg.value * tokensPerEther / 100
                require initialSupply + (msg.value * tokensPerEther) + (10 * msg.value * tokensPerEther / 100) >= initialSupply
                require initialSupply >= 0
                initialSupply = initialSupply + (msg.value * tokensPerEther) + (10 * msg.value * tokensPerEther / 100)
                require initialSupply <= 10000000 * 10^18
                if not balanceOf[address(msg.sender)]:
                    investors.length++
                    if not investors.length <= investors.length + 1:
                        idx = investors.length + 1
                        while investors.length > idx:
                            uint256(investors[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(investors[investors.length]) = msg.sender
                investmentETH += msg.value
                require balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) + (10 * msg.value * tokensPerEther / 100) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) + (10 * msg.value * tokensPerEther / 100)
            else:
                if block.number < fundingStartBlock + 270001:
                    if msg.value * tokensPerEther:
                        require msg.value * tokensPerEther
                        require not 0 / msg.value * tokensPerEther
                    require msg.value * tokensPerEther >= msg.value * tokensPerEther
                    require msg.value * tokensPerEther >= 0
                    require initialSupply + (msg.value * tokensPerEther) >= initialSupply
                    require initialSupply + (msg.value * tokensPerEther) >= msg.value * tokensPerEther
                    initialSupply += msg.value * tokensPerEther
                    require initialSupply <= 10000000 * 10^18
                    if not balanceOf[address(msg.sender)]:
                        investors.length++
                        if not investors.length <= investors.length + 1:
                            idx = investors.length + 1
                            while investors.length > idx:
                                uint256(investors[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(investors[investors.length]) = msg.sender
                    investmentETH += msg.value
                    require balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) >= msg.value * tokensPerEther
                    balanceOf[address(msg.sender)] += msg.value * tokensPerEther
                else:
                    if block.number >= fundingStartBlock + (10 * 3600):
                        if msg.value * tokensPerEther:
                            require msg.value * tokensPerEther
                            require not 0 / msg.value * tokensPerEther
                        require msg.value * tokensPerEther >= msg.value * tokensPerEther
                        require msg.value * tokensPerEther >= 0
                        require initialSupply + (msg.value * tokensPerEther) >= initialSupply
                        require initialSupply + (msg.value * tokensPerEther) >= msg.value * tokensPerEther
                        initialSupply += msg.value * tokensPerEther
                        require initialSupply <= 10000000 * 10^18
                        if not balanceOf[address(msg.sender)]:
                            investors.length++
                            if not investors.length <= investors.length + 1:
                                idx = investors.length + 1
                                while investors.length > idx:
                                    uint256(investors[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(investors[investors.length]) = msg.sender
                        investmentETH += msg.value
                        require balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) >= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) >= msg.value * tokensPerEther
                        balanceOf[address(msg.sender)] += msg.value * tokensPerEther
                    else:
                        if msg.value * tokensPerEther:
                            require msg.value * tokensPerEther
                            require 5 * msg.value * tokensPerEther / msg.value * tokensPerEther == 5
                        require 5 * msg.value * tokensPerEther == (100 * 5 * msg.value * tokensPerEther / 100) + (5 * msg.value * tokensPerEther % 100)
                        require (msg.value * tokensPerEther) + (5 * msg.value * tokensPerEther / 100) >= msg.value * tokensPerEther
                        require (msg.value * tokensPerEther) + (5 * msg.value * tokensPerEther / 100) >= 5 * msg.value * tokensPerEther / 100
                        require initialSupply + (msg.value * tokensPerEther) + (5 * msg.value * tokensPerEther / 100) >= initialSupply
                        require initialSupply >= 0
                        initialSupply = initialSupply + (msg.value * tokensPerEther) + (5 * msg.value * tokensPerEther / 100)
                        require initialSupply <= 10000000 * 10^18
                        if not balanceOf[address(msg.sender)]:
                            investors.length++
                            if not investors.length <= investors.length + 1:
                                idx = investors.length + 1
                                while investors.length > idx:
                                    uint256(investors[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(investors[investors.length]) = msg.sender
                        investmentETH += msg.value
                        require balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) + (5 * msg.value * tokensPerEther / 100) >= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] >= 0
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * tokensPerEther) + (5 * msg.value * tokensPerEther / 100)
    call stor14 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function processTransaction(bytes arg1, uint256 arg2, address arg3, bytes20 arg4) {
    require msg.sender == stor13
    if block.number >= fundingStartBlock:
        require initialSupply < 10000000 * 10^18
    require ext_code.size(0x6c4f1f75b4fcbcd3f8c7916942a4d7fb0df41319)
    delegate 0x6c4f1f75b4fcbcd3f8c7916942a4d7fb0df41319.0xe0303a2e with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all])
    require delegate.return_code
    require not stor11[arg2]
    require ext_code.size(0x6c4f1f75b4fcbcd3f8c7916942a4d7fb0df41319)
    delegate 0x6c4f1f75b4fcbcd3f8c7916942a4d7fb0df41319.0xe57ea16d with:
         gas gas_remaining - 710 wei
        args 0, 96, Mask(160, 96, arg4), 10000, arg1.length, arg1[all]
    require delegate.return_code
    if not delegate.return_data[0]:
        return 0
    stor11[arg2] = 1
    if delegate.return_data[32]:
        require delegate.return_data[32]
        require delegate.return_data[32] * tokensPerBTC / delegate.return_data[32] == tokensPerBTC
    if block.number < fundingStartBlock + (50 * 3600):
        if delegate.return_data[32] * tokensPerBTC:
            require delegate.return_data[32] * tokensPerBTC
            require 20 * delegate.return_data[32] * tokensPerBTC / delegate.return_data[32] * tokensPerBTC == 20
        require 20 * delegate.return_data[32] * tokensPerBTC == (100 * 20 * delegate.return_data[32] * tokensPerBTC / 100) + (20 * delegate.return_data[32] * tokensPerBTC % 100)
        require (delegate.return_data[32] * tokensPerBTC) + (20 * delegate.return_data[32] * tokensPerBTC / 100) >= delegate.return_data[32] * tokensPerBTC
        require (delegate.return_data[32] * tokensPerBTC) + (20 * delegate.return_data[32] * tokensPerBTC / 100) >= 20 * delegate.return_data[32] * tokensPerBTC / 100
        require initialSupply + (delegate.return_data[32] * tokensPerBTC) + (20 * delegate.return_data[32] * tokensPerBTC / 100) >= initialSupply
        require initialSupply >= 0
        initialSupply = initialSupply + (delegate.return_data[32] * tokensPerBTC) + (20 * delegate.return_data[32] * tokensPerBTC / 100)
        require initialSupply <= 10000000 * 10^18
        if not balanceOf[address(arg3)]:
            investors.length++
            if not investors.length <= investors.length + 1:
                idx = investors.length + 1
                while investors.length > idx:
                    uint256(investors[idx]) = 0
                    idx = idx + 1
                    continue 
            address(investors[investors.length]) = arg3
        investmentBTC += delegate.return_data[32]
        require balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) + (20 * delegate.return_data[32] * tokensPerBTC / 100) >= balanceOf[address(arg3)]
        require balanceOf[address(arg3)] >= 0
        balanceOf[address(arg3)] = balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) + (20 * delegate.return_data[32] * tokensPerBTC / 100)
    else:
        if block.number < fundingStartBlock + 180001:
            if delegate.return_data[32] * tokensPerBTC:
                require delegate.return_data[32] * tokensPerBTC
                require not 0 / delegate.return_data[32] * tokensPerBTC
            require delegate.return_data[32] * tokensPerBTC >= delegate.return_data[32] * tokensPerBTC
            require delegate.return_data[32] * tokensPerBTC >= 0
            require initialSupply + (delegate.return_data[32] * tokensPerBTC) >= initialSupply
            require initialSupply + (delegate.return_data[32] * tokensPerBTC) >= delegate.return_data[32] * tokensPerBTC
            initialSupply += delegate.return_data[32] * tokensPerBTC
            require initialSupply <= 10000000 * 10^18
            if not balanceOf[address(arg3)]:
                investors.length++
                if not investors.length <= investors.length + 1:
                    idx = investors.length + 1
                    while investors.length > idx:
                        uint256(investors[idx]) = 0
                        idx = idx + 1
                        continue 
                address(investors[investors.length]) = arg3
            investmentBTC += delegate.return_data[32]
            require balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) >= balanceOf[address(arg3)]
            require balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) >= delegate.return_data[32] * tokensPerBTC
            balanceOf[address(arg3)] += delegate.return_data[32] * tokensPerBTC
        else:
            if block.number < fundingStartBlock + (75 * 3600):
                if delegate.return_data[32] * tokensPerBTC:
                    require delegate.return_data[32] * tokensPerBTC
                    require 10 * delegate.return_data[32] * tokensPerBTC / delegate.return_data[32] * tokensPerBTC == 10
                require 10 * delegate.return_data[32] * tokensPerBTC == (100 * 10 * delegate.return_data[32] * tokensPerBTC / 100) + (10 * delegate.return_data[32] * tokensPerBTC % 100)
                require (delegate.return_data[32] * tokensPerBTC) + (10 * delegate.return_data[32] * tokensPerBTC / 100) >= delegate.return_data[32] * tokensPerBTC
                require (delegate.return_data[32] * tokensPerBTC) + (10 * delegate.return_data[32] * tokensPerBTC / 100) >= 10 * delegate.return_data[32] * tokensPerBTC / 100
                require initialSupply + (delegate.return_data[32] * tokensPerBTC) + (10 * delegate.return_data[32] * tokensPerBTC / 100) >= initialSupply
                require initialSupply >= 0
                initialSupply = initialSupply + (delegate.return_data[32] * tokensPerBTC) + (10 * delegate.return_data[32] * tokensPerBTC / 100)
                require initialSupply <= 10000000 * 10^18
                if not balanceOf[address(arg3)]:
                    investors.length++
                    if not investors.length <= investors.length + 1:
                        idx = investors.length + 1
                        while investors.length > idx:
                            uint256(investors[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(investors[investors.length]) = arg3
                investmentBTC += delegate.return_data[32]
                require balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) + (10 * delegate.return_data[32] * tokensPerBTC / 100) >= balanceOf[address(arg3)]
                require balanceOf[address(arg3)] >= 0
                balanceOf[address(arg3)] = balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) + (10 * delegate.return_data[32] * tokensPerBTC / 100)
            else:
                if block.number < fundingStartBlock + 270001:
                    if delegate.return_data[32] * tokensPerBTC:
                        require delegate.return_data[32] * tokensPerBTC
                        require not 0 / delegate.return_data[32] * tokensPerBTC
                    require delegate.return_data[32] * tokensPerBTC >= delegate.return_data[32] * tokensPerBTC
                    require delegate.return_data[32] * tokensPerBTC >= 0
                    require initialSupply + (delegate.return_data[32] * tokensPerBTC) >= initialSupply
                    require initialSupply + (delegate.return_data[32] * tokensPerBTC) >= delegate.return_data[32] * tokensPerBTC
                    initialSupply += delegate.return_data[32] * tokensPerBTC
                    require initialSupply <= 10000000 * 10^18
                    if not balanceOf[address(arg3)]:
                        investors.length++
                        if not investors.length <= investors.length + 1:
                            idx = investors.length + 1
                            while investors.length > idx:
                                uint256(investors[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(investors[investors.length]) = arg3
                    investmentBTC += delegate.return_data[32]
                    require balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) >= balanceOf[address(arg3)]
                    require balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) >= delegate.return_data[32] * tokensPerBTC
                    balanceOf[address(arg3)] += delegate.return_data[32] * tokensPerBTC
                else:
                    if block.number >= fundingStartBlock + (10 * 3600):
                        if delegate.return_data[32] * tokensPerBTC:
                            require delegate.return_data[32] * tokensPerBTC
                            require not 0 / delegate.return_data[32] * tokensPerBTC
                        require delegate.return_data[32] * tokensPerBTC >= delegate.return_data[32] * tokensPerBTC
                        require delegate.return_data[32] * tokensPerBTC >= 0
                        require initialSupply + (delegate.return_data[32] * tokensPerBTC) >= initialSupply
                        require initialSupply + (delegate.return_data[32] * tokensPerBTC) >= delegate.return_data[32] * tokensPerBTC
                        initialSupply += delegate.return_data[32] * tokensPerBTC
                        require initialSupply <= 10000000 * 10^18
                        if not balanceOf[address(arg3)]:
                            investors.length++
                            if not investors.length <= investors.length + 1:
                                idx = investors.length + 1
                                while investors.length > idx:
                                    uint256(investors[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(investors[investors.length]) = arg3
                        investmentBTC += delegate.return_data[32]
                        require balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) >= balanceOf[address(arg3)]
                        require balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) >= delegate.return_data[32] * tokensPerBTC
                        balanceOf[address(arg3)] += delegate.return_data[32] * tokensPerBTC
                    else:
                        if delegate.return_data[32] * tokensPerBTC:
                            require delegate.return_data[32] * tokensPerBTC
                            require 5 * delegate.return_data[32] * tokensPerBTC / delegate.return_data[32] * tokensPerBTC == 5
                        require 5 * delegate.return_data[32] * tokensPerBTC == (100 * 5 * delegate.return_data[32] * tokensPerBTC / 100) + (5 * delegate.return_data[32] * tokensPerBTC % 100)
                        require (delegate.return_data[32] * tokensPerBTC) + (5 * delegate.return_data[32] * tokensPerBTC / 100) >= delegate.return_data[32] * tokensPerBTC
                        require (delegate.return_data[32] * tokensPerBTC) + (5 * delegate.return_data[32] * tokensPerBTC / 100) >= 5 * delegate.return_data[32] * tokensPerBTC / 100
                        require initialSupply + (delegate.return_data[32] * tokensPerBTC) + (5 * delegate.return_data[32] * tokensPerBTC / 100) >= initialSupply
                        require initialSupply >= 0
                        initialSupply = initialSupply + (delegate.return_data[32] * tokensPerBTC) + (5 * delegate.return_data[32] * tokensPerBTC / 100)
                        require initialSupply <= 10000000 * 10^18
                        if not balanceOf[address(arg3)]:
                            investors.length++
                            if not investors.length <= investors.length + 1:
                                idx = investors.length + 1
                                while investors.length > idx:
                                    uint256(investors[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(investors[investors.length]) = arg3
                        investmentBTC += delegate.return_data[32]
                        require balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) + (5 * delegate.return_data[32] * tokensPerBTC / 100) >= balanceOf[address(arg3)]
                        require balanceOf[address(arg3)] >= 0
                        balanceOf[address(arg3)] = balanceOf[address(arg3)] + (delegate.return_data[32] * tokensPerBTC) + (5 * delegate.return_data[32] * tokensPerBTC / 100)
    return 1
}



}
