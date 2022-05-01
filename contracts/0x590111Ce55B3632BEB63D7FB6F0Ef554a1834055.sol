contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor6 = msg.sender
    stor0 = 0
    stor4 = 15 * 10^6
    stor5 = 1250 * 3600
    return code.data[174 len 3163]
}



// =====================  Runtime code  =====================


const name = 'PORNX'

const start_timestamp = (421682 * 3600)

const sub_876ac3eb(?) = 1518278399

const symbol = 'PORNX'


uint8 state;
uint256 sub_27cb9a16;
uint256 sub_c9c23038;
uint256 sub_4cf59e13;
uint256 sub_1e243377;
uint256 sub_ac2f72a6;
address initialHolderAddress;
mapping of uint256 balances;
mapping of uint256 sub_31b22544;

function sub_1e243377(?) {
    return sub_1e243377
}

function sub_27cb9a16(?) {
    return sub_27cb9a16
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_31b22544(?) {
    return sub_31b22544[arg1]
}

function sub_4cf59e13(?) {
    return sub_4cf59e13
}

function sub_ac2f72a6(?) {
    return sub_ac2f72a6
}

function initialHolder() {
    return initialHolderAddress
}

function state() {
    require state <= 3
    return state
}

function sub_c9c23038(?) {
    return sub_c9c23038
}

function sub_7baa2684(?) {
    require msg.sender == initialHolderAddress
    require state <= 3
    require not state
    require state <= 3
    require arg1 <= 3
    emit StateTransition(state, arg1);
    state = arg1
}

function requestPayout(uint256 arg1) {
    require msg.sender == initialHolderAddress
    require state <= 3
    require state == 3
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function requestRefund() {
    require state <= 3
    require state == 2
    require sub_31b22544[address(msg.sender)] > 0
    sub_31b22544[address(msg.sender)] = 0
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value sub_31b22544[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function check() {
    if block.timestamp < 421682 * 3600:
        state = 0
    else:
        if block.timestamp >= 1518278399:
            if sub_c9c23038 <= sub_ac2f72a6:
                state = 0
            else:
                state = 3
        else:
            if sub_c9c23038 >= sub_1e243377:
                state = 3
            else:
                state = 1
}

function _fallback() payable {
    require state <= 3
    require state == 1
    require msg.value >= 5 * 10^16
    require sub_1e243377 - sub_4cf59e13 >= (3000 * msg.value / 10^18) + (35 * 3000 * msg.value / 10^18 / 100)
    sub_27cb9a16 += msg.value
    sub_c9c23038 += 3000 * msg.value / 10^18
    sub_4cf59e13 = sub_4cf59e13 + (3000 * msg.value / 10^18) + (35 * 3000 * msg.value / 10^18 / 100)
    balances[address(msg.sender)] = balances[address(msg.sender)] + (3000 * msg.value / 10^18) + (35 * 3000 * msg.value / 10^18 / 100)
    sub_31b22544[address(msg.sender)] += msg.value
    emit 0x5a940f0f: address(msg.sender), (3000 * msg.value / 10^18) + (35 * 3000 * msg.value / 10^18 / 100), msg.value, 35 * 3000 * msg.value / 10^18 / 100
}



}
