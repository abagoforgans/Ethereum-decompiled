contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
uint256 target;
uint256 current;
uint8 state;
mapping of uint256 investment;
array of address investors;

function name() {
    return name[0 len name.length]
}

function investment(address arg1) {
    return investment[arg1]
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return investors[arg1]
}

function owner() {
    return owner
}

function current() {
    return current
}

function state() {
    require state <= 6
    return state
}

function target() {
    return target
}

function canStart() {
    require state <= 6
    return not state
}

function canFinish() {
    require state <= 6
    return (state == 3)
}

function canInvest() {
    if current >= target:
        return (current < target)
    require state <= 6
    return (state == 1)
}

function canRefund() {
    require state <= 6
    if state == 5:
        return True
    require state <= 6
    return (state == 1)
}

function start() {
    require msg.sender == owner
    require state <= 6
    require not state
    require state <= 6
    emit StateChanged(state, 1);
    state = 1
    return 1
}

function finish() {
    require msg.sender == owner
    require state <= 6
    require state == 3
    require state <= 6
    emit StateChanged(state, 4);
    state = 4
    return 1
}

function sub_bbeee6d1(?) {
    require state <= 6
    if not state:
        return 1
    require state <= 6
    if state == 1:
        return 1
    require state <= 6
    if state == 2:
        return 1
    require state <= 6
    if state != 3:
        return 0
    return eth.balance(this.address) >= target
}

function forceTransfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function transfer(address arg1) {
    require msg.sender == owner
    require state <= 6
    require state == 2
    require eth.balance(this.address) >= target
    require current == target
    state = 3
    call arg1 with:
       value current wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function stop() {
    require msg.sender == owner
    require state <= 6
    require state <= 6
    if state:
        if state != 1:
            require state <= 6
            if state != 2:
                require state <= 6
                require state == 3
                require eth.balance(this.address) >= target
    emit StateChanged(state, 5);
    if eth.balance(this.address) <= 0:
        state = 6
    else:
        state = 5
    return 1
}

function refund() {
    require state <= 6
    if state != 5:
        require state <= 6
        require state == 1
    require investment[address(msg.sender)] > 0
    investment[address(msg.sender)] = 0
    require investment[address(msg.sender)] <= current
    current -= investment[address(msg.sender)]
    if not current:
        require state <= 6
        if state == 5:
            require state <= 6
            emit StateChanged(state, 6);
            state = 6
    emit Refund(investment[address(msg.sender)], current, msg.sender);
    call msg.sender with:
       value investment[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function release(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require state <= 6
    require state == 3
    require current == target
    require arg2
    require arg3
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if target:
        require target
        require target * arg2 / target == arg2
    require arg3
    require ext_call.return_data[0] >= target * arg2 / arg3
    idx = 0
    while idx < investors.length:
        mem[0] = investors[idx]
        mem[32] = 5
        if investment[stor6[idx]]:
            require investment[stor6[idx]]
            require investment[stor6[idx]] * arg2 / investment[stor6[idx]] == arg2
        require arg3
        mem[100] = investors[idx]
        mem[132] = investment[stor6[idx]] * arg2 / arg3
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args investors[idx], investment[stor6[idx]] * arg2 / arg3
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    state = 4
    return 1
}

function invest() payable {
    require current < target
    require state <= 6
    require state == 1
    require msg.value > 0
    require current <= target
    if msg.value <= target - current:
        require current + msg.value >= current
        require target >= current + msg.value
        if not investment[address(msg.sender)]:
            investors.length++
            investors[investors.length] = msg.sender
        require investment[address(msg.sender)] + msg.value >= investment[address(msg.sender)]
        investment[address(msg.sender)] += msg.value
        current += msg.value
        if current == target:
            require state <= 6
            emit StateChanged(state, 2);
            state = 2
        emit Invest(msg.value, current, msg.sender);
    else:
        require target - current <= msg.value
        require target >= current
        require target >= target
        if not investment[address(msg.sender)]:
            investors.length++
            investors[investors.length] = msg.sender
        require investment[address(msg.sender)] + target - current >= investment[address(msg.sender)]
        investment[address(msg.sender)] = investment[address(msg.sender)] + target - current
        current = target
        if current == target:
            require state <= 6
            emit StateChanged(state, 2);
            state = 2
        emit Invest(target - current, current, msg.sender);
        if msg.value - target + current > 0:
            call msg.sender with:
               value msg.value - target + current wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function _fallback() payable {
    if owner != msg.sender:
        if msg.value <= 0:
            require state <= 6
            if state != 5:
                require state <= 6
                require state == 1
            require investment[address(msg.sender)] > 0
            investment[address(msg.sender)] = 0
            require investment[address(msg.sender)] <= current
            current -= investment[address(msg.sender)]
            if not current:
                require state <= 6
                if state == 5:
                    require state <= 6
                    emit StateChanged(state, 6);
                    state = 6
            emit Refund(investment[address(msg.sender)], current, msg.sender);
            call msg.sender with:
               value investment[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require current < target
            require state <= 6
            require state == 1
            require msg.value > 0
            require current <= target
            if msg.value <= target - current:
                require current + msg.value >= current
                require target >= current + msg.value
                if not investment[address(msg.sender)]:
                    investors.length++
                    investors[investors.length] = msg.sender
                require investment[address(msg.sender)] + msg.value >= investment[address(msg.sender)]
                investment[address(msg.sender)] += msg.value
                current += msg.value
                if current == target:
                    require state <= 6
                    emit StateChanged(state, 2);
                    state = 2
                emit Invest(msg.value, current, msg.sender);
            else:
                require target - current <= msg.value
                require target >= current
                require target >= target
                if not investment[address(msg.sender)]:
                    investors.length++
                    investors[investors.length] = msg.sender
                require investment[address(msg.sender)] + target - current >= investment[address(msg.sender)]
                investment[address(msg.sender)] = investment[address(msg.sender)] + target - current
                current = target
                if current == target:
                    require state <= 6
                    emit StateChanged(state, 2);
                    state = 2
                emit Invest(target - current, current, msg.sender);
                if msg.value - target + current > 0:
                    call msg.sender with:
                       value msg.value - target + current wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
