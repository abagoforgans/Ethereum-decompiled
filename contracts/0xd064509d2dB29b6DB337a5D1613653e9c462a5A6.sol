contract main {


// =======================  Init code  ======================


uint256 stor6;
address stor7;
address stor8;

function _fallback() payable {
    stor6 = 2000
    stor7 = 0x5450c19954134f89430c02adb41265f6991def32
    stor8 = 0xa9d585ce3b227d69985c3f7a866fe7d0e510da50
    require not msg.value
    return code.data[106 len 1906]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint8 stor1;
uint256 bounty;
uint8 stor3;
uint256 time_bought;
uint8 stor5;
uint256 stor6;
address tokenAddress;
address stor8;

function balances(address arg1) {
    return balances[arg1]
}

function checked_in(address arg1) {
    return bool(stor1[arg1])
}

function bought_tokens() {
    return bool(stor3)
}

function bounty() {
    return bounty
}

function kill_switch() {
    return bool(stor5)
}

function time_bought() {
    return time_bought
}

function token() {
    return tokenAddress
}

function activate_kill_switch() {
    require stor8 == msg.sender
    stor5 = 1
}

function add_to_bounty() payable {
    require stor8 == msg.sender
    require not stor5
    require not stor3
    bounty += msg.value
}

function claim_bounty() {
    if not stor3:
        require not stor5
        stor3 = 1
        time_bought = block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.proxyPayment(address rg1) with:
           value eth.balance(this.address) - bounty wei
             gas gas_remaining - 9710 wei
            args this.address
        require ext_call.success
        call msg.sender with:
           value bounty wei
             gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    if msg.value > 10^15:
        require not stor5
        require not stor3
        balances[address(msg.sender)] += msg.value
    else:
        if not stor3:
            balances[address(msg.sender)] = 0
            call msg.sender with:
               value balances[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.CAP() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.totalEthers() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] < ext_call.return_data[0]
        stor1[address(msg.sender)] = 1
}

function default_helper() payable {
    if msg.value > 10^15:
        require not stor5
        require not stor3
        balances[address(msg.sender)] += msg.value
    else:
        if not stor3:
            balances[address(msg.sender)] = 0
            call msg.sender with:
               value balances[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.CAP() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.totalEthers() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] < ext_call.return_data[0]
        stor1[address(msg.sender)] = 1
}

function withdraw() {
    balances[address(msg.sender)] = 0
    if not stor3:
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(tokenAddress)
    if stor1[address(msg.sender)]:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, stor6 * balances[address(msg.sender)]
    else:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor8, stor6 * balances[address(msg.sender)] / 100
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (stor6 * balances[address(msg.sender)]) - (stor6 * balances[address(msg.sender)] / 100)
    require ext_call.success
    require ext_call.return_data[0]
}



}
