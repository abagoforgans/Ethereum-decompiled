contract main {




// =====================  Runtime code  =====================


address adminAddress;
address traded_tokenAddress;
uint256 eth_seed_amount;
uint256 traded_token_seed_amount;
uint256 commission_ratio;
uint256 eth_balance;
uint256 traded_token_balance;
uint8 stor7;
uint8 stor7; offset 8
uint8 stor7; offset 16
uint8 stor7; offset 24
uint256 stor7; offset 24
uint256 stor7; offset 16
uint256 stor7; offset 8

function eth_balance() {
    return eth_balance
}

function eth_is_seeded() {
    return bool(uint8(stor7.field_0))
}

function admin_commission_activated() {
    return bool(uint8(stor7.field_24))
}

function traded_token_is_seeded() {
    return bool(uint8(stor7.field_8))
}

function traded_token_balance() {
    return traded_token_balance
}

function commission_ratio() {
    return commission_ratio
}

function traded_token() {
    return traded_tokenAddress
}

function traded_token_seed_amount() {
    return traded_token_seed_amount
}

function eth_seed_amount() {
    return eth_seed_amount
}

function trading_deactivated() {
    return bool(uint8(stor7.field_16))
}

function admin() {
    return adminAddress
}

function reactivate_trading() {
    require msg.sender == adminAddress
    require uint8(stor7.field_16)
    Mask(240, 0, stor7.field_16) = 0
}

function deactivate_trading() {
    require msg.sender == adminAddress
    require not uint8(stor7.field_16)
    Mask(240, 0, stor7.field_16) = 1
}

function deactivate_admin_comission() {
    require msg.sender == adminAddress
    require uint8(stor7.field_24)
    Mask(232, 0, stor7.field_24) = 0
}

function change_admin_commission(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 != commission_ratio
    commission_ratio = arg1
}

function activate_admin_commission() {
    require msg.sender == adminAddress
    require not uint8(stor7.field_24)
    Mask(232, 0, stor7.field_24) = 1
}

function seed_additional_eth() payable {
    require msg.sender == adminAddress
    require uint8(stor7.field_0)
    require uint8(stor7.field_8)
    require eth_balance + msg.value >= eth_balance
    eth_balance += msg.value
}

function get_amount_buy(uint256 arg1) {
    require eth_balance + arg1 >= eth_balance
    require traded_token_balance * arg1 >= traded_token_balance
    require eth_balance + arg1
    return (traded_token_balance * arg1 / eth_balance + arg1)
}

function get_amount_sell(uint256 arg1) {
    require traded_token_balance + arg1 >= traded_token_balance
    require eth_balance * arg1 >= eth_balance
    require traded_token_balance + arg1
    return (eth_balance * arg1 / traded_token_balance + arg1)
}

function seed_eth() payable {
    require msg.sender == adminAddress
    require not uint8(stor7.field_0)
    require msg.value == eth_seed_amount
    uint8(stor7.field_0) = 1
    require eth_balance + msg.value >= eth_balance
    eth_balance += msg.value
}

function withdraw_eth(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 <= eth_balance
    eth_balance -= arg1
    call adminAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw_token(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 <= traded_token_balance
    traded_token_balance -= arg1
    require ext_code.size(traded_tokenAddress)
    call traded_tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function seed_additional_token(uint256 arg1) {
    require msg.sender == adminAddress
    require uint8(stor7.field_0)
    require uint8(stor7.field_8)
    require traded_token_balance + arg1 >= traded_token_balance
    traded_token_balance += arg1
    require ext_code.size(traded_tokenAddress)
    call traded_tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function seed_traded_token() {
    require msg.sender == adminAddress
    require not uint8(stor7.field_8)
    Mask(248, 0, stor7.field_8) = 1
    require traded_token_balance + traded_token_seed_amount >= traded_token_balance
    traded_token_balance += traded_token_seed_amount
    require ext_code.size(traded_tokenAddress)
    call traded_tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), traded_token_seed_amount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sell_tokens(uint256 arg1) {
    require not uint8(stor7.field_16)
    require uint8(stor7.field_0)
    require uint8(stor7.field_8)
    require traded_token_balance + arg1 >= traded_token_balance
    require eth_balance * arg1 >= eth_balance
    require traded_token_balance + arg1
    require traded_token_balance + arg1 >= traded_token_balance
    traded_token_balance += arg1
    require ext_code.size(traded_tokenAddress)
    call traded_tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not uint8(stor7.field_24):
        require eth_balance * arg1 / traded_token_balance + arg1 <= eth_balance
        eth_balance -= eth_balance * arg1 / traded_token_balance + arg1
        call msg.sender with:
           value eth_balance * arg1 / traded_token_balance + arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        require (10^18 * eth_balance * arg1 / traded_token_balance + arg1) - (commission_ratio * eth_balance * arg1 / traded_token_balance + arg1) / 10^18 <= eth_balance
        eth_balance -= (10^18 * eth_balance * arg1 / traded_token_balance + arg1) - (commission_ratio * eth_balance * arg1 / traded_token_balance + arg1) / 10^18
        call msg.sender with:
           value (10^18 * eth_balance * arg1 / traded_token_balance + arg1) - (commission_ratio * eth_balance * arg1 / traded_token_balance + arg1) / 10^18 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require (eth_balance * arg1 / traded_token_balance + arg1) - ((10^18 * eth_balance * arg1 / traded_token_balance + arg1) - (commission_ratio * eth_balance * arg1 / traded_token_balance + arg1) / 10^18) <= eth_balance
        eth_balance = eth_balance - (eth_balance * arg1 / traded_token_balance + arg1) + ((10^18 * eth_balance * arg1 / traded_token_balance + arg1) - (commission_ratio * eth_balance * arg1 / traded_token_balance + arg1) / 10^18)
        call adminAddress with:
           value (eth_balance * arg1 / traded_token_balance + arg1) - ((10^18 * eth_balance * arg1 / traded_token_balance + arg1) - (commission_ratio * eth_balance * arg1 / traded_token_balance + arg1) / 10^18) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not uint8(stor7.field_16)
    require uint8(stor7.field_0)
    require uint8(stor7.field_8)
    require eth_balance + msg.value >= eth_balance
    require traded_token_balance * msg.value >= traded_token_balance
    require eth_balance + msg.value
    require eth_balance + msg.value >= eth_balance
    eth_balance += msg.value
    if not uint8(stor7.field_24):
        require traded_token_balance * msg.value / eth_balance + msg.value <= traded_token_balance
        traded_token_balance -= traded_token_balance * msg.value / eth_balance + msg.value
        require ext_code.size(traded_tokenAddress)
        call traded_tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, traded_token_balance * msg.value / eth_balance + msg.value
    else:
        require (10^18 * traded_token_balance * msg.value / eth_balance + msg.value) - (commission_ratio * traded_token_balance * msg.value / eth_balance + msg.value) / 10^18 <= traded_token_balance
        traded_token_balance -= (10^18 * traded_token_balance * msg.value / eth_balance + msg.value) - (commission_ratio * traded_token_balance * msg.value / eth_balance + msg.value) / 10^18
        require ext_code.size(traded_tokenAddress)
        call traded_tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (10^18 * traded_token_balance * msg.value / eth_balance + msg.value) - (commission_ratio * traded_token_balance * msg.value / eth_balance + msg.value) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require (traded_token_balance * msg.value / eth_balance + msg.value) - ((10^18 * traded_token_balance * msg.value / eth_balance + msg.value) - (commission_ratio * traded_token_balance * msg.value / eth_balance + msg.value) / 10^18) <= traded_token_balance
        traded_token_balance = traded_token_balance - (traded_token_balance * msg.value / eth_balance + msg.value) + ((10^18 * traded_token_balance * msg.value / eth_balance + msg.value) - (commission_ratio * traded_token_balance * msg.value / eth_balance + msg.value) / 10^18)
        require ext_code.size(traded_tokenAddress)
        call traded_tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args adminAddress, (traded_token_balance * msg.value / eth_balance + msg.value) - ((10^18 * traded_token_balance * msg.value / eth_balance + msg.value) - (commission_ratio * traded_token_balance * msg.value / eth_balance + msg.value) / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
