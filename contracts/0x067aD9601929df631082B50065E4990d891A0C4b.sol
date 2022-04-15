contract main {


// =======================  Init code  ======================


uint16 stor7;
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
    stor7 = 0
    require not msg.value
    require 4287096 > block.number
    return code.data[830 len 2446]
}



// =====================  Runtime code  =====================


const MIN_TOTAL_AMOUNT_TO_RECEIVE_ETH = 200

const OWNER = 0xa24afdbe4a1e8ba8fa67580186203a60d13083cd

const MIN_ACCEPTED_AMOUNT_FINNEY = 1

const WITHDRAWAL_END = 4780000

const MAX_TOTAL_AMOUNT_TO_RECEIVE_ETH = 900

const PRESALE_START = 4287096

const PRESALE_END = 4400000

const VERSION = '0.1.5-GP'


array of uint256 state;
uint256 total_received_amount;
mapping of uint256 balances;
uint8 stor7;
uint8 stor7; offset 8

function balances(address arg1) {
    return balances[arg1]
}

function total_received_amount() {
    return total_received_amount
}

function state() {
    return state[0 len state.length]
}

function isAborted() {
    return bool(uint8(stor7.field_0))
}

function abort() {
    require not uint8(stor7.field_0)
    if block.number >= 4287096:
        if block.number > 4400000:
            require eth.balance(this.address)
            require block.number <= 4780000
            require total_received_amount >= 200 * 10^18
        else:
            if total_received_amount >= 25 * 10^16 * 3600:
                require eth.balance(this.address)
                require block.number <= 4780000
                require total_received_amount >= 200 * 10^18
    require 0xa24afdbe4a1e8ba8fa67580186203a60d13083cd == msg.sender
    uint8(stor7.field_0) = 1
}

function withdrawFunds() {
    require not uint8(stor7.field_0)
    require block.number >= 4287096
    if block.number <= 4400000:
        require total_received_amount >= 25 * 10^16 * 3600
    require eth.balance(this.address)
    require block.number <= 4780000
    require total_received_amount >= 200 * 10^18
    require 0xa24afdbe4a1e8ba8fa67580186203a60d13083cd == msg.sender
    require not uint8(stor7.field_8)
    uint8(stor7.field_8) = 1
    call 0xa24afdbe4a1e8ba8fa67580186203a60d13083cd with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    uint8(stor7.field_8) = 0
}

function refund() {
    if uint8(stor7.field_0):
        require eth.balance(this.address) > 0
    else:
        require block.number >= 4287096
        if block.number <= 4400000:
            require total_received_amount >= 25 * 10^16 * 3600
        require eth.balance(this.address)
        if block.number <= 4780000:
            require total_received_amount < 200 * 10^18
    require not uint8(stor7.field_8)
    uint8(stor7.field_8) = 1
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] + msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    uint8(stor7.field_8) = 0
}

function _fallback() payable {
    require not uint8(stor7.field_8)
    uint8(stor7.field_8) = 1
    if uint8(stor7.field_0):
        require eth.balance(this.address) > 0
        require balances[address(msg.sender)]
        balances[address(msg.sender)] = 0
        call msg.sender with:
           value balances[address(msg.sender)] + msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require block.number >= 4287096
        if block.number > 4400000:
            require eth.balance(this.address)
            if block.number <= 4780000:
                require total_received_amount < 200 * 10^18
            require balances[address(msg.sender)]
            balances[address(msg.sender)] = 0
            call msg.sender with:
               value balances[address(msg.sender)] + msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            if total_received_amount < 25 * 10^16 * 3600:
                require msg.value >= 10^15
                if total_received_amount + msg.value <= 25 * 10^16 * 3600:
                    balances[address(msg.sender)] += msg.value
                    total_received_amount += msg.value
                else:
                    call msg.sender with:
                       value msg.value + total_received_amount - (25 * 10^16 * 3600) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    balances[address(msg.sender)] = -total_received_amount + balances[address(msg.sender)] + (25 * 10^16 * 3600)
                    total_received_amount = 25 * 10^16 * 3600
            else:
                require eth.balance(this.address)
                if block.number <= 4780000:
                    require total_received_amount < 200 * 10^18
                require balances[address(msg.sender)]
                balances[address(msg.sender)] = 0
                call msg.sender with:
                   value balances[address(msg.sender)] + msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    uint8(stor7.field_8) = 0
}



}
