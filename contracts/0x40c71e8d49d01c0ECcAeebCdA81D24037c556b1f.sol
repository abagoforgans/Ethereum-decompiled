contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[6306 len 20]
    return code.data[188 len 6106]
}



// =====================  Runtime code  =====================


address owner;
address sub_e2048503Address;
address projectAddress;
array of struct sellOrders;
array of struct buyOrder;

function sub_02e76dc5(?) {
    return sellOrders.length
}

function sub_15d76b43(?) {
    return buyOrder.length
}

function buyOrders(uint256 arg1) {
    require arg1 < buyOrder.length
    return buyOrder[arg1].field_0, 
           buyOrder[arg1].field_256,
           buyOrder[arg1].field_512,
           buyOrder[arg1].field_768,
           bool(buyOrder[arg1].field_1024)
}

function getSellOrder(uint256 arg1) {
    require arg1 < sellOrders.length
    return sellOrders[arg1].field_0, 
           sellOrders[arg1].field_256,
           sellOrders[arg1].field_512,
           sellOrders[arg1].field_768,
           bool(sellOrders[arg1].field_1024)
}

function sellOrders(uint256 arg1) {
    require arg1 < sellOrders.length
    return sellOrders[arg1].field_0, 
           sellOrders[arg1].field_256,
           sellOrders[arg1].field_512,
           sellOrders[arg1].field_768,
           bool(sellOrders[arg1].field_1024)
}

function owner() {
    return owner
}

function getBuyOrder(uint256 arg1) {
    require arg1 < buyOrder.length
    return buyOrder[arg1].field_0, 
           buyOrder[arg1].field_256,
           buyOrder[arg1].field_512,
           buyOrder[arg1].field_768,
           bool(buyOrder[arg1].field_1024)
}

function sub_e2048503(?) {
    return sub_e2048503Address
}

function project() {
    return projectAddress
}

function _fallback() payable {
    revert
}

function sub_17f85f85(?) {
    require msg.sender == owner
    sub_e2048503Address = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0a553040(?) {
    require arg1 < sellOrders.length
    require sellOrders[arg1].field_1024
    require sellOrders[arg1].field_0 == msg.sender
    sellOrders[arg1].field_1024 = 0
    require ext_code.size(projectAddress)
    call projectAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, sellOrders[arg1].field_256
    require ext_call.success
}

function sub_efaecbe7(?) {
    require arg1 < buyOrder.length
    require buyOrder[arg1].field_1024
    require buyOrder[arg1].field_0 == msg.sender
    buyOrder[arg1].field_1024 = 0
    if not buyOrder[arg1].field_256:
        call buyOrder[arg1].field_0 with:
             gas 2300 wei
    else:
        require buyOrder[arg1].field_256
        require buyOrder[arg1].field_256 * buyOrder[arg1].field_512 / buyOrder[arg1].field_256 == buyOrder[arg1].field_512
        call buyOrder[arg1].field_0 with:
           value buyOrder[arg1].field_256 * buyOrder[arg1].field_512 / 10^18 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy(uint256 arg1) payable {
    require arg1 < sellOrders.length
    if not sellOrders[arg1].field_256:
        require sellOrders[arg1].field_1024
        require 0 <= msg.value
    else:
        require sellOrders[arg1].field_256
        require sellOrders[arg1].field_256 * sellOrders[arg1].field_512 / sellOrders[arg1].field_256 == sellOrders[arg1].field_512
        require sellOrders[arg1].field_1024
        require sellOrders[arg1].field_256 * sellOrders[arg1].field_512 / 10^18 <= msg.value
    sellOrders[arg1].field_1024 = 0
    require ext_code.size(projectAddress)
    call projectAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, sellOrders[arg1].field_256
    require ext_call.success
    call sellOrders[arg1].field_0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function addSellOrder(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg1 > 0
    require ext_code.size(projectAddress)
    call projectAddress.transferToCrowdsale(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    sellOrders.length++
    if not sellOrders.length <= sellOrders.length + 1:
        idx = (5 * sellOrders.length) + 5
        while 5 * sellOrders.length > idx:
            sellOrders[idx].field_0 = 0
            sellOrders[idx].field_256 = 0
            sellOrders[idx].field_512 = 0
            sellOrders[idx].field_768 = 0
            sellOrders[idx].field_1024 = 0
            idx = idx + 5
            continue 
    sellOrders[sellOrders.length].field_0 = msg.sender
    sellOrders[sellOrders.length].field_256 = arg1
    sellOrders[sellOrders.length].field_512 = arg2
    sellOrders[sellOrders.length].field_768 = sellOrders.length - 1
    sellOrders[sellOrders.length].field_1024 = 1
}

function sub_c13de913(?) payable {
    require arg1 > 0
    require msg.value > 0
    require arg1
    if not msg.value / arg1:
        buyOrder.length++
        if not buyOrder.length <= buyOrder.length + 1:
            idx = (5 * buyOrder.length) + 5
            while 5 * buyOrder.length > idx:
                buyOrder[idx].field_0 = 0
                buyOrder[idx].field_256 = 0
                buyOrder[idx].field_512 = 0
                buyOrder[idx].field_768 = 0
                buyOrder[idx].field_1024 = 0
                idx = idx + 5
                continue 
        buyOrder[buyOrder.length].field_0 = msg.sender
        buyOrder[buyOrder.length].field_256 = 0
    else:
        require msg.value / arg1
        require 10^18 * msg.value / arg1 / msg.value / arg1 == 10^18
        buyOrder.length++
        if not buyOrder.length <= buyOrder.length + 1:
            idx = (5 * buyOrder.length) + 5
            while 5 * buyOrder.length > idx:
                buyOrder[idx].field_0 = 0
                buyOrder[idx].field_256 = 0
                buyOrder[idx].field_512 = 0
                buyOrder[idx].field_768 = 0
                buyOrder[idx].field_1024 = 0
                idx = idx + 5
                continue 
        buyOrder[buyOrder.length].field_0 = msg.sender
        buyOrder[buyOrder.length].field_256 = 10^18 * msg.value / arg1
    buyOrder[buyOrder.length].field_512 = arg1
    buyOrder[buyOrder.length].field_768 = buyOrder.length - 1
    buyOrder[buyOrder.length].field_1024 = 1
}

function sell(uint256 arg1) {
    require arg1 < buyOrder.length
    if not buyOrder[arg1].field_256:
        require buyOrder[arg1].field_1024
        require ext_code.size(projectAddress)
        call projectAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require buyOrder[arg1].field_256 <= ext_call.return_data[0]
        buyOrder[arg1].field_1024 = 0
        require ext_code.size(projectAddress)
        call projectAddress.transferToCrowdsale(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, buyOrder[arg1].field_256
        require ext_call.success
        require ext_code.size(projectAddress)
        call projectAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args buyOrder[arg1].field_0, buyOrder[arg1].field_256
        require ext_call.success
        call msg.sender with:
             gas 2300 wei
    else:
        require buyOrder[arg1].field_256
        require buyOrder[arg1].field_256 * buyOrder[arg1].field_512 / buyOrder[arg1].field_256 == buyOrder[arg1].field_512
        require buyOrder[arg1].field_1024
        require ext_code.size(projectAddress)
        call projectAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require buyOrder[arg1].field_256 <= ext_call.return_data[0]
        buyOrder[arg1].field_1024 = 0
        require ext_code.size(projectAddress)
        call projectAddress.transferToCrowdsale(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, buyOrder[arg1].field_256
        require ext_call.success
        require ext_code.size(projectAddress)
        call projectAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args buyOrder[arg1].field_0, buyOrder[arg1].field_256
        require ext_call.success
        call msg.sender with:
           value buyOrder[arg1].field_256 * buyOrder[arg1].field_512 / 10^18 wei
             gas 2300 * is_zero(value) wei
}



}
