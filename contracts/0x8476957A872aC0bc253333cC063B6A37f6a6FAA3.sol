contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
address stor6;

function _fallback() payable {
    stor2 = 0
    stor3 = 0x9f280e9af8b2203790b80a28449e312091a38cd80f67c9a7ad5a5ce1a8317f49
    stor6 = 0
    require not msg.value
    return code.data[147 len 3244]
}



// =====================  Runtime code  =====================


const min_required_amount = 35 * 10^18


mapping of uint256 balances;
mapping of uint8 stor1;
uint256 votes;
uint256 stor3;
uint8 stor4;
uint256 contract_eth_value;
address saleAddress;

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(stor4)
}

function sale() {
    return saleAddress
}

function voters(address arg1) {
    return bool(stor1[arg1])
}

function contract_eth_value() {
    return contract_eth_value
}

function votes() {
    return votes
}

function _fallback() payable {
    require not stor4
    balances[address(msg.sender)] += msg.value
}

function default_helper() payable {
    require not stor4
    balances[address(msg.sender)] += msg.value
}

function refund_me() {
    require not stor4
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function change_sale_address(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require not stor4
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    require stor3 == sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
    votes = 0
    saleAddress = arg1
}

function vote_proposed_address(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require not stor4
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require stor3 == sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require not stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 1
    votes++
}

function perform_withdraw(address arg1) {
    require stor4
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require contract_eth_value
    contract_eth_value -= balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value
    require ext_call.success
    require ext_call.return_data[0]
}

function buy_the_tokens(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if not stor4:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        require stor3 == sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
        require votes >= 3
        require eth.balance(this.address) >= 35 * 10^18
        require saleAddress
        stor4 = 1
        contract_eth_value = eth.balance(this.address)
        call saleAddress with:
           value contract_eth_value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
