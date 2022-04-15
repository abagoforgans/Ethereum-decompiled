contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor3;
address stor3; offset 8
array of address stor4;

function _fallback() {
    mem[96 len -2051] = code.data[2373 len -2051]
    mem[64] = -1955
    stor0 = msg.sender
    uint8(stor3.field_0) = 0
    address(stor3.field_8) = mem[108 len 20]
    stor4.length = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        idx = 0
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
            stor4[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    return code.data[322 len 2051]
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
    require arg1 < reserveWallet.length
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
    require reserveWallet.length
    idx = 0
    while uint8(idx) < reserveWallet.length:
        call reserveWallet[uint8(idx)] with:
           value 9 * eth.balance(this.address) / 10 / reserveWallet.length wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require uint8(idx) < reserveWallet.length
        mem[0] = 4
        mem[96] = reserveWallet[uint8(idx)]
        mem[128] = 9 * eth.balance(this.address) / 10 / reserveWallet.length
        emit Transferred(reserveWallet[uint8(idx)], 9 * eth.balance(this.address) / 10 / reserveWallet.length);
        idx = idx + 1
        continue 
    emit Closed()
}



}
