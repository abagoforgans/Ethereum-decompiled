contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor0 = msg.sender
    return code.data[69 len 4201]
}



// =====================  Runtime code  =====================


const MIN_ICO_GOAL = 5000 * 10^18

const MAX_ICO_GOAL = 50000 * 10^18

const TOTAL_ICO_TOKENS = 100 * 10^6

const ICO_DURATION = (240 * 24 * 3600)

const AFTER_MAX_GOAL_DURATION = (24 * 3600)


uint8 stor0; offset 160
address owner;
uint256 maxGoalReachedAt;
address tokenAddress;
uint256 startsAt;
uint256 weiRaised;
uint256 loadedRefund;
uint256 weiRefunded;
uint8 stor7;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
array of struct investments;

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function weiRaised() {
    return weiRaised
}

function weiRefunded() {
    return weiRefunded
}

function loadedRefund() {
    return loadedRefund
}

function owner() {
    return owner
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function startsAt() {
    return startsAt
}

function finalized() {
    return bool(stor7)
}

function halted() {
    return bool(stor0)
}

function maxGoalReachedAt() {
    return maxGoalReachedAt
}

function token() {
    return tokenAddress
}

function investments(uint256 arg1) {
    require arg1 < investments.length
    return address(investments[arg1].field_0), investments[arg1].field_256
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function halt() {
    require owner == msg.sender
    stor0 = 1
}

function isMinimumGoalReached() {
    return weiRaised >= 5000 * 10^18
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function Crowdsale(address arg1, uint256 arg2) {
    require arg1
    require arg2
    owner = msg.sender
    tokenAddress = arg1
    startsAt = arg2
}

function isCrowdsaleFull() {
    if weiRaised < 50000 * 10^18:
        return weiRaised >= 50000 * 10^18
    return (block.timestamp > maxGoalReachedAt + (24 * 3600))
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getState() {
    if stor7:
        return 5
    if not tokenAddress:
        return 1
    if block.timestamp >= startsAt:
        if block.timestamp < startsAt + (240 * 24 * 3600):
            if weiRaised < 50000 * 10^18:
                return 2
            if block.timestamp <= maxGoalReachedAt + (24 * 3600):
                return 2
    if weiRaised >= 50000 * 10^18:
        if block.timestamp > maxGoalReachedAt + (24 * 3600):
            return 3
    if weiRaised >= 5000 * 10^18:
        return 4
    if weiRaised <= 0:
        return 4
    if loadedRefund < weiRaised:
        return 4
    return 6
}

function loadRefund() payable {
    require not stor7
    require tokenAddress
    if block.timestamp >= startsAt:
        if block.timestamp < startsAt + (240 * 24 * 3600):
            require weiRaised >= 50000 * 10^18
            require block.timestamp > maxGoalReachedAt + (24 * 3600)
    if weiRaised >= 50000 * 10^18:
        require block.timestamp <= maxGoalReachedAt + (24 * 3600)
    if weiRaised < 5000 * 10^18:
        if weiRaised > 0:
            require loadedRefund < weiRaised
    require msg.value > 0
    require msg.value + loadedRefund >= loadedRefund
    require msg.value + loadedRefund >= msg.value
    loadedRefund += msg.value
}

function refund() {
    require not stor7
    require tokenAddress
    if block.timestamp >= startsAt:
        if block.timestamp < startsAt + (240 * 24 * 3600):
            require weiRaised >= 50000 * 10^18
            require block.timestamp > maxGoalReachedAt + (24 * 3600)
    if weiRaised >= 50000 * 10^18:
        require block.timestamp <= maxGoalReachedAt + (24 * 3600)
    require weiRaised < 5000 * 10^18
    require weiRaised > 0
    require loadedRefund >= weiRaised
    if investedAmountOf[address(msg.sender)]:
        investedAmountOf[address(msg.sender)] = 0
        require investedAmountOf[address(msg.sender)] + weiRefunded >= weiRefunded
        require investedAmountOf[address(msg.sender)] + weiRefunded >= investedAmountOf[address(msg.sender)]
        weiRefunded += investedAmountOf[address(msg.sender)]
        emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
        call msg.sender with:
           value investedAmountOf[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function invest(address arg1) payable {
    require not stor0
    require not stor7
    require tokenAddress
    if block.timestamp < startsAt:
        if weiRaised < 50000 * 10^18:
            require weiRaised < 5000 * 10^18
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            require block.timestamp <= maxGoalReachedAt + (24 * 3600)
            require weiRaised < 5000 * 10^18
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
    else:
        if block.timestamp >= startsAt + (240 * 24 * 3600):
            if weiRaised < 50000 * 10^18:
                require weiRaised < 5000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require block.timestamp <= maxGoalReachedAt + (24 * 3600)
                require weiRaised < 5000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
        else:
            if weiRaised < 50000 * 10^18:
                require msg.value > 0
                require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                require msg.value + investedAmountOf[address(arg1)] >= msg.value
                investedAmountOf[address(arg1)] += msg.value
                investments.length++
                if not investments.length > investments.length + 1:
                    address(investments[investments.length].field_0) = arg1
                    investments[investments.length].field_256 = msg.value
                    require msg.value + weiRaised >= weiRaised
                    require msg.value + weiRaised >= msg.value
                    weiRaised += msg.value
                    if maxGoalReachedAt:
                        emit Invested(address(arg1), msg.value);
                    else:
                        if weiRaised < 50000 * 10^18:
                            emit Invested(address(arg1), msg.value);
                        else:
                            maxGoalReachedAt = block.timestamp
                            emit Invested(address(arg1), msg.value);
                else:
                    idx = 2 * investments.length + 1
                    while 2 * investments.length > idx:
                        address(investments[idx].field_0) = 0
                        investments[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    address(investments[investments.length].field_0) = arg1
                    investments[investments.length].field_256 = msg.value
                    require msg.value + weiRaised >= weiRaised
                    require msg.value + weiRaised >= msg.value
                    weiRaised += msg.value
                    if maxGoalReachedAt:
                        emit Invested(address(arg1), msg.value);
                    else:
                        if weiRaised < 50000 * 10^18:
                            emit Invested(address(arg1), msg.value);
                        else:
                            maxGoalReachedAt = block.timestamp
                            emit Invested(address(arg1), msg.value);
            else:
                if block.timestamp > maxGoalReachedAt + (24 * 3600):
                    if weiRaised < 50000 * 10^18:
                        require weiRaised < 5000 * 10^18
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require block.timestamp <= maxGoalReachedAt + (24 * 3600)
                        require weiRaised < 5000 * 10^18
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                else:
                    require msg.value > 0
                    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    require msg.value + investedAmountOf[address(arg1)] >= msg.value
                    investedAmountOf[address(arg1)] += msg.value
                    investments.length++
                    if not investments.length > investments.length + 1:
                        address(investments[investments.length].field_0) = arg1
                        investments[investments.length].field_256 = msg.value
                        require msg.value + weiRaised >= weiRaised
                        require msg.value + weiRaised >= msg.value
                        weiRaised += msg.value
                        if maxGoalReachedAt:
                            emit Invested(address(arg1), msg.value);
                        else:
                            if weiRaised < 50000 * 10^18:
                                emit Invested(address(arg1), msg.value);
                            else:
                                maxGoalReachedAt = block.timestamp
                                emit Invested(address(arg1), msg.value);
                    else:
                        idx = 2 * investments.length + 1
                        while 2 * investments.length > idx:
                            address(investments[idx].field_0) = 0
                            investments[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                        address(investments[investments.length].field_0) = arg1
                        investments[investments.length].field_256 = msg.value
                        require msg.value + weiRaised >= weiRaised
                        require msg.value + weiRaised >= msg.value
                        weiRaised += msg.value
                        if maxGoalReachedAt:
                            emit Invested(address(arg1), msg.value);
                        else:
                            if weiRaised < 50000 * 10^18:
                                emit Invested(address(arg1), msg.value);
                            else:
                                maxGoalReachedAt = block.timestamp
                                emit Invested(address(arg1), msg.value);
}

function buy() payable {
    require not stor0
    require not stor7
    require tokenAddress
    if block.timestamp < startsAt:
        if weiRaised < 50000 * 10^18:
            require weiRaised < 5000 * 10^18
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            require block.timestamp <= maxGoalReachedAt + (24 * 3600)
            require weiRaised < 5000 * 10^18
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
    else:
        if block.timestamp >= startsAt + (240 * 24 * 3600):
            if weiRaised < 50000 * 10^18:
                require weiRaised < 5000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require block.timestamp <= maxGoalReachedAt + (24 * 3600)
                require weiRaised < 5000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
        else:
            if weiRaised < 50000 * 10^18:
                require msg.value > 0
                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                investedAmountOf[address(msg.sender)] += msg.value
                investments.length++
                if not investments.length > investments.length + 1:
                    address(investments[investments.length].field_0) = msg.sender
                    investments[investments.length].field_256 = msg.value
                    require msg.value + weiRaised >= weiRaised
                    require msg.value + weiRaised >= msg.value
                    weiRaised += msg.value
                    if maxGoalReachedAt:
                        emit Invested(msg.sender, msg.value);
                    else:
                        if weiRaised < 50000 * 10^18:
                            emit Invested(msg.sender, msg.value);
                        else:
                            maxGoalReachedAt = block.timestamp
                            emit Invested(msg.sender, msg.value);
                else:
                    idx = 2 * investments.length + 1
                    while 2 * investments.length > idx:
                        address(investments[idx].field_0) = 0
                        investments[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    address(investments[investments.length].field_0) = msg.sender
                    investments[investments.length].field_256 = msg.value
                    require msg.value + weiRaised >= weiRaised
                    require msg.value + weiRaised >= msg.value
                    weiRaised += msg.value
                    if maxGoalReachedAt:
                        emit Invested(msg.sender, msg.value);
                    else:
                        if weiRaised < 50000 * 10^18:
                            emit Invested(msg.sender, msg.value);
                        else:
                            maxGoalReachedAt = block.timestamp
                            emit Invested(msg.sender, msg.value);
            else:
                if block.timestamp > maxGoalReachedAt + (24 * 3600):
                    if weiRaised < 50000 * 10^18:
                        require weiRaised < 5000 * 10^18
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require block.timestamp <= maxGoalReachedAt + (24 * 3600)
                        require weiRaised < 5000 * 10^18
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                else:
                    require msg.value > 0
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                    investedAmountOf[address(msg.sender)] += msg.value
                    investments.length++
                    if not investments.length > investments.length + 1:
                        address(investments[investments.length].field_0) = msg.sender
                        investments[investments.length].field_256 = msg.value
                        require msg.value + weiRaised >= weiRaised
                        require msg.value + weiRaised >= msg.value
                        weiRaised += msg.value
                        if maxGoalReachedAt:
                            emit Invested(msg.sender, msg.value);
                        else:
                            if weiRaised < 50000 * 10^18:
                                emit Invested(msg.sender, msg.value);
                            else:
                                maxGoalReachedAt = block.timestamp
                                emit Invested(msg.sender, msg.value);
                    else:
                        idx = 2 * investments.length + 1
                        while 2 * investments.length > idx:
                            address(investments[idx].field_0) = 0
                            investments[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                        address(investments[investments.length].field_0) = msg.sender
                        investments[investments.length].field_256 = msg.value
                        require msg.value + weiRaised >= weiRaised
                        require msg.value + weiRaised >= msg.value
                        weiRaised += msg.value
                        if maxGoalReachedAt:
                            emit Invested(msg.sender, msg.value);
                        else:
                            if weiRaised < 50000 * 10^18:
                                emit Invested(msg.sender, msg.value);
                            else:
                                maxGoalReachedAt = block.timestamp
                                emit Invested(msg.sender, msg.value);
}

function _fallback() payable {
    require not stor0
    require not stor7
    require tokenAddress
    if block.timestamp < startsAt:
        if weiRaised < 50000 * 10^18:
            require weiRaised < 5000 * 10^18
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            require block.timestamp <= maxGoalReachedAt + (24 * 3600)
            require weiRaised < 5000 * 10^18
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
    else:
        if block.timestamp >= startsAt + (240 * 24 * 3600):
            if weiRaised < 50000 * 10^18:
                require weiRaised < 5000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require block.timestamp <= maxGoalReachedAt + (24 * 3600)
                require weiRaised < 5000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
        else:
            if weiRaised < 50000 * 10^18:
                require msg.value > 0
                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                investedAmountOf[address(msg.sender)] += msg.value
                investments.length++
                if not investments.length > investments.length + 1:
                    address(investments[investments.length].field_0) = msg.sender
                    investments[investments.length].field_256 = msg.value
                    require msg.value + weiRaised >= weiRaised
                    require msg.value + weiRaised >= msg.value
                    weiRaised += msg.value
                    if maxGoalReachedAt:
                        emit Invested(msg.sender, msg.value);
                    else:
                        if weiRaised < 50000 * 10^18:
                            emit Invested(msg.sender, msg.value);
                        else:
                            maxGoalReachedAt = block.timestamp
                            emit Invested(msg.sender, msg.value);
                else:
                    idx = 2 * investments.length + 1
                    while 2 * investments.length > idx:
                        address(investments[idx].field_0) = 0
                        investments[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    address(investments[investments.length].field_0) = msg.sender
                    investments[investments.length].field_256 = msg.value
                    require msg.value + weiRaised >= weiRaised
                    require msg.value + weiRaised >= msg.value
                    weiRaised += msg.value
                    if maxGoalReachedAt:
                        emit Invested(msg.sender, msg.value);
                    else:
                        if weiRaised < 50000 * 10^18:
                            emit Invested(msg.sender, msg.value);
                        else:
                            maxGoalReachedAt = block.timestamp
                            emit Invested(msg.sender, msg.value);
            else:
                if block.timestamp > maxGoalReachedAt + (24 * 3600):
                    if weiRaised < 50000 * 10^18:
                        require weiRaised < 5000 * 10^18
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                    else:
                        require block.timestamp <= maxGoalReachedAt + (24 * 3600)
                        require weiRaised < 5000 * 10^18
                        require weiRaised > 0
                        require loadedRefund >= weiRaised
                        revert
                else:
                    require msg.value > 0
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    require msg.value + investedAmountOf[address(msg.sender)] >= msg.value
                    investedAmountOf[address(msg.sender)] += msg.value
                    investments.length++
                    if not investments.length > investments.length + 1:
                        address(investments[investments.length].field_0) = msg.sender
                        investments[investments.length].field_256 = msg.value
                        require msg.value + weiRaised >= weiRaised
                        require msg.value + weiRaised >= msg.value
                        weiRaised += msg.value
                        if maxGoalReachedAt:
                            emit Invested(msg.sender, msg.value);
                        else:
                            if weiRaised < 50000 * 10^18:
                                emit Invested(msg.sender, msg.value);
                            else:
                                maxGoalReachedAt = block.timestamp
                                emit Invested(msg.sender, msg.value);
                    else:
                        idx = 2 * investments.length + 1
                        while 2 * investments.length > idx:
                            address(investments[idx].field_0) = 0
                            investments[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                        address(investments[investments.length].field_0) = msg.sender
                        investments[investments.length].field_256 = msg.value
                        require msg.value + weiRaised >= weiRaised
                        require msg.value + weiRaised >= msg.value
                        weiRaised += msg.value
                        if maxGoalReachedAt:
                            emit Invested(msg.sender, msg.value);
                        else:
                            if weiRaised < 50000 * 10^18:
                                emit Invested(msg.sender, msg.value);
                            else:
                                maxGoalReachedAt = block.timestamp
                                emit Invested(msg.sender, msg.value);
}

function finalize() {
    require not stor7
    require tokenAddress
    if block.timestamp < startsAt:
        if weiRaised < 50000 * 10^18:
            require weiRaised < 5000 * 10^18
            require weiRaised > 0
            require loadedRefund >= weiRaised
            revert
        else:
            if block.timestamp <= maxGoalReachedAt + (24 * 3600):
                require weiRaised < 5000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                require owner == msg.sender
                require not stor0
                require not stor7
                stor7 = 1
                idx = 0
                s = 0
                while idx < investments.length:
                    mem[0] = 10
                    require investments[idx].field_256 + s >= s
                    require investments[idx].field_256 + s >= investments[idx].field_256
                    idx = idx + 1
                    s = investments[idx].field_256 + s
                    continue 
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require 100 * 10^6 * 10^ext_call.return_data[0] / 100 * 10^6 == 10^ext_call.return_data[0]
                require stor[(2 * stor10.length) + _28 + 1] * investments.length > 0
                require stor[(2 * stor10.length) + _28 + 1] * investments.length
                require 100 * 10^6 * 10^ext_call.return_data[0] == (stor[(2 * stor10.length) + _28 + 1] * investments.length * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length) + (100 * 10^6 * 10^ext_call.return_data[0] % stor[(2 * stor10.length) + _28 + 1] * investments.length)
                s = 0
                idx = 0
                while idx < investments.length:
                    if not 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length:
                        require idx < investments.length
                        mem[32] = 9
                        tokenAmountOf[address(stor10[idx].field_0)] += investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length
                        mem[0] = 10
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = address(investments[idx].field_0)
                        mem[132] = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(investments[idx].field_0), investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length
                        require ext_call.success
                        s = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length
                        idx = idx + 1
                        continue 
                    else:
                        require 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length
                        require investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length / 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length == investments[idx].field_256
                        require idx < investments.length
                        mem[32] = 9
                        tokenAmountOf[address(stor10[idx].field_0)] += investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length
                        mem[0] = 10
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = address(investments[idx].field_0)
                        mem[132] = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(investments[idx].field_0), investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length
                        require ext_call.success
                        s = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _28 + 1] * investments.length
                        idx = idx + 1
                        continue 
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args owner, 20 * 10^6
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x5f412d4f with:
                     gas gas_remaining - 710 wei
                require ext_call.success
    else:
        if block.timestamp >= startsAt + (240 * 24 * 3600):
            if weiRaised < 50000 * 10^18:
                require weiRaised < 5000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                if block.timestamp <= maxGoalReachedAt + (24 * 3600):
                    require weiRaised < 5000 * 10^18
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    require owner == msg.sender
                    require not stor0
                    require not stor7
                    stor7 = 1
                    idx = 0
                    s = 0
                    while idx < investments.length:
                        mem[0] = 10
                        require investments[idx].field_256 + s >= s
                        require investments[idx].field_256 + s >= investments[idx].field_256
                        idx = idx + 1
                        s = investments[idx].field_256 + s
                        continue 
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require 100 * 10^6 * 10^ext_call.return_data[0] / 100 * 10^6 == 10^ext_call.return_data[0]
                    require stor[(2 * stor10.length) + _29 + 1] * investments.length > 0
                    require stor[(2 * stor10.length) + _29 + 1] * investments.length
                    require 100 * 10^6 * 10^ext_call.return_data[0] == (stor[(2 * stor10.length) + _29 + 1] * investments.length * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length) + (100 * 10^6 * 10^ext_call.return_data[0] % stor[(2 * stor10.length) + _29 + 1] * investments.length)
                    s = 0
                    idx = 0
                    while idx < investments.length:
                        if not 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length:
                            require idx < investments.length
                            mem[32] = 9
                            tokenAmountOf[address(stor10[idx].field_0)] += investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length
                            mem[0] = 10
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = address(investments[idx].field_0)
                            mem[132] = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(investments[idx].field_0), investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length
                            require ext_call.success
                            s = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length
                            idx = idx + 1
                            continue 
                        else:
                            require 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length
                            require investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length / 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length == investments[idx].field_256
                            require idx < investments.length
                            mem[32] = 9
                            tokenAmountOf[address(stor10[idx].field_0)] += investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length
                            mem[0] = 10
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = address(investments[idx].field_0)
                            mem[132] = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(investments[idx].field_0), investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length
                            require ext_call.success
                            s = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _29 + 1] * investments.length
                            idx = idx + 1
                            continue 
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args owner, 20 * 10^6
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x5f412d4f with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
        else:
            require weiRaised >= 50000 * 10^18
            require block.timestamp > maxGoalReachedAt + (24 * 3600)
            if weiRaised < 50000 * 10^18:
                require weiRaised < 5000 * 10^18
                require weiRaised > 0
                require loadedRefund >= weiRaised
                revert
            else:
                if block.timestamp <= maxGoalReachedAt + (24 * 3600):
                    require weiRaised < 5000 * 10^18
                    require weiRaised > 0
                    require loadedRefund >= weiRaised
                    revert
                else:
                    require owner == msg.sender
                    require not stor0
                    require not stor7
                    stor7 = 1
                    idx = 0
                    s = 0
                    while idx < investments.length:
                        mem[0] = 10
                        require investments[idx].field_256 + s >= s
                        require investments[idx].field_256 + s >= investments[idx].field_256
                        idx = idx + 1
                        s = investments[idx].field_256 + s
                        continue 
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x313ce567 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require 100 * 10^6 * 10^ext_call.return_data[0] / 100 * 10^6 == 10^ext_call.return_data[0]
                    require stor[(2 * stor10.length) + _30 + 1] * investments.length > 0
                    require stor[(2 * stor10.length) + _30 + 1] * investments.length
                    require 100 * 10^6 * 10^ext_call.return_data[0] == (stor[(2 * stor10.length) + _30 + 1] * investments.length * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length) + (100 * 10^6 * 10^ext_call.return_data[0] % stor[(2 * stor10.length) + _30 + 1] * investments.length)
                    s = 0
                    idx = 0
                    while idx < investments.length:
                        if not 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length:
                            require idx < investments.length
                            mem[32] = 9
                            tokenAmountOf[address(stor10[idx].field_0)] += investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length
                            mem[0] = 10
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = address(investments[idx].field_0)
                            mem[132] = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(investments[idx].field_0), investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length
                            require ext_call.success
                            s = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length
                            idx = idx + 1
                            continue 
                        else:
                            require 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length
                            require investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length / 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length == investments[idx].field_256
                            require idx < investments.length
                            mem[32] = 9
                            tokenAmountOf[address(stor10[idx].field_0)] += investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length
                            mem[0] = 10
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = address(investments[idx].field_0)
                            mem[132] = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(investments[idx].field_0), investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length
                            require ext_call.success
                            s = investments[idx].field_256 * 100 * 10^6 * 10^ext_call.return_data[0] / stor[(2 * stor10.length) + _30 + 1] * investments.length
                            idx = idx + 1
                            continue 
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args owner, 20 * 10^6
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x5f412d4f with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
}



}
