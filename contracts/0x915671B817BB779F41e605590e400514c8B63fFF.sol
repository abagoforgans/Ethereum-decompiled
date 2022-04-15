contract main {


// =======================  Init code  ======================


uint256 stor3;
address stor4;

function _fallback() payable {
    stor3 = 300 * 10^18
    require not msg.value
    stor4 = msg.sender
    return code.data[73 len 1592]
}



// =====================  Runtime code  =====================


const min_required_amount = 60 * 10^18


mapping of uint256 balances;
uint8 stor1;
uint256 contract_eth_value;
uint256 eth_cap;
address owner;
address saleAddress;
address tokenAddress;

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(stor1)
}

function sale() {
    return saleAddress
}

function owner() {
    return owner
}

function contract_eth_value() {
    return contract_eth_value
}

function eth_cap() {
    return eth_cap
}

function token() {
    return tokenAddress
}

function upgrade_cap() {
    if owner == msg.sender:
        eth_cap = 800 * 10^18
}

function set_addresses(address arg1, address arg2) {
    require owner == msg.sender
    require not saleAddress
    saleAddress = arg1
    tokenAddress = arg2
}

function _fallback() payable {
    require not stor1
    require msg.value + eth.balance(this.address) < eth_cap
    balances[address(msg.sender)] += msg.value
}

function refund_me() {
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy_the_tokens() {
    require not stor1
    require saleAddress
    require eth.balance(this.address) >= 60 * 10^18
    stor1 = 1
    contract_eth_value = eth.balance(this.address)
    call saleAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function perform_withdraw() {
    require stor1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require not ext_call.return_data[0]
    require contract_eth_value
    contract_eth_value -= balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] * balances[address(msg.sender)] / contract_eth_value
    require ext_call.success
    require ext_call.return_data[0]
}



}
