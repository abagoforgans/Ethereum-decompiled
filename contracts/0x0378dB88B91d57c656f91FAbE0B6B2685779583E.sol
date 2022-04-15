contract main {


// =======================  Init code  ======================


uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;

function _fallback() {
    stor10 = msg.sender
    stor14 = code.data[2773 len 20]
    stor13 = code.data[2805 len 20]
    stor8 = code.data[2825 len 32]
    stor9 = code.data[2857 len 32]
    stor6 = code.data[2889 len 32]
    stor11 = code.data[2933 len 20]
    stor12 = code.data[2965 len 20]
    stor7 = code.data[2985 len 32]
    return code.data[220 len 2541]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
uint256 bounty;
uint8 stor2;
uint256 time_bought;
uint256 contract_eth_value;
uint8 stor5;
uint256 sub_a1216dba;
uint256 min_required_amount;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
address saleAddress;
address tokenAddress;

function balances(address arg1) {
    return balances[arg1]
}

function min_required_amount() {
    return min_required_amount
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

function sub_a1216dba(?) {
    return sub_a1216dba
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

function convert(uint256 arg1) {
    return arg1
}

function add_to_bounty() payable {
    if stor10 != msg.sender:
        require stor11 == msg.sender
    require not stor5
    require not stor2
    bounty += msg.value
}

function claim_bounty() {
    if not stor2:
        if block.number >= stor9:
            if not stor5:
                stor2 = 1
                time_bought = block.timestamp
                bounty = 0
                contract_eth_value = eth.balance(this.address) - bounty
                require eth.balance(this.address) - bounty
                call saleAddress with:
                   value contract_eth_value wei
                     gas gas_remaining - 34710 wei
                require ext_call.success
                if bounty:
                    call msg.sender with:
                       value bounty wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function activate_kill_switch(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require not stor5
    if stor10 != msg.sender:
        if stor11 != msg.sender:
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == stor8
    stor5 = 1
    if not stor2:
        if bounty:
            bounty = 0
            call msg.sender with:
               value bounty wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function _fallback() payable {
    require saleAddress != msg.sender
    if msg.value > 10^15:
        require not stor5
        require not stor2
        balances[address(msg.sender)] += msg.value
    else:
        require balances[address(msg.sender)] > 0
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
    require block.timestamp >= time_bought + (60 * sub_a1216dba)
    require balances[address(arg1)] > 0
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
        if ext_call.return_data[0] * balances[address(arg1)] / contract_eth_value / 50 / 2 <= 0:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), ext_call.return_data[0] * balances[address(arg1)] / contract_eth_value
        else:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor10, ext_call.return_data[0] * balances[address(arg1)] / contract_eth_value / 50 / 2
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor11, ext_call.return_data[0] * balances[address(arg1)] / contract_eth_value / 50 / 2
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (ext_call.return_data[0] * balances[address(arg1)] / contract_eth_value) - (ext_call.return_data[0] * balances[address(arg1)] / contract_eth_value / 50)
        require ext_call.success
        require ext_call.return_data[0]
}



}
