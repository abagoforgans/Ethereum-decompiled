contract main {


// =======================  Init code  ======================


uint8 stor2;
address stor5; offset 8

function _fallback() payable {
    stor2 = 0
    stor5 = 0x6997f780521e233130249fc00bd7e0a7f2ddbbcf
    require not msg.value
    return code.data[142 len 3913]
}



// =====================  Runtime code  =====================


const developer = 0xee06bddaffa56a303718de53a5bc347efbe4c68f


mapping of uint256 balances;
mapping of uint256 balances_bonus;
uint8 stor2;
uint256 contract_eth_value;
uint256 contract_eth_value_bonus;
uint8 stor5;
address saleAddress; offset 8
address tokenAddress;
uint256 stor7;

function balances_bonus(address arg1) {
    return balances_bonus[arg1]
}

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(stor2)
}

function sale() {
    return saleAddress
}

function contract_eth_value_bonus() {
    return contract_eth_value_bonus
}

function contract_eth_value() {
    return contract_eth_value
}

function token() {
    return tokenAddress
}

function set_bonus_received() {
    require msg.sender == 0xee06bddaffa56a303718de53a5bc347efbe4c68f
    stor5 = 1
}

function set_token_address(address arg1) {
    require msg.sender == 0xee06bddaffa56a303718de53a5bc347efbe4c68f
    require arg1
    tokenAddress = arg1
}

function refund_me() {
    require not stor2
    balances[address(msg.sender)] = 0
    balances_bonus[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor2
    stor7 += msg.value / 50
    balances[address(msg.sender)] = balances[address(msg.sender)] + msg.value - (msg.value / 50)
    balances_bonus[address(msg.sender)] = balances_bonus[address(msg.sender)] + msg.value - (msg.value / 50)
}

function buy_the_tokens() {
    require msg.sender == 0xee06bddaffa56a303718de53a5bc347efbe4c68f
    require not stor2
    require saleAddress
    stor2 = 1
    call 0xee06bddaffa56a303718de53a5bc347efbe4c68f with:
       value stor7 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    contract_eth_value = eth.balance(this.address)
    contract_eth_value_bonus = eth.balance(this.address)
    call saleAddress with:
       value contract_eth_value wei
         gas 2300 * is_zero(value) wei
}

function withdraw() {
    require stor2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require contract_eth_value
    contract_eth_value -= balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value
    require ext_call.success
    require ext_call.return_data[0]
}

function withdraw_bonus() {
    require stor2
    require stor5
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require contract_eth_value_bonus
    contract_eth_value_bonus -= balances_bonus[address(msg.sender)]
    balances_bonus[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balances_bonus[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value_bonus
    require ext_call.success
    require ext_call.return_data[0]
}



}
