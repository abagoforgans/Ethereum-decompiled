contract main {


// =======================  Init code  ======================


address stor4;
address stor5;
address stor6;

function _fallback() payable {
    stor4 = 0xbbc79794599b19274850492394004087cbf89710
    stor5 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    stor6 = 0x4e6a1c57cdbfd97e8efe831f8f4418b1f2a09e6e
    require not msg.value
    return code.data[130 len 1153]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
uint256 reward;
uint8 stor2;
uint256 time_bought;
address stor4;
address stor5;
address stor6;

function reward() {
    return reward
}

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(stor2)
}

function time_bought() {
    return time_bought
}

function add_reward() payable {
    reward += msg.value
}

function withdraw() {
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy() {
    stor2 = 1
    time_bought = block.timestamp
    require ext_code.size(stor4)
    call stor4.contributeETH() with:
       value eth.balance(this.address) - reward wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    call msg.sender with:
       value reward wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    if not stor2:
        balances[address(msg.sender)] += msg.value
    else:
        balances[address(msg.sender)] = 0
        require ext_code.size(stor5)
        if block.timestamp <= time_bought + 3600:
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 100 * balances[address(msg.sender)]
            require ext_call.success
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor6, 0
        else:
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (100 * balances[address(msg.sender)]) - (100 * balances[address(msg.sender)] / 100)
            require ext_call.success
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor6, 100 * balances[address(msg.sender)] / 100
        require ext_call.success
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
}

function default_helper() payable {
    if not stor2:
        balances[address(msg.sender)] += msg.value
    else:
        balances[address(msg.sender)] = 0
        require ext_code.size(stor5)
        if block.timestamp <= time_bought + 3600:
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 100 * balances[address(msg.sender)]
            require ext_call.success
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor6, 0
        else:
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (100 * balances[address(msg.sender)]) - (100 * balances[address(msg.sender)] / 100)
            require ext_call.success
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor6, 100 * balances[address(msg.sender)] / 100
        require ext_call.success
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
}



}
