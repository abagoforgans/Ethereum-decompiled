contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;

function _fallback() {
    stor3 = block.number + 5184
    stor4 = block.number + (24 * 3600)
    return code.data[56 len 2175]
}



// =====================  Runtime code  =====================


const min_required_amount = 100 * 10^18

const sale = 0x6e6c083f8425b896d82c2b4c2bc7955aa5f8a534

const max_raised_amount = 500 * 10^18


mapping of uint256 balances;
uint8 stor1;
uint256 contract_eth_value;
uint256 min_buy_block;
uint256 min_refund_block;

function balances(address arg1) {
    return balances[arg1]
}

function min_buy_block() {
    return min_buy_block
}

function bought_tokens() {
    return bool(stor1)
}

function contract_eth_value() {
    return contract_eth_value
}

function min_refund_block() {
    return min_refund_block
}

function _fallback() payable {
    require eth.balance(this.address) + msg.value <= 500 * 10^18
    if not stor1:
        balances[address(msg.sender)] += msg.value
}

function default_helper() payable {
    require eth.balance(this.address) + msg.value <= 500 * 10^18
    if not stor1:
        balances[address(msg.sender)] += msg.value
}

function refund_me() {
    if stor1:
        require block.number >= min_refund_block
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy_the_tokens() {
    if not stor1:
        require eth.balance(this.address) >= 100 * 10^18
        require block.number >= min_buy_block
        stor1 = 1
        contract_eth_value = eth.balance(this.address)
        call 0x6e6c083f8425b896d82c2b4c2bc7955aa5f8a534 with:
           value contract_eth_value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function perform_withdraw(address arg1) {
    require stor1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require contract_eth_value
    contract_eth_value -= balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value
    require ext_call.success
    require ext_call.return_data[0]
}



}
