contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint8 stor7;
address stor10; offset 8

function _fallback() payable {
    stor0 = 100
    stor1 = 10
    stor3 = 0
    stor4 = 0
    stor7 = 0
    stor10 = 0x98ba698fc04e79dce066873106424252e6aabc31
    require not msg.value
    stor2 = msg.sender
    return code.data[227 len 4868]
}



// =====================  Runtime code  =====================


const developer = 0xee06bddaffa56a303718de53a5bc347efbe4c68f


uint256 stor0;
uint256 stor1;
address owner;
uint256 max_amount;
uint256 min_amount;
mapping of uint256 balances;
mapping of uint256 balances_bonus;
uint8 stor7;
uint256 contract_eth_value;
uint256 contract_eth_value_bonus;
uint8 stor10;
address saleAddress; offset 8
address tokenAddress;
uint256 stor12;
uint8 stor13;

function max_amount() {
    return max_amount
}

function balances_bonus(address arg1) {
    return balances_bonus[arg1]
}

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(stor7)
}

function sale() {
    return saleAddress
}

function min_amount() {
    return min_amount
}

function owner() {
    return owner
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

function set_got_refunded() {
    require msg.sender == owner
    stor13 = 1
}

function set_bonus_received() {
    require msg.sender == owner
    stor10 = 1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function set_token_address(address arg1) {
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function refund_me() {
    if stor7:
        require stor13
    balances[address(msg.sender)] = 0
    balances_bonus[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor7
    if max_amount:
        require eth.balance(this.address) <= max_amount
    require stor0
    stor12 += msg.value / stor0
    balances[address(msg.sender)] = balances[address(msg.sender)] + msg.value - (msg.value / stor0)
    balances_bonus[address(msg.sender)] = balances_bonus[address(msg.sender)] + msg.value - (msg.value / stor0)
}

function withdraw() {
    require stor7
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

function buy_the_tokens() {
    require msg.sender == owner
    require not stor7
    require saleAddress
    require eth.balance(this.address) >= min_amount
    stor7 = 1
    require stor1
    call owner with:
       value stor12 - (stor12 / stor1) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0xee06bddaffa56a303718de53a5bc347efbe4c68f with:
       value stor12 / stor1 wei
         gas 2300 * is_zero(value) wei
    contract_eth_value = eth.balance(this.address)
    contract_eth_value_bonus = eth.balance(this.address)
    call saleAddress with:
       value contract_eth_value wei
         gas 2300 * is_zero(value) wei
}

function withdraw_bonus() {
    require stor7
    require stor10
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
