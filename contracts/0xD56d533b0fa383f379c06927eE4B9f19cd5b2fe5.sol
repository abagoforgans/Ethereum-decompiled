contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = code.data[6797 len 20]
    stor1 = code.data[6829 len 20]
    stor3 = code.data[6849 len 32]
    stor2 = code.data[6881 len 32]
    return code.data[233 len 6552]
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
    require msg.sender == adminAddress
    adminAddress = arg1
}

function changeFeeAccount(address arg1) {
    require msg.sender == adminAddress
    feeAccount = arg1
}

function changeBuyFee(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 <= buyFee
    buyFee = arg1
}

function changeSellFee(uint256 arg1) {
    require msg.sender == adminAddress
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
    require sellOrders[hash] + arg2 >= sellOrders[hash]
    require sellOrders[hash] + arg2 >= arg2
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
        require arg1 * arg2 / arg1 == arg2
    if arg1 * arg2:
        require arg1 * arg2
        require arg1 * arg2 * buyFee / arg1 * arg2 == buyFee
    require arg1 * arg2 * buyFee / 10^18 <= arg1 * arg2
    return ((arg1 * arg2) - (arg1 * arg2 * buyFee / 10^18))
}

function buyOrder(address arg1, uint256 arg2, uint256 arg3) payable {
    hash = sha256hash(arg1, arg3, msg.sender) 
    require sha256hash.result
    require arg2 * arg3 >= msg.value
    require buyOrders[hash] + msg.value >= buyOrders[hash]
    require buyOrders[hash] + msg.value >= msg.value
    buyOrders[hash] += msg.value
    emit BuyOrder(hash, 0, arg2, arg3, msg.sender);
}

function totalBuyPrice(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    if arg1 * arg2:
        require arg1 * arg2
        require arg1 * arg2 * buyFee / arg1 * arg2 == buyFee
    require (arg1 * arg2) + (arg1 * arg2 * buyFee / 10^18) >= arg1 * arg2
    require (arg1 * arg2) + (arg1 * arg2 * buyFee / 10^18) >= arg1 * arg2 * buyFee / 10^18
    return ((arg1 * arg2) + (arg1 * arg2 * buyFee / 10^18))
}

function takeSell(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    hash = sha256hash(arg1, arg3, arg4) 
    require sha256hash.result
    if arg2:
        require arg2
        require arg2 * arg3 / arg2 == arg3
    if arg2 * arg3:
        require arg2 * arg3
        require arg2 * arg3 * buyFee / arg2 * arg3 == buyFee
    require arg2 * arg3 * buyFee / 10^18 <= arg2 * arg3
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
    call msg.sender with:
       value (arg2 * arg3) - (arg2 * arg3 * buyFee / 10^18) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit Sell(hash, 0, arg2, (arg2 * arg3) - (arg2 * arg3 * buyFee / 10^18), msg.sender, arg4);
}

function takeBuy(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    hash = sha256hash(arg1, arg3, arg4) 
    require sha256hash.result
    if arg2:
        require arg2
        require arg2 * arg3 / arg2 == arg3
    if arg2 * arg3:
        require arg2 * arg3
        require arg2 * arg3 * buyFee / arg2 * arg3 == buyFee
    require (arg2 * arg3) + (arg2 * arg3 * buyFee / 10^18) >= arg2 * arg3
    require (arg2 * arg3) + (arg2 * arg3 * buyFee / 10^18) >= arg2 * arg3 * buyFee / 10^18
    require buyOrders[hash] >= arg2
    require (arg2 * arg3) + (arg2 * arg3 * buyFee / 10^18) <= msg.value
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
    require arg2 <= buyOrders[hash]
    buyOrders[hash] -= arg2
    if msg.value - (arg2 * arg3) - (arg2 * arg3 * buyFee / 10^18) > 0:
        call msg.sender with:
           value msg.value - (arg2 * arg3) - (arg2 * arg3 * buyFee / 10^18) wei
             gas gas_remaining - 34710 wei
        require ext_call.success
    emit Buy(hash, 0, arg2, (arg2 * arg3) + (arg2 * arg3 * buyFee / 10^18), address(arg4), msg.sender);
}



}
