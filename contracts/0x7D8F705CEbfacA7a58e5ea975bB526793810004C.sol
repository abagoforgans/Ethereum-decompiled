contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[8394 len 32]
    stor3 = code.data[8426 len 32]
    stor1 = code.data[8458 len 32]
    return code.data[191 len 8203]
}



// =====================  Runtime code  =====================


const developer = 0xee06bddaffa56a303718de53a5bc347efbe4c68f


address owner;
uint256 stor1;
uint256 max_amount;
uint256 min_amount;
mapping of uint256 balances;
mapping of uint256 balances_bonus;
uint8 bought_tokens;
uint256 contract_eth_value;
uint256 contract_eth_value_bonus;
uint8 stor9;
address saleAddress; offset 8
address tokenAddress;
uint256 stor11;
uint8 allow_refunds;
uint256 stor13;

function max_amount() {
    return max_amount
}

function balances_bonus(address arg1) {
    return balances_bonus[arg1]
}

function allow_refunds() {
    return bool(allow_refunds)
}

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(bought_tokens)
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

function change_individual_cap(uint256 arg1) {
    require msg.sender == owner
    stor1 = arg1
}

function change_min_amount(uint256 arg1) {
    require msg.sender == owner
    min_amount = arg1
}

function set_bonus_received(bool arg1) {
    require msg.sender == owner
    stor9 = uint8(arg1)
}

function change_max_amount(uint256 arg1) {
    require msg.sender == owner
    max_amount = arg1
}

function set_percent_reduction(uint256 arg1) {
    require msg.sender == owner
    stor13 = arg1
}

function change_owner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function set_allow_refunds(bool arg1) {
    require msg.sender == owner
    allow_refunds = uint8(arg1)
}

function set_token_address(address arg1) {
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function set_sale_address(address arg1) {
    require msg.sender == owner
    require arg1
    require not saleAddress
    saleAddress = arg1
}

function force_refund(address arg1) {
    require msg.sender == owner
    if not balances[address(arg1)]:
        balances[address(arg1)] = 0
        balances_bonus[address(arg1)] = 0
        require 0 <= stor11
        call arg1 with:
             gas 2300 wei
    else:
        require balances[address(arg1)]
        require 100 * balances[address(arg1)] / balances[address(arg1)] == 100
        balances[address(arg1)] = 0
        balances_bonus[address(arg1)] = 0
        require 100 * balances[address(arg1)] / 99 / 100 <= stor11
        stor11 -= 100 * balances[address(arg1)] / 99 / 100
        call arg1 with:
           value 100 * balances[address(arg1)] / 99 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if not max_amount:
        if max_amount:
            require eth.balance(this.address) <= 0
    else:
        require max_amount
        require 100 * max_amount / max_amount == 100
        if max_amount:
            require eth.balance(this.address) <= 100 * max_amount / 99
    require not bought_tokens
    require stor11 + (msg.value / 100) >= stor11
    stor11 += msg.value / 100
    require msg.value / 100 <= msg.value
    require balances[address(msg.sender)] + msg.value - (msg.value / 100) >= balances[address(msg.sender)]
    balances[address(msg.sender)] = balances[address(msg.sender)] + msg.value - (msg.value / 100)
    if stor1:
        require balances[address(msg.sender)] <= stor1
    balances_bonus[address(msg.sender)] = balances[address(msg.sender)]
}

function refund() {
    require allow_refunds
    require not stor13
    if not balances[address(msg.sender)]:
        balances[address(msg.sender)] = 0
        balances_bonus[address(msg.sender)] = 0
        require 0 <= stor11
        call msg.sender with:
             gas 2300 wei
    else:
        require balances[address(msg.sender)]
        require 100 * balances[address(msg.sender)] / balances[address(msg.sender)] == 100
        balances[address(msg.sender)] = 0
        balances_bonus[address(msg.sender)] = 0
        require 100 * balances[address(msg.sender)] / 99 / 100 <= stor11
        stor11 -= 100 * balances[address(msg.sender)] / 99 / 100
        call msg.sender with:
           value 100 * balances[address(msg.sender)] / 99 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy_the_tokens() {
    require msg.sender == owner
    if not min_amount:
        require eth.balance(this.address) >= 0
    else:
        require min_amount
        require 100 * min_amount / min_amount == 100
        require eth.balance(this.address) >= 100 * min_amount / 99
    if not max_amount:
        if max_amount:
            require eth.balance(this.address) <= 0
    else:
        require max_amount
        require 100 * max_amount / max_amount == 100
        if max_amount:
            require eth.balance(this.address) <= 100 * max_amount / 99
    require not bought_tokens
    require saleAddress
    bought_tokens = 1
    require stor11 / 6 <= stor11
    call owner with:
       value stor11 - (stor11 / 6) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0xee06bddaffa56a303718de53a5bc347efbe4c68f with:
       value stor11 / 6 wei
         gas 2300 * is_zero(value) wei
    contract_eth_value = eth.balance(this.address)
    contract_eth_value_bonus = eth.balance(this.address)
    call saleAddress with:
       value contract_eth_value wei
         gas 2300 * is_zero(value) wei
}

function withdraw() {
    require bought_tokens
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    if not balances[address(msg.sender)]:
        require contract_eth_value
        require balances[address(msg.sender)] <= contract_eth_value
        contract_eth_value -= balances[address(msg.sender)]
        balances[address(msg.sender)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 0 / contract_eth_value
    else:
        require balances[address(msg.sender)]
        require balances[address(msg.sender)] * ext_call.return_data[0] / balances[address(msg.sender)] == ext_call.return_data[0]
        require contract_eth_value
        require balances[address(msg.sender)] <= contract_eth_value
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
    require bought_tokens
    require stor9
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    if not balances_bonus[address(msg.sender)]:
        require contract_eth_value_bonus
        require balances_bonus[address(msg.sender)] <= contract_eth_value_bonus
        contract_eth_value_bonus -= balances_bonus[address(msg.sender)]
        balances_bonus[address(msg.sender)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 0 / contract_eth_value_bonus
    else:
        require balances_bonus[address(msg.sender)]
        require balances_bonus[address(msg.sender)] * ext_call.return_data[0] / balances_bonus[address(msg.sender)] == ext_call.return_data[0]
        require contract_eth_value_bonus
        require balances_bonus[address(msg.sender)] <= contract_eth_value_bonus
        contract_eth_value_bonus -= balances_bonus[address(msg.sender)]
        balances_bonus[address(msg.sender)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, balances_bonus[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value_bonus
    require ext_call.success
    require ext_call.return_data[0]
}

function force_partial_refund(address arg1) {
    require msg.sender == owner
    require allow_refunds
    require stor13 > 0
    if not balances[address(arg1)]:
        if not bought_tokens:
            require 0 <= stor11
        require 0 <= balances[address(arg1)]
        balances_bonus[address(arg1)] = balances[address(arg1)]
        call arg1 with:
             gas 2300 wei
    else:
        require balances[address(arg1)]
        require balances[address(arg1)] * stor13 / balances[address(arg1)] == stor13
        if bought_tokens:
            require balances[address(arg1)] * stor13 / 100 <= balances[address(arg1)]
            balances[address(arg1)] -= balances[address(arg1)] * stor13 / 100
            balances_bonus[address(arg1)] = balances[address(arg1)]
            call arg1 with:
               value balances[address(arg1)] * stor13 / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            if not balances[address(arg1)] * stor13 / 100:
                require 0 <= stor11
                require 0 <= balances[address(arg1)]
                balances_bonus[address(arg1)] = balances[address(arg1)]
                call arg1 with:
                     gas 2300 wei
            else:
                require balances[address(arg1)] * stor13 / 100
                require 100 * balances[address(arg1)] * stor13 / 100 / balances[address(arg1)] * stor13 / 100 == 100
                require 100 * balances[address(arg1)] * stor13 / 100 / 99 / 100 <= stor11
                stor11 -= 100 * balances[address(arg1)] * stor13 / 100 / 99 / 100
                require 100 * balances[address(arg1)] * stor13 / 100 / 99 <= balances[address(arg1)]
                balances[address(arg1)] -= 100 * balances[address(arg1)] * stor13 / 100 / 99
                balances_bonus[address(arg1)] = balances[address(arg1)]
                call arg1 with:
                   value 100 * balances[address(arg1)] * stor13 / 100 / 99 wei
                     gas 2300 * is_zero(value) wei
    require ext_call.success
}

function partial_refund() {
    require allow_refunds
    require stor13 > 0
    if not balances[address(msg.sender)]:
        if not bought_tokens:
            require 0 <= stor11
        require 0 <= balances[address(msg.sender)]
        balances_bonus[address(msg.sender)] = balances[address(msg.sender)]
        call msg.sender with:
             gas 2300 wei
    else:
        require balances[address(msg.sender)]
        require balances[address(msg.sender)] * stor13 / balances[address(msg.sender)] == stor13
        if bought_tokens:
            require balances[address(msg.sender)] * stor13 / 100 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= balances[address(msg.sender)] * stor13 / 100
            balances_bonus[address(msg.sender)] = balances[address(msg.sender)]
            call msg.sender with:
               value balances[address(msg.sender)] * stor13 / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            if not balances[address(msg.sender)] * stor13 / 100:
                require 0 <= stor11
                require 0 <= balances[address(msg.sender)]
                balances_bonus[address(msg.sender)] = balances[address(msg.sender)]
                call msg.sender with:
                     gas 2300 wei
            else:
                require balances[address(msg.sender)] * stor13 / 100
                require 100 * balances[address(msg.sender)] * stor13 / 100 / balances[address(msg.sender)] * stor13 / 100 == 100
                require 100 * balances[address(msg.sender)] * stor13 / 100 / 99 / 100 <= stor11
                stor11 -= 100 * balances[address(msg.sender)] * stor13 / 100 / 99 / 100
                require 100 * balances[address(msg.sender)] * stor13 / 100 / 99 <= balances[address(msg.sender)]
                balances[address(msg.sender)] -= 100 * balances[address(msg.sender)] * stor13 / 100 / 99
                balances_bonus[address(msg.sender)] = balances[address(msg.sender)]
                call msg.sender with:
                   value 100 * balances[address(msg.sender)] * stor13 / 100 / 99 wei
                     gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
