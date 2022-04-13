contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1[stor0] = 1
    return code.data[217 len 1094]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint256 bet;

function bet() {
    return bet
}

function data(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    bet = msg.value
}

function sub_7357f5d2(?) {
    if block.timestamp >= arg2:
        return 0
    idx = 0
    s = 0
    while idx < arg1:
        idx = idx + 1
        s = s + 1
        continue 
    return arg1
}

function register(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function send(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor1[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        call mem[(32 * idx) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
}



}
