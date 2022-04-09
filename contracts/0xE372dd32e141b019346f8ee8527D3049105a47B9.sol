contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor5;
address stor6;
address stor7;

function _fallback() payable {
    stor2 = 127 * 10^10
    stor5 = 6 * 10^16
    stor6 = 0xf433089366899d83a9f26a773d59ec7ecf30355e
    stor7 = 0xb00ae1e677b27eee9955d632ff07a8590210b366
    require not msg.value
    return code.data[121 len 2513]
}



// =====================  Runtime code  =====================


mapping of uint256 iou_purchased;
mapping of uint256 eth_sent;
uint256 total_iou_available;
uint256 total_iou_purchased;
uint256 total_iou_withdrawn;
uint256 price_in_wei;
address tokenAddress;
uint8 halt_purchases; offset 160
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

function total_iou_purchased() {
    return total_iou_purchased
}

function price_in_wei() {
    return price_in_wei
}

function halt_purchases() {
    return bool(halt_purchases)
}

function token() {
    return tokenAddress
}

function haltPurchases() {
    require stor7 == msg.sender
    halt_purchases = 1
}

function resumePurchases() {
    require stor7 == msg.sender
    halt_purchases = 0
}

function updatePrice(uint256 arg1) {
    require stor7 == msg.sender
    price_in_wei = arg1
}

function updateAvailability(uint256 arg1) {
    require stor7 == msg.sender
    require arg1 >= total_iou_purchased
    total_iou_available = arg1
}

function purchase() payable {
    require not halt_purchases
    require msg.value
    require price_in_wei
    require total_iou_purchased + (100 * 10^6 * msg.value / price_in_wei) <= total_iou_available
    iou_purchased[address(msg.sender)] += 100 * 10^6 * msg.value / price_in_wei
    eth_sent[address(msg.sender)] += msg.value
    total_iou_purchased += 100 * 10^6 * msg.value / price_in_wei
}

function withdrawTokens() {
    require stor7 == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor7, ext_call.return_data[0] - total_iou_purchased + total_iou_withdrawn
    require ext_call.success
}

function paySeller() {
    require stor7 == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= total_iou_purchased - total_iou_withdrawn
    halt_purchases = 1
    call 0 or stor7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw() payable {
    if block.number <= 4199999:
        if ext_code.size(tokenAddress):
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                require ext_call.return_data[0]
                if ext_code.size(tokenAddress):
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    if ext_call.success:
                        require iou_purchased[address(msg.sender)] <= ext_call.return_data[0]
                        require iou_purchased[address(msg.sender)]
                        iou_purchased[address(msg.sender)] = 0
                        eth_sent[address(msg.sender)] = 0
                        total_iou_withdrawn += iou_purchased[address(msg.sender)]
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, iou_purchased[address(msg.sender)]
                            if ext_call.success:
    else:
        if ext_code.size(tokenAddress):
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if iou_purchased[address(msg.sender)] > ext_call.return_data[0]:
                    require eth_sent[address(msg.sender)]
                    require iou_purchased[address(msg.sender)]
                    total_iou_purchased -= iou_purchased[address(msg.sender)]
                    eth_sent[address(msg.sender)] = 0
                    iou_purchased[address(msg.sender)] = 0
                    call msg.sender with:
                       value eth_sent[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                else:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        if ext_call.success:
                            require ext_call.return_data[0]
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                if ext_call.success:
                                    require iou_purchased[address(msg.sender)] <= ext_call.return_data[0]
                                    require iou_purchased[address(msg.sender)]
                                    iou_purchased[address(msg.sender)] = 0
                                    eth_sent[address(msg.sender)] = 0
                                    total_iou_withdrawn += iou_purchased[address(msg.sender)]
                                    if ext_code.size(tokenAddress):
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, iou_purchased[address(msg.sender)]
                                        if ext_call.success:
    revert
}

function _fallback() payable {
    if msg.value:
        require not halt_purchases
        require msg.value
        require price_in_wei
        require total_iou_purchased + (100 * 10^6 * msg.value / price_in_wei) <= total_iou_available
        iou_purchased[address(msg.sender)] += 100 * 10^6 * msg.value / price_in_wei
        eth_sent[address(msg.sender)] += msg.value
        total_iou_purchased += 100 * 10^6 * msg.value / price_in_wei
    if block.number <= 4199999:
        if ext_code.size(tokenAddress):
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                require ext_call.return_data[0]
                if ext_code.size(tokenAddress):
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    if ext_call.success:
                        require iou_purchased[address(msg.sender)] <= ext_call.return_data[0]
                        require iou_purchased[address(msg.sender)]
                        iou_purchased[address(msg.sender)] = 0
                        eth_sent[address(msg.sender)] = 0
                        total_iou_withdrawn += iou_purchased[address(msg.sender)]
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, iou_purchased[address(msg.sender)]
                            if ext_call.success:
    else:
        if ext_code.size(tokenAddress):
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if iou_purchased[address(msg.sender)] > ext_call.return_data[0]:
                    require eth_sent[address(msg.sender)]
                    require iou_purchased[address(msg.sender)]
                    total_iou_purchased -= iou_purchased[address(msg.sender)]
                    eth_sent[address(msg.sender)] = 0
                    iou_purchased[address(msg.sender)] = 0
                    call msg.sender with:
                       value eth_sent[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                else:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        if ext_call.success:
                            require ext_call.return_data[0]
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                if ext_call.success:
                                    require iou_purchased[address(msg.sender)] <= ext_call.return_data[0]
                                    require iou_purchased[address(msg.sender)]
                                    iou_purchased[address(msg.sender)] = 0
                                    eth_sent[address(msg.sender)] = 0
                                    total_iou_withdrawn += iou_purchased[address(msg.sender)]
                                    if ext_code.size(tokenAddress):
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, iou_purchased[address(msg.sender)]
                                        if ext_call.success:
    revert
}



}
