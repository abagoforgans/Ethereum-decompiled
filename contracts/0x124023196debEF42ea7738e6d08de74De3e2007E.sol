contract main {


// =======================  Init code  ======================


array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor17;
address stor18;
mapping of uint256 stor19;

function _fallback() payable {
    stor9 = 17440
    stor10 = 100 * 10^6
    stor11 = 10 * 10^6
    stor12 = 80 * 10^6
    stor13 = 10 * 10^6
    stor14 = 50000 * 10^18
    stor17 = 0xa9d585ce3b227d69985c3f7a866fe7d0e510da50
    stor18 = 0x650887b33bfa423240ed7bc4bd26c66075e3beaf
    require not msg.value
    mem[96 len -3264] = code.data[3724 len -3264]
    mem[64] = -3168
    if mem[96]:
        stor19[address(msg.sender)] = mem[96]
    else:
        stor19[address(msg.sender)] = stor10
    stor6[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor7[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor8 = mem[223 len 1]
    return code.data[460 len 3264]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint8 stor1;
uint256 bounty;
uint8 bought_tokens;
uint256 time_bought;
uint8 kill_switch;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor9;
uint256 stor14;
uint256 stor16;
address tokenAddress;
address stor18;
mapping of uint256 balanceOf;

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
    return bool(bought_tokens)
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
    return bool(kill_switch)
}

function time_bought() {
    return time_bought
}

function token() {
    return tokenAddress
}

function kill() {
    require stor18 == msg.sender
    selfdestruct(stor18)
}

function activate_kill_switch() {
    require stor18 == msg.sender
    kill_switch = 1
}

function add_to_bounty() payable {
    require stor18 == msg.sender
    require not kill_switch
    require not bought_tokens
    bounty += msg.value
}

function loadRefund() payable {
    require msg.value
    require msg.value + stor16 >= stor16
    require msg.value + stor16 >= msg.value
    stor16 += msg.value
}

function withdrawEth() {
    require stor18 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function claim_bounty() {
    if bought_tokens:
    require not kill_switch
    bought_tokens = 1
    time_bought = block.timestamp + (24 * 3600)
    require ext_code.size(tokenAddress)
    call tokenAddress.proxyPayment(address rg1) with:
       value eth.balance(this.address) - bounty wei
         gas gas_remaining - 9710 wei
        args this.address
    require ext_call.success
    if eth.balance(this.address) <= stor14:
        time_bought = block.timestamp + (216 * 24 * 3600)
    call msg.sender with:
       value bounty wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if msg.value > 10^15:
        require not kill_switch
        require not bought_tokens
        balances[address(msg.sender)] += msg.value
    else:
        if not bought_tokens:
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
        require not kill_switch
        require not bought_tokens
        balances[address(msg.sender)] += msg.value
    else:
        if not bought_tokens:
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
    if not bought_tokens:
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(tokenAddress)
    if stor1[address(msg.sender)]:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, stor9 * balances[address(msg.sender)]
    else:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor18, stor9 * balances[address(msg.sender)] / 100
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (stor9 * balances[address(msg.sender)]) - (stor9 * balances[address(msg.sender)] / 100)
    require ext_call.success
    require ext_call.return_data[0]
}



}
