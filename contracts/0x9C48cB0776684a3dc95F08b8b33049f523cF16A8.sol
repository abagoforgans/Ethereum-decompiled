contract main {


// =======================  Init code  ======================


uint256 stor7;
address stor8;
address stor9;
uint256 stor11;

function _fallback() payable {
    stor7 = 0x8bf0720c6e610aace867eba51b03ab8ca908b665898b10faddc95a96e829539d
    stor8 = 0x859271ef2f73a447a1efd7f95037017667c9d326
    stor9 = 0xc4740f71323129669424d1ae06c42aee99da30e2
    stor11 = 3235 * 10^18
    require not msg.value
    return code.data[258 len 4152]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 balances_for_refund;
uint8 stor2;
uint8 stor2; offset 8
uint256 stor2; offset 8
uint256 contract_eth_value;
uint256 refund_contract_eth_value;
uint256 refund_eth_value;
uint8 stor6;
address developerAddress;
address saleAddress;
address tokenAddress;
uint256 eth_minimum;

function balances(address arg1) {
    return balances[arg1]
}

function balances_for_refund(address arg1) {
    return balances_for_refund[arg1]
}

function refund_contract_eth_value() {
    return refund_contract_eth_value
}

function bought_tokens() {
    return bool(uint8(stor2.field_0))
}

function sale() {
    return saleAddress
}

function refund_eth_value() {
    return refund_eth_value
}

function token_set() {
    return bool(uint8(stor2.field_8))
}

function kill_switch() {
    return bool(stor6)
}

function eth_minimum() {
    return eth_minimum
}

function contract_eth_value() {
    return contract_eth_value
}

function developer() {
    return developerAddress
}

function token() {
    return tokenAddress
}

function set_token(address arg1) {
    require msg.sender == developerAddress
    tokenAddress = arg1
    Mask(248, 0, stor2.field_8) = 1
}

function personal_withdraw(uint256 arg1) {
    require msg.sender == developerAddress
    call developerAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw_refund() {
    require refund_eth_value
    require balances_for_refund[address(msg.sender)]
    require refund_contract_eth_value
    refund_contract_eth_value -= balances_for_refund[address(msg.sender)]
    refund_eth_value -= balances_for_refund[address(msg.sender)] * refund_eth_value / refund_contract_eth_value
    balances_for_refund[address(msg.sender)] = 0
    call msg.sender with:
       value balances_for_refund[address(msg.sender)] * refund_eth_value / refund_contract_eth_value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if uint8(stor2.field_0):
        require msg.sender == saleAddress
        refund_eth_value += msg.value
    else:
        balances[address(msg.sender)] += msg.value
        balances_for_refund[address(msg.sender)] += msg.value
        if eth.balance(this.address) >= eth_minimum:
            if not stor6:
                require saleAddress
                uint8(stor2.field_0) = 1
                contract_eth_value = eth.balance(this.address)
                refund_contract_eth_value = eth.balance(this.address)
                call saleAddress with:
                   value contract_eth_value wei
                     gas gas_remaining - 34710 wei
                require ext_call.success
                require not eth.balance(this.address)
}

function withdraw_token(address arg1) {
    if balances[address(msg.sender)]:
        require saleAddress != msg.sender
        if not uint8(stor2.field_0):
            balances[address(msg.sender)] = 0
            call msg.sender with:
               value balances[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
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
                args developerAddress, balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value / 100
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value) - (balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value / 100)
            require ext_call.success
            require ext_call.return_data[0]
}



}
