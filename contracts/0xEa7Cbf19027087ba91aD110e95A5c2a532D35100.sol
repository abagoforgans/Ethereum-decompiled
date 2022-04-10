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
uint256 stor17;
address stor20; offset 8
uint8 stor21; offset 152
address stor21;
mapping of uint256 stor22;

function _fallback() payable {
    stor9 = 17440
    stor10 = 100 * 10^6
    stor11 = 10 * 10^6
    stor12 = 80 * 10^6
    stor13 = 10 * 10^6
    stor14 = 50000 * 10^18
    stor20 = 0xa9d585ce3b227d69985c3f7a866fe7d0e510da50
    Mask(152, 0, stor21.field_0) = 0x119e4b6fc1d931f63ffb26b3eabe2c4e779533
    uint8(stor21.field_152) = 0
    require not msg.value
    stor17 = 10^10
    stor22[address(msg.sender)] = stor17
    bool(stor6.length) = 0
    stor6.length.field_1 = 15
    stor6.length.field_8 = 'ZIBER CW Tokens' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = 'ZBR' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 2
    return code.data[700 len 5243]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint8 stor1;
uint256 bounty;
uint8 bought_tokens;
uint256 time_bought;
uint8 stor5;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor9;
uint256 stor14;
uint256 stor16;
address tokenAddress; offset 8
address stor21;
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
    return bool(stor5)
}

function time_bought() {
    return time_bought
}

function token() {
    return tokenAddress
}

function kill() {
    require msg.sender == stor21
    selfdestruct(stor21)
}

function activate_kill_switch() {
    require msg.sender == stor21
    stor5 = 1
}

function add_to_bounty() payable {
    require msg.sender == stor21
    require not stor5
    require not bought_tokens
    bounty += msg.value
}

function loadRefund() payable {
    require msg.value
    require stor16 + msg.value >= stor16
    require stor16 + msg.value >= msg.value
    stor16 += msg.value
}

function withdrawEth() {
    require msg.sender == stor21
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function claim_bounty() {
    if not bought_tokens:
        require not stor5
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
        else:
            call msg.sender with:
               value bounty wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= 1500400350
    if msg.value > 10^15:
        require not stor5
        require not bought_tokens
        balances[address(msg.sender)] += msg.value
    else:
        if not bought_tokens:
            balances[address(msg.sender)] = 0
            call msg.sender with:
               value balances[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
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
    require block.timestamp >= 1500400350
    if msg.value > 10^15:
        require not stor5
        require not bought_tokens
        balances[address(msg.sender)] += msg.value
    else:
        if not bought_tokens:
            balances[address(msg.sender)] = 0
            call msg.sender with:
               value balances[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
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
    else:
        require ext_code.size(tokenAddress)
        if stor1[address(msg.sender)]:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, balances[address(msg.sender)] * stor9
        else:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor21, balances[address(msg.sender)] * stor9 / 100
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (balances[address(msg.sender)] * stor9) - (balances[address(msg.sender)] * stor9 / 100)
        require ext_call.success
        require ext_call.return_data[0]
}



}
