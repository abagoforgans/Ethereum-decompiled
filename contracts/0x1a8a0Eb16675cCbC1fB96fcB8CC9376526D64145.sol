contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - getParticipantBalances()
#
uint8 state;
array of address admins;
uint256 minContribution;
uint256 maxContribution;
uint256 maxPoolTotal;
array of address participants;
uint8 stor6;
mapping of struct balances;
uint256 poolTotal;
uint8 stor9; offset 160
address stor9;
uint256 stor10;
uint8 stor11; offset 160
address tokenAddress;
array of struct failures;

function admins(uint256 arg1) {
    require arg1 < admins.length
    return admins[arg1]
}

function balances(address arg1) {
    return balances[arg1].field_0, 
           balances[arg1].field_256,
           bool(uint8(balances[arg1].field_512)),
           bool(uint8(balances[arg1].field_520))
}

function participants(uint256 arg1) {
    require arg1 < participants.length
    return address(participants[arg1])
}

function whitelistAll() {
    return bool(stor6)
}

function poolTotal() {
    return poolTotal
}

function maxContribution() {
    return maxContribution
}

function minContribution() {
    return minContribution
}

function failures(uint256 arg1) {
    require arg1 < failures.length
    return address(failures[arg1].field_0)
}

function state() {
    require state <= 3
    return state
}

function maxPoolTotal() {
    return maxPoolTotal
}

function token() {
    return tokenAddress
}

function setToken(address arg1) {
    require 0 < admins.length
    idx = 0
    while admins[idx] != msg.sender:
        require idx + 1 < admins.length
        mem[0] = 1
        idx = idx + 1
        continue 
    tokenAddress = arg1
}

function close() {
    require 0 < admins.length
    idx = 0
    while admins[idx] != msg.sender:
        require idx + 1 < admins.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require state <= 3
    require not state
    state = 2
}

function open() {
    require 0 < admins.length
    idx = 0
    while admins[idx] != msg.sender:
        require idx + 1 < admins.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require state <= 3
    require state == 2
    state = 0
}

function fail() {
    require 0 < admins.length
    idx = 0
    while admins[idx] != msg.sender:
        require idx + 1 < admins.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require state <= 3
    if state:
        require state <= 3
        require state == 2
    state = 1
}

function refundPresale() payable {
    require state <= 3
    require state == 3
    require uint8(stor9.field_160)
    require msg.value >= poolTotal
    if address(stor9.field_0) != msg.sender:
        require 0 < admins.length
        idx = 0
        while admins[idx] != msg.sender:
            require idx + 1 < admins.length
            mem[0] = 1
            idx = idx + 1
            continue 
    stor10 = msg.value - poolTotal
    state = 1
}

function payToPresale(address arg1) {
    require 0 < admins.length
    idx = 0
    while admins[idx] != msg.sender:
        require idx + 1 < admins.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require state <= 3
    require state == 2
    state = 3
    address(stor9.field_0) = arg1
    uint8(stor9.field_160) = 1
    call 0 or arg1 with:
       value poolTotal wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function removeWhitelist() {
    require 0 < admins.length
    idx = 0
    while admins[idx] != msg.sender:
        require idx + 1 < admins.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require state <= 3
    if state:
        require state <= 3
        require state == 2
    if not stor6:
        stor6 = 1
        idx = 0
        while idx < participants.length:
            mem[0] = address(participants[idx])
            mem[32] = 7
            uint8(balances[address(stor5[idx])].field_512) = 1
            idx = idx + 1
            continue 
}

function transferMyTokens() {
    require state <= 3
    require state == 3
    require not stor11
    stor11 = 1
    require ext_code.size(0 or tokenAddress)
    call 0 or tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require poolTotal
    poolTotal -= balances[address(msg.sender)].field_0
    balances[address(msg.sender)].field_0 = 0
    uint8(stor9.field_160) = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balances[address(msg.sender)].field_0 * ext_call.return_data[0] / poolTotal
    require ext_call.success
    require ext_call.return_data[0]
    emit Payout((balances[address(msg.sender)].field_0 * ext_call.return_data[0] / poolTotal), msg.sender);
    stor11 = 0
}

function modifyWhitelist(address[] arg1, address[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 0 < admins.length
    idx = 0
    while admins[idx] != msg.sender:
        require idx + 1 < admins.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require state <= 3
    if state:
        require state <= 3
        require state == 2
    if stor6:
        require not arg2.length
        idx = 0
        while idx < participants.length:
            mem[0] = address(participants[idx])
            mem[32] = 7
            uint8(balances[address(stor5[idx])].field_512) = 0
            idx = idx + 1
            continue 
        stor6 = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        uint8(balances[mem[(32 * idx) + 140 len 20]].field_512) = 1
        idx = idx + 1
        continue 
    if not stor6:
        s = 0
        s = 0
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[32] = 7
            uint8(balances[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_512) = 0
            balances[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_0 = 0
            balances[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_256 += balances[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_0
            poolTotal -= balances[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_0
            s = balances[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_0
            s = mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            continue 
    else:
        s = 0
        t = 0
        idx = 0
        while idx < participants.length:
            mem[0] = address(participants[idx])
            mem[32] = 7
            if uint8(balances[address(stor5[idx])].field_512):
                s = s
                t = address(participants[idx])
                idx = idx + 1
                continue 
            mem[0] = address(participants[idx])
            mem[32] = 7
            balances[address(stor5[idx])].field_0 = 0
            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
            poolTotal -= balances[address(stor5[idx])].field_0
            s = balances[address(stor5[idx])].field_0
            t = address(participants[idx])
            idx = idx + 1
            continue 
}

function withdrawAll() {
    balances[address(msg.sender)].field_256 = 0
    require state <= 3
    if not state:
        if stor10 <= 0:
            poolTotal -= balances[address(msg.sender)].field_0
            balances[address(msg.sender)].field_0 = 0
            call msg.sender with:
               value balances[address(msg.sender)].field_256 + balances[address(msg.sender)].field_0 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Withdrawl((balances[address(msg.sender)].field_256 + balances[address(msg.sender)].field_0), msg.sender);
        else:
            require poolTotal
            stor10 -= balances[address(msg.sender)].field_0 * stor10 / poolTotal
            poolTotal -= balances[address(msg.sender)].field_0
            balances[address(msg.sender)].field_0 = 0
            call msg.sender with:
               value (balances[address(msg.sender)].field_0 * stor10 / poolTotal) + balances[address(msg.sender)].field_256 + balances[address(msg.sender)].field_0 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Withdrawl(((balances[address(msg.sender)].field_0 * stor10 / poolTotal) + balances[address(msg.sender)].field_256 + balances[address(msg.sender)].field_0), msg.sender);
    else:
        require state <= 3
        if state != 1:
            require state <= 3
            require state == 3
            call msg.sender with:
               value balances[address(msg.sender)].field_256 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Withdrawl(balances[address(msg.sender)].field_256, msg.sender);
        else:
            if stor10 <= 0:
                poolTotal -= balances[address(msg.sender)].field_0
                balances[address(msg.sender)].field_0 = 0
                call msg.sender with:
                   value balances[address(msg.sender)].field_256 + balances[address(msg.sender)].field_0 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Withdrawl((balances[address(msg.sender)].field_256 + balances[address(msg.sender)].field_0), msg.sender);
            else:
                require poolTotal
                stor10 -= balances[address(msg.sender)].field_0 * stor10 / poolTotal
                poolTotal -= balances[address(msg.sender)].field_0
                balances[address(msg.sender)].field_0 = 0
                call msg.sender with:
                   value (balances[address(msg.sender)].field_0 * stor10 / poolTotal) + balances[address(msg.sender)].field_256 + balances[address(msg.sender)].field_0 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Withdrawl(((balances[address(msg.sender)].field_0 * stor10 / poolTotal) + balances[address(msg.sender)].field_256 + balances[address(msg.sender)].field_0), msg.sender);
}

function transferAllTokens() {
    mem[64] = 128
    mem[96] = 0
    require 0 < admins.length
    idx = 0
    while admins[idx] != msg.sender:
        require idx + 1 < admins.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require state <= 3
    require state == 3
    require not stor11
    stor11 = 1
    mem[160] = 0
    mem[132] = this.address
    require ext_code.size(0 or tokenAddress)
    call 0 or tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    mem[128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] > 0
    failures.length = 0
    mem[0] = 12
    idx = 0
    while failures.length > idx:
        failures[idx].field_0 = 0
        idx = idx + 1
        continue 
    s = 0
    t = 0
    t = 0
    idx = 0
    t = ext_call.return_data[0]
    while idx < participants.length:
        mem[0] = address(participants[idx])
        mem[32] = 7
        if balances[address(stor5[idx])].field_0 <= 0:
            s = s
            t = balances[address(stor5[idx])].field_0
            t = address(participants[idx])
            idx = idx + 1
            t = t
            continue 
        require poolTotal
        poolTotal -= balances[address(stor5[idx])].field_0
        mem[0] = address(participants[idx])
        mem[32] = 7
        balances[address(stor5[idx])].field_0 = 0
        mem[132] = address(participants[idx])
        mem[164] = balances[address(stor5[idx])].field_0 * t / poolTotal
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(participants[idx]), balances[address(stor5[idx])].field_0 * t / poolTotal
        mem[128] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            mem[32] = 7
            poolTotal += balances[address(stor5[idx])].field_0
            failures.length++
            if not failures.length <= failures.length + 1:
                s = failures.length + sha3(12) + 1
                while sha3(12) + failures.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 12
            address(failures[failures.length].field_0) = address(participants[idx])
            s = balances[address(stor5[idx])].field_0 * t / poolTotal
            t = balances[address(stor5[idx])].field_0
            t = address(participants[idx])
            idx = idx + 1
            t = t
            continue 
        uint8(stor9.field_160) = 0
        mem[128] = balances[address(stor5[idx])].field_0 * t / poolTotal
        emit Payout((balances[address(stor5[idx])].field_0 * t / poolTotal), address(participants[idx]));
        if t - (balances[address(stor5[idx])].field_0 * t / poolTotal):
            s = balances[address(stor5[idx])].field_0 * t / poolTotal
            t = balances[address(stor5[idx])].field_0
            t = address(participants[idx])
            idx = idx + 1
            t = t - (balances[address(stor5[idx])].field_0 * t / poolTotal)
            continue 
        if failures.length:
            mem[160] = address(failures.field_0)
            idx = 160
            s = sha3(12)
            while (32 * failures.length) + 128 > idx:
                mem[idx + 32] = admins[s]
                idx = idx + 32
                s = s + 1
                continue 
        stor11 = 0
        mem[(32 * failures.length) + 160] = 32
        mem[(32 * failures.length) + 192] = failures.length
        idx = 0
        while idx < 32 * failures.length:
            mem[(32 * failures.length) + idx + 224] = mem[idx + 160]
            idx = idx + 32
            continue 
        return memory
          from (32 * failures.length) + 160
           len (96 * failures.length) + 64
    if failures.length:
        mem[160] = address(failures.field_0)
        idx = 160
        s = 0
        while (32 * failures.length) + 128 > idx:
            mem[idx + 32] = address(failures[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    stor11 = 0
    mem[(32 * failures.length) + 224 len floor32(failures.length)] = mem[160 len floor32(failures.length)]
    return Array(len=failures.length, data=mem[160 len floor32(failures.length)], mem[(32 * failures.length) + floor32(failures.length) + 224 len (32 * failures.length) - floor32(failures.length)]), 
}

function withdraw(uint256 arg1) {
    require state <= 3
    require not state
    require balances[address(msg.sender)].field_256 + balances[address(msg.sender)].field_0 >= arg1
    if balances[address(msg.sender)].field_256 >= arg1:
        balances[address(msg.sender)].field_256 -= arg1
    else:
        balances[address(msg.sender)].field_256 = 0
        balances[address(msg.sender)].field_0 = balances[address(msg.sender)].field_0 - arg1 + balances[address(msg.sender)].field_256
        poolTotal = poolTotal - arg1 + balances[address(msg.sender)].field_256
    if stor6:
        if maxContribution <= 0:
            if maxPoolTotal <= 0:
                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                    balances[address(msg.sender)].field_256 = 0
                    balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                else:
                    balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                    balances[address(msg.sender)].field_0 = 0
                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                        require balances[address(msg.sender)].field_0 > 0
            else:
                if maxPoolTotal - poolTotal >= balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                        balances[address(msg.sender)].field_256 = 0
                        balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                    else:
                        balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                        balances[address(msg.sender)].field_0 = 0
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                            require balances[address(msg.sender)].field_0 > 0
                else:
                    if maxPoolTotal - poolTotal >= minContribution:
                        balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                        balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal:
                            require balances[address(msg.sender)].field_0 > 0
                    else:
                        balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                        balances[address(msg.sender)].field_0 = 0
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                            require balances[address(msg.sender)].field_0 > 0
        else:
            if maxContribution >= balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                if maxPoolTotal <= 0:
                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                        balances[address(msg.sender)].field_256 = 0
                        balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                    else:
                        balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                        balances[address(msg.sender)].field_0 = 0
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                            require balances[address(msg.sender)].field_0 > 0
                else:
                    if maxPoolTotal - poolTotal >= balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                            balances[address(msg.sender)].field_256 = 0
                            balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                        else:
                            balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                            balances[address(msg.sender)].field_0 = 0
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                require balances[address(msg.sender)].field_0 > 0
                    else:
                        if maxPoolTotal - poolTotal >= minContribution:
                            balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                            balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal:
                                require balances[address(msg.sender)].field_0 > 0
                        else:
                            balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                            balances[address(msg.sender)].field_0 = 0
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                require balances[address(msg.sender)].field_0 > 0
            else:
                if maxPoolTotal <= 0:
                    if maxContribution >= minContribution:
                        balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                        balances[address(msg.sender)].field_0 = maxContribution
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution:
                            require balances[address(msg.sender)].field_0 > 0
                    else:
                        balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                        balances[address(msg.sender)].field_0 = 0
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                            require balances[address(msg.sender)].field_0 > 0
                else:
                    if maxPoolTotal - poolTotal >= maxContribution:
                        if maxContribution >= minContribution:
                            balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                            balances[address(msg.sender)].field_0 = maxContribution
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution:
                                require balances[address(msg.sender)].field_0 > 0
                        else:
                            balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                            balances[address(msg.sender)].field_0 = 0
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                require balances[address(msg.sender)].field_0 > 0
                    else:
                        if maxPoolTotal - poolTotal >= minContribution:
                            balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                            balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal:
                                require balances[address(msg.sender)].field_0 > 0
                        else:
                            balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                            balances[address(msg.sender)].field_0 = 0
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                require balances[address(msg.sender)].field_0 > 0
    else:
        if not uint8(balances[address(msg.sender)].field_512):
            idx = 0
            while idx < admins.length:
                mem[0] = 1
                if admins[idx] != msg.sender:
                    idx = idx + 1
                    continue 
                if maxContribution <= 0:
                    if maxPoolTotal <= 0:
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                            balances[address(msg.sender)].field_256 = 0
                            balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                        else:
                            balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                            balances[address(msg.sender)].field_0 = 0
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                require balances[address(msg.sender)].field_0 > 0
                    else:
                        if maxPoolTotal - poolTotal >= balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                balances[address(msg.sender)].field_256 = 0
                                balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                            else:
                                balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                balances[address(msg.sender)].field_0 = 0
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                    require balances[address(msg.sender)].field_0 > 0
                        else:
                            if maxPoolTotal - poolTotal >= minContribution:
                                balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal:
                                    require balances[address(msg.sender)].field_0 > 0
                            else:
                                balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                balances[address(msg.sender)].field_0 = 0
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                    require balances[address(msg.sender)].field_0 > 0
                else:
                    if maxContribution >= balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                        if maxPoolTotal <= 0:
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                balances[address(msg.sender)].field_256 = 0
                                balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                            else:
                                balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                balances[address(msg.sender)].field_0 = 0
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                    require balances[address(msg.sender)].field_0 > 0
                        else:
                            if maxPoolTotal - poolTotal >= balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                    balances[address(msg.sender)].field_256 = 0
                                    balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                                else:
                                    balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                    balances[address(msg.sender)].field_0 = 0
                                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                        require balances[address(msg.sender)].field_0 > 0
                            else:
                                if maxPoolTotal - poolTotal >= minContribution:
                                    balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                    balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal:
                                        require balances[address(msg.sender)].field_0 > 0
                                else:
                                    balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                    balances[address(msg.sender)].field_0 = 0
                                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                        require balances[address(msg.sender)].field_0 > 0
                    else:
                        if maxPoolTotal <= 0:
                            if maxContribution >= minContribution:
                                balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                balances[address(msg.sender)].field_0 = maxContribution
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution:
                                    require balances[address(msg.sender)].field_0 > 0
                            else:
                                balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                balances[address(msg.sender)].field_0 = 0
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                    require balances[address(msg.sender)].field_0 > 0
                        else:
                            if maxPoolTotal - poolTotal >= maxContribution:
                                if maxContribution >= minContribution:
                                    balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                    balances[address(msg.sender)].field_0 = maxContribution
                                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution:
                                        require balances[address(msg.sender)].field_0 > 0
                                else:
                                    balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                    balances[address(msg.sender)].field_0 = 0
                                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                        require balances[address(msg.sender)].field_0 > 0
                            else:
                                if maxPoolTotal - poolTotal >= minContribution:
                                    balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                    balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal:
                                        require balances[address(msg.sender)].field_0 > 0
                                else:
                                    balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                    balances[address(msg.sender)].field_0 = 0
                                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                        require balances[address(msg.sender)].field_0 > 0
                call msg.sender with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Withdrawl(arg1, msg.sender);
            balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
            balances[address(msg.sender)].field_0 = 0
            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                require balances[address(msg.sender)].field_0 > 0
        else:
            if maxContribution <= 0:
                if maxPoolTotal <= 0:
                    if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                        balances[address(msg.sender)].field_256 = 0
                        balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                    else:
                        balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                        balances[address(msg.sender)].field_0 = 0
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                            require balances[address(msg.sender)].field_0 > 0
                else:
                    if maxPoolTotal - poolTotal >= balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                            balances[address(msg.sender)].field_256 = 0
                            balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                        else:
                            balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                            balances[address(msg.sender)].field_0 = 0
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                require balances[address(msg.sender)].field_0 > 0
                    else:
                        if maxPoolTotal - poolTotal >= minContribution:
                            balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                            balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal:
                                require balances[address(msg.sender)].field_0 > 0
                        else:
                            balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                            balances[address(msg.sender)].field_0 = 0
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                require balances[address(msg.sender)].field_0 > 0
            else:
                if maxContribution >= balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                    if maxPoolTotal <= 0:
                        if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                            balances[address(msg.sender)].field_256 = 0
                            balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                        else:
                            balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                            balances[address(msg.sender)].field_0 = 0
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                require balances[address(msg.sender)].field_0 > 0
                    else:
                        if maxPoolTotal - poolTotal >= balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                balances[address(msg.sender)].field_256 = 0
                                balances[address(msg.sender)].field_0 += balances[address(msg.sender)].field_256
                            else:
                                balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                balances[address(msg.sender)].field_0 = 0
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                    require balances[address(msg.sender)].field_0 > 0
                        else:
                            if maxPoolTotal - poolTotal >= minContribution:
                                balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal:
                                    require balances[address(msg.sender)].field_0 > 0
                            else:
                                balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                balances[address(msg.sender)].field_0 = 0
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                    require balances[address(msg.sender)].field_0 > 0
                else:
                    if maxPoolTotal <= 0:
                        if maxContribution >= minContribution:
                            balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                            balances[address(msg.sender)].field_0 = maxContribution
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution:
                                require balances[address(msg.sender)].field_0 > 0
                        else:
                            balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                            balances[address(msg.sender)].field_0 = 0
                            if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                require balances[address(msg.sender)].field_0 > 0
                    else:
                        if maxPoolTotal - poolTotal >= maxContribution:
                            if maxContribution >= minContribution:
                                balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                balances[address(msg.sender)].field_0 = maxContribution
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution:
                                    require balances[address(msg.sender)].field_0 > 0
                            else:
                                balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                balances[address(msg.sender)].field_0 = 0
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                    require balances[address(msg.sender)].field_0 > 0
                        else:
                            if maxPoolTotal - poolTotal >= minContribution:
                                balances[address(msg.sender)].field_256 = balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal:
                                    require balances[address(msg.sender)].field_0 > 0
                            else:
                                balances[address(msg.sender)].field_256 += balances[address(msg.sender)].field_0
                                balances[address(msg.sender)].field_0 = 0
                                if balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                    require balances[address(msg.sender)].field_0 > 0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdrawl(arg1, msg.sender);
}

function _fallback() payable {
    require state <= 3
    require not state
    if msg.value > 0:
        if stor6:
            if maxContribution <= 0:
                if maxPoolTotal <= 0:
                    if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                        balances[address(msg.sender)].field_256 = 0
                        balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                    else:
                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        balances[address(msg.sender)].field_0 = 0
                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                else:
                    if maxPoolTotal - poolTotal >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                        if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                            balances[address(msg.sender)].field_256 = 0
                            balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            balances[address(msg.sender)].field_0 = 0
                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                    else:
                        if maxPoolTotal - poolTotal >= minContribution:
                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                            balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                        else:
                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            balances[address(msg.sender)].field_0 = 0
                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
            else:
                if maxContribution >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                    if maxPoolTotal <= 0:
                        if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                            balances[address(msg.sender)].field_256 = 0
                            balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            balances[address(msg.sender)].field_0 = 0
                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                    else:
                        if maxPoolTotal - poolTotal >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                            if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                balances[address(msg.sender)].field_256 = 0
                                balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                balances[address(msg.sender)].field_0 = 0
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            if maxPoolTotal - poolTotal >= minContribution:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                            else:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                balances[address(msg.sender)].field_0 = 0
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                else:
                    if maxPoolTotal <= 0:
                        if maxContribution >= minContribution:
                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                            balances[address(msg.sender)].field_0 = maxContribution
                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                        else:
                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            balances[address(msg.sender)].field_0 = 0
                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                    else:
                        if maxPoolTotal - poolTotal >= maxContribution:
                            if maxContribution >= minContribution:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                balances[address(msg.sender)].field_0 = maxContribution
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                            else:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                balances[address(msg.sender)].field_0 = 0
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            if maxPoolTotal - poolTotal >= minContribution:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                            else:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                balances[address(msg.sender)].field_0 = 0
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
        else:
            if not uint8(balances[address(msg.sender)].field_512):
                require 0 < admins.length
                idx = 0
                while admins[idx] != msg.sender:
                    require idx + 1 < admins.length
                    mem[0] = 1
                    idx = idx + 1
                    continue 
            if stor6:
                if maxContribution <= 0:
                    if maxPoolTotal <= 0:
                        if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                            balances[address(msg.sender)].field_256 = 0
                            balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            balances[address(msg.sender)].field_0 = 0
                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                    else:
                        if maxPoolTotal - poolTotal >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                            if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                balances[address(msg.sender)].field_256 = 0
                                balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                balances[address(msg.sender)].field_0 = 0
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            if maxPoolTotal - poolTotal >= minContribution:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                            else:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                balances[address(msg.sender)].field_0 = 0
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                else:
                    if maxContribution >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                        if maxPoolTotal <= 0:
                            if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                balances[address(msg.sender)].field_256 = 0
                                balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                balances[address(msg.sender)].field_0 = 0
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            if maxPoolTotal - poolTotal >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                    balances[address(msg.sender)].field_256 = 0
                                    balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                else:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    balances[address(msg.sender)].field_0 = 0
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                if maxPoolTotal - poolTotal >= minContribution:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                    balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                else:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    balances[address(msg.sender)].field_0 = 0
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                    else:
                        if maxPoolTotal <= 0:
                            if maxContribution >= minContribution:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                balances[address(msg.sender)].field_0 = maxContribution
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                            else:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                balances[address(msg.sender)].field_0 = 0
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            if maxPoolTotal - poolTotal >= maxContribution:
                                if maxContribution >= minContribution:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                    balances[address(msg.sender)].field_0 = maxContribution
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                else:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    balances[address(msg.sender)].field_0 = 0
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                if maxPoolTotal - poolTotal >= minContribution:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                    balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                else:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    balances[address(msg.sender)].field_0 = 0
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
            else:
                if not uint8(balances[address(msg.sender)].field_512):
                    idx = 0
                    while idx < admins.length:
                        mem[0] = 1
                        if admins[idx] != msg.sender:
                            idx = idx + 1
                            continue 
                        if maxContribution <= 0:
                            if maxPoolTotal <= 0:
                                if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                    balances[address(msg.sender)].field_256 = 0
                                    balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                else:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    balances[address(msg.sender)].field_0 = 0
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                if maxPoolTotal - poolTotal >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                    if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                        balances[address(msg.sender)].field_256 = 0
                                        balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    else:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                        balances[address(msg.sender)].field_0 = 0
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                else:
                                    if maxPoolTotal - poolTotal >= minContribution:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                        balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                    else:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                        balances[address(msg.sender)].field_0 = 0
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            if maxContribution >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                if maxPoolTotal <= 0:
                                    if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                        balances[address(msg.sender)].field_256 = 0
                                        balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    else:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                        balances[address(msg.sender)].field_0 = 0
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                else:
                                    if maxPoolTotal - poolTotal >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                        if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                            balances[address(msg.sender)].field_256 = 0
                                            balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                        else:
                                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                            balances[address(msg.sender)].field_0 = 0
                                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    else:
                                        if maxPoolTotal - poolTotal >= minContribution:
                                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                            balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                        else:
                                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                            balances[address(msg.sender)].field_0 = 0
                                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                if maxPoolTotal <= 0:
                                    if maxContribution >= minContribution:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                        balances[address(msg.sender)].field_0 = maxContribution
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                    else:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                        balances[address(msg.sender)].field_0 = 0
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                else:
                                    if maxPoolTotal - poolTotal >= maxContribution:
                                        if maxContribution >= minContribution:
                                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                            balances[address(msg.sender)].field_0 = maxContribution
                                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                        else:
                                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                            balances[address(msg.sender)].field_0 = 0
                                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    else:
                                        if maxPoolTotal - poolTotal >= minContribution:
                                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                            balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                        else:
                                            balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                            balances[address(msg.sender)].field_0 = 0
                                            require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        uint8(balances[address(msg.sender)].field_512) = 1
                        poolTotal += msg.value
                        if not uint8(balances[address(msg.sender)].field_520):
                            uint8(balances[address(msg.sender)].field_520) = 1
                            participants.length++
                            if not participants.length <= participants.length + 1:
                                idx = participants.length + sha3(5) + 1
                                while sha3(5) + participants.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            address(participants[participants.length]) = msg.sender
                        emit Deposit(msg.value, msg.sender);
                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                    balances[address(msg.sender)].field_0 = 0
                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                else:
                    if maxContribution <= 0:
                        if maxPoolTotal <= 0:
                            if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                balances[address(msg.sender)].field_256 = 0
                                balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                balances[address(msg.sender)].field_0 = 0
                                require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            if maxPoolTotal - poolTotal >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                    balances[address(msg.sender)].field_256 = 0
                                    balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                else:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    balances[address(msg.sender)].field_0 = 0
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                if maxPoolTotal - poolTotal >= minContribution:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                    balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                else:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    balances[address(msg.sender)].field_0 = 0
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                    else:
                        if maxContribution >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                            if maxPoolTotal <= 0:
                                if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                    balances[address(msg.sender)].field_256 = 0
                                    balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                else:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    balances[address(msg.sender)].field_0 = 0
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                if maxPoolTotal - poolTotal >= msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256:
                                    if msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 >= minContribution:
                                        balances[address(msg.sender)].field_256 = 0
                                        balances[address(msg.sender)].field_0 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    else:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                        balances[address(msg.sender)].field_0 = 0
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                else:
                                    if maxPoolTotal - poolTotal >= minContribution:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                        balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                    else:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                        balances[address(msg.sender)].field_0 = 0
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                        else:
                            if maxPoolTotal <= 0:
                                if maxContribution >= minContribution:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                    balances[address(msg.sender)].field_0 = maxContribution
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                else:
                                    balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                    balances[address(msg.sender)].field_0 = 0
                                    require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                            else:
                                if maxPoolTotal - poolTotal >= maxContribution:
                                    if maxContribution >= minContribution:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                        balances[address(msg.sender)].field_0 = maxContribution
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxContribution
                                    else:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                        balances[address(msg.sender)].field_0 = 0
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                else:
                                    if maxPoolTotal - poolTotal >= minContribution:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                        balances[address(msg.sender)].field_0 = maxPoolTotal - poolTotal
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256 - maxPoolTotal + poolTotal
                                    else:
                                        balances[address(msg.sender)].field_256 = msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
                                        balances[address(msg.sender)].field_0 = 0
                                        require not msg.value + balances[address(msg.sender)].field_0 + balances[address(msg.sender)].field_256
        uint8(balances[address(msg.sender)].field_512) = 1
        poolTotal += msg.value
        if not uint8(balances[address(msg.sender)].field_520):
            uint8(balances[address(msg.sender)].field_520) = 1
            participants.length++
            if not participants.length <= participants.length + 1:
                idx = participants.length + 1
                while participants.length > idx:
                    uint256(participants[idx]) = 0
                    idx = idx + 1
                    continue 
            address(participants[participants.length]) = msg.sender
        emit Deposit(msg.value, msg.sender);
}

function setContributionSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require 0 < admins.length
    idx = 0
    while admins[idx] != msg.sender:
        require idx + 1 < admins.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require state <= 3
    if state:
        require state <= 3
        require state == 2
    minContribution = arg1
    maxContribution = arg2
    maxPoolTotal = arg3
    if minContribution < arg1:
        if arg2 > 0:
            require maxContribution >= minContribution
        if maxPoolTotal > 0:
            require maxPoolTotal >= minContribution
            require maxPoolTotal >= maxContribution
        if minContribution < arg1:
            poolTotal = 0
            s = 0
            s = 0
            idx = 0
            while idx < participants.length:
                mem[0] = address(participants[idx])
                mem[32] = 7
                if stor6:
                    if maxContribution <= 0:
                        if maxPoolTotal <= 0:
                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                balances[address(stor5[idx])].field_0 = 0
                            else:
                                balances[address(stor5[idx])].field_256 = 0
                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                        else:
                            if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                    balances[address(stor5[idx])].field_0 = 0
                                else:
                                    balances[address(stor5[idx])].field_256 = 0
                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                            else:
                                if maxPoolTotal - poolTotal < minContribution:
                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                    balances[address(stor5[idx])].field_0 = 0
                                else:
                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                    poolTotal = maxPoolTotal
                    else:
                        if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                            if maxPoolTotal <= 0:
                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                    balances[address(stor5[idx])].field_0 = 0
                                else:
                                    balances[address(stor5[idx])].field_256 = 0
                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                            else:
                                if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = 0
                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                else:
                                    if maxPoolTotal - poolTotal < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                        poolTotal = maxPoolTotal
                        else:
                            if maxPoolTotal <= 0:
                                if maxContribution < minContribution:
                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                    balances[address(stor5[idx])].field_0 = 0
                                else:
                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                    balances[address(stor5[idx])].field_0 = maxContribution
                                    poolTotal += maxContribution
                            else:
                                if maxPoolTotal - poolTotal >= maxContribution:
                                    if maxContribution < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                        balances[address(stor5[idx])].field_0 = maxContribution
                                        poolTotal += maxContribution
                                else:
                                    if maxPoolTotal - poolTotal < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                        poolTotal = maxPoolTotal
                else:
                    mem[0] = address(participants[idx])
                    mem[32] = 7
                    if not uint8(balances[address(stor5[idx])].field_512):
                        s = 0
                        while s < admins.length:
                            mem[0] = 1
                            if admins[s] != address(participants[idx]):
                                s = s + 1
                                continue 
                            if maxContribution <= 0:
                                if maxPoolTotal <= 0:
                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = 0
                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                else:
                                    if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                            poolTotal = maxPoolTotal
                            else:
                                if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                    if maxPoolTotal <= 0:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                poolTotal = maxPoolTotal
                                else:
                                    if maxPoolTotal <= 0:
                                        if maxContribution < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                            balances[address(stor5[idx])].field_0 = maxContribution
                                            poolTotal += maxContribution
                                    else:
                                        if maxPoolTotal - poolTotal >= maxContribution:
                                            if maxContribution < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                balances[address(stor5[idx])].field_0 = maxContribution
                                                poolTotal += maxContribution
                                        else:
                                            if maxPoolTotal - poolTotal < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                poolTotal = maxPoolTotal
                            s = sha3(address(participants[idx]), 7)
                            s = address(participants[idx])
                            idx = idx + 1
                            continue 
                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                        balances[address(stor5[idx])].field_0 = 0
                    else:
                        if maxContribution <= 0:
                            if maxPoolTotal <= 0:
                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                    balances[address(stor5[idx])].field_0 = 0
                                else:
                                    balances[address(stor5[idx])].field_256 = 0
                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                            else:
                                if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = 0
                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                else:
                                    if maxPoolTotal - poolTotal < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                        poolTotal = maxPoolTotal
                        else:
                            if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                if maxPoolTotal <= 0:
                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = 0
                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                else:
                                    if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                            poolTotal = maxPoolTotal
                            else:
                                if maxPoolTotal <= 0:
                                    if maxContribution < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                        balances[address(stor5[idx])].field_0 = maxContribution
                                        poolTotal += maxContribution
                                else:
                                    if maxPoolTotal - poolTotal >= maxContribution:
                                        if maxContribution < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                            balances[address(stor5[idx])].field_0 = maxContribution
                                            poolTotal += maxContribution
                                    else:
                                        if maxPoolTotal - poolTotal < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                            poolTotal = maxPoolTotal
                s = sha3(address(participants[idx]), 7)
                s = address(participants[idx])
                idx = idx + 1
                continue 
    else:
        if maxContribution > arg2:
            if arg2 > 0:
                require maxContribution >= minContribution
            if maxPoolTotal > 0:
                require maxPoolTotal >= minContribution
                require maxPoolTotal >= maxContribution
            if maxContribution > arg2:
                poolTotal = 0
                s = 0
                s = 0
                idx = 0
                while idx < participants.length:
                    mem[0] = address(participants[idx])
                    mem[32] = 7
                    if stor6:
                        if maxContribution <= 0:
                            if maxPoolTotal <= 0:
                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                    balances[address(stor5[idx])].field_0 = 0
                                else:
                                    balances[address(stor5[idx])].field_256 = 0
                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                            else:
                                if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = 0
                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                else:
                                    if maxPoolTotal - poolTotal < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                        poolTotal = maxPoolTotal
                        else:
                            if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                if maxPoolTotal <= 0:
                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = 0
                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                else:
                                    if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                            poolTotal = maxPoolTotal
                            else:
                                if maxPoolTotal <= 0:
                                    if maxContribution < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                        balances[address(stor5[idx])].field_0 = maxContribution
                                        poolTotal += maxContribution
                                else:
                                    if maxPoolTotal - poolTotal >= maxContribution:
                                        if maxContribution < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                            balances[address(stor5[idx])].field_0 = maxContribution
                                            poolTotal += maxContribution
                                    else:
                                        if maxPoolTotal - poolTotal < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                            poolTotal = maxPoolTotal
                    else:
                        mem[0] = address(participants[idx])
                        mem[32] = 7
                        if not uint8(balances[address(stor5[idx])].field_512):
                            s = 0
                            while s < admins.length:
                                mem[0] = 1
                                if admins[s] != address(participants[idx]):
                                    s = s + 1
                                    continue 
                                if maxContribution <= 0:
                                    if maxPoolTotal <= 0:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                poolTotal = maxPoolTotal
                                else:
                                    if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                        if maxPoolTotal <= 0:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                                    else:
                                        if maxPoolTotal <= 0:
                                            if maxContribution < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                balances[address(stor5[idx])].field_0 = maxContribution
                                                poolTotal += maxContribution
                                        else:
                                            if maxPoolTotal - poolTotal >= maxContribution:
                                                if maxContribution < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                    balances[address(stor5[idx])].field_0 = maxContribution
                                                    poolTotal += maxContribution
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                                s = sha3(address(participants[idx]), 7)
                                s = address(participants[idx])
                                idx = idx + 1
                                continue 
                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                            balances[address(stor5[idx])].field_0 = 0
                        else:
                            if maxContribution <= 0:
                                if maxPoolTotal <= 0:
                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = 0
                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                else:
                                    if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                            poolTotal = maxPoolTotal
                            else:
                                if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                    if maxPoolTotal <= 0:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                poolTotal = maxPoolTotal
                                else:
                                    if maxPoolTotal <= 0:
                                        if maxContribution < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                            balances[address(stor5[idx])].field_0 = maxContribution
                                            poolTotal += maxContribution
                                    else:
                                        if maxPoolTotal - poolTotal >= maxContribution:
                                            if maxContribution < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                balances[address(stor5[idx])].field_0 = maxContribution
                                                poolTotal += maxContribution
                                        else:
                                            if maxPoolTotal - poolTotal < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                poolTotal = maxPoolTotal
                    s = sha3(address(participants[idx]), 7)
                    s = address(participants[idx])
                    idx = idx + 1
                    continue 
        else:
            if maxContribution:
                if arg2 > 0:
                    require maxContribution >= minContribution
                if maxPoolTotal > 0:
                    require maxPoolTotal >= minContribution
                    require maxPoolTotal >= maxContribution
                if poolTotal > arg3:
                    poolTotal = 0
                    s = 0
                    s = 0
                    idx = 0
                    while idx < participants.length:
                        mem[0] = address(participants[idx])
                        mem[32] = 7
                        if stor6:
                            if maxContribution <= 0:
                                if maxPoolTotal <= 0:
                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                        balances[address(stor5[idx])].field_0 = 0
                                    else:
                                        balances[address(stor5[idx])].field_256 = 0
                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                else:
                                    if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                            poolTotal = maxPoolTotal
                            else:
                                if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                    if maxPoolTotal <= 0:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                poolTotal = maxPoolTotal
                                else:
                                    if maxPoolTotal <= 0:
                                        if maxContribution < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                            balances[address(stor5[idx])].field_0 = maxContribution
                                            poolTotal += maxContribution
                                    else:
                                        if maxPoolTotal - poolTotal >= maxContribution:
                                            if maxContribution < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                balances[address(stor5[idx])].field_0 = maxContribution
                                                poolTotal += maxContribution
                                        else:
                                            if maxPoolTotal - poolTotal < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                poolTotal = maxPoolTotal
                        else:
                            mem[0] = address(participants[idx])
                            mem[32] = 7
                            if not uint8(balances[address(stor5[idx])].field_512):
                                s = 0
                                while s < admins.length:
                                    mem[0] = 1
                                    if admins[s] != address(participants[idx]):
                                        s = s + 1
                                        continue 
                                    if maxContribution <= 0:
                                        if maxPoolTotal <= 0:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                                    else:
                                        if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                            if maxPoolTotal <= 0:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = 0
                                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                                else:
                                                    if maxPoolTotal - poolTotal < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                        poolTotal = maxPoolTotal
                                        else:
                                            if maxPoolTotal <= 0:
                                                if maxContribution < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                    balances[address(stor5[idx])].field_0 = maxContribution
                                                    poolTotal += maxContribution
                                            else:
                                                if maxPoolTotal - poolTotal >= maxContribution:
                                                    if maxContribution < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                        balances[address(stor5[idx])].field_0 = maxContribution
                                                        poolTotal += maxContribution
                                                else:
                                                    if maxPoolTotal - poolTotal < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                        poolTotal = maxPoolTotal
                                    s = sha3(address(participants[idx]), 7)
                                    s = address(participants[idx])
                                    idx = idx + 1
                                    continue 
                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                balances[address(stor5[idx])].field_0 = 0
                            else:
                                if maxContribution <= 0:
                                    if maxPoolTotal <= 0:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                poolTotal = maxPoolTotal
                                else:
                                    if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                        if maxPoolTotal <= 0:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                                    else:
                                        if maxPoolTotal <= 0:
                                            if maxContribution < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                balances[address(stor5[idx])].field_0 = maxContribution
                                                poolTotal += maxContribution
                                        else:
                                            if maxPoolTotal - poolTotal >= maxContribution:
                                                if maxContribution < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                    balances[address(stor5[idx])].field_0 = maxContribution
                                                    poolTotal += maxContribution
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                        s = sha3(address(participants[idx]), 7)
                        s = address(participants[idx])
                        idx = idx + 1
                        continue 
            else:
                if arg2 <= 0:
                    if maxPoolTotal > 0:
                        require maxPoolTotal >= minContribution
                        require maxPoolTotal >= maxContribution
                    if poolTotal > arg3:
                        poolTotal = 0
                        s = 0
                        s = 0
                        idx = 0
                        while idx < participants.length:
                            mem[0] = address(participants[idx])
                            mem[32] = 7
                            if stor6:
                                if maxContribution <= 0:
                                    if maxPoolTotal <= 0:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                poolTotal = maxPoolTotal
                                else:
                                    if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                        if maxPoolTotal <= 0:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                                    else:
                                        if maxPoolTotal <= 0:
                                            if maxContribution < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                balances[address(stor5[idx])].field_0 = maxContribution
                                                poolTotal += maxContribution
                                        else:
                                            if maxPoolTotal - poolTotal >= maxContribution:
                                                if maxContribution < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                    balances[address(stor5[idx])].field_0 = maxContribution
                                                    poolTotal += maxContribution
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                            else:
                                mem[0] = address(participants[idx])
                                mem[32] = 7
                                if not uint8(balances[address(stor5[idx])].field_512):
                                    s = 0
                                    while s < admins.length:
                                        mem[0] = 1
                                        if admins[s] != address(participants[idx]):
                                            s = s + 1
                                            continue 
                                        if maxContribution <= 0:
                                            if maxPoolTotal <= 0:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = 0
                                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                                else:
                                                    if maxPoolTotal - poolTotal < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                        poolTotal = maxPoolTotal
                                        else:
                                            if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                if maxPoolTotal <= 0:
                                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = 0
                                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                                else:
                                                    if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                            balances[address(stor5[idx])].field_0 = 0
                                                        else:
                                                            balances[address(stor5[idx])].field_256 = 0
                                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                                    else:
                                                        if maxPoolTotal - poolTotal < minContribution:
                                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                            balances[address(stor5[idx])].field_0 = 0
                                                        else:
                                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                            poolTotal = maxPoolTotal
                                            else:
                                                if maxPoolTotal <= 0:
                                                    if maxContribution < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                        balances[address(stor5[idx])].field_0 = maxContribution
                                                        poolTotal += maxContribution
                                                else:
                                                    if maxPoolTotal - poolTotal >= maxContribution:
                                                        if maxContribution < minContribution:
                                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                            balances[address(stor5[idx])].field_0 = 0
                                                        else:
                                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                            balances[address(stor5[idx])].field_0 = maxContribution
                                                            poolTotal += maxContribution
                                                    else:
                                                        if maxPoolTotal - poolTotal < minContribution:
                                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                            balances[address(stor5[idx])].field_0 = 0
                                                        else:
                                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                            poolTotal = maxPoolTotal
                                        s = sha3(address(participants[idx]), 7)
                                        s = address(participants[idx])
                                        idx = idx + 1
                                        continue 
                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                    balances[address(stor5[idx])].field_0 = 0
                                else:
                                    if maxContribution <= 0:
                                        if maxPoolTotal <= 0:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                                    else:
                                        if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                            if maxPoolTotal <= 0:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = 0
                                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                                else:
                                                    if maxPoolTotal - poolTotal < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                        poolTotal = maxPoolTotal
                                        else:
                                            if maxPoolTotal <= 0:
                                                if maxContribution < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                    balances[address(stor5[idx])].field_0 = maxContribution
                                                    poolTotal += maxContribution
                                            else:
                                                if maxPoolTotal - poolTotal >= maxContribution:
                                                    if maxContribution < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                        balances[address(stor5[idx])].field_0 = maxContribution
                                                        poolTotal += maxContribution
                                                else:
                                                    if maxPoolTotal - poolTotal < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                        poolTotal = maxPoolTotal
                            s = sha3(address(participants[idx]), 7)
                            s = address(participants[idx])
                            idx = idx + 1
                            continue 
                else:
                    require maxContribution >= minContribution
                    if maxPoolTotal > 0:
                        require maxPoolTotal >= minContribution
                        require maxPoolTotal >= maxContribution
                    if arg2 > 0:
                        poolTotal = 0
                        s = 0
                        s = 0
                        idx = 0
                        while idx < participants.length:
                            mem[0] = address(participants[idx])
                            mem[32] = 7
                            if stor6:
                                if maxContribution <= 0:
                                    if maxPoolTotal <= 0:
                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                            balances[address(stor5[idx])].field_0 = 0
                                        else:
                                            balances[address(stor5[idx])].field_256 = 0
                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                    else:
                                        if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                poolTotal = maxPoolTotal
                                else:
                                    if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                        if maxPoolTotal <= 0:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                                    else:
                                        if maxPoolTotal <= 0:
                                            if maxContribution < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                balances[address(stor5[idx])].field_0 = maxContribution
                                                poolTotal += maxContribution
                                        else:
                                            if maxPoolTotal - poolTotal >= maxContribution:
                                                if maxContribution < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                    balances[address(stor5[idx])].field_0 = maxContribution
                                                    poolTotal += maxContribution
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                            else:
                                mem[0] = address(participants[idx])
                                mem[32] = 7
                                if not uint8(balances[address(stor5[idx])].field_512):
                                    s = 0
                                    while s < admins.length:
                                        mem[0] = 1
                                        if admins[s] != address(participants[idx]):
                                            s = s + 1
                                            continue 
                                        if maxContribution <= 0:
                                            if maxPoolTotal <= 0:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = 0
                                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                                else:
                                                    if maxPoolTotal - poolTotal < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                        poolTotal = maxPoolTotal
                                        else:
                                            if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                if maxPoolTotal <= 0:
                                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = 0
                                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                                else:
                                                    if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                        if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                            balances[address(stor5[idx])].field_0 = 0
                                                        else:
                                                            balances[address(stor5[idx])].field_256 = 0
                                                            balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                            poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                                    else:
                                                        if maxPoolTotal - poolTotal < minContribution:
                                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                            balances[address(stor5[idx])].field_0 = 0
                                                        else:
                                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                            poolTotal = maxPoolTotal
                                            else:
                                                if maxPoolTotal <= 0:
                                                    if maxContribution < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                        balances[address(stor5[idx])].field_0 = maxContribution
                                                        poolTotal += maxContribution
                                                else:
                                                    if maxPoolTotal - poolTotal >= maxContribution:
                                                        if maxContribution < minContribution:
                                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                            balances[address(stor5[idx])].field_0 = 0
                                                        else:
                                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                            balances[address(stor5[idx])].field_0 = maxContribution
                                                            poolTotal += maxContribution
                                                    else:
                                                        if maxPoolTotal - poolTotal < minContribution:
                                                            balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                            balances[address(stor5[idx])].field_0 = 0
                                                        else:
                                                            balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                            balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                            poolTotal = maxPoolTotal
                                        s = sha3(address(participants[idx]), 7)
                                        s = address(participants[idx])
                                        idx = idx + 1
                                        continue 
                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                    balances[address(stor5[idx])].field_0 = 0
                                else:
                                    if maxContribution <= 0:
                                        if maxPoolTotal <= 0:
                                            if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                balances[address(stor5[idx])].field_0 = 0
                                            else:
                                                balances[address(stor5[idx])].field_256 = 0
                                                balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                        else:
                                            if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                    balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                    poolTotal = maxPoolTotal
                                    else:
                                        if maxContribution >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                            if maxPoolTotal <= 0:
                                                if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = 0
                                                    balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                    poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                            else:
                                                if maxPoolTotal - poolTotal >= balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256:
                                                    if balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = 0
                                                        balances[address(stor5[idx])].field_0 += balances[address(stor5[idx])].field_256
                                                        poolTotal = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 + poolTotal
                                                else:
                                                    if maxPoolTotal - poolTotal < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                        poolTotal = maxPoolTotal
                                        else:
                                            if maxPoolTotal <= 0:
                                                if maxContribution < minContribution:
                                                    balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                    balances[address(stor5[idx])].field_0 = 0
                                                else:
                                                    balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                    balances[address(stor5[idx])].field_0 = maxContribution
                                                    poolTotal += maxContribution
                                            else:
                                                if maxPoolTotal - poolTotal >= maxContribution:
                                                    if maxContribution < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxContribution
                                                        balances[address(stor5[idx])].field_0 = maxContribution
                                                        poolTotal += maxContribution
                                                else:
                                                    if maxPoolTotal - poolTotal < minContribution:
                                                        balances[address(stor5[idx])].field_256 += balances[address(stor5[idx])].field_0
                                                        balances[address(stor5[idx])].field_0 = 0
                                                    else:
                                                        balances[address(stor5[idx])].field_256 = balances[address(stor5[idx])].field_0 + balances[address(stor5[idx])].field_256 - maxPoolTotal + poolTotal
                                                        balances[address(stor5[idx])].field_0 = maxPoolTotal - poolTotal
                                                        poolTotal = maxPoolTotal
                            s = sha3(address(participants[idx]), 7)
                            s = address(participants[idx])
                            idx = idx + 1
                            continue 
}



}
