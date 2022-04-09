contract main {


// =======================  Init code  ======================


uint256 stor5;
address stor6;
address stor7;

function _fallback() payable {
    stor5 = 900
    stor6 = 0x725803315519de78d232265a8f1040f054e70b98
    stor7 = 0xb00ae1e677b27eee9955d632ff07a8590210b366
    require not msg.value
    return code.data[106 len 2494]
}



// =====================  Runtime code  =====================


mapping of uint256 bet_purchased;
mapping of uint256 eth_sent;
uint256 total_bet_available;
uint256 total_bet_purchased;
uint256 total_bet_withdrawn;
uint256 price_per_eth;
address tokenAddress;
uint8 stor7; offset 160
address stor7;

function eth_sent(address arg1) {
    return eth_sent[arg1]
}

function total_bet_available() {
    return total_bet_available
}

function total_bet_purchased() {
    return total_bet_purchased
}

function bet_purchased(address arg1) {
    return bet_purchased[arg1]
}

function price_per_eth() {
    return price_per_eth
}

function total_bet_withdrawn() {
    return total_bet_withdrawn
}

function halt_purchases() {
    return bool(uint8(stor7.field_160))
}

function token() {
    return tokenAddress
}

function haltPurchases() {
    require address(stor7.field_0) == msg.sender
    uint8(stor7.field_160) = 1
}

function resumePurchases() {
    require address(stor7.field_0) == msg.sender
    uint8(stor7.field_160) = 0
}

function updatePrice(uint256 arg1) {
    require address(stor7.field_0) == msg.sender
    price_per_eth = arg1
}

function updateAvailability(uint256 arg1) {
    require address(stor7.field_0) == msg.sender
    total_bet_available += arg1
}

function withdrawETH() {
    require address(stor7.field_0) == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function purchase() payable {
    require not uint8(stor7.field_160)
    require total_bet_purchased + (price_per_eth * msg.value) <= total_bet_available
    bet_purchased[address(msg.sender)] += price_per_eth * msg.value
    eth_sent[address(msg.sender)] += msg.value
    total_bet_purchased += price_per_eth * msg.value
    call address(stor7.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawTokens() {
    require address(stor7.field_0) == msg.sender
    require total_bet_withdrawn == total_bet_purchased
    total_bet_available = 0
    total_bet_purchased = 0
    total_bet_withdrawn = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor7.field_0), ext_call.return_data[0]
    require ext_call.success
}

function withdraw() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require bet_purchased[address(msg.sender)]
    bet_purchased[address(msg.sender)] = 0
    total_bet_withdrawn += bet_purchased[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, bet_purchased[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
}

function buyTokens() payable {
    require address(stor7.field_0) == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.CAP() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.totalEthers() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] >= ext_call.return_data[0]:
    require ext_code.size(tokenAddress)
    call tokenAddress.proxyPayment(address rg1) with:
       value eth.balance(this.address) wei
         gas gas_remaining - 9710 wei
        args this.address
    require ext_call.success
}

function _fallback() payable {
    if msg.value:
        if address(stor7.field_0) == msg.sender:
        require not uint8(stor7.field_160)
        require total_bet_purchased + (price_per_eth * msg.value) <= total_bet_available
        bet_purchased[address(msg.sender)] += price_per_eth * msg.value
        eth_sent[address(msg.sender)] += msg.value
        total_bet_purchased += price_per_eth * msg.value
        call address(stor7.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require bet_purchased[address(msg.sender)]
    bet_purchased[address(msg.sender)] = 0
    total_bet_withdrawn += bet_purchased[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, bet_purchased[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
}



}
