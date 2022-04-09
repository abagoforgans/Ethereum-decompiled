contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = code.data[4288 len 20]
    stor1 = code.data[4320 len 20]
    stor3 = code.data[4340 len 32]
    stor2 = code.data[4372 len 32]
    return code.data[130 len 4146]
}



// =====================  Runtime code  =====================


address adminAddress;
address feeAccount;
uint256 sellFee;
uint256 buyFee;
mapping of uint256 sellOrders;
mapping of uint256 buyOrders;

function buyOrders(bytes32 arg1) {
    return buyOrders[arg1]
}

function sellFee() {
    return sellFee
}

function buyFee() {
    return buyFee
}

function feeAccount() {
    return feeAccount
}

function sellOrders(bytes32 arg1) {
    return sellOrders[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() {
    revert
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function changeFeeAccount(address arg1) {
    require adminAddress == msg.sender
    feeAccount = arg1
}

function changeBuyFee(uint256 arg1) {
    require adminAddress == msg.sender
    require arg1 <= buyFee
    buyFee = arg1
}

function changeSellFee(uint256 arg1) {
    require adminAddress == msg.sender
    if arg1 > sellFee:
        sellFee = arg1
}

function cancelSellOrder(address arg1, uint256 arg2) {
    hash = sha256hash(arg1, arg2, msg.sender) 
    require sha256hash.result
    sellOrders[hash] = 0
    emit CancelSellOrder(hash, address(arg1), arg2, msg.sender);
}

function sellOrder(address arg1, uint256 arg2, uint256 arg3) {
    hash = sha256hash(arg1, arg3, msg.sender) 
    require sha256hash.result
    require arg2 + sellOrders[hash] >= sellOrders[hash]
    require arg2 + sellOrders[hash] >= arg2
    sellOrders[hash] += arg2
    emit SellOrder(hash, 0, arg2, arg3, msg.sender);
}

function cancelBuyOrder(address arg1, uint256 arg2) {
    hash = sha256hash(arg1, arg2, msg.sender) 
    require sha256hash.result
    buyOrders[hash] = 0
    call msg.sender with:
       value buyOrders[hash] wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit CancelBuyOrder(hash, address(arg1), arg2, msg.sender);
}

function totalSellPrice(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    if arg2 * arg1:
        require arg2 * arg1
        require buyFee * arg2 * arg1 / arg2 * arg1 == buyFee
    require buyFee * arg2 * arg1 / 10^18 <= arg2 * arg1
    return ((arg2 * arg1) - (buyFee * arg2 * arg1 / 10^18))
}

function buyOrder(address arg1, uint256 arg2, uint256 arg3) payable {
    hash = sha256hash(arg1, arg3, msg.sender) 
    require sha256hash.result
    require arg3 * arg2 >= msg.value
    require msg.value + buyOrders[hash] >= buyOrders[hash]
    require msg.value + buyOrders[hash] >= msg.value
    buyOrders[hash] += msg.value
    emit BuyOrder(hash, 0, arg2, arg3, msg.sender);
}

function totalBuyPrice(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    if arg2 * arg1:
        require arg2 * arg1
        require buyFee * arg2 * arg1 / arg2 * arg1 == buyFee
    require (buyFee * arg2 * arg1 / 10^18) + (arg2 * arg1) >= arg2 * arg1
    require (buyFee * arg2 * arg1 / 10^18) + (arg2 * arg1) >= buyFee * arg2 * arg1 / 10^18
    return ((buyFee * arg2 * arg1 / 10^18) + (arg2 * arg1))
}

function takeBuy(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    hash = sha256hash(arg1, arg3, arg4) 
    require sha256hash.result
    if arg2:
        require arg2
        require arg3 * arg2 / arg2 == arg3
    if arg3 * arg2:
        require arg3 * arg2
        require buyFee * arg3 * arg2 / arg3 * arg2 == buyFee
    require buyFee * arg3 * arg2 / 10^18 <= arg3 * arg2
    require buyOrders[hash] >= arg3 * arg2
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg4), arg2
    require ext_call.success
    require not ext_call.return_data[0]
    require arg3 * arg2 <= buyOrders[hash]
    buyOrders[hash] += -1 * arg3 * arg2
    call feeAccount with:
       value buyFee * arg3 * arg2 / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call msg.sender with:
       value (arg3 * arg2) - (buyFee * arg3 * arg2 / 10^18) wei
         gas 2300 * is_zero(value) wei
    emit Buy(hash, 0, arg2, (arg3 * arg2) - (buyFee * arg3 * arg2 / 10^18), address(arg4), msg.sender);
}

function takeSell(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    hash = sha256hash(arg1, arg3, arg4) 
    require sha256hash.result
    if arg2:
        require arg2
        require arg3 * arg2 / arg2 == arg3
    if arg3 * arg2:
        require arg3 * arg2
        require buyFee * arg3 * arg2 / arg3 * arg2 == buyFee
    require (buyFee * arg3 * arg2 / 10^18) + (arg3 * arg2) >= arg3 * arg2
    require (buyFee * arg3 * arg2 / 10^18) + (arg3 * arg2) >= buyFee * arg3 * arg2 / 10^18
    require msg.value >= (buyFee * arg3 * arg2 / 10^18) + (arg3 * arg2)
    require sellOrders[hash] >= arg2
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg4), this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg4), msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 <= sellOrders[hash]
    sellOrders[hash] -= arg2
    call arg4 with:
       value (buyFee * arg3 * arg2 / 10^18) + (arg3 * arg2) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call feeAccount with:
       value buyFee * arg3 * arg2 / 10^18 wei
         gas 2300 * is_zero(value) wei
    if msg.value - (buyFee * arg3 * arg2 / 10^18) - (arg3 * arg2) > 0:
        call msg.sender with:
           value msg.value - (buyFee * arg3 * arg2 / 10^18) - (arg3 * arg2) wei
             gas 2300 * is_zero(value) wei
    emit Sell(hash, 0, arg2, (buyFee * arg3 * arg2 / 10^18) + (arg3 * arg2), msg.sender, arg4);
}



}
