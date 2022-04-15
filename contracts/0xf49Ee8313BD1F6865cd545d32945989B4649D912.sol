contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor3;
address stor3; offset 8

function _fallback() {
    mem[96 len 192] = code.data[2318 len 192]
    stor0 = msg.sender
    uint8(stor3.field_0) = 0
    address(stor3.field_8) = code.data[2330 len 20]
    s = 4
    idx = 128
    while 288 > idx:
        stor[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 9
    while 9 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[293 len 2025]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 deposited;
mapping of uint256 refunded;
uint8 state;
address stor3;
address sub_5d9d56adAddress; offset 8
array of address reserveWallet;

function sub_5d9d56ad(?) {
    return sub_5d9d56adAddress
}

function owner() {
    return owner
}

function reserveWallet(uint256 arg1) {
    require arg1 < 5
    return reserveWallet[arg1]
}

function refunded(address arg1) {
    return refunded[arg1]
}

function state() {
    require state <= 2
    return state
}

function deposited(address arg1) {
    return deposited[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function enableRefunds() {
    require owner == msg.sender
    require state <= 2
    require not state
    state = 1
    emit RefundsEnabled()
}

function deposit(address arg1) payable {
    require owner == msg.sender
    require state <= 2
    require not state
    require msg.value + deposited[address(arg1)] >= deposited[address(arg1)]
    deposited[address(arg1)] += msg.value
}

function refund(address arg1) {
    require state <= 2
    require state == 1
    if refunded[address(arg1)] > 0:
        return 0
    deposited[address(arg1)] = 0
    refunded[address(arg1)] = deposited[address(arg1)]
    call arg1 with:
       value deposited[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(deposited[address(arg1)], arg1);
    return 1
}

function close() {
    require owner == msg.sender
    require state <= 2
    require not state
    state = 2
    call sub_5d9d56adAddress with:
       value eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transferred(stor3, eth.balance(this.address) / 10);
    if eth.balance(this.address):
        require eth.balance(this.address)
        require 9 * eth.balance(this.address) / eth.balance(this.address) == 9
    idx = 0
    while uint8(idx) < 5:
        call reserveWallet[uint8(idx)] with:
           value 9 * eth.balance(this.address) / 10 / 5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require uint8(idx) < 5
        mem[96] = reserveWallet[uint8(idx)]
        mem[128] = 9 * eth.balance(this.address) / 10 / 5
        emit Transferred(reserveWallet[uint8(idx)], 9 * eth.balance(this.address) / 10 / 5);
        idx = idx + 1
        continue 
    emit Closed()
}



}
