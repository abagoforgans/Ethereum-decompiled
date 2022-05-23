contract main {




// =====================  Runtime code  =====================


const name = '0XCoin'

const decimals = 18

const symbol = '0XC'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 startDate1;
uint256 endDate1;
uint256 startDate2;
uint256 endDate2;
uint256 saleCap;
address tokenWalletAddress;
address fundWalletAddress;
uint256 weiRaised;
uint256 stor7FF6;

function saleCap() {
    return saleCap
}

function totalSupply() {
    return totalSupply
}

function endDate2() {
    return endDate2
}

function weiRaised() {
    return weiRaised
}

function fundWallet() {
    return fundWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function startDate2() {
    return startDate2
}

function tokenWallet() {
    return tokenWalletAddress
}

function startDate1() {
    return startDate1
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function endDate1() {
    return endDate1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getBonusByTime(uint256 arg1) {
    if arg1 < startDate1:
        return 0
    if endDate1 > arg1:
        if arg1 > startDate1:
            return 5000
    if endDate2 <= arg1:
        return 0
    if arg1 <= startDate2:
        return 0
    return 2500
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xe6ddf252: arg2, msg.sender, arg1
    return 1
}

function setPeriod(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3 > arg2
    if 1 == arg1:
        startDate1 = arg2
        endDate1 = arg3
    else:
        if 2 == arg1:
            require arg2 > endDate1
            startDate2 = arg2
            endDate2 = arg3
}

function finalize() {
    require msg.sender == owner
    if block.timestamp >= startDate1:
        if block.timestamp < endDate1:
            require saleCap <= 0
    if block.timestamp >= startDate2:
        if block.timestamp < endDate2:
            require saleCap <= 0
    require stor7FF6 + balanceOf[stor9] >= balanceOf[stor9]
    balanceOf[stor9] += stor7FF6
    stor7FF6 = 0
}

function sendForPreICO(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= saleCap
    saleCap -= arg2
    require arg2 <= balanceOf[stor9]
    balanceOf[stor9] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit PreICOTokenPushed(arg2, arg1);
    emit 0xe6ddf252: arg2, tokenWalletAddress, arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0xe6ddf252: arg3, arg1, arg2
    return 1
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require msg.sender == owner
    require not tokenWalletAddress
    require not fundWalletAddress
    require arg3 < arg4
    require arg1
    require arg2
    require arg6 >= arg5
    startDate1 = arg3
    endDate1 = arg4
    saleCap = arg5
    tokenWalletAddress = arg1
    fundWalletAddress = arg2
    totalSupply = arg6
    balanceOf[address(arg1)] = arg5
    require arg5 <= arg6
    stor7FF6 = arg6 - arg5
}

function setSaleCap(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[stor9] + stor7FF6 >= stor7FF6
    require arg1 <= balanceOf[stor9] + stor7FF6
    require balanceOf[stor9] + stor7FF6 - arg1 > 0
    if arg1 >= balanceOf[stor9]:
        require balanceOf[stor9] <= arg1
        require arg1 - balanceOf[stor9] <= stor7FF6
        stor7FF6 = stor7FF6 - arg1 + balanceOf[stor9]
    else:
        require arg1 <= balanceOf[stor9]
        require balanceOf[stor9] - arg1 + stor7FF6 >= stor7FF6
        stor7FF6 = balanceOf[stor9] - arg1 + stor7FF6
    balanceOf[stor9] = arg1
    saleCap = arg1
}

function saleActive() {
    if block.timestamp < startDate1:
        if block.timestamp < startDate2:
            return block.timestamp >= startDate2
        if block.timestamp >= endDate2:
            return (block.timestamp < endDate2)
    else:
        if block.timestamp >= endDate1:
            if block.timestamp < startDate2:
                return block.timestamp >= startDate2
            if block.timestamp >= endDate2:
                return (block.timestamp < endDate2)
        else:
            if saleCap <= 0:
                if block.timestamp < startDate2:
                    return block.timestamp >= startDate2
                if block.timestamp >= endDate2:
                    return (block.timestamp < endDate2)
    return (saleCap > 0)
}

function getBounsByAmount(uint256 arg1, uint256 arg2) {
    if arg1 / 500 * 10^18 > 4:
        if not arg2:
            return (40 * arg2 / 100)
        if arg2:
            if 40 * arg2 / arg2 == 40:
                return (40 * arg2 / 100)
    else:
        if not arg1 / 500 * 10^18:
            if not arg2:
                return (10 * arg1 / 500 * 10^18 * arg2 / 100)
            if arg2:
                if 10 * arg1 / 500 * 10^18 * arg2 / arg2 == 10 * arg1 / 500 * 10^18:
                    return (10 * arg1 / 500 * 10^18 * arg2 / 100)
        else:
            if arg1 / 500 * 10^18:
                if 10 * arg1 / 500 * 10^18 / arg1 / 500 * 10^18 == 10:
                    if not arg2:
                        return (10 * arg1 / 500 * 10^18 * arg2 / 100)
                    if arg2:
                        if 10 * arg1 / 500 * 10^18 * arg2 / arg2 == 10 * arg1 / 500 * 10^18:
                            return (10 * arg1 / 500 * 10^18 * arg2 / 100)
    revert
}

function _fallback() payable {
    if block.timestamp < startDate1:
        require block.timestamp >= startDate2
        require block.timestamp < endDate2
        require saleCap > 0
    else:
        if block.timestamp >= endDate1:
            require block.timestamp >= startDate2
            require block.timestamp < endDate2
            require saleCap > 0
        else:
            if saleCap <= 0:
                require block.timestamp >= startDate2
                require block.timestamp < endDate2
                require saleCap > 0
    require msg.value >= 10^17
    if block.timestamp < startDate1:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        if block.timestamp >= startDate1:
            if block.timestamp < endDate1:
                if msg.value / 500 * 10^18 <= 4:
                    if msg.value / 500 * 10^18:
                        require msg.value / 500 * 10^18
                        require 10 * msg.value / 500 * 10^18 / msg.value / 500 * 10^18 == 10
        require 0 <= saleCap
        require 0 <= balanceOf[stor9]
        require balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
        emit TokenPurchase(msg.value, 0, msg.sender);
        emit 0xe6ddf252: 0, tokenWalletAddress, msg.sender
    else:
        if endDate1 <= block.timestamp:
            if endDate2 <= block.timestamp:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                if block.timestamp >= startDate1:
                    if block.timestamp < endDate1:
                        if msg.value / 500 * 10^18 <= 4:
                            if msg.value / 500 * 10^18:
                                require msg.value / 500 * 10^18
                                require 10 * msg.value / 500 * 10^18 / msg.value / 500 * 10^18 == 10
                require 0 <= saleCap
                require 0 <= balanceOf[stor9]
                require balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                emit TokenPurchase(msg.value, 0, msg.sender);
                emit 0xe6ddf252: 0, tokenWalletAddress, msg.sender
            else:
                if block.timestamp <= startDate2:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    if block.timestamp >= startDate1:
                        if block.timestamp < endDate1:
                            if msg.value / 500 * 10^18 <= 4:
                                if msg.value / 500 * 10^18:
                                    require msg.value / 500 * 10^18
                                    require 10 * msg.value / 500 * 10^18 / msg.value / 500 * 10^18 == 10
                    require 0 <= saleCap
                    require 0 <= balanceOf[stor9]
                    require balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                    emit TokenPurchase(msg.value, 0, msg.sender);
                    emit 0xe6ddf252: 0, tokenWalletAddress, msg.sender
                else:
                    if msg.value:
                        require msg.value
                        require 2500 * msg.value / msg.value == 2500
                    if block.timestamp < startDate1:
                        require 2500 * msg.value <= saleCap
                        require 2500 * msg.value <= balanceOf[stor9]
                        balanceOf[stor9] += -2500 * msg.value
                        require (2500 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = (2500 * msg.value) + balanceOf[msg.sender]
                        emit TokenPurchase(msg.value, 2500 * msg.value, msg.sender);
                        emit 0xe6ddf252: (2500 * msg.value), tokenWalletAddress, msg.sender
                        saleCap += -2500 * msg.value
                    else:
                        if block.timestamp >= endDate1:
                            require 2500 * msg.value <= saleCap
                            require 2500 * msg.value <= balanceOf[stor9]
                            balanceOf[stor9] += -2500 * msg.value
                            require (2500 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (2500 * msg.value) + balanceOf[msg.sender]
                            emit TokenPurchase(msg.value, 2500 * msg.value, msg.sender);
                            emit 0xe6ddf252: (2500 * msg.value), tokenWalletAddress, msg.sender
                            saleCap += -2500 * msg.value
                        else:
                            if msg.value / 500 * 10^18 > 4:
                                if 2500 * msg.value:
                                    require 2500 * msg.value
                                    require 100000 * msg.value / 2500 * msg.value == 40
                                require (100000 * msg.value / 100) + (2500 * msg.value) <= saleCap
                                require (100000 * msg.value / 100) + (2500 * msg.value) <= balanceOf[stor9]
                                balanceOf[stor9] = balanceOf[stor9] - (100000 * msg.value / 100) - (2500 * msg.value)
                                require (100000 * msg.value / 100) + (2500 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (100000 * msg.value / 100) + (2500 * msg.value) + balanceOf[msg.sender]
                                emit TokenPurchase(msg.value, (100000 * msg.value / 100) + (2500 * msg.value), msg.sender);
                                emit 0xe6ddf252: ((100000 * msg.value / 100) + (2500 * msg.value)), tokenWalletAddress, msg.sender
                                saleCap = saleCap - (100000 * msg.value / 100) - (2500 * msg.value)
                            else:
                                if msg.value / 500 * 10^18:
                                    require msg.value / 500 * 10^18
                                    require 10 * msg.value / 500 * 10^18 / msg.value / 500 * 10^18 == 10
                                if 2500 * msg.value:
                                    require 2500 * msg.value
                                    require 25000 * msg.value / 500 * 10^18 * msg.value / 2500 * msg.value == 10 * msg.value / 500 * 10^18
                                require (25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value) <= saleCap
                                require (25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value) <= balanceOf[stor9]
                                balanceOf[stor9] = balanceOf[stor9] - (25000 * msg.value / 500 * 10^18 * msg.value / 100) - (2500 * msg.value)
                                require (25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value) + balanceOf[msg.sender]
                                emit TokenPurchase(msg.value, (25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value), msg.sender);
                                emit 0xe6ddf252: ((25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value)), tokenWalletAddress, msg.sender
                                saleCap = saleCap - (25000 * msg.value / 500 * 10^18 * msg.value / 100) - (2500 * msg.value)
        else:
            if block.timestamp > startDate1:
                if msg.value:
                    require msg.value
                    require 5000 * msg.value / msg.value == 5000
                if block.timestamp < startDate1:
                    require 5000 * msg.value <= saleCap
                    require 5000 * msg.value <= balanceOf[stor9]
                    balanceOf[stor9] += -5000 * msg.value
                    require (5000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (5000 * msg.value) + balanceOf[msg.sender]
                    emit TokenPurchase(msg.value, 5000 * msg.value, msg.sender);
                    emit 0xe6ddf252: (5000 * msg.value), tokenWalletAddress, msg.sender
                    saleCap += -5000 * msg.value
                else:
                    if block.timestamp >= endDate1:
                        require 5000 * msg.value <= saleCap
                        require 5000 * msg.value <= balanceOf[stor9]
                        balanceOf[stor9] += -5000 * msg.value
                        require (5000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = (5000 * msg.value) + balanceOf[msg.sender]
                        emit TokenPurchase(msg.value, 5000 * msg.value, msg.sender);
                        emit 0xe6ddf252: (5000 * msg.value), tokenWalletAddress, msg.sender
                        saleCap += -5000 * msg.value
                    else:
                        if msg.value / 500 * 10^18 > 4:
                            if 5000 * msg.value:
                                require 5000 * msg.value
                                require 200000 * msg.value / 5000 * msg.value == 40
                            require (200000 * msg.value / 100) + (5000 * msg.value) <= saleCap
                            require (200000 * msg.value / 100) + (5000 * msg.value) <= balanceOf[stor9]
                            balanceOf[stor9] = balanceOf[stor9] - (200000 * msg.value / 100) - (5000 * msg.value)
                            require (200000 * msg.value / 100) + (5000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (200000 * msg.value / 100) + (5000 * msg.value) + balanceOf[msg.sender]
                            emit TokenPurchase(msg.value, (200000 * msg.value / 100) + (5000 * msg.value), msg.sender);
                            emit 0xe6ddf252: ((200000 * msg.value / 100) + (5000 * msg.value)), tokenWalletAddress, msg.sender
                            saleCap = saleCap - (200000 * msg.value / 100) - (5000 * msg.value)
                        else:
                            if msg.value / 500 * 10^18:
                                require msg.value / 500 * 10^18
                                require 10 * msg.value / 500 * 10^18 / msg.value / 500 * 10^18 == 10
                            if 5000 * msg.value:
                                require 5000 * msg.value
                                require 50000 * msg.value / 500 * 10^18 * msg.value / 5000 * msg.value == 10 * msg.value / 500 * 10^18
                            require (50000 * msg.value / 500 * 10^18 * msg.value / 100) + (5000 * msg.value) <= saleCap
                            require (50000 * msg.value / 500 * 10^18 * msg.value / 100) + (5000 * msg.value) <= balanceOf[stor9]
                            balanceOf[stor9] = balanceOf[stor9] - (50000 * msg.value / 500 * 10^18 * msg.value / 100) - (5000 * msg.value)
                            require (50000 * msg.value / 500 * 10^18 * msg.value / 100) + (5000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (50000 * msg.value / 500 * 10^18 * msg.value / 100) + (5000 * msg.value) + balanceOf[msg.sender]
                            emit TokenPurchase(msg.value, (50000 * msg.value / 500 * 10^18 * msg.value / 100) + (5000 * msg.value), msg.sender);
                            emit 0xe6ddf252: ((50000 * msg.value / 500 * 10^18 * msg.value / 100) + (5000 * msg.value)), tokenWalletAddress, msg.sender
                            saleCap = saleCap - (50000 * msg.value / 500 * 10^18 * msg.value / 100) - (5000 * msg.value)
            else:
                if endDate2 <= block.timestamp:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    if block.timestamp >= startDate1:
                        if block.timestamp < endDate1:
                            if msg.value / 500 * 10^18 <= 4:
                                if msg.value / 500 * 10^18:
                                    require msg.value / 500 * 10^18
                                    require 10 * msg.value / 500 * 10^18 / msg.value / 500 * 10^18 == 10
                    require 0 <= saleCap
                    require 0 <= balanceOf[stor9]
                    require balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                    emit TokenPurchase(msg.value, 0, msg.sender);
                    emit 0xe6ddf252: 0, tokenWalletAddress, msg.sender
                else:
                    if block.timestamp <= startDate2:
                        if msg.value:
                            require msg.value
                            require not 0 / msg.value
                        if block.timestamp >= startDate1:
                            if block.timestamp < endDate1:
                                if msg.value / 500 * 10^18 <= 4:
                                    if msg.value / 500 * 10^18:
                                        require msg.value / 500 * 10^18
                                        require 10 * msg.value / 500 * 10^18 / msg.value / 500 * 10^18 == 10
                        require 0 <= saleCap
                        require 0 <= balanceOf[stor9]
                        require balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                        emit TokenPurchase(msg.value, 0, msg.sender);
                        emit 0xe6ddf252: 0, tokenWalletAddress, msg.sender
                    else:
                        if msg.value:
                            require msg.value
                            require 2500 * msg.value / msg.value == 2500
                        if block.timestamp < startDate1:
                            require 2500 * msg.value <= saleCap
                            require 2500 * msg.value <= balanceOf[stor9]
                            balanceOf[stor9] += -2500 * msg.value
                            require (2500 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (2500 * msg.value) + balanceOf[msg.sender]
                            emit TokenPurchase(msg.value, 2500 * msg.value, msg.sender);
                            emit 0xe6ddf252: (2500 * msg.value), tokenWalletAddress, msg.sender
                            saleCap += -2500 * msg.value
                        else:
                            if block.timestamp >= endDate1:
                                require 2500 * msg.value <= saleCap
                                require 2500 * msg.value <= balanceOf[stor9]
                                balanceOf[stor9] += -2500 * msg.value
                                require (2500 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (2500 * msg.value) + balanceOf[msg.sender]
                                emit TokenPurchase(msg.value, 2500 * msg.value, msg.sender);
                                emit 0xe6ddf252: (2500 * msg.value), tokenWalletAddress, msg.sender
                                saleCap += -2500 * msg.value
                            else:
                                if msg.value / 500 * 10^18 > 4:
                                    if 2500 * msg.value:
                                        require 2500 * msg.value
                                        require 100000 * msg.value / 2500 * msg.value == 40
                                    require (100000 * msg.value / 100) + (2500 * msg.value) <= saleCap
                                    require (100000 * msg.value / 100) + (2500 * msg.value) <= balanceOf[stor9]
                                    balanceOf[stor9] = balanceOf[stor9] - (100000 * msg.value / 100) - (2500 * msg.value)
                                    require (100000 * msg.value / 100) + (2500 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (100000 * msg.value / 100) + (2500 * msg.value) + balanceOf[msg.sender]
                                    emit TokenPurchase(msg.value, (100000 * msg.value / 100) + (2500 * msg.value), msg.sender);
                                    emit 0xe6ddf252: ((100000 * msg.value / 100) + (2500 * msg.value)), tokenWalletAddress, msg.sender
                                    saleCap = saleCap - (100000 * msg.value / 100) - (2500 * msg.value)
                                else:
                                    if msg.value / 500 * 10^18:
                                        require msg.value / 500 * 10^18
                                        require 10 * msg.value / 500 * 10^18 / msg.value / 500 * 10^18 == 10
                                    if 2500 * msg.value:
                                        require 2500 * msg.value
                                        require 25000 * msg.value / 500 * 10^18 * msg.value / 2500 * msg.value == 10 * msg.value / 500 * 10^18
                                    require (25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value) <= saleCap
                                    require (25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value) <= balanceOf[stor9]
                                    balanceOf[stor9] = balanceOf[stor9] - (25000 * msg.value / 500 * 10^18 * msg.value / 100) - (2500 * msg.value)
                                    require (25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value) + balanceOf[msg.sender]
                                    emit TokenPurchase(msg.value, (25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value), msg.sender);
                                    emit 0xe6ddf252: ((25000 * msg.value / 500 * 10^18 * msg.value / 100) + (2500 * msg.value)), tokenWalletAddress, msg.sender
                                    saleCap = saleCap - (25000 * msg.value / 500 * 10^18 * msg.value / 100) - (2500 * msg.value)
    weiRaised += msg.value
    call fundWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
