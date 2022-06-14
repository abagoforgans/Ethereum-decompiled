contract main {




// =====================  Runtime code  =====================


address owner;
address multisigAddress;
uint256 restrictedPercent;
address restrictedAddress;
address tokenAddress;
uint256 start;
uint256 period;
uint256 hardcap;
uint256 rate;
uint256 softcap;
mapping of uint256 balances;
uint256 sub_c1161dd8;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function rate() {
    return rate
}

function restrictedPercent() {
    return restrictedPercent
}

function multisig() {
    return multisigAddress
}

function restricted() {
    return restrictedAddress
}

function owner() {
    return owner
}

function hardcap() {
    return hardcap
}

function start() {
    return start
}

function sub_c1161dd8(?) {
    return sub_c1161dd8
}

function period() {
    return period
}

function softcap() {
    return softcap
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function refund() {
    require eth.balance(this.address) < softcap
    require block.timestamp > start + (24 * 3600 * period)
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require eth.balance(multisigAddress) <= hardcap
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    if rate:
        require rate
        require rate * msg.value / rate == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, rate * msg.value / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
}

function createTokens() payable {
    require eth.balance(multisigAddress) <= hardcap
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    if rate:
        require rate
        require rate * msg.value / rate == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, rate * msg.value / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
}

function finishMinting() {
    require msg.sender == owner
    if eth.balance(this.address) > softcap:
        call multisigAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require ext_call.return_data[0] * restrictedPercent / ext_call.return_data[0] == restrictedPercent
        require -restrictedPercent + 100
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args restrictedAddress, ext_call.return_data[0] * restrictedPercent / -restrictedPercent + 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x7d64bcb4 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
