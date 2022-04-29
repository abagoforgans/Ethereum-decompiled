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
    stor0.length.field_1 = 6
    stor0.length.field_8 = 'Reales' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'RLS' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 1000000000 * 10^18
    stor4 = 500000000 * 10^18
    stor5 = 500000000 * 10^18
    stor10 = 1000
    stor11 = 700000000000000000000000 * 10^18
    stor8 = block.timestamp
    stor9 = msg.sender
    stor6[stor9] = stor3
    return code.data[614 len 5932]
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
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sendFutureSupplyToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require _futureSupply >= arg2
    require arg2 <= balanceOf[stor9]
    balanceOf[stor9] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
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
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function getPrice() {
    if block.timestamp < startTime:
        return 0
    if block.timestamp <= startTime + (168 * 24 * 3600):
        if not PRICE:
            return (20 * PRICE / 13)
        if PRICE:
            if 20 * PRICE / PRICE == 20:
                return (20 * PRICE / 13)
    else:
        if block.timestamp < startTime + (192 * 24 * 3600):
            return 0
        if block.timestamp <= startTime + (336 * 24 * 3600):
            if not PRICE:
                return (4 * PRICE / 3)
            if PRICE:
                if 4 * PRICE / PRICE == 4:
                    return (4 * PRICE / 3)
        else:
            if block.timestamp < startTime + (360 * 24 * 3600):
                return 0
            if block.timestamp <= startTime + (504 * 24 * 3600):
                if not PRICE:
                    return (20 * PRICE / 17)
                if PRICE:
                    if 20 * PRICE / PRICE == 20:
                        return (20 * PRICE / 17)
            else:
                if block.timestamp < startTime + (528 * 24 * 3600):
                    return 0
                if block.timestamp <= startTime + (672 * 24 * 3600):
                    if not PRICE:
                        return (10 * PRICE / 9)
                    if PRICE:
                        if 10 * PRICE / PRICE == 10:
                            return (10 * PRICE / 9)
                else:
                    if block.timestamp < startTime + (696 * 24 * 3600):
                        return 0
                    if block.timestamp > startTime + (720 * 24 * 3600):
                        if block.timestamp < startTime + (744 * 24 * 3600):
                            return 0
                        return PRICE
                    if not PRICE:
                        return (20 * PRICE / 19)
                    if PRICE:
                        if 20 * PRICE / PRICE == 20:
                            return (20 * PRICE / 19)
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
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require 0 <= _icoSupply
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        if block.timestamp <= startTime + (168 * 24 * 3600):
            if PRICE:
                require PRICE
                require 20 * PRICE / PRICE == 20
            if msg.value:
                require msg.value
                require msg.value * 20 * PRICE / 13 / msg.value == 20 * PRICE / 13
            require _icoSupply >= msg.value * 20 * PRICE / 13
            require msg.value * 20 * PRICE / 13 <= balanceOf[stor9]
            balanceOf[stor9] += -1 * msg.value * 20 * PRICE / 13
            require balanceOf[address(arg1)] + (msg.value * 20 * PRICE / 13) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += msg.value * 20 * PRICE / 13
            require msg.value * 20 * PRICE / 13 <= _icoSupply
            _icoSupply += -1 * msg.value * 20 * PRICE / 13
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * 20 * PRICE / 13, msg.sender, arg1);
        else:
            if block.timestamp < startTime + (192 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require _icoSupply >= 0
                require 0 <= balanceOf[stor9]
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require 0 <= _icoSupply
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                if block.timestamp <= startTime + (336 * 24 * 3600):
                    if PRICE:
                        require PRICE
                        require 4 * PRICE / PRICE == 4
                    if msg.value:
                        require msg.value
                        require msg.value * 4 * PRICE / 3 / msg.value == 4 * PRICE / 3
                    require _icoSupply >= msg.value * 4 * PRICE / 3
                    require msg.value * 4 * PRICE / 3 <= balanceOf[stor9]
                    balanceOf[stor9] += -1 * msg.value * 4 * PRICE / 3
                    require balanceOf[address(arg1)] + (msg.value * 4 * PRICE / 3) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += msg.value * 4 * PRICE / 3
                    require msg.value * 4 * PRICE / 3 <= _icoSupply
                    _icoSupply += -1 * msg.value * 4 * PRICE / 3
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * 4 * PRICE / 3, msg.sender, arg1);
                else:
                    if block.timestamp < startTime + (360 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require not 0 / msg.value
                        require _icoSupply >= 0
                        require 0 <= balanceOf[stor9]
                        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        require 0 <= _icoSupply
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    else:
                        if block.timestamp <= startTime + (504 * 24 * 3600):
                            if PRICE:
                                require PRICE
                                require 20 * PRICE / PRICE == 20
                            if msg.value:
                                require msg.value
                                require msg.value * 20 * PRICE / 17 / msg.value == 20 * PRICE / 17
                            require _icoSupply >= msg.value * 20 * PRICE / 17
                            require msg.value * 20 * PRICE / 17 <= balanceOf[stor9]
                            balanceOf[stor9] += -1 * msg.value * 20 * PRICE / 17
                            require balanceOf[address(arg1)] + (msg.value * 20 * PRICE / 17) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += msg.value * 20 * PRICE / 17
                            require msg.value * 20 * PRICE / 17 <= _icoSupply
                            _icoSupply += -1 * msg.value * 20 * PRICE / 17
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 20 * PRICE / 17, msg.sender, arg1);
                        else:
                            if block.timestamp < startTime + (528 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require not 0 / msg.value
                                require _icoSupply >= 0
                                require 0 <= balanceOf[stor9]
                                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                require 0 <= _icoSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                            else:
                                if block.timestamp <= startTime + (672 * 24 * 3600):
                                    if PRICE:
                                        require PRICE
                                        require 10 * PRICE / PRICE == 10
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 10 * PRICE / 9 / msg.value == 10 * PRICE / 9
                                    require _icoSupply >= msg.value * 10 * PRICE / 9
                                    require msg.value * 10 * PRICE / 9 <= balanceOf[stor9]
                                    balanceOf[stor9] += -1 * msg.value * 10 * PRICE / 9
                                    require balanceOf[address(arg1)] + (msg.value * 10 * PRICE / 9) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += msg.value * 10 * PRICE / 9
                                    require msg.value * 10 * PRICE / 9 <= _icoSupply
                                    _icoSupply += -1 * msg.value * 10 * PRICE / 9
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 10 * PRICE / 9, msg.sender, arg1);
                                else:
                                    if block.timestamp < startTime + (696 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require not 0 / msg.value
                                        require _icoSupply >= 0
                                        require 0 <= balanceOf[stor9]
                                        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                        require 0 <= _icoSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    else:
                                        if block.timestamp > startTime + (720 * 24 * 3600):
                                            if block.timestamp < startTime + (744 * 24 * 3600):
                                                if msg.value:
                                                    require msg.value
                                                    require not 0 / msg.value
                                                require _icoSupply >= 0
                                                require 0 <= balanceOf[stor9]
                                                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                                require 0 <= _icoSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                            else:
                                                if msg.value:
                                                    require msg.value
                                                    require msg.value * PRICE / msg.value == PRICE
                                                require _icoSupply >= msg.value * PRICE
                                                require msg.value * PRICE <= balanceOf[stor9]
                                                balanceOf[stor9] += -1 * msg.value * PRICE
                                                require balanceOf[address(arg1)] + (msg.value * PRICE) >= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] += msg.value * PRICE
                                                require msg.value * PRICE <= _icoSupply
                                                _icoSupply += -1 * msg.value * PRICE
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, msg.value * PRICE, msg.sender, arg1);
                                        else:
                                            if PRICE:
                                                require PRICE
                                                require 20 * PRICE / PRICE == 20
                                            if msg.value:
                                                require msg.value
                                                require msg.value * 20 * PRICE / 19 / msg.value == 20 * PRICE / 19
                                            require _icoSupply >= msg.value * 20 * PRICE / 19
                                            require msg.value * 20 * PRICE / 19 <= balanceOf[stor9]
                                            balanceOf[stor9] += -1 * msg.value * 20 * PRICE / 19
                                            require balanceOf[address(arg1)] + (msg.value * 20 * PRICE / 19) >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += msg.value * 20 * PRICE / 19
                                            require msg.value * 20 * PRICE / 19 <= _icoSupply
                                            _icoSupply += -1 * msg.value * 20 * PRICE / 19
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, msg.value * 20 * PRICE / 19, msg.sender, arg1);
}

function _fallback() payable {
    require msg.sender
    if block.timestamp < startTime:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require _icoSupply >= 0
        require 0 <= balanceOf[stor9]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= _icoSupply
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        if block.timestamp <= startTime + (168 * 24 * 3600):
            if PRICE:
                require PRICE
                require 20 * PRICE / PRICE == 20
            if msg.value:
                require msg.value
                require msg.value * 20 * PRICE / 13 / msg.value == 20 * PRICE / 13
            require _icoSupply >= msg.value * 20 * PRICE / 13
            require msg.value * 20 * PRICE / 13 <= balanceOf[stor9]
            balanceOf[stor9] += -1 * msg.value * 20 * PRICE / 13
            require balanceOf[address(msg.sender)] + (msg.value * 20 * PRICE / 13) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * 20 * PRICE / 13
            require msg.value * 20 * PRICE / 13 <= _icoSupply
            _icoSupply += -1 * msg.value * 20 * PRICE / 13
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * 20 * PRICE / 13, msg.sender, msg.sender);
        else:
            if block.timestamp < startTime + (192 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require _icoSupply >= 0
                require 0 <= balanceOf[stor9]
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require 0 <= _icoSupply
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                if block.timestamp <= startTime + (336 * 24 * 3600):
                    if PRICE:
                        require PRICE
                        require 4 * PRICE / PRICE == 4
                    if msg.value:
                        require msg.value
                        require msg.value * 4 * PRICE / 3 / msg.value == 4 * PRICE / 3
                    require _icoSupply >= msg.value * 4 * PRICE / 3
                    require msg.value * 4 * PRICE / 3 <= balanceOf[stor9]
                    balanceOf[stor9] += -1 * msg.value * 4 * PRICE / 3
                    require balanceOf[address(msg.sender)] + (msg.value * 4 * PRICE / 3) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * 4 * PRICE / 3
                    require msg.value * 4 * PRICE / 3 <= _icoSupply
                    _icoSupply += -1 * msg.value * 4 * PRICE / 3
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * 4 * PRICE / 3, msg.sender, msg.sender);
                else:
                    if block.timestamp < startTime + (360 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require not 0 / msg.value
                        require _icoSupply >= 0
                        require 0 <= balanceOf[stor9]
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require 0 <= _icoSupply
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        if block.timestamp <= startTime + (504 * 24 * 3600):
                            if PRICE:
                                require PRICE
                                require 20 * PRICE / PRICE == 20
                            if msg.value:
                                require msg.value
                                require msg.value * 20 * PRICE / 17 / msg.value == 20 * PRICE / 17
                            require _icoSupply >= msg.value * 20 * PRICE / 17
                            require msg.value * 20 * PRICE / 17 <= balanceOf[stor9]
                            balanceOf[stor9] += -1 * msg.value * 20 * PRICE / 17
                            require balanceOf[address(msg.sender)] + (msg.value * 20 * PRICE / 17) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value * 20 * PRICE / 17
                            require msg.value * 20 * PRICE / 17 <= _icoSupply
                            _icoSupply += -1 * msg.value * 20 * PRICE / 17
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 20 * PRICE / 17, msg.sender, msg.sender);
                        else:
                            if block.timestamp < startTime + (528 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require not 0 / msg.value
                                require _icoSupply >= 0
                                require 0 <= balanceOf[stor9]
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                require 0 <= _icoSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            else:
                                if block.timestamp <= startTime + (672 * 24 * 3600):
                                    if PRICE:
                                        require PRICE
                                        require 10 * PRICE / PRICE == 10
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 10 * PRICE / 9 / msg.value == 10 * PRICE / 9
                                    require _icoSupply >= msg.value * 10 * PRICE / 9
                                    require msg.value * 10 * PRICE / 9 <= balanceOf[stor9]
                                    balanceOf[stor9] += -1 * msg.value * 10 * PRICE / 9
                                    require balanceOf[address(msg.sender)] + (msg.value * 10 * PRICE / 9) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value * 10 * PRICE / 9
                                    require msg.value * 10 * PRICE / 9 <= _icoSupply
                                    _icoSupply += -1 * msg.value * 10 * PRICE / 9
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 10 * PRICE / 9, msg.sender, msg.sender);
                                else:
                                    if block.timestamp < startTime + (696 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require not 0 / msg.value
                                        require _icoSupply >= 0
                                        require 0 <= balanceOf[stor9]
                                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        require 0 <= _icoSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        if block.timestamp > startTime + (720 * 24 * 3600):
                                            if block.timestamp < startTime + (744 * 24 * 3600):
                                                if msg.value:
                                                    require msg.value
                                                    require not 0 / msg.value
                                                require _icoSupply >= 0
                                                require 0 <= balanceOf[stor9]
                                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                require 0 <= _icoSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                            else:
                                                if msg.value:
                                                    require msg.value
                                                    require msg.value * PRICE / msg.value == PRICE
                                                require _icoSupply >= msg.value * PRICE
                                                require msg.value * PRICE <= balanceOf[stor9]
                                                balanceOf[stor9] += -1 * msg.value * PRICE
                                                require balanceOf[address(msg.sender)] + (msg.value * PRICE) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value * PRICE
                                                require msg.value * PRICE <= _icoSupply
                                                _icoSupply += -1 * msg.value * PRICE
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, msg.value * PRICE, msg.sender, msg.sender);
                                        else:
                                            if PRICE:
                                                require PRICE
                                                require 20 * PRICE / PRICE == 20
                                            if msg.value:
                                                require msg.value
                                                require msg.value * 20 * PRICE / 19 / msg.value == 20 * PRICE / 19
                                            require _icoSupply >= msg.value * 20 * PRICE / 19
                                            require msg.value * 20 * PRICE / 19 <= balanceOf[stor9]
                                            balanceOf[stor9] += -1 * msg.value * 20 * PRICE / 19
                                            require balanceOf[address(msg.sender)] + (msg.value * 20 * PRICE / 19) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value * 20 * PRICE / 19
                                            require msg.value * 20 * PRICE / 19 <= _icoSupply
                                            _icoSupply += -1 * msg.value * 20 * PRICE / 19
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, msg.value * 20 * PRICE / 19, msg.sender, msg.sender);
}



}
