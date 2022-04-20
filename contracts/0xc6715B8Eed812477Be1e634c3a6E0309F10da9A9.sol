contract main {


// =======================  Init code  ======================


uint32 stor8;
array of uint256 stor99;

function _fallback() payable {
    mem[256] = 12
    mem[288] = 'BEFORE_START'
    mem[96] = 256
    mem[320] = 15
    mem[352] = 'PRESALE_RUNNING'
    mem[128] = 320
    mem[384] = 18
    mem[416] = 'WITHDRAWAL_RUNNING'
    mem[160] = 384
    mem[448] = 14
    mem[480] = 'REFUND_RUNNING'
    mem[192] = 448
    mem[64] = 576
    mem[512] = 6
    mem[544] = 'CLOSED'
    mem[224] = 512
    s = 0
    idx = 96
    while 256 > idx:
        _13 = mem[idx]
        _14 = mem[mem[idx]]
        mem[0] = s
        stor[s] = (2 * _14) + 1
        u = sha3(s)
        t = _13 + 32
        while _13 + _14 + 32 > t:
            stor[u] = mem[t]
            u = u + 1
            t = t + 32
            continue 
        t = sha3(s) + (Mask(251, 0, _14 + 31) >> 5)
        while sha3(s) + (stor[s].length + 31 / 32) > t:
            stor[t] = 0
            t = t + 1
            continue 
        s = s + 1
        idx = idx + 32
        continue 
    idx = s
    while 5 > idx:
        stor[idx] = 0
        if 31 < stor[idx].length:
            mem[0] = idx
            s = sha3(idx)
            while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    stor8 = 0
    require not msg.value
    require 4465600 > block.number
    return code.data[779 len 2378]
}



// =====================  Runtime code  =====================


const MIN_TOTAL_AMOUNT_TO_RECEIVE_ETH = 0

const OWNER = 0xceafe38b8d3802789a2a2cc45ea5d08be8ea3b49

const MIN_ACCEPTED_AMOUNT_FINNEY = 1

const WITHDRAWAL_END = 4469100

const MAX_TOTAL_AMOUNT_TO_RECEIVE_ETH = 3125

const PRESALE_START = 4465600

const PRESALE_END = 4466750

const VERSION = '0.2.0-bns-test-04-max_3125_eth'


array of uint256 state;
uint256 total_received_amount;
uint256 total_refunded;
mapping of uint256 balances;
uint8 stor8;
uint8 stor8; offset 8
uint8 stor8; offset 16

function balances(address arg1) {
    return balances[arg1]
}

function isStopped() {
    return bool(uint8(stor8.field_8))
}

function total_refunded() {
    return total_refunded
}

function total_received_amount() {
    return total_received_amount
}

function state() {
    return state[0 len state.length]
}

function isAborted() {
    return bool(uint8(stor8.field_0))
}

function withdrawFunds() {
    require 0xceafe38b8d3802789a2a2cc45ea5d08be8ea3b49 == msg.sender
    require not uint8(stor8.field_16)
    uint8(stor8.field_16) = 1
    call 0xceafe38b8d3802789a2a2cc45ea5d08be8ea3b49 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    uint8(stor8.field_16) = 0
}

function abort() {
    require not uint8(stor8.field_0)
    if block.number >= 4465600:
        if block.number > 4466750:
            require eth.balance(this.address)
            require block.number <= 4469100
            require total_received_amount >= 0
        else:
            if total_received_amount >= 3125 * 10^18:
                require eth.balance(this.address)
                require block.number <= 4469100
                require total_received_amount >= 0
            else:
                if uint8(stor8.field_8):
                    require eth.balance(this.address)
                    require block.number <= 4469100
                    require total_received_amount >= 0
    require 0xceafe38b8d3802789a2a2cc45ea5d08be8ea3b49 == msg.sender
    uint8(stor8.field_0) = 1
}

function stop() {
    if not uint8(stor8.field_0):
        require block.number >= 4465600
        if block.number > 4466750:
            require eth.balance(this.address)
            require block.number <= 4469100
            require total_received_amount < 0
            revert
        else:
            if total_received_amount >= 3125 * 10^18:
                require eth.balance(this.address)
                require block.number <= 4469100
                require total_received_amount < 0
                revert
            else:
                if uint8(stor8.field_8):
                    require eth.balance(this.address)
                    require block.number <= 4469100
                    require total_received_amount < 0
                    revert
                else:
                    require 0xceafe38b8d3802789a2a2cc45ea5d08be8ea3b49 == msg.sender
                    uint8(stor8.field_8) = 1
    else:
        require eth.balance(this.address) > 0
        revert
}

function refund() {
    if uint8(stor8.field_0):
        require eth.balance(this.address) > 0
    else:
        require block.number >= 4465600
        if block.number <= 4466750:
            if total_received_amount < 3125 * 10^18:
                require uint8(stor8.field_8)
        require eth.balance(this.address)
        if block.number <= 4469100:
            require total_received_amount < 0
    require not uint8(stor8.field_16)
    uint8(stor8.field_16) = 1
    require balances[address(msg.sender)] > 0
    if balances[address(msg.sender)] < eth.balance(this.address) - msg.value:
        balances[address(msg.sender)] = 0
        total_refunded += balances[address(msg.sender)]
        call msg.sender with:
           value balances[address(msg.sender)] + msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        balances[address(msg.sender)] = balances[address(msg.sender)] - eth.balance(this.address) + msg.value
        total_refunded = eth.balance(this.address) - msg.value + total_refunded
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    uint8(stor8.field_16) = 0
}

function _fallback() payable {
    require not uint8(stor8.field_16)
    uint8(stor8.field_16) = 1
    if uint8(stor8.field_0):
        require eth.balance(this.address) > 0
        require balances[address(msg.sender)] > 0
        if balances[address(msg.sender)] < eth.balance(this.address) - msg.value:
            balances[address(msg.sender)] = 0
            total_refunded += balances[address(msg.sender)]
            call msg.sender with:
               value balances[address(msg.sender)] + msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            balances[address(msg.sender)] = balances[address(msg.sender)] - eth.balance(this.address) + msg.value
            total_refunded = eth.balance(this.address) - msg.value + total_refunded
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require block.number >= 4465600
        if block.number > 4466750:
            require eth.balance(this.address)
            if block.number <= 4469100:
                require total_received_amount < 0
            require balances[address(msg.sender)] > 0
            if balances[address(msg.sender)] < eth.balance(this.address) - msg.value:
                balances[address(msg.sender)] = 0
                total_refunded += balances[address(msg.sender)]
                call msg.sender with:
                   value balances[address(msg.sender)] + msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                balances[address(msg.sender)] = balances[address(msg.sender)] - eth.balance(this.address) + msg.value
                total_refunded = eth.balance(this.address) - msg.value + total_refunded
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            if total_received_amount >= 3125 * 10^18:
                require eth.balance(this.address)
                if block.number <= 4469100:
                    require total_received_amount < 0
                require balances[address(msg.sender)] > 0
                if balances[address(msg.sender)] < eth.balance(this.address) - msg.value:
                    balances[address(msg.sender)] = 0
                    total_refunded += balances[address(msg.sender)]
                    call msg.sender with:
                       value balances[address(msg.sender)] + msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    balances[address(msg.sender)] = balances[address(msg.sender)] - eth.balance(this.address) + msg.value
                    total_refunded = eth.balance(this.address) - msg.value + total_refunded
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                if not uint8(stor8.field_8):
                    require msg.value >= 10^15
                    if total_received_amount + msg.value <= 3125 * 10^18:
                        balances[address(msg.sender)] += msg.value
                        total_received_amount += msg.value
                    else:
                        balances[address(msg.sender)] = -total_received_amount + balances[address(msg.sender)] + 3125 * 10^18
                        total_received_amount = 3125 * 10^18
                        call msg.sender with:
                           value total_received_amount + msg.value - 3125 * 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require eth.balance(this.address)
                    if block.number <= 4469100:
                        require total_received_amount < 0
                    require balances[address(msg.sender)] > 0
                    if balances[address(msg.sender)] < eth.balance(this.address) - msg.value:
                        balances[address(msg.sender)] = 0
                        total_refunded += balances[address(msg.sender)]
                        call msg.sender with:
                           value balances[address(msg.sender)] + msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        balances[address(msg.sender)] = balances[address(msg.sender)] - eth.balance(this.address) + msg.value
                        total_refunded = eth.balance(this.address) - msg.value + total_refunded
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
    uint8(stor8.field_16) = 0
}



}
