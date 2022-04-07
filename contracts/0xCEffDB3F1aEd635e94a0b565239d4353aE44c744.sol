contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
address stor5;

function _fallback() payable {
    stor3 = 0xbbc79794599b19274850492394004087cbf89710
    stor4 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    stor5 = 0x4e6a1c57cdbfd97e8efe831f8f4418b1f2a09e6e
    require not msg.value
    return code.data[130 len 913]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
uint8 bought_tokens;
uint256 time_bought;
address stor3;
address stor4;
address stor5;

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(bought_tokens)
}

function time_bought() {
    return time_bought
}

function withdraw() {
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy() {
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    bought_tokens = 1
    time_bought = block.timestamp
}

function _fallback() payable {
    if not bought_tokens:
        balances[address(msg.sender)] += msg.value
    else:
        balances[address(msg.sender)] = 0
        require ext_code.size(stor4)
        if block.timestamp <= time_bought + 3600:
            call stor4.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 100 * balances[address(msg.sender)]
            require ext_call.success
            require ext_code.size(stor4)
            call stor4.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor5, 0
        else:
            call stor4.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (100 * balances[address(msg.sender)]) - (100 * balances[address(msg.sender)] / 100)
            require ext_call.success
            require ext_code.size(stor4)
            call stor4.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor5, 100 * balances[address(msg.sender)] / 100
        require ext_call.success
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
}



}
