contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor5;
address stor6;
address stor7;

function _fallback() payable {
    stor2 = 40000 * 10^18
    stor5 = 100
    stor6 = 0xb97048628db6b661d4c2aa833e95dbe1a905b280
    stor7 = 0x496529c12e229e9787d37e5efa2e48b651e755b0
    require not msg.value
    return code.data[220 len 4568]
}



// =====================  Runtime code  =====================


mapping of uint256 iou_purchased;
mapping of uint256 eth_sent;
uint256 total_iou_available;
uint256 total_iou_purchased;
uint256 total_iou_withdrawn;
uint256 price_per_eth;
address tokenAddress;
uint8 stor7; offset 160
uint128 stor7; offset 160
address stor7;

function eth_sent(address arg1) {
    return eth_sent[arg1]
}

function iou_purchased(address arg1) {
    return iou_purchased[arg1]
}

function total_iou_withdrawn() {
    return total_iou_withdrawn
}

function total_iou_available() {
    return total_iou_available
}

function price_per_eth() {
    return price_per_eth
}

function total_iou_purchased() {
    return total_iou_purchased
}

function halt_purchases() {
    return bool(uint8(stor7.field_160))
}

function token() {
    return tokenAddress
}

function updatePrice(uint256 arg1) {
    require msg.sender == address(stor7.field_0)
    price_per_eth = arg1
}

function haltPurchases() {
    require msg.sender == address(stor7.field_0)
    Mask(96, 0, stor7.field_160) = 1
}

function resumePurchases() {
    require msg.sender == address(stor7.field_0)
    Mask(96, 0, stor7.field_160) = 0
}

function updateAvailability(uint256 arg1) {
    require msg.sender == address(stor7.field_0)
    require arg1 >= total_iou_purchased
    total_iou_available = arg1
}

function purchase() payable {
    require not uint8(stor7.field_160)
    require msg.value
    require total_iou_purchased + (price_per_eth * msg.value) <= total_iou_available
    iou_purchased[address(msg.sender)] += price_per_eth * msg.value
    eth_sent[address(msg.sender)] += msg.value
    total_iou_purchased += price_per_eth * msg.value
}

function withdrawTokens() {
    require msg.sender == address(stor7.field_0)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor7.field_0), ext_call.return_data[0] - total_iou_purchased + total_iou_withdrawn
    require ext_call.success
}

function paySeller() {
    require msg.sender == address(stor7.field_0)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= total_iou_purchased - total_iou_withdrawn
    Mask(96, 0, stor7.field_160) = 1
    call address(stor7.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if block.number <= 4199999:
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require iou_purchased[address(msg.sender)] <= ext_call.return_data[0]
        require iou_purchased[address(msg.sender)]
        iou_purchased[address(msg.sender)] = 0
        eth_sent[address(msg.sender)] = 0
        total_iou_withdrawn += iou_purchased[address(msg.sender)]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, iou_purchased[address(msg.sender)]
    else:
        if iou_purchased[address(msg.sender)] > ext_call.return_data[0]:
            require eth_sent[address(msg.sender)]
            require iou_purchased[address(msg.sender)]
            total_iou_purchased -= iou_purchased[address(msg.sender)]
            eth_sent[address(msg.sender)] = 0
            iou_purchased[address(msg.sender)] = 0
            call msg.sender with:
               value eth_sent[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require iou_purchased[address(msg.sender)] <= ext_call.return_data[0]
            require iou_purchased[address(msg.sender)]
            iou_purchased[address(msg.sender)] = 0
            eth_sent[address(msg.sender)] = 0
            total_iou_withdrawn += iou_purchased[address(msg.sender)]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, iou_purchased[address(msg.sender)]
    require ext_call.success
}

function _fallback() payable {
    if msg.value:
        require not uint8(stor7.field_160)
        require msg.value
        require total_iou_purchased + (price_per_eth * msg.value) <= total_iou_available
        iou_purchased[address(msg.sender)] += price_per_eth * msg.value
        eth_sent[address(msg.sender)] += msg.value
        total_iou_purchased += price_per_eth * msg.value
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if block.number <= 4199999:
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require iou_purchased[address(msg.sender)] <= ext_call.return_data[0]
            require iou_purchased[address(msg.sender)]
            iou_purchased[address(msg.sender)] = 0
            eth_sent[address(msg.sender)] = 0
            total_iou_withdrawn += iou_purchased[address(msg.sender)]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, iou_purchased[address(msg.sender)]
        else:
            if iou_purchased[address(msg.sender)] > ext_call.return_data[0]:
                require eth_sent[address(msg.sender)]
                require iou_purchased[address(msg.sender)]
                total_iou_purchased -= iou_purchased[address(msg.sender)]
                eth_sent[address(msg.sender)] = 0
                iou_purchased[address(msg.sender)] = 0
                call msg.sender with:
                   value eth_sent[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require iou_purchased[address(msg.sender)] <= ext_call.return_data[0]
                require iou_purchased[address(msg.sender)]
                iou_purchased[address(msg.sender)] = 0
                eth_sent[address(msg.sender)] = 0
                total_iou_withdrawn += iou_purchased[address(msg.sender)]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, iou_purchased[address(msg.sender)]
        require ext_call.success
}



}
