contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() {
    stor0 = msg.sender
    stor5 = 10000
    stor6 = 10^14
    stor7 = 20
    stor8 = 100
    stor9 = 100
    return code.data[140 len 11597]
}



// =====================  Runtime code  =====================


const website = 'www.dappleairdrops.com'


address owner;
mapping of uint256 bonusDropsOf;
mapping of uint256 ethBalanceOf;
mapping of uint8 stor3;
mapping of uint256 trialDrops;
uint256 rate;
uint256 dropUnitPrice;
uint256 bonus;
uint256 maxDropsPerTx;
uint256 maxTrialDrops;

function maxDropsPerTx() {
    return maxDropsPerTx
}

function rate() {
    return rate
}

function getMaxDropsPerTx() {
    return maxDropsPerTx
}

function tokenIsBanned(address arg1) {
    return bool(stor3[arg1])
}

function trialDrops(address arg1) {
    return trialDrops[arg1]
}

function getRate() {
    return rate
}

function ethBalanceOf(address arg1) {
    return ethBalanceOf[arg1]
}

function bonus() {
    return bonus
}

function owner() {
    return owner
}

function bonusDropsOf(address arg1) {
    return bonusDropsOf[arg1]
}

function getBonusDropsOf(address arg1) {
    return bonusDropsOf[address(arg1)]
}

function dropUnitPrice() {
    return dropUnitPrice
}

function getEthBalanceOf(address arg1) {
    return ethBalanceOf[address(arg1)]
}

function maxTrialDrops() {
    return maxTrialDrops
}

function tokenHasFreeTrial(address arg1) {
    return (trialDrops[address(arg1)] < maxTrialDrops)
}

function setBonus(uint256 arg1) {
    require msg.sender == owner
    require bonus != arg1
    emit BonustChanged(bonus, arg1);
    bonus = arg1
    return 0
}

function banToken(address arg1) {
    require msg.sender == owner
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    emit TokenBanned(arg1);
    return 1
}

function unbanToken(address arg1) {
    require msg.sender == owner
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    emit TokenUnbanned(arg1);
    return 1
}

function setMaxDrops(uint256 arg1) {
    require msg.sender == owner
    require arg1 >= 100
    emit MaxDropsChanged(maxDropsPerTx, arg1);
    maxDropsPerTx = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != owner
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 != rate
    require arg1 > 0
    emit RateChanged(rate, arg1);
    rate = arg1
    require rate
    dropUnitPrice = 10^18 / rate
    return 1
}

function getRemainingTrialDrops(address arg1) {
    if trialDrops[address(arg1)] >= maxTrialDrops:
        return 0
    require trialDrops[address(arg1)] <= maxTrialDrops
    return (maxTrialDrops - trialDrops[address(arg1)])
}

function getTokenAllowance(address arg1, address arg2) {
    require ext_code.size(arg2)
    call arg2.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function getDropsOf(address arg1) {
    if not ethBalanceOf[address(arg1)]:
        return 0
    require ethBalanceOf[address(arg1)]
    require ethBalanceOf[address(arg1)] * rate / ethBalanceOf[address(arg1)] == rate
    return (ethBalanceOf[address(arg1)] * rate / 10^18)
}

function grantBonusDrops(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require bonusDropsOf[address(arg1)] + arg2 >= bonusDropsOf[address(arg1)]
    bonusDropsOf[address(arg1)] += arg2
    emit BonusCreditGranted(arg2, arg1);
    return 1
}

function revokeBonusCreditOf(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require bonusDropsOf[address(arg1)] >= arg2
    require arg2 <= bonusDropsOf[address(arg1)]
    bonusDropsOf[address(arg1)] -= arg2
    emit BonusCreditRevoked(arg2, arg1);
    return 1
}

function withdrawEth(uint256 arg1) {
    require ethBalanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    require arg1 <= ethBalanceOf[address(msg.sender)]
    ethBalanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EthWithdrawn(arg1, msg.sender);
    return 0
}

function withdrawERC20Tokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg3 > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    emit ERC20TokensWithdrawn(address(arg1), address(arg2), arg3);
    return 1
}

function _fallback() payable {
    require ethBalanceOf[address(msg.sender)] + msg.value >= ethBalanceOf[address(msg.sender)]
    ethBalanceOf[address(msg.sender)] += msg.value
    if not msg.value:
        emit CreditPurchased(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        emit CreditPurchased(msg.value, msg.value * rate, msg.sender);
}

function getTotalDropsOf(address arg1) {
    if not ethBalanceOf[address(arg1)]:
        if bonusDropsOf[address(arg1)] >= 0:
            return bonusDropsOf[address(arg1)]
    else:
        if ethBalanceOf[address(arg1)]:
            if ethBalanceOf[address(arg1)] * rate / ethBalanceOf[address(arg1)] == rate:
                if (ethBalanceOf[address(arg1)] * rate / 10^18) + bonusDropsOf[address(arg1)] >= ethBalanceOf[address(arg1)] * rate / 10^18:
                    return ((ethBalanceOf[address(arg1)] * rate / 10^18) + bonusDropsOf[address(arg1)])
    revert
}

function issueRefunds(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length <= maxDropsPerTx
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            s = s
            idx = idx + 1
            continue 
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if ethBalanceOf[mem[(32 * idx) + 140 len 20]] <= 0:
            s = s
            idx = idx + 1
            continue 
        require idx < arg1.length
        _35 = sha3(mem[(32 * idx) + 140 len 20], 2)
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        ethBalanceOf[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        call mem[(32 * idx) + 140 len 20] with:
           value ethBalanceOf[mem[(32 * idx) + 140 len 20]] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < arg1.length
        _44 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = ethBalanceOf[mem[(32 * idx) + 140 len 20]]
        emit RefundIssued(stor[_35], address(_44));
        s = stor[_35]
        idx = idx + 1
        continue 
    return 0
}

function singleValueAirdrop(address arg1, address[] arg2, uint256 arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= maxDropsPerTx
    if not ethBalanceOf[address(msg.sender)]:
        require bonusDropsOf[address(msg.sender)] >= 0
        if bonusDropsOf[address(msg.sender)] >= arg2.length:
            require not stor3[address(arg1)]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg2.length
                    _1439 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_1439)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(_1439), arg3
                    require ext_call.success
                idx = idx + 1
                continue 
        else:
            require trialDrops[address(arg1)] < maxTrialDrops
            require not stor3[address(arg1)]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg2.length
                    _1445 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_1445)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(_1445), arg3
                    require ext_call.success
                idx = idx + 1
                continue 
    else:
        require ethBalanceOf[address(msg.sender)]
        require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
        require (ethBalanceOf[address(msg.sender)] * rate / 10^18) + bonusDropsOf[address(msg.sender)] >= ethBalanceOf[address(msg.sender)] * rate / 10^18
        if (ethBalanceOf[address(msg.sender)] * rate / 10^18) + bonusDropsOf[address(msg.sender)] >= arg2.length:
            require not stor3[address(arg1)]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg2.length
                    _1427 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_1427)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(_1427), arg3
                    require ext_call.success
                idx = idx + 1
                continue 
        else:
            require trialDrops[address(arg1)] < maxTrialDrops
            require not stor3[address(arg1)]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg2.length
                    _1433 = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_1433)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(_1433), arg3
                    require ext_call.success
                idx = idx + 1
                continue 
    if trialDrops[address(arg1)] < maxTrialDrops:
        require trialDrops[address(arg1)] + arg2.length >= trialDrops[address(arg1)]
        trialDrops[address(arg1)] += arg2.length
    else:
        if not ethBalanceOf[address(msg.sender)]:
            if arg2.length <= 0:
                if not arg2.length:
                    require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                else:
                    require arg2.length
                    require arg2.length * bonus / arg2.length == bonus
                    require bonusDropsOf[address(msg.sender)] + (arg2.length * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] += arg2.length * bonus / 100
                if not arg2.length:
                    require 0 <= ethBalanceOf[address(msg.sender)]
                else:
                    require arg2.length
                    require arg2.length * dropUnitPrice / arg2.length == dropUnitPrice
                    require arg2.length * dropUnitPrice <= ethBalanceOf[address(msg.sender)]
                    ethBalanceOf[address(msg.sender)] += -1 * arg2.length * dropUnitPrice
                if not arg2.length:
                    call owner with:
                         gas 2300 wei
                else:
                    require arg2.length
                    require arg2.length * dropUnitPrice / arg2.length == dropUnitPrice
                    call owner with:
                       value arg2.length * dropUnitPrice wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                if not ethBalanceOf[address(msg.sender)]:
                    require 0 <= arg2.length
                    if ethBalanceOf[address(msg.sender)] > 0:
                        if not ethBalanceOf[address(msg.sender)]:
                            require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                        else:
                            require ethBalanceOf[address(msg.sender)]
                            require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                            if not ethBalanceOf[address(msg.sender)] * rate / 10^18:
                                require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                            else:
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / ethBalanceOf[address(msg.sender)] * rate / 10^18 == bonus
                                require bonusDropsOf[address(msg.sender)] + (ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                                bonusDropsOf[address(msg.sender)] += ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100
                        call owner with:
                           value ethBalanceOf[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        ethBalanceOf[address(msg.sender)] = 0
                    require arg2.length <= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] -= arg2.length
                else:
                    require ethBalanceOf[address(msg.sender)]
                    require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                    require ethBalanceOf[address(msg.sender)] * rate / 10^18 <= arg2.length
                    if ethBalanceOf[address(msg.sender)] > 0:
                        if not ethBalanceOf[address(msg.sender)]:
                            require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                        else:
                            require ethBalanceOf[address(msg.sender)]
                            require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                            if not ethBalanceOf[address(msg.sender)] * rate / 10^18:
                                require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                            else:
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / ethBalanceOf[address(msg.sender)] * rate / 10^18 == bonus
                                require bonusDropsOf[address(msg.sender)] + (ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                                bonusDropsOf[address(msg.sender)] += ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100
                        call owner with:
                           value ethBalanceOf[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        ethBalanceOf[address(msg.sender)] = 0
                    require arg2.length - (ethBalanceOf[address(msg.sender)] * rate / 10^18) <= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] = bonusDropsOf[address(msg.sender)] - arg2.length + (ethBalanceOf[address(msg.sender)] * rate / 10^18)
        else:
            require ethBalanceOf[address(msg.sender)]
            require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
            if arg2.length <= ethBalanceOf[address(msg.sender)] * rate / 10^18:
                if not arg2.length:
                    require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                else:
                    require arg2.length
                    require arg2.length * bonus / arg2.length == bonus
                    require bonusDropsOf[address(msg.sender)] + (arg2.length * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] += arg2.length * bonus / 100
                if not arg2.length:
                    require 0 <= ethBalanceOf[address(msg.sender)]
                else:
                    require arg2.length
                    require arg2.length * dropUnitPrice / arg2.length == dropUnitPrice
                    require arg2.length * dropUnitPrice <= ethBalanceOf[address(msg.sender)]
                    ethBalanceOf[address(msg.sender)] += -1 * arg2.length * dropUnitPrice
                if not arg2.length:
                    call owner with:
                         gas 2300 wei
                else:
                    require arg2.length
                    require arg2.length * dropUnitPrice / arg2.length == dropUnitPrice
                    call owner with:
                       value arg2.length * dropUnitPrice wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                if not ethBalanceOf[address(msg.sender)]:
                    require 0 <= arg2.length
                    if ethBalanceOf[address(msg.sender)] > 0:
                        if not ethBalanceOf[address(msg.sender)]:
                            require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                        else:
                            require ethBalanceOf[address(msg.sender)]
                            require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                            if not ethBalanceOf[address(msg.sender)] * rate / 10^18:
                                require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                            else:
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / ethBalanceOf[address(msg.sender)] * rate / 10^18 == bonus
                                require bonusDropsOf[address(msg.sender)] + (ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                                bonusDropsOf[address(msg.sender)] += ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100
                        call owner with:
                           value ethBalanceOf[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        ethBalanceOf[address(msg.sender)] = 0
                    require arg2.length <= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] -= arg2.length
                else:
                    require ethBalanceOf[address(msg.sender)]
                    require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                    require ethBalanceOf[address(msg.sender)] * rate / 10^18 <= arg2.length
                    if ethBalanceOf[address(msg.sender)] > 0:
                        if not ethBalanceOf[address(msg.sender)]:
                            require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                        else:
                            require ethBalanceOf[address(msg.sender)]
                            require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                            if not ethBalanceOf[address(msg.sender)] * rate / 10^18:
                                require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                            else:
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / ethBalanceOf[address(msg.sender)] * rate / 10^18 == bonus
                                require bonusDropsOf[address(msg.sender)] + (ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                                bonusDropsOf[address(msg.sender)] += ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100
                        call owner with:
                           value ethBalanceOf[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        ethBalanceOf[address(msg.sender)] = 0
                    require arg2.length - (ethBalanceOf[address(msg.sender)] * rate / 10^18) <= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] = bonusDropsOf[address(msg.sender)] - arg2.length + (ethBalanceOf[address(msg.sender)] * rate / 10^18)
    emit AirdropInvoked(arg2.length, msg.sender);
    return 1
}

function multiValueAirdrop(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length <= maxDropsPerTx
    require arg2.length == arg3.length
    if not ethBalanceOf[address(msg.sender)]:
        require bonusDropsOf[address(msg.sender)] >= 0
        if bonusDropsOf[address(msg.sender)] >= arg2.length:
            require not stor3[address(arg1)]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg3.length
                    if mem[(32 * idx) + (32 * arg2.length) + 160] > 0:
                        require idx < arg2.length
                        _1474 = mem[(32 * idx) + 128]
                        require idx < arg3.length
                        _1494 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1474)
                        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1494
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(_1474), _1494
                        require ext_call.success
                idx = idx + 1
                continue 
        else:
            require trialDrops[address(arg1)] < maxTrialDrops
            require not stor3[address(arg1)]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg3.length
                    if mem[(32 * idx) + (32 * arg2.length) + 160] > 0:
                        require idx < arg2.length
                        _1477 = mem[(32 * idx) + 128]
                        require idx < arg3.length
                        _1500 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1477)
                        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1500
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(_1477), _1500
                        require ext_call.success
                idx = idx + 1
                continue 
    else:
        require ethBalanceOf[address(msg.sender)]
        require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
        require (ethBalanceOf[address(msg.sender)] * rate / 10^18) + bonusDropsOf[address(msg.sender)] >= ethBalanceOf[address(msg.sender)] * rate / 10^18
        if (ethBalanceOf[address(msg.sender)] * rate / 10^18) + bonusDropsOf[address(msg.sender)] >= arg2.length:
            require not stor3[address(arg1)]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg3.length
                    if mem[(32 * idx) + (32 * arg2.length) + 160] > 0:
                        require idx < arg2.length
                        _1468 = mem[(32 * idx) + 128]
                        require idx < arg3.length
                        _1482 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1468)
                        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1482
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(_1468), _1482
                        require ext_call.success
                idx = idx + 1
                continue 
        else:
            require trialDrops[address(arg1)] < maxTrialDrops
            require not stor3[address(arg1)]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg3.length
                    if mem[(32 * idx) + (32 * arg2.length) + 160] > 0:
                        require idx < arg2.length
                        _1471 = mem[(32 * idx) + 128]
                        require idx < arg3.length
                        _1488 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_1471)
                        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _1488
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(_1471), _1488
                        require ext_call.success
                idx = idx + 1
                continue 
    if trialDrops[address(arg1)] < maxTrialDrops:
        require trialDrops[address(arg1)] + arg2.length >= trialDrops[address(arg1)]
        trialDrops[address(arg1)] += arg2.length
    else:
        if not ethBalanceOf[address(msg.sender)]:
            if arg2.length <= 0:
                if not arg2.length:
                    require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                else:
                    require arg2.length
                    require arg2.length * bonus / arg2.length == bonus
                    require bonusDropsOf[address(msg.sender)] + (arg2.length * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] += arg2.length * bonus / 100
                if not arg2.length:
                    require 0 <= ethBalanceOf[address(msg.sender)]
                else:
                    require arg2.length
                    require arg2.length * dropUnitPrice / arg2.length == dropUnitPrice
                    require arg2.length * dropUnitPrice <= ethBalanceOf[address(msg.sender)]
                    ethBalanceOf[address(msg.sender)] += -1 * arg2.length * dropUnitPrice
                if not arg2.length:
                    call owner with:
                         gas 2300 wei
                else:
                    require arg2.length
                    require arg2.length * dropUnitPrice / arg2.length == dropUnitPrice
                    call owner with:
                       value arg2.length * dropUnitPrice wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                if not ethBalanceOf[address(msg.sender)]:
                    require 0 <= arg2.length
                    if ethBalanceOf[address(msg.sender)] > 0:
                        if not ethBalanceOf[address(msg.sender)]:
                            require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                        else:
                            require ethBalanceOf[address(msg.sender)]
                            require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                            if not ethBalanceOf[address(msg.sender)] * rate / 10^18:
                                require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                            else:
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / ethBalanceOf[address(msg.sender)] * rate / 10^18 == bonus
                                require bonusDropsOf[address(msg.sender)] + (ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                                bonusDropsOf[address(msg.sender)] += ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100
                        call owner with:
                           value ethBalanceOf[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        ethBalanceOf[address(msg.sender)] = 0
                    require arg2.length <= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] -= arg2.length
                else:
                    require ethBalanceOf[address(msg.sender)]
                    require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                    require ethBalanceOf[address(msg.sender)] * rate / 10^18 <= arg2.length
                    if ethBalanceOf[address(msg.sender)] > 0:
                        if not ethBalanceOf[address(msg.sender)]:
                            require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                        else:
                            require ethBalanceOf[address(msg.sender)]
                            require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                            if not ethBalanceOf[address(msg.sender)] * rate / 10^18:
                                require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                            else:
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / ethBalanceOf[address(msg.sender)] * rate / 10^18 == bonus
                                require bonusDropsOf[address(msg.sender)] + (ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                                bonusDropsOf[address(msg.sender)] += ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100
                        call owner with:
                           value ethBalanceOf[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        ethBalanceOf[address(msg.sender)] = 0
                    require arg2.length - (ethBalanceOf[address(msg.sender)] * rate / 10^18) <= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] = bonusDropsOf[address(msg.sender)] - arg2.length + (ethBalanceOf[address(msg.sender)] * rate / 10^18)
        else:
            require ethBalanceOf[address(msg.sender)]
            require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
            if arg2.length <= ethBalanceOf[address(msg.sender)] * rate / 10^18:
                if not arg2.length:
                    require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                else:
                    require arg2.length
                    require arg2.length * bonus / arg2.length == bonus
                    require bonusDropsOf[address(msg.sender)] + (arg2.length * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] += arg2.length * bonus / 100
                if not arg2.length:
                    require 0 <= ethBalanceOf[address(msg.sender)]
                else:
                    require arg2.length
                    require arg2.length * dropUnitPrice / arg2.length == dropUnitPrice
                    require arg2.length * dropUnitPrice <= ethBalanceOf[address(msg.sender)]
                    ethBalanceOf[address(msg.sender)] += -1 * arg2.length * dropUnitPrice
                if not arg2.length:
                    call owner with:
                         gas 2300 wei
                else:
                    require arg2.length
                    require arg2.length * dropUnitPrice / arg2.length == dropUnitPrice
                    call owner with:
                       value arg2.length * dropUnitPrice wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                if not ethBalanceOf[address(msg.sender)]:
                    require 0 <= arg2.length
                    if ethBalanceOf[address(msg.sender)] > 0:
                        if not ethBalanceOf[address(msg.sender)]:
                            require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                        else:
                            require ethBalanceOf[address(msg.sender)]
                            require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                            if not ethBalanceOf[address(msg.sender)] * rate / 10^18:
                                require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                            else:
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / ethBalanceOf[address(msg.sender)] * rate / 10^18 == bonus
                                require bonusDropsOf[address(msg.sender)] + (ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                                bonusDropsOf[address(msg.sender)] += ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100
                        call owner with:
                           value ethBalanceOf[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        ethBalanceOf[address(msg.sender)] = 0
                    require arg2.length <= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] -= arg2.length
                else:
                    require ethBalanceOf[address(msg.sender)]
                    require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                    require ethBalanceOf[address(msg.sender)] * rate / 10^18 <= arg2.length
                    if ethBalanceOf[address(msg.sender)] > 0:
                        if not ethBalanceOf[address(msg.sender)]:
                            require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                        else:
                            require ethBalanceOf[address(msg.sender)]
                            require ethBalanceOf[address(msg.sender)] * rate / ethBalanceOf[address(msg.sender)] == rate
                            if not ethBalanceOf[address(msg.sender)] * rate / 10^18:
                                require bonusDropsOf[address(msg.sender)] >= bonusDropsOf[address(msg.sender)]
                            else:
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18
                                require ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / ethBalanceOf[address(msg.sender)] * rate / 10^18 == bonus
                                require bonusDropsOf[address(msg.sender)] + (ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100) >= bonusDropsOf[address(msg.sender)]
                                bonusDropsOf[address(msg.sender)] += ethBalanceOf[address(msg.sender)] * rate / 10^18 * bonus / 100
                        call owner with:
                           value ethBalanceOf[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        ethBalanceOf[address(msg.sender)] = 0
                    require arg2.length - (ethBalanceOf[address(msg.sender)] * rate / 10^18) <= bonusDropsOf[address(msg.sender)]
                    bonusDropsOf[address(msg.sender)] = bonusDropsOf[address(msg.sender)] - arg2.length + (ethBalanceOf[address(msg.sender)] * rate / 10^18)
    emit AirdropInvoked(arg2.length, msg.sender);
    return 1
}



}
