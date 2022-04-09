contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = code.data[6160 len 20]
    stor1 = code.data[6192 len 20]
    stor3 = code.data[6212 len 32]
    stor2 = code.data[6244 len 32]
    return code.data[235 len 5913]
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

function sub_7be1bf18(?) {
    sellOrders[arg1] = 0
    emit 0x93435e95: arg1
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

function sub_3a168c82(?) {
    buyOrders[arg1] = 0
    call msg.sender with:
       value buyOrders[arg1] wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit 0x38a0d19b: arg1
}

function sub_90e0df1b(?) {
    hash = sha256hash(address(arg1), arg2, arg3, arg4, msg.sender) 
    require sha256hash.result
    require sellOrders[hash] + arg2 >= sellOrders[hash]
    require sellOrders[hash] + arg2 >= arg2
    sellOrders[hash] += arg2
    emit SellOrder(hash, 0, arg2, arg3, msg.sender);
}

function buyOrder(address arg1, uint256 arg2, uint256 arg3) {
    hash = sha256hash(address(arg1), address(msg.value), arg2, arg3, msg.sender) 
    require sha256hash.result
    require buyOrders[hash] + msg.value >= buyOrders[hash]
    require buyOrders[hash] + msg.value >= msg.value
    buyOrders[hash] += msg.value
    emit BuyOrder(hash, 0, arg2, msg.value, msg.sender);
}

function sub_d56fab5b(?) payable {
    hash = sha256hash(address(arg2), arg4, arg5, arg6, arg7) 
    require sha256hash.result
    require arg4
    if arg3:
        require arg3
        require arg3 * arg5 / arg4 / arg3 == arg5 / arg4
    if arg3 * arg5 / arg4:
        require arg3 * arg5 / arg4
        require arg3 * arg5 / arg4 * sellFee / arg3 * arg5 / arg4 == sellFee
    require arg3 * arg5 / arg4 * sellFee / 10^18 <= arg3 * arg5 / arg4
    require hash == arg1
    require sellOrders[arg1] >= arg3
    require ext_code.size(arg2)
    call arg2.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg7), this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg7), msg.sender, arg3
    require ext_call.success
    require ext_call.return_data[0]
    require arg3 <= sellOrders[arg1]
    sellOrders[arg1] -= arg3
    call msg.sender with:
       value (arg3 * arg5 / arg4) - (arg3 * arg5 / arg4 * sellFee / 10^18) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit Sell(arg1, 0, arg3, (arg3 * arg5 / arg4) - (arg3 * arg5 / arg4 * sellFee / 10^18), msg.sender, arg7);
}

function sub_21f03b77(?) payable {
    hash = sha256hash(address(arg2), arg4, arg5, arg6, arg7) 
    require sha256hash.result
    require arg4
    if arg3:
        require arg3
        require arg3 * arg5 / arg4 / arg3 == arg5 / arg4
    if arg3 * arg5 / arg4:
        require arg3 * arg5 / arg4
        require arg3 * arg5 / arg4 * buyFee / arg3 * arg5 / arg4 == buyFee
    require (arg3 * arg5 / arg4) + (arg3 * arg5 / arg4 * buyFee / 10^18) >= arg3 * arg5 / arg4
    require (arg3 * arg5 / arg4) + (arg3 * arg5 / arg4 * buyFee / 10^18) >= arg3 * arg5 / arg4 * buyFee / 10^18
    require hash == arg1
    require buyOrders[arg1] >= arg3
    require (arg3 * arg5 / arg4) + (arg3 * arg5 / arg4 * buyFee / 10^18) <= msg.value
    require ext_code.size(arg2)
    call arg2.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg7), arg3
    require ext_call.success
    require not ext_call.return_data[0]
    require arg3 <= buyOrders[arg1]
    buyOrders[arg1] -= arg3
    if msg.value - (arg3 * arg5 / arg4) - (arg3 * arg5 / arg4 * buyFee / 10^18) > 0:
        call msg.sender with:
           value msg.value - (arg3 * arg5 / arg4) - (arg3 * arg5 / arg4 * buyFee / 10^18) wei
             gas gas_remaining - 34710 wei
        require ext_call.success
    emit Buy(arg1, 0, arg3, (arg3 * arg5 / arg4) + (arg3 * arg5 / arg4 * buyFee / 10^18), address(arg7), msg.sender);
}



}
