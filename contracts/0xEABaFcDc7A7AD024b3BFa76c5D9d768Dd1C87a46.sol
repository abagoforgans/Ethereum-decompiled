contract main {


// =======================  Init code  ======================


uint256 stor6;
uint256 stor7;
uint8 stor8; offset 152
address stor8;
address stor9;
address stor10;

function _fallback() payable {
    stor6 = 0x8223cba4d8b54dc1e03c41c059667f6adb1a642a0a07bef5a9d11c18c4f14612
    stor7 = 4170600
    Mask(152, 0, stor8.field_0) = 0xfb8369677b3065de5821a86bc9551d5e5eab9
    uint8(stor8.field_152) = 0
    stor9 = 0xd9c7a2ccc6fb89dc0528a98143fc7ae8ddeebc39
    stor10 = 0x4e878b358009cbe3daf553fafd0a17dde226223d
    require not msg.value
    return code.data[175 len 2063]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
uint256 bounty;
uint8 stor2;
uint256 time_bought;
uint256 contract_eth_value;
uint8 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address saleAddress;
address tokenAddress;

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(stor2)
}

function sale() {
    return saleAddress
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

function contract_eth_value() {
    return contract_eth_value
}

function token() {
    return tokenAddress
}

function add_to_bounty() payable {
    require stor8 == msg.sender
    require not stor5
    require not stor2
    bounty += msg.value
}

function claim_bounty() {
    if not stor2:
        if block.number >= stor7:
            if not stor5:
                stor2 = 1
                time_bought = block.timestamp
                bounty = 0
                contract_eth_value = eth.balance(this.address) - bounty
                call saleAddress with:
                   value eth.balance(this.address) - bounty wei
                     gas gas_remaining - 34710 wei
                require ext_call.success
                call msg.sender with:
                   value bounty wei
                     gas 2300 * is_zero(value) wei
}

function activate_kill_switch(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if stor8 != msg.sender:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == stor6
    bounty = 0
    stor5 = 1
    call msg.sender with:
       value bounty wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function default_helper() payable {
    if msg.value > 10^15:
        require not stor5
        require not stor2
        balances[address(msg.sender)] += msg.value
    else:
        if not stor2:
            balances[address(msg.sender)] = 0
            call msg.sender with:
               value balances[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0]
            require contract_eth_value
            contract_eth_value -= balances[address(msg.sender)]
            balances[address(msg.sender)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0] * balances[address(msg.sender)] / contract_eth_value
            require ext_call.success
            require ext_call.return_data[0]
}

function _fallback() payable {
    require saleAddress != msg.sender
    if msg.value > 10^15:
        require not stor5
        require not stor2
        balances[address(msg.sender)] += msg.value
    else:
        if not stor2:
            balances[address(msg.sender)] = 0
            call msg.sender with:
               value balances[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0]
            require contract_eth_value
            contract_eth_value -= balances[address(msg.sender)]
            balances[address(msg.sender)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0] * balances[address(msg.sender)] / contract_eth_value
            require ext_call.success
            require ext_call.return_data[0]
}

function auto_withdraw(address arg1) {
    require stor2
    require block.timestamp >= time_bought + 3600
    if not stor2:
        balances[address(arg1)] = 0
        call arg1 with:
           value balances[address(arg1)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0]
        require contract_eth_value
        contract_eth_value -= balances[address(arg1)]
        balances[address(arg1)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor8, ext_call.return_data[0] * balances[address(arg1)] / contract_eth_value / 100
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), (ext_call.return_data[0] * balances[address(arg1)] / contract_eth_value) - (ext_call.return_data[0] * balances[address(arg1)] / contract_eth_value / 100)
        require ext_call.success
        require ext_call.return_data[0]
}



}
