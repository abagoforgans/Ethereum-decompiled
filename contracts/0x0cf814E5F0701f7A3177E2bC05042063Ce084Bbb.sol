contract main {


// =======================  Init code  ======================


uint8 stor1;
uint256 stor3;
uint256 stor4;
uint8 stor8;

function _fallback() payable {
    stor1 = 0
    stor3 = 200 * 10^18
    stor4 = 0xe1ccf0005757f598f4ff97410bc0d3ff7248f92b17ed522a0f649dbde89dfc02
    stor8 = 0
    require not msg.value
    return code.data[142 len 4606]
}



// =====================  Runtime code  =====================


const creator = 0xee06bddaffa56a303718de53a5bc347efbe4c68f

const min_amount = 20 * 10^18


mapping of uint256 balances;
uint8 stor1;
uint256 contract_eth_value;
uint256 max_amount;
uint256 stor4;
address saleAddress;
address tokenAddress;
uint256 buy_block;
uint8 emergency_used;

function max_amount() {
    return max_amount
}

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(stor1)
}

function sale() {
    return saleAddress
}

function emergency_used() {
    return bool(emergency_used)
}

function buy_block() {
    return buy_block
}

function contract_eth_value() {
    return contract_eth_value
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    require not stor1
    require eth.balance(this.address) <= max_amount
    balances[address(msg.sender)] += msg.value
}

function refund_me() {
    require not stor1
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function emergy_withdraw(address arg1) {
    require block.number >= buy_block + 43953
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    emergency_used = 1
    balances[address(msg.sender)] = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function set_token_address(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    if 0xee06bddaffa56a303718de53a5bc347efbe4c68f != msg.sender:
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        require stor4 == sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
    tokenAddress = arg1
}

function set_sale_address(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    if 0xee06bddaffa56a303718de53a5bc347efbe4c68f != msg.sender:
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        require stor4 == sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
    require not saleAddress
    require not stor1
    saleAddress = arg1
}

function buy_the_tokens(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require eth.balance(this.address) >= 20 * 10^18
    require not stor1
    require saleAddress
    if 0xee06bddaffa56a303718de53a5bc347efbe4c68f != msg.sender:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        require stor4 == sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    buy_block = block.number
    stor1 = 1
    contract_eth_value = eth.balance(this.address)
    call saleAddress with:
       value contract_eth_value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw() {
    require stor1
    require not emergency_used
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
        args 0xee06bddaffa56a303718de53a5bc347efbe4c68f, balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value / 100
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value) - (balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value / 100)
    require ext_call.success
    require ext_call.return_data[0]
}



}
