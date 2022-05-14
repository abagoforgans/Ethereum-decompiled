contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[4752 len 32]
    stor7 = code.data[4784 len 32]
    require code.data[4848 len 32]
    stor3 = 10^18 / code.data[4848 len 32]
    stor4 = code.data[4816 len 32]
    stor8 = code.data[4880 len 32]
    stor9 = code.data[4912 len 32]
    stor10 = code.data[4956 len 20]
    return code.data[309 len 4443]
}



// =====================  Runtime code  =====================


address owner;
uint256 fundingGoal;
uint256 deadline;
uint256 price;
uint256 sub_21365597;
uint256 soldToken;
uint256 startTime;
uint256 softCap;
uint256 minimum;
uint256 decimals;
uint8 stor10; offset 160
uint8 stor10; offset 168
uint128 stor10; offset 168
uint128 stor10; offset 160
address tokenRewardAddress;
mapping of uint256 sub_052c543b;

function sub_052c543b(?) {
    return sub_052c543b[arg1]
}

function sub_21365597(?) {
    return sub_21365597
}

function sub_24394069(?) {
    return sub_052c543b[address(msg.sender)]
}

function deadline() {
    return deadline
}

function decimals() {
    return decimals
}

function minimum() {
    return minimum
}

function sub_6499540a(?) {
    return bool(uint8(stor10.field_168))
}

function soldToken() {
    return soldToken
}

function isOpened() {
    return bool(uint8(stor10.field_160))
}

function tokenReward() {
    return tokenRewardAddress
}

function startTime() {
    return startTime
}

function fundingGoal() {
    return fundingGoal
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function price() {
    return price
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit TransferOwnership(owner, owner);
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if uint8(stor10.field_160):
            Mask(96, 0, stor10.field_160) = 0
            emit 0xfe2a4e21: owner, softCap, eth.balance(this.address), soldToken
}

function sub_d8c02754(?) {
    if block.timestamp >= deadline:
        return 0, fundingGoal - eth.balance(this.address) / 10^18, sub_21365597 - soldToken
    return deadline - block.timestamp / 60, fundingGoal - eth.balance(this.address) / 10^18, sub_21365597 - soldToken
}

function withdrawalOwner() {
    require msg.sender == owner
    require not uint8(stor10.field_160)
    if sub_21365597 - soldToken > 0:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (sub_21365597 * 10^decimals) - (soldToken * 10^decimals)
        require ext_call.success
        emit 0x860b5331: msg.sender, sub_21365597 - soldToken, 1
    Mask(88, 0, stor10.field_168) = 1
}

function start(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require fundingGoal
    require price
    require sub_21365597
    require tokenRewardAddress
    require arg1 <= arg2
    require not startTime
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x27e235e3 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] >= sub_21365597:
        startTime = arg1
        deadline = arg2
        Mask(96, 0, stor10.field_160) = 1
        Mask(88, 0, stor10.field_168) = 0
        emit 0xf9cff15f: fundingGoal, startTime, deadline, sub_21365597, softCap, owner
}

function _fallback() payable {
    require uint8(stor10.field_160)
    require block.timestamp < deadline
    require price
    require msg.value / price
    require soldToken + (msg.value / price) <= sub_21365597
    sub_052c543b[address(msg.sender)] += msg.value
    if msg.value < minimum:
        emit 0xeff09592: msg.sender, msg.value
        revert
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.checkAddressTransfer(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args msg.sender, msg.value / price * 10^decimals, owner
    require ext_call.success
    soldToken += msg.value / price
    emit 0x69430dd7: msg.sender, msg.value / price, 1
    call owner with:
       value msg.value wei
         gas gas_remaining wei
    emit 0x7130e250: msg.sender, msg.value, bool(ext_call.success)
}



}
