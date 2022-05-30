contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    emit LogSetOwner(msg.sender);
    stor3 = code.data[2029 len 32]
    stor4 = code.data[2061 len 32]
    stor5 = 10900
    stor2 = code.data[2105 len 20]
    require code.data[2029 len 32] < code.data[2061 len 32]
    return code.data[232 len 1797]
}



// =====================  Runtime code  =====================


const time = block.timestamp


address owner;
address sub_47e7a97dAddress;
address tokenRewardAddress;
uint256 openTime;
uint256 endTime;
uint256 price;
uint256 amountRaised;
mapping of uint256 userBalanceOf;

function userBalanceOf(address arg1) {
    return userBalanceOf[arg1]
}

function endTime() {
    return endTime
}

function sub_47e7a97d(?) {
    return sub_47e7a97dAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function price() {
    return price
}

function openTime() {
    return openTime
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
}

function setOpenTime(uint256 arg1) {
    require owner == msg.sender
    openTime = arg1
}

function initialize(address arg1) {
    require owner == msg.sender
    sub_47e7a97dAddress = arg1
}

function setEndTime(uint256 arg1) {
    require owner == msg.sender
    require openTime < endTime
    endTime = arg1
}

function freeze() {
    require owner == msg.sender
    require block.timestamp > endTime
    require ext_code.size(sub_47e7a97dAddress)
    call sub_47e7a97dAddress.stop() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit LogFreeze()
}

function collect() {
    require owner == msg.sender
    require block.timestamp > openTime
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit LogCollect(eth.balance(this.address));
}

function buy() payable {
    require block.timestamp >= openTime
    require block.timestamp <= endTime
    require msg.value > 0
    require msg.value * price >= msg.value
    require msg.value * price == uint128(msg.value * price)
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, uint128(msg.value * price)
    require ext_call.success
    userBalanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    emit LogBuy(msg.sender, msg.value);
}

function _fallback() payable {
    require block.timestamp >= openTime
    require block.timestamp <= endTime
    require msg.value > 0
    require msg.value * price >= msg.value
    require msg.value * price == uint128(msg.value * price)
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, uint128(msg.value * price)
    require ext_call.success
    userBalanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    emit LogBuy(msg.sender, msg.value);
}



}
