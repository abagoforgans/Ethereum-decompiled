contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
bool stor3;
uint256 stor3; offset 1
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
array of struct stor9;
mapping of uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor31;
uint256 stor32;
uint256 stor33;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    uint256(stor3.field_0) = 0
    stor4 = 0
    stor5 = 10
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 72 * 24 * 3600
    stor18 = 0
    stor19 = 1
    stor20 = 1000
    stor21 = 999
    stor22 = 10
    stor23 = 0
    stor24 = 0
    stor25 = 0
    stor26 = 1
    stor27 = 0
    stor28 = 60480
    stor29 = 0
    stor31 = 0
    stor32 = 0
    stor33 = 0
    stor0 = msg.sender
    bool(stor3.field_0) = 0
    uint255(stor3.field_1) = uint255(msg.value)
    stor2 += msg.value
    stor10[address(msg.sender)] = msg.value
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = 4 * stor9.length + 1
        while 4 * stor9.length > idx:
            stor9[idx].field_0 = 0
            stor9[idx].field_256 = 0
            stor9[idx].field_512 = 0
            stor9[idx].field_768 = 0
            idx = idx + 4
            continue 
    stor9[stor9.length].field_0 = stor0
    stor9[stor9.length].field_256 = stor2
    stor9[stor9.length].field_512 = uint256(stor3.field_0)
    stor9[stor9.length].field_768 = 0
    stor24 = block.gasprice * stor26
    stor27 = block.number
    stor13 = block.number
    return code.data[530 len 6874]
}



// =====================  Runtime code  =====================


#
#  - sub_1d9a2901(?)
#  - sub_7beeec36(?)
#  - sub_c548f163(?)
#  - sub_d27411ce(?)
#
address owner;
array of uint256 stor1;
uint256 stor2;
uint256 investments;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
array of struct depositors;
mapping of uint256 stor10;
uint256 stor11;
uint256 claimLevel;
uint256 stor13;
uint256 stor14;
mapping of uint256 stor15;
mapping of struct stor16;
array of struct bets;
uint256 jackpot;
uint256 sub_17cc82d2;
uint256 sub_80044b9a;
uint256 sub_cfbd900f;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 sub_90808c7f;
array of struct tickets;
uint256 stor31;
uint256 stor32;
uint256 stor33;
array of struct sub_fe883e2e;
address stor35;
uint256 stor36;

function sub_17cc82d2(?) {
    return sub_17cc82d2
}

function bets(uint256 arg1) {
    require arg1 < bets.length
    return bets[arg1].field_0, 
           uint256(bets[arg1].field_256),
           uint256(bets[arg1].field_512),
           uint256(bets[arg1].field_768),
           uint256(bets[arg1].field_1024),
           uint256(bets[arg1].field_1280),
           bool(uint8(bets[arg1].field_1536)),
           bool(uint8(bets[arg1].field_1544))
}

function claimLevel() {
    return claimLevel
}

function tickets(uint256 arg1) {
    require arg1 < tickets.length
    return tickets[arg1].field_0, uint256(tickets[arg1].field_256)
}

function jackpot() {
    return jackpot
}

function sub_80044b9a(?) {
    return sub_80044b9a
}

function contractBalance() {
    return stor1.length
}

function owner() {
    return owner
}

function sub_90808c7f(?) {
    return sub_90808c7f
}

function sub_cfbd900f(?) {
    return sub_cfbd900f
}

function depositors(uint256 arg1) {
    require arg1 < depositors.length
    return depositors[arg1].field_0, 
           uint256(depositors[arg1].field_256),
           uint256(depositors[arg1].field_512),
           bool(uint8(depositors[arg1].field_768))
}

function investments() {
    return uint256(investments)
}

function sub_fe883e2e(?) {
    require arg1 < sub_fe883e2e.length
    return sub_fe883e2e[arg1].field_0, uint256(sub_fe883e2e[arg1].field_256)
}

function _fallback() payable {
    revert
}

function sub_b51e390e(?) {
    return stor35, stor36
}

function donate() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_fe883e2e.length++
    if not sub_fe883e2e.length <= sub_fe883e2e.length + 1:
        idx = 2 * sub_fe883e2e.length + 1
        while 2 * sub_fe883e2e.length > idx:
            sub_fe883e2e[idx].field_0 = 0
            uint256(sub_fe883e2e[idx].field_256) = 0
            idx = idx + 2
            continue 
    sub_fe883e2e[sub_fe883e2e.length].field_0 = msg.sender
    uint256(sub_fe883e2e[sub_fe883e2e.length].field_256) = msg.value
    if stor36 < msg.value:
        stor35 = msg.sender
        stor36 = msg.value
    return 1
}

function sub_b630aebd(?) {
    require stor14
    if block.number - stor13 / stor14 > 0:
        idx = 0
        while idx < block.number - stor13 / stor14:
            claimLevel++
            mem[32] = 16
            uint255(stor16[stor12].field_0) = eth.balance(this.address) - stor11 - stor8 / 2
            bool(stor16[stor12].field_255) = 0
            mem[0] = claimLevel
            stor11 += uint256(stor16[stor12].field_0)
            idx = idx + 1
            continue 
        require stor14
        stor13 = block.number - (block.number - stor13 % stor14)
    require stor10[address(msg.sender)]
    require stor15[address(msg.sender)] < claimLevel
    stor15[address(msg.sender)]++
    require uint256(investments)
    if uint256(stor16[stor15[address(msg.sender)] + 1].field_0) * stor10[address(msg.sender)] / uint256(investments) > 0:
        if stor11 - (uint256(stor16[stor15[address(msg.sender)] + 1].field_0) * stor10[address(msg.sender)] / uint256(investments)) >= 0:
            call msg.sender with:
               value uint256(stor16[stor15[address(msg.sender)] + 1].field_0) * stor10[address(msg.sender)] / uint256(investments) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            stor11 -= uint256(stor16[stor15[address(msg.sender)] + 1].field_0) * stor10[address(msg.sender)] / uint256(investments)
            stor1.length = eth.balance(this.address)
}

function invest() payable {
    require msg.value > 0
    require msg.value <= uint256(investments)
    uint256(investments) += msg.value
    if stor10[address(msg.sender)]:
        depositors.length++
        if not depositors.length <= depositors.length + 1:
            idx = 4 * depositors.length + 1
            while 4 * depositors.length > idx:
                depositors[idx].field_0 = 0
                uint256(depositors[idx].field_256) = 0
                uint256(depositors[idx].field_512) = 0
                uint8(depositors[idx].field_768) = 0
                idx = idx + 4
                continue 
        depositors[depositors.length].field_0 = msg.sender
        uint256(depositors[depositors.length].field_256) = msg.value
        bool(depositors[depositors.length].field_512) = 0
        uint255(depositors[depositors.length].field_513) = uint255(stor2)
        uint8(depositors[depositors.length].field_768) = 1
    else:
        stor10[address(msg.sender)] = msg.value
        depositors.length++
        if not depositors.length <= depositors.length + 1:
            idx = 4 * depositors.length + 1
            while 4 * depositors.length > idx:
                depositors[idx].field_0 = 0
                uint256(depositors[idx].field_256) = 0
                uint256(depositors[idx].field_512) = 0
                uint8(depositors[idx].field_768) = 0
                idx = idx + 4
                continue 
        depositors[depositors.length].field_0 = msg.sender
        uint256(depositors[depositors.length].field_256) = msg.value
        bool(depositors[depositors.length].field_512) = 0
        uint255(depositors[depositors.length].field_513) = uint255(stor2)
        uint8(depositors[depositors.length].field_768) = 0
    require stor5
    uint256(investments) += msg.value / stor5
    depositors.length++
    if not depositors.length <= depositors.length + 1:
        idx = 4 * depositors.length + 1
        while 4 * depositors.length > idx:
            depositors[idx].field_0 = 0
            uint256(depositors[idx].field_256) = 0
            uint256(depositors[idx].field_512) = 0
            uint8(depositors[idx].field_768) = 0
            idx = idx + 4
            continue 
    require stor5
    depositors[depositors.length].field_0 = owner
    uint256(depositors[depositors.length].field_256) = msg.value / stor5
    bool(depositors[depositors.length].field_512) = 0
    uint255(depositors[depositors.length].field_513) = uint255(stor2)
    uint8(depositors[depositors.length].field_768) = 1
    stor1.length = eth.balance(this.address)
    if eth.balance(this.address) - stor11 - stor8 < stor3:
        if stor6:
            require stor7 < depositors.length
            if not depositors[stor7].field_0:
                if stor7 + 1 < depositors.length:
                    stor7++
                else:
                    stor6 = 0
                    stor7 = 0
                    stor8 = 0
                    if stor4 + 1 < depositors.length:
                        stor4++
                        stor3 = uint256(depositors[stor4 + 1].field_512)
                stor1.length = eth.balance(this.address)
            else:
                if uint256(depositors[stor7].field_512) > stor3:
                    if stor7 + 1 < depositors.length:
                        stor7++
                    else:
                        stor6 = 0
                        stor7 = 0
                        stor8 = 0
                        if stor4 + 1 < depositors.length:
                            stor4++
                            stor3 = uint256(depositors[stor4 + 1].field_512)
                    stor1.length = eth.balance(this.address)
                else:
                    if not uint8(depositors[stor7].field_768):
                        call depositors[stor7].field_0 with:
                           value stor10[stor9[stor7].field_0] wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            stor8 -= stor10[stor9[stor7].field_0]
                            stor13 = block.number
                            if stor7 + 1 < depositors.length:
                                stor7++
                            else:
                                stor6 = 0
                                stor7 = 0
                                stor8 = 0
                                if stor4 + 1 < depositors.length:
                                    stor4++
                                    stor3 = uint256(depositors[stor4 + 1].field_512)
                            stor1.length = eth.balance(this.address)
                    else:
                        call depositors[stor7].field_0 with:
                           value uint256(depositors[stor7].field_256) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            stor10[stor9[stor7].field_0] += uint256(depositors[stor7].field_256)
                            require stor7 < depositors.length
                            depositors[stor7].field_0 = 0
                            depositors[stor7].field_256 % 1 = 0
                            uint256(depositors[stor7].field_256) = 0
                            uint256(depositors[stor7].field_512) = 0
                            uint8(depositors[stor7].field_768) = 0
                            stor8 -= uint256(depositors[stor7].field_256)
                            stor13 = block.number
                            if stor7 + 1 < depositors.length:
                                stor7++
                            else:
                                stor6 = 0
                                stor7 = 0
                                stor8 = 0
                                if stor4 + 1 < depositors.length:
                                    stor4++
                                    stor3 = uint256(depositors[stor4 + 1].field_512)
                            stor1.length = eth.balance(this.address)
    else:
        if not stor6:
            stor8 = stor3
            stor6 = 1
        else:
            require stor7 < depositors.length
            if not depositors[stor7].field_0:
                if stor7 + 1 < depositors.length:
                    stor7++
                else:
                    stor6 = 0
                    stor7 = 0
                    stor8 = 0
                    if stor4 + 1 < depositors.length:
                        stor4++
                        stor3 = uint256(depositors[stor4 + 1].field_512)
                stor1.length = eth.balance(this.address)
            else:
                if uint256(depositors[stor7].field_512) > stor3:
                    if stor7 + 1 < depositors.length:
                        stor7++
                    else:
                        stor6 = 0
                        stor7 = 0
                        stor8 = 0
                        if stor4 + 1 < depositors.length:
                            stor4++
                            stor3 = uint256(depositors[stor4 + 1].field_512)
                    stor1.length = eth.balance(this.address)
                else:
                    if not uint8(depositors[stor7].field_768):
                        call depositors[stor7].field_0 with:
                           value stor10[stor9[stor7].field_0] wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            stor8 -= stor10[stor9[stor7].field_0]
                            stor13 = block.number
                            if stor7 + 1 < depositors.length:
                                stor7++
                            else:
                                stor6 = 0
                                stor7 = 0
                                stor8 = 0
                                if stor4 + 1 < depositors.length:
                                    stor4++
                                    stor3 = uint256(depositors[stor4 + 1].field_512)
                            stor1.length = eth.balance(this.address)
                    else:
                        call depositors[stor7].field_0 with:
                           value uint256(depositors[stor7].field_256) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            stor10[stor9[stor7].field_0] += uint256(depositors[stor7].field_256)
                            require stor7 < depositors.length
                            depositors[stor7].field_0 = 0
                            depositors[stor7].field_256 % 1 = 0
                            uint256(depositors[stor7].field_256) = 0
                            uint256(depositors[stor7].field_512) = 0
                            uint8(depositors[stor7].field_768) = 0
                            stor8 -= uint256(depositors[stor7].field_256)
                            stor13 = block.number
                            if stor7 + 1 < depositors.length:
                                stor7++
                            else:
                                stor6 = 0
                                stor7 = 0
                                stor8 = 0
                                if stor4 + 1 < depositors.length:
                                    stor4++
                                    stor3 = uint256(depositors[stor4 + 1].field_512)
                            stor1.length = eth.balance(this.address)
    sub_90808c7f = stor27 + stor28 - block.number
    if sub_90808c7f > 2 * stor28:
        sub_90808c7f = 0
    if block.number > stor27 + stor28:
        require sub_cfbd900f + 1
        stor31 = block.hash(block.number - 1)
        stor32 = block.timestamp
        stor33 = (block.timestamp + stor32 + stor33 / 2) + block.hash(block.number - 1) + (stor31 % sub_cfbd900f + 1) % sub_cfbd900f + 1
        s = 0
        idx = 0
        s = ((block.timestamp + stor32 + stor33 / 2) + block.hash(block.number - 1) + (stor31 % sub_cfbd900f + 1) % sub_cfbd900f + 1) + sub_cfbd900f
        while idx < tickets.length:
            mem[0] = 30
            if s - uint256(tickets[idx].field_256) > sub_cfbd900f:
                s = (2 * idx) + sha3(30)
                idx = idx + 1
                s = s - uint256(tickets[idx].field_256)
                continue 
            call tickets[idx].field_0 with:
               value (eth.balance(this.address) / 100) + sub_17cc82d2 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                idx = tickets.length
                while idx > 0:
                    require idx - 1 < tickets.length
                    mem[0] = 30
                    tickets[idx - 1].field_0 = 0
                    uint256(tickets[idx - 1].field_256) = 0
                    tickets.length--
                    if not tickets.length <= tickets.length - 1:
                        mem[0] = 30
                        s = sha3(30) + (2 * tickets.length - 1)
                        while sha3(30) + (2 * tickets.length) > s:
                            stor[s] = 0
                            stor1[s] = 0
                            s = s + 2
                            continue 
                    idx = idx - 1
                    continue 
                sub_cfbd900f = 0
                stor27 = block.number
                sub_17cc82d2 = 0
                stor1.length = eth.balance(this.address)
                sub_90808c7f = stor28
                sub_80044b9a = block.gasprice * stor26
}

function buyTicket() payable {
    require msg.value >= sub_80044b9a
    require sub_80044b9a
    if msg.value - (msg.value / sub_80044b9a * sub_80044b9a) <= 0:
        tickets.length++
        if not tickets.length <= tickets.length + 1:
            idx = 2 * tickets.length + 1
            while 2 * tickets.length > idx:
                tickets[idx].field_0 = 0
                uint256(tickets[idx].field_256) = 0
                idx = idx + 2
                continue 
        tickets[tickets.length].field_0 = msg.sender
        uint256(tickets[tickets.length].field_256) = msg.value / sub_80044b9a
        sub_cfbd900f += msg.value / sub_80044b9a
        sub_17cc82d2 += msg.value
        stor1.length = eth.balance(this.address)
        if eth.balance(this.address) - stor11 - stor8 < stor3:
            if stor6:
                require stor7 < depositors.length
                if not depositors[stor7].field_0:
                    if stor7 + 1 < depositors.length:
                        stor7++
                    else:
                        stor6 = 0
                        stor7 = 0
                        stor8 = 0
                        if stor4 + 1 < depositors.length:
                            stor4++
                            stor3 = uint256(depositors[stor4 + 1].field_512)
                    stor1.length = eth.balance(this.address)
                else:
                    if uint256(depositors[stor7].field_512) > stor3:
                        if stor7 + 1 < depositors.length:
                            stor7++
                        else:
                            stor6 = 0
                            stor7 = 0
                            stor8 = 0
                            if stor4 + 1 < depositors.length:
                                stor4++
                                stor3 = uint256(depositors[stor4 + 1].field_512)
                        stor1.length = eth.balance(this.address)
                    else:
                        if not uint8(depositors[stor7].field_768):
                            call depositors[stor7].field_0 with:
                               value stor10[stor9[stor7].field_0] wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                stor8 -= stor10[stor9[stor7].field_0]
                                stor13 = block.number
                                if stor7 + 1 < depositors.length:
                                    stor7++
                                else:
                                    stor6 = 0
                                    stor7 = 0
                                    stor8 = 0
                                    if stor4 + 1 < depositors.length:
                                        stor4++
                                        stor3 = uint256(depositors[stor4 + 1].field_512)
                                stor1.length = eth.balance(this.address)
                        else:
                            call depositors[stor7].field_0 with:
                               value uint256(depositors[stor7].field_256) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                stor10[stor9[stor7].field_0] += uint256(depositors[stor7].field_256)
                                require stor7 < depositors.length
                                depositors[stor7].field_0 = 0
                                depositors[stor7].field_256 % 1 = 0
                                uint256(depositors[stor7].field_256) = 0
                                uint256(depositors[stor7].field_512) = 0
                                uint8(depositors[stor7].field_768) = 0
                                stor8 -= uint256(depositors[stor7].field_256)
                                stor13 = block.number
                                if stor7 + 1 < depositors.length:
                                    stor7++
                                else:
                                    stor6 = 0
                                    stor7 = 0
                                    stor8 = 0
                                    if stor4 + 1 < depositors.length:
                                        stor4++
                                        stor3 = uint256(depositors[stor4 + 1].field_512)
                                stor1.length = eth.balance(this.address)
        else:
            if not stor6:
                stor8 = stor3
                stor6 = 1
            else:
                require stor7 < depositors.length
                if not depositors[stor7].field_0:
                    if stor7 + 1 < depositors.length:
                        stor7++
                    else:
                        stor6 = 0
                        stor7 = 0
                        stor8 = 0
                        if stor4 + 1 < depositors.length:
                            stor4++
                            stor3 = uint256(depositors[stor4 + 1].field_512)
                    stor1.length = eth.balance(this.address)
                else:
                    if uint256(depositors[stor7].field_512) > stor3:
                        if stor7 + 1 < depositors.length:
                            stor7++
                        else:
                            stor6 = 0
                            stor7 = 0
                            stor8 = 0
                            if stor4 + 1 < depositors.length:
                                stor4++
                                stor3 = uint256(depositors[stor4 + 1].field_512)
                        stor1.length = eth.balance(this.address)
                    else:
                        if not uint8(depositors[stor7].field_768):
                            call depositors[stor7].field_0 with:
                               value stor10[stor9[stor7].field_0] wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                stor8 -= stor10[stor9[stor7].field_0]
                                stor13 = block.number
                                if stor7 + 1 < depositors.length:
                                    stor7++
                                else:
                                    stor6 = 0
                                    stor7 = 0
                                    stor8 = 0
                                    if stor4 + 1 < depositors.length:
                                        stor4++
                                        stor3 = uint256(depositors[stor4 + 1].field_512)
                                stor1.length = eth.balance(this.address)
                        else:
                            call depositors[stor7].field_0 with:
                               value uint256(depositors[stor7].field_256) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                stor10[stor9[stor7].field_0] += uint256(depositors[stor7].field_256)
                                require stor7 < depositors.length
                                depositors[stor7].field_0 = 0
                                depositors[stor7].field_256 % 1 = 0
                                uint256(depositors[stor7].field_256) = 0
                                uint256(depositors[stor7].field_512) = 0
                                uint8(depositors[stor7].field_768) = 0
                                stor8 -= uint256(depositors[stor7].field_256)
                                stor13 = block.number
                                if stor7 + 1 < depositors.length:
                                    stor7++
                                else:
                                    stor6 = 0
                                    stor7 = 0
                                    stor8 = 0
                                    if stor4 + 1 < depositors.length:
                                        stor4++
                                        stor3 = uint256(depositors[stor4 + 1].field_512)
                                stor1.length = eth.balance(this.address)
        sub_90808c7f = stor27 + stor28 - block.number
        if sub_90808c7f > 2 * stor28:
            sub_90808c7f = 0
        if block.number > stor27 + stor28:
            require sub_cfbd900f + 1
            stor31 = block.hash(block.number - 1)
            stor32 = block.timestamp
            stor33 = (block.timestamp + stor32 + stor33 / 2) + block.hash(block.number - 1) + (stor31 % sub_cfbd900f + 1) % sub_cfbd900f + 1
            s = 0
            idx = 0
            s = ((block.timestamp + stor32 + stor33 / 2) + block.hash(block.number - 1) + (stor31 % sub_cfbd900f + 1) % sub_cfbd900f + 1) + sub_cfbd900f
            while idx < tickets.length:
                mem[0] = 30
                if s - uint256(tickets[idx].field_256) > sub_cfbd900f:
                    s = (2 * idx) + sha3(30)
                    idx = idx + 1
                    s = s - uint256(tickets[idx].field_256)
                    continue 
                call tickets[idx].field_0 with:
                   value (eth.balance(this.address) / 100) + sub_17cc82d2 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    idx = tickets.length
                    while idx > 0:
                        require idx - 1 < tickets.length
                        mem[0] = 30
                        tickets[idx - 1].field_0 = 0
                        uint256(tickets[idx - 1].field_256) = 0
                        tickets.length--
                        if not tickets.length <= tickets.length - 1:
                            mem[0] = 30
                            s = sha3(30) + (2 * tickets.length - 1)
                            while sha3(30) + (2 * tickets.length) > s:
                                stor[s] = 0
                                stor1[s] = 0
                                s = s + 2
                                continue 
                        idx = idx - 1
                        continue 
                    sub_cfbd900f = 0
                    stor27 = block.number
                    sub_17cc82d2 = 0
                    stor1.length = eth.balance(this.address)
                    sub_90808c7f = stor28
                    sub_80044b9a = block.gasprice * stor26
    else:
        call msg.sender with:
           value msg.value - (msg.value / sub_80044b9a * sub_80044b9a) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            tickets.length++
            if not tickets.length <= tickets.length + 1:
                idx = 2 * tickets.length + 1
                while 2 * tickets.length > idx:
                    tickets[idx].field_0 = 0
                    uint256(tickets[idx].field_256) = 0
                    idx = idx + 2
                    continue 
            tickets[tickets.length].field_0 = msg.sender
            uint256(tickets[tickets.length].field_256) = msg.value / sub_80044b9a
            sub_cfbd900f += msg.value / sub_80044b9a
            sub_17cc82d2 += msg.value
            stor1.length = eth.balance(this.address)
            if eth.balance(this.address) - stor11 - stor8 < stor3:
                if stor6:
                    require stor7 < depositors.length
                    if not depositors[stor7].field_0:
                        if stor7 + 1 < depositors.length:
                            stor7++
                        else:
                            stor6 = 0
                            stor7 = 0
                            stor8 = 0
                            if stor4 + 1 < depositors.length:
                                stor4++
                                stor3 = uint256(depositors[stor4 + 1].field_512)
                        stor1.length = eth.balance(this.address)
                    else:
                        if uint256(depositors[stor7].field_512) > stor3:
                            if stor7 + 1 < depositors.length:
                                stor7++
                            else:
                                stor6 = 0
                                stor7 = 0
                                stor8 = 0
                                if stor4 + 1 < depositors.length:
                                    stor4++
                                    stor3 = uint256(depositors[stor4 + 1].field_512)
                            stor1.length = eth.balance(this.address)
                        else:
                            if not uint8(depositors[stor7].field_768):
                                call depositors[stor7].field_0 with:
                                   value stor10[stor9[stor7].field_0] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    stor8 -= stor10[stor9[stor7].field_0]
                                    stor13 = block.number
                                    if stor7 + 1 < depositors.length:
                                        stor7++
                                    else:
                                        stor6 = 0
                                        stor7 = 0
                                        stor8 = 0
                                        if stor4 + 1 < depositors.length:
                                            stor4++
                                            stor3 = uint256(depositors[stor4 + 1].field_512)
                                    stor1.length = eth.balance(this.address)
                            else:
                                call depositors[stor7].field_0 with:
                                   value uint256(depositors[stor7].field_256) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    stor10[stor9[stor7].field_0] += uint256(depositors[stor7].field_256)
                                    require stor7 < depositors.length
                                    depositors[stor7].field_0 = 0
                                    depositors[stor7].field_256 % 1 = 0
                                    uint256(depositors[stor7].field_256) = 0
                                    uint256(depositors[stor7].field_512) = 0
                                    uint8(depositors[stor7].field_768) = 0
                                    stor8 -= uint256(depositors[stor7].field_256)
                                    stor13 = block.number
                                    if stor7 + 1 < depositors.length:
                                        stor7++
                                    else:
                                        stor6 = 0
                                        stor7 = 0
                                        stor8 = 0
                                        if stor4 + 1 < depositors.length:
                                            stor4++
                                            stor3 = uint256(depositors[stor4 + 1].field_512)
                                    stor1.length = eth.balance(this.address)
            else:
                if not stor6:
                    stor8 = stor3
                    stor6 = 1
                else:
                    require stor7 < depositors.length
                    if not depositors[stor7].field_0:
                        if stor7 + 1 < depositors.length:
                            stor7++
                        else:
                            stor6 = 0
                            stor7 = 0
                            stor8 = 0
                            if stor4 + 1 < depositors.length:
                                stor4++
                                stor3 = uint256(depositors[stor4 + 1].field_512)
                        stor1.length = eth.balance(this.address)
                    else:
                        if uint256(depositors[stor7].field_512) > stor3:
                            if stor7 + 1 < depositors.length:
                                stor7++
                            else:
                                stor6 = 0
                                stor7 = 0
                                stor8 = 0
                                if stor4 + 1 < depositors.length:
                                    stor4++
                                    stor3 = uint256(depositors[stor4 + 1].field_512)
                            stor1.length = eth.balance(this.address)
                        else:
                            if not uint8(depositors[stor7].field_768):
                                call depositors[stor7].field_0 with:
                                   value stor10[stor9[stor7].field_0] wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    stor8 -= stor10[stor9[stor7].field_0]
                                    stor13 = block.number
                                    if stor7 + 1 < depositors.length:
                                        stor7++
                                    else:
                                        stor6 = 0
                                        stor7 = 0
                                        stor8 = 0
                                        if stor4 + 1 < depositors.length:
                                            stor4++
                                            stor3 = uint256(depositors[stor4 + 1].field_512)
                                    stor1.length = eth.balance(this.address)
                            else:
                                call depositors[stor7].field_0 with:
                                   value uint256(depositors[stor7].field_256) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    stor10[stor9[stor7].field_0] += uint256(depositors[stor7].field_256)
                                    require stor7 < depositors.length
                                    depositors[stor7].field_0 = 0
                                    depositors[stor7].field_256 % 1 = 0
                                    uint256(depositors[stor7].field_256) = 0
                                    uint256(depositors[stor7].field_512) = 0
                                    uint8(depositors[stor7].field_768) = 0
                                    stor8 -= uint256(depositors[stor7].field_256)
                                    stor13 = block.number
                                    if stor7 + 1 < depositors.length:
                                        stor7++
                                    else:
                                        stor6 = 0
                                        stor7 = 0
                                        stor8 = 0
                                        if stor4 + 1 < depositors.length:
                                            stor4++
                                            stor3 = uint256(depositors[stor4 + 1].field_512)
                                    stor1.length = eth.balance(this.address)
            sub_90808c7f = stor27 + stor28 - block.number
            if sub_90808c7f > 2 * stor28:
                sub_90808c7f = 0
            if block.number > stor27 + stor28:
                require sub_cfbd900f + 1
                stor31 = block.hash(block.number - 1)
                stor32 = block.timestamp
                stor33 = (block.timestamp + stor32 + stor33 / 2) + block.hash(block.number - 1) + (stor31 % sub_cfbd900f + 1) % sub_cfbd900f + 1
                s = 0
                idx = 0
                s = ((block.timestamp + stor32 + stor33 / 2) + block.hash(block.number - 1) + (stor31 % sub_cfbd900f + 1) % sub_cfbd900f + 1) + sub_cfbd900f
                while idx < tickets.length:
                    mem[0] = 30
                    if s - uint256(tickets[idx].field_256) > sub_cfbd900f:
                        s = (2 * idx) + sha3(30)
                        idx = idx + 1
                        s = s - uint256(tickets[idx].field_256)
                        continue 
                    call tickets[idx].field_0 with:
                       value (eth.balance(this.address) / 100) + sub_17cc82d2 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        idx = tickets.length
                        while idx > 0:
                            require idx - 1 < tickets.length
                            mem[0] = 30
                            tickets[idx - 1].field_0 = 0
                            uint256(tickets[idx - 1].field_256) = 0
                            tickets.length--
                            if not tickets.length <= tickets.length - 1:
                                mem[0] = 30
                                s = sha3(30) + (2 * tickets.length - 1)
                                while sha3(30) + (2 * tickets.length) > s:
                                    stor[s] = 0
                                    stor1[s] = 0
                                    s = s + 2
                                    continue 
                            idx = idx - 1
                            continue 
                        sub_cfbd900f = 0
                        stor27 = block.number
                        sub_17cc82d2 = 0
                        stor1.length = eth.balance(this.address)
                        sub_90808c7f = stor28
                        sub_80044b9a = block.gasprice * stor26
}



}
