contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2; offset 160
address stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[1666 len 20]
    address(stor2.field_0) = code.data[1666 len 20]
    address(stor2.field_0) = code.data[1666 len 20]
    uint8(stor2.field_160) = 0
    return code.data[177 len 1477]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 deposited;
uint8 state; offset 160
address walletAddress;

function wallet() {
    return walletAddress
}

function owner() {
    return owner
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

function enableRefunds() {
    require owner == msg.sender
    require state <= 2
    require not state
    state = 1
    emit RefundsEnabled()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit(address arg1) payable {
    require owner == msg.sender
    require state <= 2
    require not state
    require msg.value + deposited[address(arg1)] >= deposited[address(arg1)]
    deposited[address(arg1)] += msg.value
}

function close() {
    require owner == msg.sender
    require state <= 2
    require not state
    state = 2
    emit Closed()
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund(address arg1) {
    require owner == msg.sender
    require state <= 2
    require state == 1
    deposited[address(arg1)] = 0
    call arg1 with:
       value deposited[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(deposited[address(arg1)], arg1);
}



}
