contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint256 stor8;
address stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 14
    stor0.length.field_8 = 'Afreet Token 5' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'AFR5' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 100000000000 * 10^18
    stor4 = 70000000000 * 10^18
    stor5 = 30000000000 * 10^18
    stor10 = 400000
    stor11 = 0xc42e89764d6a6a60fa69bc30b77c00000000000
    stor8 = block.timestamp
    stor9 = msg.sender
    stor6[address(msg.sender)] = stor3
    return code.data[473 len 3628]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 _totalSupply;
uint256 _icoSupply;
uint256 _futureSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 startTime;
address owner;
uint256 PRICE;
uint256 maxCap;
uint256 fundRaised;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function maxCap() {
    return maxCap
}

function decimals() {
    return decimals
}

function _icoSupply() {
    return _icoSupply
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function PRICE() {
    return PRICE
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _futureSupply() {
    return _futureSupply
}

function fundRaised() {
    return fundRaised
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function sendFutureSupplyToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg2 > 0
    require _futureSupply >= arg2
    require arg2 <= balanceOf[stor9]
    balanceOf[stor9] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require arg2 <= _futureSupply
    _futureSupply -= arg2
    emit Transfer(arg2, owner, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function getPrice() {
    if block.timestamp < startTime:
        return 0
    if block.timestamp <= startTime + 600:
        if not PRICE:
            return (2 * PRICE)
        if PRICE:
            if 2 * PRICE / PRICE == 2:
                return (2 * PRICE)
    else:
        if block.timestamp < startTime + 900:
            return 0
        if block.timestamp <= startTime + 1500:
            if not PRICE:
                return (5 * PRICE / 4)
            if PRICE:
                if 5 * PRICE / PRICE == 5:
                    return (5 * PRICE / 4)
        else:
            if block.timestamp < startTime + 1800:
                return 0
            if block.timestamp > startTime + 2400:
                if block.timestamp < startTime + 2700:
                    return 0
                if block.timestamp > startTime + 3300:
                    return 0
                return PRICE
            if not PRICE:
                return (115 * PRICE / 100)
            if PRICE:
                if 115 * PRICE / PRICE == 115:
                    return (115 * PRICE / 100)
    revert
}

function tokensale(address arg1) payable {
    require arg1
    if block.timestamp < startTime:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require _icoSupply >= 0
        require 0 <= balanceOf[stor9]
        require balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = balanceOf[arg1]
        require 0 <= _icoSupply
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
        call arg1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp <= startTime + 600:
            if PRICE:
                require PRICE
                require 2 * PRICE / PRICE == 2
            if msg.value:
                require msg.value
                require 2 * PRICE * msg.value / msg.value == 2 * PRICE
            require _icoSupply >= 2 * PRICE * msg.value
            require 2 * PRICE * msg.value <= balanceOf[stor9]
            balanceOf[stor9] += -1 * 2 * PRICE * msg.value
            require (2 * PRICE * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = (2 * PRICE * msg.value) + balanceOf[arg1]
            require 2 * PRICE * msg.value <= _icoSupply
            _icoSupply += -1 * 2 * PRICE * msg.value
            emit TokenPurchase(msg.value, 2 * PRICE * msg.value, msg.sender, arg1);
            if 2 * PRICE * msg.value:
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                call arg1 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
        else:
            if block.timestamp < startTime + 900:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require _icoSupply >= 0
                require 0 <= balanceOf[stor9]
                require balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                require 0 <= _icoSupply
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                call arg1 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                if block.timestamp <= startTime + 1500:
                    if PRICE:
                        require PRICE
                        require 5 * PRICE / PRICE == 5
                    if msg.value:
                        require msg.value
                        require 5 * PRICE / 4 * msg.value / msg.value == 5 * PRICE / 4
                    require _icoSupply >= 5 * PRICE / 4 * msg.value
                    require 5 * PRICE / 4 * msg.value <= balanceOf[stor9]
                    balanceOf[stor9] += -1 * 5 * PRICE / 4 * msg.value
                    require (5 * PRICE / 4 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = (5 * PRICE / 4 * msg.value) + balanceOf[arg1]
                    require 5 * PRICE / 4 * msg.value <= _icoSupply
                    _icoSupply += -1 * 5 * PRICE / 4 * msg.value
                    emit TokenPurchase(msg.value, 5 * PRICE / 4 * msg.value, msg.sender, arg1);
                    if 5 * PRICE / 4 * msg.value:
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call arg1 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    if block.timestamp < startTime + 1800:
                        if msg.value:
                            require msg.value
                            require not 0 / msg.value
                        require _icoSupply >= 0
                        require 0 <= balanceOf[stor9]
                        require balanceOf[arg1] >= balanceOf[arg1]
                        balanceOf[address(arg1)] = balanceOf[arg1]
                        require 0 <= _icoSupply
                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                        call arg1 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if block.timestamp > startTime + 2400:
                            if block.timestamp < startTime + 2700:
                                if msg.value:
                                    require msg.value
                                    require not 0 / msg.value
                                require _icoSupply >= 0
                                require 0 <= balanceOf[stor9]
                                require balanceOf[arg1] >= balanceOf[arg1]
                                balanceOf[address(arg1)] = balanceOf[arg1]
                                require 0 <= _icoSupply
                                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                call arg1 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                if block.timestamp > startTime + 3300:
                                    if msg.value:
                                        require msg.value
                                        require not 0 / msg.value
                                    require _icoSupply >= 0
                                    require 0 <= balanceOf[stor9]
                                    require balanceOf[arg1] >= balanceOf[arg1]
                                    balanceOf[address(arg1)] = balanceOf[arg1]
                                    require 0 <= _icoSupply
                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    call arg1 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    if msg.value:
                                        require msg.value
                                        require PRICE * msg.value / msg.value == PRICE
                                    require _icoSupply >= PRICE * msg.value
                                    require PRICE * msg.value <= balanceOf[stor9]
                                    balanceOf[stor9] += -1 * PRICE * msg.value
                                    require (PRICE * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                                    balanceOf[address(arg1)] = (PRICE * msg.value) + balanceOf[arg1]
                                    require PRICE * msg.value <= _icoSupply
                                    _icoSupply += -1 * PRICE * msg.value
                                    emit TokenPurchase(msg.value, PRICE * msg.value, msg.sender, arg1);
                                    if PRICE * msg.value:
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        call arg1 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                        else:
                            if PRICE:
                                require PRICE
                                require 115 * PRICE / PRICE == 115
                            if msg.value:
                                require msg.value
                                require 115 * PRICE / 100 * msg.value / msg.value == 115 * PRICE / 100
                            require _icoSupply >= 115 * PRICE / 100 * msg.value
                            require 115 * PRICE / 100 * msg.value <= balanceOf[stor9]
                            balanceOf[stor9] += -1 * 115 * PRICE / 100 * msg.value
                            require (115 * PRICE / 100 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                            balanceOf[address(arg1)] = (115 * PRICE / 100 * msg.value) + balanceOf[arg1]
                            require 115 * PRICE / 100 * msg.value <= _icoSupply
                            _icoSupply += -1 * 115 * PRICE / 100 * msg.value
                            emit TokenPurchase(msg.value, 115 * PRICE / 100 * msg.value, msg.sender, arg1);
                            if 115 * PRICE / 100 * msg.value:
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call arg1 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    if block.timestamp < startTime:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require _icoSupply >= 0
        require 0 <= balanceOf[stor9]
        require balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
        require 0 <= _icoSupply
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp <= startTime + 600:
            if PRICE:
                require PRICE
                require 2 * PRICE / PRICE == 2
            if msg.value:
                require msg.value
                require 2 * PRICE * msg.value / msg.value == 2 * PRICE
            require _icoSupply >= 2 * PRICE * msg.value
            require 2 * PRICE * msg.value <= balanceOf[stor9]
            balanceOf[stor9] += -1 * 2 * PRICE * msg.value
            require (2 * PRICE * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (2 * PRICE * msg.value) + balanceOf[msg.sender]
            require 2 * PRICE * msg.value <= _icoSupply
            _icoSupply += -1 * 2 * PRICE * msg.value
            emit TokenPurchase(msg.value, 2 * PRICE * msg.value, msg.sender, msg.sender);
            if 2 * PRICE * msg.value:
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
        else:
            if block.timestamp < startTime + 900:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require _icoSupply >= 0
                require 0 <= balanceOf[stor9]
                require balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                require 0 <= _icoSupply
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                if block.timestamp <= startTime + 1500:
                    if PRICE:
                        require PRICE
                        require 5 * PRICE / PRICE == 5
                    if msg.value:
                        require msg.value
                        require 5 * PRICE / 4 * msg.value / msg.value == 5 * PRICE / 4
                    require _icoSupply >= 5 * PRICE / 4 * msg.value
                    require 5 * PRICE / 4 * msg.value <= balanceOf[stor9]
                    balanceOf[stor9] += -1 * 5 * PRICE / 4 * msg.value
                    require (5 * PRICE / 4 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (5 * PRICE / 4 * msg.value) + balanceOf[msg.sender]
                    require 5 * PRICE / 4 * msg.value <= _icoSupply
                    _icoSupply += -1 * 5 * PRICE / 4 * msg.value
                    emit TokenPurchase(msg.value, 5 * PRICE / 4 * msg.value, msg.sender, msg.sender);
                    if 5 * PRICE / 4 * msg.value:
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                else:
                    if block.timestamp < startTime + 1800:
                        if msg.value:
                            require msg.value
                            require not 0 / msg.value
                        require _icoSupply >= 0
                        require 0 <= balanceOf[stor9]
                        require balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                        require 0 <= _icoSupply
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if block.timestamp > startTime + 2400:
                            if block.timestamp < startTime + 2700:
                                if msg.value:
                                    require msg.value
                                    require not 0 / msg.value
                                require _icoSupply >= 0
                                require 0 <= balanceOf[stor9]
                                require balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                                require 0 <= _icoSupply
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                if block.timestamp > startTime + 3300:
                                    if msg.value:
                                        require msg.value
                                        require not 0 / msg.value
                                    require _icoSupply >= 0
                                    require 0 <= balanceOf[stor9]
                                    require balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                                    require 0 <= _icoSupply
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    if msg.value:
                                        require msg.value
                                        require PRICE * msg.value / msg.value == PRICE
                                    require _icoSupply >= PRICE * msg.value
                                    require PRICE * msg.value <= balanceOf[stor9]
                                    balanceOf[stor9] += -1 * PRICE * msg.value
                                    require (PRICE * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[address(msg.sender)] = (PRICE * msg.value) + balanceOf[msg.sender]
                                    require PRICE * msg.value <= _icoSupply
                                    _icoSupply += -1 * PRICE * msg.value
                                    emit TokenPurchase(msg.value, PRICE * msg.value, msg.sender, msg.sender);
                                    if PRICE * msg.value:
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                        else:
                            if PRICE:
                                require PRICE
                                require 115 * PRICE / PRICE == 115
                            if msg.value:
                                require msg.value
                                require 115 * PRICE / 100 * msg.value / msg.value == 115 * PRICE / 100
                            require _icoSupply >= 115 * PRICE / 100 * msg.value
                            require 115 * PRICE / 100 * msg.value <= balanceOf[stor9]
                            balanceOf[stor9] += -1 * 115 * PRICE / 100 * msg.value
                            require (115 * PRICE / 100 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (115 * PRICE / 100 * msg.value) + balanceOf[msg.sender]
                            require 115 * PRICE / 100 * msg.value <= _icoSupply
                            _icoSupply += -1 * 115 * PRICE / 100 * msg.value
                            emit TokenPurchase(msg.value, 115 * PRICE / 100 * msg.value, msg.sender, msg.sender);
                            if 115 * PRICE / 100 * msg.value:
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
