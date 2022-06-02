contract main {




// =====================  Runtime code  =====================


const sub_114cccd2(?) = 5 * 10^17

const sub_a0c8aaad(?) = 5

const sub_abce62a8(?) = 2

const MULTIPLIER = 125


array of struct stor0;
uint256 currentReceiverIndex;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

function currentReceiverIndex() {
    return currentReceiverIndex
}

function getQueueLength() {
    return (stor0.length - currentReceiverIndex)
}

function getDeposit(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_384
}

function getDepositsCount(address arg1) {
    idx = currentReceiverIndex
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function _fallback() payable {
    if msg.value > 0:
        if gas_remaining < 220000:
            revert with 0, 'We require more gas!'
        if msg.value > 5 * 10^17:
            revert with 0, 'Deposit is too big'
        stor0.length++
        stor0[stor0.length].field_0 = msg.sender
        stor290D[stor0.length].field_0 = uint128(msg.value)
        stor290D[stor0.length].field_128 = uint128(125 * msg.value / 100)
        call 0x5fa713836267be36ae9664e97063667e668eab63 with:
           value 5 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0xc2ce177f96a0fdfa3c72fd6e3a131086b38bc3ef with:
           value 2 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        s = 0
        s = 0
        idx = 0
        s = eth.balance(this.address)
        while idx < stor0.length:
            require currentReceiverIndex + idx < stor0.length
            if uint128(s) < stor0[stor1 + idx].field_384:
                call stor0[stor1 + idx].field_0 with:
                   value uint128(s) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor0[stor1 + idx].field_384 = uint128(stor0[stor1 + idx].field_384 - s)
            else:
                call stor0[stor1 + idx].field_0 with:
                   value stor0[stor1 + idx].field_384 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require currentReceiverIndex + idx < stor0.length
                mem[0] = 0
                stor0[stor1 + idx].field_0 = 0
                stor0[stor1 + idx].field_256 = 0
                if gas_remaining > 50000:
                    s = (2 * currentReceiverIndex + idx) + sha3(0)
                    s = currentReceiverIndex + idx
                    idx = idx + 1
                    s = s - stor0[stor1 + idx].field_384
                    continue 
            currentReceiverIndex += idx
        currentReceiverIndex += stor0.length
}

function getDeposits(address arg1) {
    idx = currentReceiverIndex
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
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
        while idx < stor0.length:
            mem[0] = 0
            if stor0[idx].field_0 != arg1:
                t = (2 * idx) + sha3(0)
                idx = idx + 1
                t = t
                continue 
            require t < s
            mem[(32 * t) + 128] = idx
            require t < mem[(32 * s) + 128]
            mem[(32 * s) + (32 * t) + 160] = stor0[idx].field_256
            require t < mem[(64 * s) + 160]
            mem[(64 * s) + (32 * t) + 192] = stor0[idx].field_384
            t = (2 * idx) + sha3(0)
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
    mem[128 len 32 * s] = code.data[2371 len 32 * s]
    mem[(32 * s) + 128] = s
    mem[(32 * s) + 160 len 32 * s] = code.data[2371 len 32 * s]
    mem[(64 * s) + 160] = s
    mem[(64 * s) + 192 len 32 * s] = code.data[2371 len 32 * s]
    if s <= 0:
        mem[(98 * s) + 192] = 96
        mem[(98 * s) + 288] = s
        mem[(98 * s) + 320 len floor32(s)] = code.data[2371 len floor32(s)]
        mem[(98 * s) + 224] = (32 * s) + 128
        mem[(131 * s) + 320] = s
        t = 0
        while t < 32 * s:
            mem[t + (131 * s) + 352] = mem[t + (32 * s) + 160]
            t = t + 32
            continue 
        mem[(164 * s) + 384 len floor32(s)] = code.data[2371 len floor32(s)]
        return Array(len=s, data=code.data[2371 len floor32(s)], mem[(98 * s) + floor32(s) + 320 len (66 * s) + -floor32(s) + 32], s, code.data[2371 len floor32(s)], mem[(164 * s) + floor32(s) + 384 len (225 * s) - floor32(s)]), 
               (32 * s) + 128,
               (64 * s) + 160
    t = 0
    idx = currentReceiverIndex
    t = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
            t = (2 * idx) + sha3(0)
            idx = idx + 1
            t = t
            continue 
        require t < s
        mem[(32 * t) + 128] = idx
        require t < mem[(32 * s) + 128]
        mem[(32 * s) + (32 * t) + 160] = stor0[idx].field_256
        require t < mem[(64 * s) + 160]
        mem[(64 * s) + (32 * t) + 192] = stor0[idx].field_384
        t = (2 * idx) + sha3(0)
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



}
