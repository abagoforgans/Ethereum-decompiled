contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0xf636c93f98588b7f1624c8ec4087702e5be876b6
    require not msg.value
    stor0 = msg.sender
    return code.data[100 len 2910]
}



// =====================  Runtime code  =====================


address owner;
address presaleAddressAmountHolder;
mapping of uint256 balances;
uint8 stor3;
uint8 stor3; offset 8
uint8 stor3; offset 16
uint8 stor3; offset 24
uint8 stor3; offset 32
uint32 stor3; offset 8
uint256 stor3; offset 32
uint256 stor3; offset 24
uint256 stor3; offset 16
uint256 stor3; offset 8
mapping of uint8 stor4;

function balances(address arg1) {
    return balances[arg1]
}

function isRefundAllowed() {
    return bool(uint8(stor3.field_16))
}

function presaleAddressAmountHolder() {
    return presaleAddressAmountHolder
}

function isFinalized() {
    return bool(uint8(stor3.field_32))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor4[arg1])
}

function isExecutionAllowed() {
    return bool(uint8(stor3.field_8))
}

function moving() {
    return bool(uint8(stor3.field_0))
}

function isCapReached() {
    return bool(uint8(stor3.field_24))
}

function flipMovingSwitchTo(bool arg1) {
    require owner == msg.sender
    uint8(stor3.field_0) = uint8(arg1)
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit NewOwner(msg.sender, arg1);
}

function flipCapSwitchTo(bool arg1) {
    require owner == msg.sender
    Mask(232, 0, stor3.field_24) = Mask(232, 0, arg1)
}

function flipRefundSwitchTo(bool arg1) {
    require owner == msg.sender
    Mask(240, 0, stor3.field_16) = Mask(240, 0, arg1)
}

function flipExecutionSwitchTo(bool arg1) {
    require owner == msg.sender
    Mask(248, 0, stor3.field_8) = Mask(248, 0, arg1)
}

function flipFinalizedSwitchTo(bool arg1) {
    require owner == msg.sender
    Mask(224, 0, stor3.field_32) = Mask(224, 0, arg1)
}

function updateWhitelist(address arg1, bool arg2) {
    require owner == msg.sender
    stor4[address(arg1)] = uint8(arg2)
    emit WhitelistUpdated(address(arg1), arg2);
}

function refund() {
    require uint8(stor3.field_16)
    require eth.balance(this.address) > 0
    require balances[address(msg.sender)] > 0
    uint8(stor3.field_0) = 1
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(msg.sender, balances[address(msg.sender)]);
}

function emptyToWallet() {
    require owner == msg.sender
    require not uint8(stor3.field_32)
    uint8(stor3.field_0) = 1
    Mask(248, 0, stor3.field_8) = stor3.field_8 % 16777216
    uint8(stor3.field_32) = 1
    call presaleAddressAmountHolder with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EmptiedToWallet(presaleAddressAmountHolder);
}

function invest() payable {
    require uint8(stor3.field_8)
    require not uint8(stor3.field_24)
    require eth.balance(this.address) <= 3000 * 10^18
    require not uint8(stor3.field_0)
    require stor4[address(msg.sender)]
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    require msg.value + balances[address(msg.sender)] <= 500 * 10^18
    require msg.value <= 500 * 10^18
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
    if eth.balance(this.address) == 3000 * 10^18:
        uint8(stor3.field_24) = 1
    emit Invested(msg.sender, msg.value);
}

function _fallback() payable {
    require uint8(stor3.field_8)
    require not uint8(stor3.field_24)
    require eth.balance(this.address) <= 3000 * 10^18
    require not uint8(stor3.field_0)
    require stor4[address(msg.sender)]
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    require msg.value + balances[address(msg.sender)] <= 500 * 10^18
    require msg.value <= 500 * 10^18
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
    if eth.balance(this.address) == 3000 * 10^18:
        uint8(stor3.field_24) = 1
    emit Invested(msg.sender, msg.value);
}



}
