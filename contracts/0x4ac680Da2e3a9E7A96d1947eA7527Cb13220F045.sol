contract main {




// =====================  Runtime code  =====================


const sub_691882e8(?) = 10

const sub_dd5967c3(?) = 10^18

const MULTIPLIER = 115


uint256 start;
uint256 sub_88437674;
uint256 currentReceiverIndex;
uint256 sub_78ce1365;
uint256 MIN_DEPOSIT;
uint256 stor5;
address stor6;
uint256 stor6;
uint256 stor7;
uint256 stor8;
array of struct deposit;

function currentReceiverIndex() {
    return currentReceiverIndex
}

function sub_78ce1365(?) {
    return sub_78ce1365
}

function sub_88437674(?) {
    return sub_88437674
}

function getDeposit(uint256 arg1) {
    require arg1 < deposit.length
    return deposit[arg1].field_0, deposit[arg1].field_256, deposit[arg1].field_384
}

function start() {
    return start
}

function MIN_DEPOSIT() {
    return MIN_DEPOSIT
}

function last() {
    return address(stor6), stor7, stor8
}

function getDepositsCount(address arg1) {
    idx = currentReceiverIndex
    s = 0
    while idx < deposit.length:
        mem[0] = 9
        if deposit[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getDeposits(address arg1) {
    idx = currentReceiverIndex
    s = 0
    while idx < deposit.length:
        mem[0] = 9
        if deposit[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if not s:
        mem[(32 * s) + 128] = s
        mem[(64 * s) + 160] = s
        if s <= 0:
            mem[(98 * s) + 192] = 96
            mem[(98 * s) + 288] = s
            mem[(98 * s) + 320 len floor32(s)] = mem[128 len floor32(s)]
            mem[(98 * s) + 224] = (32 * s) + 128
            mem[(131 * s) + 320] = s
            t = 0
            while t < 32 * s:
                mem[t + (131 * s) + 352] = mem[t + (32 * s) + 160]
                t = t + 32
                continue 
            mem[(164 * s) + 384 len floor32(s)] = mem[(64 * s) + 192 len floor32(s)]
            return Array(len=s, data=mem[128 len floor32(s)], mem[(98 * s) + floor32(s) + 320 len (66 * s) + -floor32(s) + 32], s, mem[(64 * s) + 192 len floor32(s)], mem[(164 * s) + floor32(s) + 384 len (225 * s) - floor32(s)]), 
                   (32 * s) + 128,
                   (64 * s) + 160
        t = 0
        idx = currentReceiverIndex
        t = 0
        while idx < deposit.length:
            mem[0] = 9
            if deposit[idx].field_0 != arg1:
                t = (2 * idx) + sha3(9)
                idx = idx + 1
                t = t
                continue 
            require t < s
            mem[(32 * t) + 128] = idx
            require t < mem[(32 * s) + 128]
            mem[(32 * s) + (32 * t) + 160] = deposit[idx].field_256
            require t < mem[(64 * s) + 160]
            mem[(64 * s) + (32 * t) + 192] = deposit[idx].field_384
            t = (2 * idx) + sha3(9)
            idx = idx + 1
            t = t + 1
            continue 
        mem[(98 * s) + 192] = 96
        mem[(98 * s) + 288] = s
        mem[(98 * s) + 320 len floor32(s)] = mem[128 len floor32(s)]
        mem[(98 * s) + 224] = (32 * s) + 128
        mem[(131 * s) + 320] = mem[(32 * s) + 128]
        mem[(131 * s) + 352 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
        mem[(98 * s) + 256] = (32 * mem[(32 * s) + 128]) + (32 * s) + 160
        mem[(32 * mem[(32 * s) + 128]) + (131 * s) + 352] = mem[(64 * s) + 160]
        _149 = mem[(64 * s) + 160]
        mem[(32 * mem[(32 * s) + 128]) + (131 * s) + 384 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
        return memory
          from (98 * s) + 192
           len (32 * _149) + (32 * mem[(32 * s) + 128]) + (33 * s) + 192
    mem[128 len 32 * s] = code.data[3179 len 32 * s]
    mem[(32 * s) + 128] = s
    mem[(32 * s) + 160 len 32 * s] = code.data[3179 len 32 * s]
    mem[(64 * s) + 160] = s
    mem[(64 * s) + 192 len 32 * s] = code.data[3179 len 32 * s]
    if s <= 0:
        mem[(98 * s) + 192] = 96
        mem[(98 * s) + 288] = s
        mem[(98 * s) + 320 len floor32(s)] = code.data[3179 len floor32(s)]
        mem[(98 * s) + 224] = (32 * s) + 128
        mem[(131 * s) + 320] = s
        t = 0
        while t < 32 * s:
            mem[t + (131 * s) + 352] = mem[t + (32 * s) + 160]
            t = t + 32
            continue 
        mem[(164 * s) + 384 len floor32(s)] = code.data[3179 len floor32(s)]
        return Array(len=s, data=code.data[3179 len floor32(s)], mem[(98 * s) + floor32(s) + 320 len (66 * s) + -floor32(s) + 32], s, code.data[3179 len floor32(s)], mem[(164 * s) + floor32(s) + 384 len (225 * s) - floor32(s)]), 
               (32 * s) + 128,
               (64 * s) + 160
    t = 0
    idx = currentReceiverIndex
    t = 0
    while idx < deposit.length:
        mem[0] = 9
        if deposit[idx].field_0 != arg1:
            t = (2 * idx) + sha3(9)
            idx = idx + 1
            t = t
            continue 
        require t < s
        mem[(32 * t) + 128] = idx
        require t < mem[(32 * s) + 128]
        mem[(32 * s) + (32 * t) + 160] = deposit[idx].field_256
        require t < mem[(64 * s) + 160]
        mem[(64 * s) + (32 * t) + 192] = deposit[idx].field_384
        t = (2 * idx) + sha3(9)
        idx = idx + 1
        t = t + 1
        continue 
    mem[(98 * s) + 192] = 96
    mem[(98 * s) + 288] = s
    mem[(98 * s) + 320 len floor32(s)] = mem[128 len floor32(s)]
    mem[(98 * s) + 224] = (32 * s) + 128
    mem[(131 * s) + 320] = mem[(32 * s) + 128]
    mem[(131 * s) + 352 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
    mem[(98 * s) + 256] = (32 * mem[(32 * s) + 128]) + (32 * s) + 160
    mem[(32 * mem[(32 * s) + 128]) + (131 * s) + 352] = mem[(64 * s) + 160]
    _154 = mem[(64 * s) + 160]
    mem[(32 * mem[(32 * s) + 128]) + (131 * s) + 384 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
    return memory
      from (98 * s) + 192
       len (32 * _154) + (32 * mem[(32 * s) + 128]) + (33 * s) + 192
}

function _fallback() payable {
    require block.number > start
    if msg.value:
        if msg.value > 0:
            if gas_remaining < 220000:
                revert with 0, 'We require more gas!'
            require msg.value <= 10^18
            require msg.value >= MIN_DEPOSIT
            deposit.length++
            deposit[deposit.length].field_0 = msg.sender
            deposit[deposit.length].field_256 = uint128(msg.value)
            deposit[deposit.length].field_384 = uint128(115 * msg.value / 100)
            uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
            stor7 += 10 * msg.value / 100
            stor8 = block.number
            sub_78ce1365++
            if 200 <= sub_78ce1365 + 1:
                MIN_DEPOSIT = 5 * 10^16
            else:
                if 150 <= sub_78ce1365:
                    MIN_DEPOSIT = 4 * 10^16
                else:
                    if 100 <= sub_78ce1365:
                        MIN_DEPOSIT = 3 * 10^16
                    else:
                        if 50 > sub_78ce1365:
                            MIN_DEPOSIT = 10^16
                        else:
                            MIN_DEPOSIT = 2 * 10^16
            if msg.value * stor5 / 100 > uint128(eth.balance(this.address)):
                call 0xa93c13b3e3561e5e2a1a20239486d03a16d1fc4b with:
                   value uint128(eth.balance(this.address)) wei
                     gas 2300 * is_zero(value) wei
            else:
                call 0xa93c13b3e3561e5e2a1a20239486d03a16d1fc4b with:
                   value msg.value * stor5 / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require stor7
            if uint128(eth.balance(this.address) / stor7) >= 1:
                s = 0
                s = 0
                idx = 0
                s = eth.balance(this.address) - stor7
                while idx < deposit.length:
                    require currentReceiverIndex + idx < deposit.length
                    if uint128(s) < deposit[stor2 + idx].field_384:
                        call deposit[stor2 + idx].field_0 with:
                           value uint128(s) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        deposit[stor2 + idx].field_384 = uint128(deposit[stor2 + idx].field_384 - s)
                    else:
                        call deposit[stor2 + idx].field_0 with:
                           value deposit[stor2 + idx].field_384 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require currentReceiverIndex + idx < deposit.length
                        mem[0] = 9
                        deposit[stor2 + idx].field_0 = 0
                        deposit[stor2 + idx].field_256 = 0
                        if gas_remaining > 50000:
                            s = (2 * currentReceiverIndex + idx) + sha3(9)
                            s = currentReceiverIndex + idx
                            idx = idx + 1
                            s = s - deposit[stor2 + idx].field_384
                            continue 
                    currentReceiverIndex += idx
                currentReceiverIndex += deposit.length
    else:
        if msg.sender == address(stor6):
            if gas_remaining < 220000:
                revert with 0, 'We require more gas!'
            if stor8 + 45 >= block.number:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Last depositor should wait 45 blocks (~9-11 minutes) to claim reward'
            if uint128(eth.balance(this.address)) < stor7:
                call address(stor6) with:
                   value uint128(eth.balance(this.address)) wei
                     gas 2300 * is_zero(value) wei
            else:
                call address(stor6) with:
                   value stor7 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            address(stor6) = 0
            stor7 = 0
            stor8 = 0
        else:
            if msg.value > 0:
                if gas_remaining < 220000:
                    revert with 0, 'We require more gas!'
                require msg.value <= 10^18
                require msg.value >= MIN_DEPOSIT
                deposit.length++
                deposit[deposit.length].field_0 = msg.sender
                deposit[deposit.length].field_256 = uint128(msg.value)
                deposit[deposit.length].field_384 = uint128(115 * msg.value / 100)
                uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
                stor7 += 10 * msg.value / 100
                stor8 = block.number
                sub_78ce1365++
                if 200 <= sub_78ce1365 + 1:
                    MIN_DEPOSIT = 5 * 10^16
                else:
                    if 150 <= sub_78ce1365:
                        MIN_DEPOSIT = 4 * 10^16
                    else:
                        if 100 <= sub_78ce1365:
                            MIN_DEPOSIT = 3 * 10^16
                        else:
                            if 50 > sub_78ce1365:
                                MIN_DEPOSIT = 10^16
                            else:
                                MIN_DEPOSIT = 2 * 10^16
                if msg.value * stor5 / 100 > uint128(eth.balance(this.address)):
                    call 0xa93c13b3e3561e5e2a1a20239486d03a16d1fc4b with:
                       value uint128(eth.balance(this.address)) wei
                         gas 2300 * is_zero(value) wei
                else:
                    call 0xa93c13b3e3561e5e2a1a20239486d03a16d1fc4b with:
                       value msg.value * stor5 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require stor7
                if uint128(eth.balance(this.address) / stor7) >= 1:
                    s = 0
                    s = 0
                    idx = 0
                    s = eth.balance(this.address) - stor7
                    while idx < deposit.length:
                        require currentReceiverIndex + idx < deposit.length
                        if uint128(s) < deposit[stor2 + idx].field_384:
                            call deposit[stor2 + idx].field_0 with:
                               value uint128(s) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            deposit[stor2 + idx].field_384 = uint128(deposit[stor2 + idx].field_384 - s)
                        else:
                            call deposit[stor2 + idx].field_0 with:
                               value deposit[stor2 + idx].field_384 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require currentReceiverIndex + idx < deposit.length
                            mem[0] = 9
                            deposit[stor2 + idx].field_0 = 0
                            deposit[stor2 + idx].field_256 = 0
                            if gas_remaining > 50000:
                                s = (2 * currentReceiverIndex + idx) + sha3(9)
                                s = currentReceiverIndex + idx
                                idx = idx + 1
                                s = s - deposit[stor2 + idx].field_384
                                continue 
                        currentReceiverIndex += idx
                    currentReceiverIndex += deposit.length
}



}
