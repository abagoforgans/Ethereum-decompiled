contract main {


// =======================  Init code  ======================


array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;
mapping of uint256 stor9;
uint256 stor10;
address stor11;
address stor12;

function _fallback() payable {
    stor10 = 2000
    stor11 = 0x5450c19954134f89430c02adb41265f6991def32
    stor12 = 0xa9d585ce3b227d69985c3f7a866fe7d0e510da50
    require not msg.value
    mem[96 len -2864] = code.data[3284 len -2864]
    mem[64] = -2768
    if mem[96]:
        stor9[address(msg.sender)] = mem[96]
    else:
        stor9[address(msg.sender)] = 100 * 10^6
    stor6[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor7[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor8 = mem[223 len 1]
    return code.data[420 len 2864]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint8 stor1;
uint256 bounty;
uint8 stor3;
uint256 time_bought;
uint8 stor5;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
uint256 stor10;
address tokenAddress;
address stor12;

function name() {
    return name[0 len name.length]
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function checked_in(address arg1) {
    return bool(stor1[arg1])
}

function bought_tokens() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function bounty() {
    return bounty
}

function symbol() {
    return symbol[0 len symbol.length]
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
    require stor12 == msg.sender
    stor5 = 1
}

function add_to_bounty() payable {
    require stor12 == msg.sender
    require not stor5
    require not stor3
    bounty += msg.value
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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
            args msg.sender, stor10 * balances[address(msg.sender)]
    else:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor12, stor10 * balances[address(msg.sender)] / 100
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (stor10 * balances[address(msg.sender)]) - (stor10 * balances[address(msg.sender)] / 100)
    require ext_call.success
    require ext_call.return_data[0]
}



}
