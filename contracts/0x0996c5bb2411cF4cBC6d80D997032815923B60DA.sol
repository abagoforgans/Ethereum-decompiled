contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 totalInvested;
uint256 sub_47a4c319;
uint8 state;
mapping of uint256 weiBalances;
mapping of uint256 sub_66d965d9;
mapping of uint256 tokenBalances;
array of address investors;
address tokenAddress;
address controllerAddress;
address priceUpdaterAddress;

function getState() {
    require state <= 2
    return state
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return investors[arg1]
}

function sub_47a4c319(?) {
    return sub_47a4c319
}

function totalInvested() {
    return totalInvested
}

function tokenBalances(address arg1) {
    return tokenBalances[arg1]
}

function sub_66d965d9(?) {
    return sub_66d965d9[arg1]
}

function weiBalances(address arg1) {
    return weiBalances[arg1]
}

function owner() {
    return owner
}

function state() {
    require state <= 2
    return state
}

function getInvestorsCount() {
    return investors.length
}

function controller() {
    return controllerAddress
}

function token() {
    return tokenAddress
}

function priceUpdater() {
    return priceUpdaterAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function getTotalInvested() {
    require totalInvested + sub_47a4c319 >= totalInvested
    return (totalInvested + sub_47a4c319)
}

function detachController() {
    require msg.sender == controllerAddress
    controllerAddress = 0
    emit ControllerRetired(controllerAddress);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeState(uint8 arg1) {
    require msg.sender == controllerAddress
    require arg1 <= 2
    require state <= 2
    require state != arg1
    require state <= 2
    require 0 == state
    require arg1 <= 2
    require arg1 <= 2
    if arg1 != 1:
        require 2 == arg1
    state = arg1
    require state <= 2
    emit StateChanged(state);
}

function sendEther(address arg1, uint256 arg2) {
    require arg1
    require msg.sender == owner
    require state <= 2
    require state == 2
    require arg2 > 0
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EtherSent(arg2, arg1);
}

function sub_782d84e3(?) {
    require msg.sender == controllerAddress
    require state <= 2
    if state:
        require state <= 2
        require state == 2
    require arg2
    require arg1 != controllerAddress
    if not sub_66d965d9[address(arg1)]:
        investors.length++
        investors[investors.length] = arg1
    require sub_47a4c319 + arg2 >= sub_47a4c319
    sub_47a4c319 += arg2
    require sub_66d965d9[address(arg1)] + arg2 >= sub_66d965d9[address(arg1)]
    sub_66d965d9[address(arg1)] += arg2
    emit Invested(arg2, arg3, arg1);
}

function getTotalInvestedEur() {
    require ext_code.size(priceUpdaterAddress)
    call priceUpdaterAddress.0x26a49e37 with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalInvested + sub_47a4c319 >= totalInvested
    if not totalInvested + sub_47a4c319:
        return 0
    require totalInvested + sub_47a4c319
    require (totalInvested * ext_call.return_data[0]) + (sub_47a4c319 * ext_call.return_data[0]) / totalInvested + sub_47a4c319 == ext_call.return_data[0]
    return ((totalInvested * ext_call.return_data[0]) + (sub_47a4c319 * ext_call.return_data[0]) / 10^18)
}

function invested(address arg1, uint256 arg2) payable {
    require msg.sender == controllerAddress
    require state <= 2
    if state:
        require state <= 2
        require state == 2
    require msg.value
    require arg1 != controllerAddress
    if not weiBalances[address(arg1)]:
        investors.length++
        investors[investors.length] = arg1
    require totalInvested + msg.value >= totalInvested
    totalInvested += msg.value
    require weiBalances[address(arg1)] + msg.value >= weiBalances[address(arg1)]
    weiBalances[address(arg1)] += msg.value
    require tokenBalances[address(arg1)] + arg2 >= tokenBalances[address(arg1)]
    tokenBalances[address(arg1)] += arg2
    emit Invested(msg.value, arg2, arg1);
}

function sendTokens(address arg1, uint256 arg2) {
    require arg1
    require msg.sender == owner
    require state <= 2
    require state == 1
    require arg2 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawPayments() {
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    require state <= 2
    require state == 1
    require weiBalances[address(msg.sender)]
    require eth.balance(this.address) >= weiBalances[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= tokenBalances[address(msg.sender)]
    require weiBalances[address(msg.sender)] <= totalInvested
    totalInvested -= weiBalances[address(msg.sender)]
    weiBalances[address(msg.sender)] = 0
    tokenBalances[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), tokenBalances[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value weiBalances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RefundSent(weiBalances[address(msg.sender)], msg.sender);
    Mask(96, 0, stor0.field_160) = 0
}



}
