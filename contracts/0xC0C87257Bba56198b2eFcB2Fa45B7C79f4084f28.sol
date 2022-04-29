contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
bool stor15; offset 256
uint8 stor15;
uint8 stor15; offset 8

function _fallback() payable {
    uint8(stor3.field_160) = 0
    stor6 = 5
    stor7 = 100000
    uint8(stor15.field_0) = 1
    uint8(stor15.field_8) = 0
    stor15.field_256 % 1 = 0
    require not msg.value
    mem[96 len -6385] = code.data[6897 len -6385]
    mem[64] = -6289
    address(stor3.field_0) = msg.sender
    require mem[160] > 0
    stor4[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor5[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    if not mem[160]:
        stor8 = 0
    else:
        require stor7 * mem[160] / mem[160] == stor7
        stor8 = stor7 * mem[160]
    uint8(stor3.field_160) = 1
    return code.data[512 len 6385]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 stor7;
uint256 cap;
address targetTokenAddress;
uint256 exchangeRate;
mapping of uint256 stor11;
mapping of uint256 stor12;
uint256 frozenRate;
uint256 exchangedNum;
uint8 stor15;
uint8 stor15; offset 8
uint256 stor15; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function targetToken() {
    return targetTokenAddress
}

function cap() {
    return cap
}

function exchangeRate() {
    return exchangeRate
}

function projectFailed() {
    return bool(uint8(stor15.field_8))
}

function paused() {
    return bool(stor3)
}

function exchangedNum() {
    return exchangedNum
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenRate() {
    return frozenRate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function canBuy() {
    return bool(uint8(stor15.field_0))
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function unpause() {
    require owner == msg.sender
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit Pause()
}

function pauseBuy() {
    require owner == msg.sender
    uint8(stor15.field_0) = 0
    emit PauseBuy()
}

function unPauseBuy() {
    require owner == msg.sender
    uint8(stor15.field_0) = 1
    emit UnPauseBuy()
}

function sub_78e4034b(?) {
    require owner == msg.sender
    Mask(248, 0, stor15.field_8) = Mask(248, 0, arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOfTarget(address arg1) {
    if not targetTokenAddress:
        return 0
    require ext_code.size(targetTokenAddress)
    call targetTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_fdff3610(?) {
    require owner == msg.sender
    if arg3 > 0:
        if arg2 > 0:
            require arg1
            exchangeRate = arg2
            targetTokenAddress = arg1
    else:
        require arg2 > 0
        require arg1
        exchangeRate = arg2
        targetTokenAddress = arg1
    if arg3 > 0:
        frozenRate = arg3
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor3
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor3
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function balanceOfFrozen(address arg1) {
    if 0 == frozenRate:
        return 0
    if stor12[address(msg.sender)] <= frozenRate:
        return stor11[address(arg1)]
    if not stor11[address(msg.sender)]:
        if stor12[address(msg.sender)]:
            return (0 / stor12[address(msg.sender)])
    else:
        if frozenRate * stor11[address(msg.sender)] / stor11[address(msg.sender)] == frozenRate:
            if stor12[address(msg.sender)]:
                return (frozenRate * stor11[address(msg.sender)] / stor12[address(msg.sender)])
    revert
}

function canExchangeNum() {
    if not targetTokenAddress:
        return 0
    if exchangeRate <= 0:
        return 0
    require ext_code.size(targetTokenAddress)
    call targetTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not stor7:
        if exchangeRate:
            return (0 / exchangeRate)
    else:
        if ext_call.return_data[0] * stor7 / stor7 == ext_call.return_data[0]:
            if exchangeRate:
                return (ext_call.return_data[0] * stor7 / exchangeRate)
    revert
}

function increaseCap(int256 arg1) {
    require owner == msg.sender
    require arg1
    if arg1 > 0:
        if not stor7:
            require cap >= cap
        else:
            require arg1 * stor7 / stor7 == arg1
            require (arg1 * stor7) + cap >= cap
            cap += arg1 * stor7
    else:
        if not stor7:
            if 0 < cap - totalSupply:
                require 0 <= cap
            else:
                cap = totalSupply
        else:
            require -1 * arg1 * stor7 / stor7 == -arg1
            if -1 * arg1 * stor7 >= cap - totalSupply:
                cap = totalSupply
            else:
                require -1 * arg1 * stor7 <= cap
                cap += test266151307() * arg1 * stor7
    emit IncreaseCap(cap);
}

function buyTokens(address arg1) payable {
    require uint8(stor15.field_0)
    require msg.value >= 10^13
    require arg1
    if not msg.value:
        require totalSupply >= totalSupply
        require totalSupply <= cap
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit TokenPurchase(0, msg.sender, arg1);
    else:
        require stor7 * msg.value / msg.value == stor7
        require (stor7 * msg.value / 10^18) + totalSupply >= totalSupply
        totalSupply += stor7 * msg.value / 10^18
        require (stor7 * msg.value / 10^18) + totalSupply <= cap
        require (stor7 * msg.value / 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += stor7 * msg.value / 10^18
        emit TokenPurchase((stor7 * msg.value / 10^18), msg.sender, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require uint8(stor15.field_0)
    require msg.value >= 10^13
    require msg.sender
    if not msg.value:
        require totalSupply >= totalSupply
        require totalSupply <= cap
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit TokenPurchase(0, msg.sender, msg.sender);
    else:
        require stor7 * msg.value / msg.value == stor7
        require (stor7 * msg.value / 10^18) + totalSupply >= totalSupply
        totalSupply += stor7 * msg.value / 10^18
        require (stor7 * msg.value / 10^18) + totalSupply <= cap
        require (stor7 * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += stor7 * msg.value / 10^18
        emit TokenPurchase((stor7 * msg.value / 10^18), msg.sender, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    require not frozenRate
    if arg2 == this.address:
        if uint8(stor15.field_8):
            if not arg3:
                require stor7
                call msg.sender with:
                   value 0 / stor7 wei
                     gas 2300 * is_zero(value) wei
            else:
                require 10^18 * arg3 / arg3 == 10^18
                require stor7
                call msg.sender with:
                   value 10^18 * arg3 / stor7 wei
                     gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Exchanged(msg.sender, 0);
        else:
            require targetTokenAddress
            require exchangeRate > 0
            if not arg3:
                require stor7
                require ext_code.size(targetTokenAddress)
                call targetTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0 / stor7
                require ext_call.success
                require arg3 + exchangedNum >= exchangedNum
                exchangedNum += arg3
                emit Exchanged(msg.sender, 0 / stor7);
            else:
                require exchangeRate * arg3 / arg3 == exchangeRate
                require stor7
                require ext_code.size(targetTokenAddress)
                call targetTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, exchangeRate * arg3 / stor7
                require ext_call.success
                require arg3 + exchangedNum >= exchangedNum
                exchangedNum += arg3
                emit Exchanged(msg.sender, exchangeRate * arg3 / stor7);
    else:
        if owner == arg2:
            if uint8(stor15.field_8):
                if not arg3:
                    require stor7
                    call msg.sender with:
                       value 0 / stor7 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require 10^18 * arg3 / arg3 == 10^18
                    require stor7
                    call msg.sender with:
                       value 10^18 * arg3 / stor7 wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Exchanged(msg.sender, 0);
            else:
                require targetTokenAddress
                require exchangeRate > 0
                if not arg3:
                    require stor7
                    require ext_code.size(targetTokenAddress)
                    call targetTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0 / stor7
                    require ext_call.success
                    require arg3 + exchangedNum >= exchangedNum
                    exchangedNum += arg3
                    emit Exchanged(msg.sender, 0 / stor7);
                else:
                    require exchangeRate * arg3 / arg3 == exchangeRate
                    require stor7
                    require ext_code.size(targetTokenAddress)
                    call targetTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, exchangeRate * arg3 / stor7
                    require ext_call.success
                    require arg3 + exchangedNum >= exchangedNum
                    exchangedNum += arg3
                    emit Exchanged(msg.sender, exchangeRate * arg3 / stor7);
    require not stor3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    if not frozenRate:
        if stor11[address(msg.sender)] > 0:
            stor11[address(msg.sender)] = 0
        if stor12[address(msg.sender)] > 0:
            stor12[address(msg.sender)] = 0
    else:
        if stor12[address(msg.sender)] <= frozenRate:
            if not stor12[address(msg.sender)]:
                stor12[address(msg.sender)] = frozenRate
        else:
            if not stor11[address(msg.sender)]:
                require stor12[address(msg.sender)]
                stor11[address(msg.sender)] = 0 / stor12[address(msg.sender)]
            else:
                require frozenRate * stor11[address(msg.sender)] / stor11[address(msg.sender)] == frozenRate
                require stor12[address(msg.sender)]
                stor11[address(msg.sender)] = frozenRate * stor11[address(msg.sender)] / stor12[address(msg.sender)]
            stor12[address(msg.sender)] = frozenRate
    require stor11[address(msg.sender)] + arg2 >= arg2
    require stor11[address(msg.sender)] + arg2 <= balanceOf[address(msg.sender)]
    if arg1 == this.address:
        if frozenRate <= 0:
            if uint8(stor15.field_8):
                if not arg2:
                    require stor7
                    call msg.sender with:
                       value 0 / stor7 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require 10^18 * arg2 / arg2 == 10^18
                    require stor7
                    call msg.sender with:
                       value 10^18 * arg2 / stor7 wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Exchanged(msg.sender, 0);
            else:
                require targetTokenAddress
                require exchangeRate > 0
                if not arg2:
                    require stor7
                    require ext_code.size(targetTokenAddress)
                    call targetTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0 / stor7
                    require ext_call.success
                    require arg2 + exchangedNum >= exchangedNum
                    exchangedNum += arg2
                    emit Exchanged(msg.sender, 0 / stor7);
                else:
                    require exchangeRate * arg2 / arg2 == exchangeRate
                    require stor7
                    require ext_code.size(targetTokenAddress)
                    call targetTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, exchangeRate * arg2 / stor7
                    require ext_call.success
                    require arg2 + exchangedNum >= exchangedNum
                    exchangedNum += arg2
                    emit Exchanged(msg.sender, exchangeRate * arg2 / stor7);
            require not stor3
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not arg2:
                require stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                require 0 <= arg2
                if uint8(stor15.field_8):
                    if not arg2:
                        require stor7
                        call msg.sender with:
                           value 0 / stor7 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 10^18 * arg2 / arg2 == 10^18
                        require stor7
                        call msg.sender with:
                           value 10^18 * arg2 / stor7 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Exchanged(msg.sender, 0);
                else:
                    require targetTokenAddress
                    require exchangeRate > 0
                    if not arg2:
                        require stor7
                        require ext_code.size(targetTokenAddress)
                        call targetTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0 / stor7
                        require ext_call.success
                        require arg2 + exchangedNum >= exchangedNum
                        exchangedNum += arg2
                        emit Exchanged(msg.sender, 0 / stor7);
                    else:
                        require exchangeRate * arg2 / arg2 == exchangeRate
                        require stor7
                        require ext_code.size(targetTokenAddress)
                        call targetTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, exchangeRate * arg2 / stor7
                        require ext_call.success
                        require arg2 + exchangedNum >= exchangedNum
                        exchangedNum += arg2
                        emit Exchanged(msg.sender, exchangeRate * arg2 / stor7);
                require not stor3
                require arg1
                require arg2 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require frozenRate * arg2 / arg2 == frozenRate
                require (frozenRate * arg2 / 10000) + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                stor11[address(msg.sender)] += frozenRate * arg2 / 10000
                require frozenRate * arg2 / 10000 <= arg2
                if uint8(stor15.field_8):
                    if not arg2 - (frozenRate * arg2 / 10000):
                        require stor7
                        call msg.sender with:
                           value 0 / stor7 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require (10^18 * arg2) - (10^18 * frozenRate * arg2 / 10000) / arg2 - (frozenRate * arg2 / 10000) == 10^18
                        require stor7
                        call msg.sender with:
                           value (10^18 * arg2) - (10^18 * frozenRate * arg2 / 10000) / stor7 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Exchanged(msg.sender, 0);
                else:
                    require targetTokenAddress
                    require exchangeRate > 0
                    if not arg2 - (frozenRate * arg2 / 10000):
                        require stor7
                        require ext_code.size(targetTokenAddress)
                        call targetTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0 / stor7
                        require ext_call.success
                        require arg2 - (frozenRate * arg2 / 10000) + exchangedNum >= exchangedNum
                        exchangedNum = arg2 - (frozenRate * arg2 / 10000) + exchangedNum
                        emit Exchanged(msg.sender, 0 / stor7);
                    else:
                        require (arg2 * exchangeRate) - (frozenRate * arg2 / 10000 * exchangeRate) / arg2 - (frozenRate * arg2 / 10000) == exchangeRate
                        require stor7
                        require ext_code.size(targetTokenAddress)
                        call targetTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (arg2 * exchangeRate) - (frozenRate * arg2 / 10000 * exchangeRate) / stor7
                        require ext_call.success
                        require arg2 - (frozenRate * arg2 / 10000) + exchangedNum >= exchangedNum
                        exchangedNum = arg2 - (frozenRate * arg2 / 10000) + exchangedNum
                        emit Exchanged(msg.sender, (arg2 * exchangeRate) - (frozenRate * arg2 / 10000 * exchangeRate) / stor7);
                require not stor3
                require arg1
                require arg2 - (frozenRate * arg2 / 10000) <= balanceOf[address(msg.sender)]
                require arg2 - (frozenRate * arg2 / 10000) <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (frozenRate * arg2 / 10000)
                require arg2 - (frozenRate * arg2 / 10000) + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 - (frozenRate * arg2 / 10000) + balanceOf[arg1]
                emit Transfer((arg2 - (frozenRate * arg2 / 10000)), msg.sender, arg1);
    else:
        if owner != arg1:
            require not stor3
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if frozenRate <= 0:
                if uint8(stor15.field_8):
                    if not arg2:
                        require stor7
                        call msg.sender with:
                           value 0 / stor7 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 10^18 * arg2 / arg2 == 10^18
                        require stor7
                        call msg.sender with:
                           value 10^18 * arg2 / stor7 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Exchanged(msg.sender, 0);
                else:
                    require targetTokenAddress
                    require exchangeRate > 0
                    if not arg2:
                        require stor7
                        require ext_code.size(targetTokenAddress)
                        call targetTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0 / stor7
                        require ext_call.success
                        require arg2 + exchangedNum >= exchangedNum
                        exchangedNum += arg2
                        emit Exchanged(msg.sender, 0 / stor7);
                    else:
                        require exchangeRate * arg2 / arg2 == exchangeRate
                        require stor7
                        require ext_code.size(targetTokenAddress)
                        call targetTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, exchangeRate * arg2 / stor7
                        require ext_call.success
                        require arg2 + exchangedNum >= exchangedNum
                        exchangedNum += arg2
                        emit Exchanged(msg.sender, exchangeRate * arg2 / stor7);
                require not stor3
                require arg1
                require arg2 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not arg2:
                    require stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                    require 0 <= arg2
                    if uint8(stor15.field_8):
                        if not arg2:
                            require stor7
                            call msg.sender with:
                               value 0 / stor7 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 10^18 * arg2 / arg2 == 10^18
                            require stor7
                            call msg.sender with:
                               value 10^18 * arg2 / stor7 wei
                                 gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Exchanged(msg.sender, 0);
                    else:
                        require targetTokenAddress
                        require exchangeRate > 0
                        if not arg2:
                            require stor7
                            require ext_code.size(targetTokenAddress)
                            call targetTokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0 / stor7
                            require ext_call.success
                            require arg2 + exchangedNum >= exchangedNum
                            exchangedNum += arg2
                            emit Exchanged(msg.sender, 0 / stor7);
                        else:
                            require exchangeRate * arg2 / arg2 == exchangeRate
                            require stor7
                            require ext_code.size(targetTokenAddress)
                            call targetTokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, exchangeRate * arg2 / stor7
                            require ext_call.success
                            require arg2 + exchangedNum >= exchangedNum
                            exchangedNum += arg2
                            emit Exchanged(msg.sender, exchangeRate * arg2 / stor7);
                    require not stor3
                    require arg1
                    require arg2 <= balanceOf[address(msg.sender)]
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    require frozenRate * arg2 / arg2 == frozenRate
                    require (frozenRate * arg2 / 10000) + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                    stor11[address(msg.sender)] += frozenRate * arg2 / 10000
                    require frozenRate * arg2 / 10000 <= arg2
                    if uint8(stor15.field_8):
                        if not arg2 - (frozenRate * arg2 / 10000):
                            require stor7
                            call msg.sender with:
                               value 0 / stor7 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (10^18 * arg2) - (10^18 * frozenRate * arg2 / 10000) / arg2 - (frozenRate * arg2 / 10000) == 10^18
                            require stor7
                            call msg.sender with:
                               value (10^18 * arg2) - (10^18 * frozenRate * arg2 / 10000) / stor7 wei
                                 gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Exchanged(msg.sender, 0);
                    else:
                        require targetTokenAddress
                        require exchangeRate > 0
                        if not arg2 - (frozenRate * arg2 / 10000):
                            require stor7
                            require ext_code.size(targetTokenAddress)
                            call targetTokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0 / stor7
                            require ext_call.success
                            require arg2 - (frozenRate * arg2 / 10000) + exchangedNum >= exchangedNum
                            exchangedNum = arg2 - (frozenRate * arg2 / 10000) + exchangedNum
                            emit Exchanged(msg.sender, 0 / stor7);
                        else:
                            require (arg2 * exchangeRate) - (frozenRate * arg2 / 10000 * exchangeRate) / arg2 - (frozenRate * arg2 / 10000) == exchangeRate
                            require stor7
                            require ext_code.size(targetTokenAddress)
                            call targetTokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (arg2 * exchangeRate) - (frozenRate * arg2 / 10000 * exchangeRate) / stor7
                            require ext_call.success
                            require arg2 - (frozenRate * arg2 / 10000) + exchangedNum >= exchangedNum
                            exchangedNum = arg2 - (frozenRate * arg2 / 10000) + exchangedNum
                            emit Exchanged(msg.sender, (arg2 * exchangeRate) - (frozenRate * arg2 / 10000 * exchangeRate) / stor7);
                    require not stor3
                    require arg1
                    require arg2 - (frozenRate * arg2 / 10000) <= balanceOf[address(msg.sender)]
                    require arg2 - (frozenRate * arg2 / 10000) <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (frozenRate * arg2 / 10000)
                    require arg2 - (frozenRate * arg2 / 10000) + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 - (frozenRate * arg2 / 10000) + balanceOf[arg1]
                    emit Transfer((arg2 - (frozenRate * arg2 / 10000)), msg.sender, arg1);
    return 1
}



}
