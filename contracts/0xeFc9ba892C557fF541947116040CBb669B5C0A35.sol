contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor6;
uint128 stor7; offset 160

function _fallback() payable {
    stor3 = 50 * 10^18
    stor6 = 0
    stor7 = 0
    require not msg.value
    return code.data[75 len 5445]
}



// =====================  Runtime code  =====================


const creator = 0x5777c72fb022ddf1185d3e2c7bb858862c134080

const min_required_amount = 20 * 10^18


mapping of uint256 balances;
uint8 stor1;
uint8 stor1; offset 8
uint256 stor1; offset 8
uint256 contract_eth_value;
uint256 max_raised_amount;
address saleAddress;
uint256 drain_block;
uint256 picops_block;
uint8 stor7; offset 160
uint128 stor7; offset 160
address picops_userAddress;

function picops_block() {
    return picops_block
}

function balances(address arg1) {
    return balances[arg1]
}

function picops_enabled() {
    return bool(uint8(stor7.field_160))
}

function bought_tokens() {
    return bool(uint8(stor1.field_0))
}

function sale() {
    return saleAddress
}

function picops_user() {
    return picops_userAddress
}

function contract_eth_value() {
    return contract_eth_value
}

function drain_block() {
    return drain_block
}

function max_raised_amount() {
    return max_raised_amount
}

function contract_enabled() {
    return bool(uint8(stor1.field_8))
}

function set_successful_verifier(address arg1) {
    require msg.sender == 0x5777c72fb022ddf1185d3e2c7bb858862c134080
    picops_userAddress = arg1
}

function set_block(uint256 arg1) {
    require msg.sender == 0x5777c72fb022ddf1185d3e2c7bb858862c134080
    require not drain_block
    drain_block = arg1
}

function picops_is_enabled() {
    require msg.sender == 0x5777c72fb022ddf1185d3e2c7bb858862c134080
    Mask(96, 0, stor7.field_160) = Mask(96, 0, not bool(uint8(stor7.field_160)))
}

function set_sale_address(address arg1) {
    require msg.sender == 0x5777c72fb022ddf1185d3e2c7bb858862c134080
    require not saleAddress
    require not uint8(stor1.field_0)
    saleAddress = arg1
}

function refund_me() {
    require not uint8(stor1.field_0)
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function enable_deposits(bool arg1) {
    require msg.sender == 0x5777c72fb022ddf1185d3e2c7bb858862c134080
    require saleAddress
    require drain_block
    require uint8(stor7.field_160)
    Mask(248, 0, stor1.field_8) = Mask(248, 0, arg1)
}

function picops_identity(address arg1, uint256 arg2) {
    require msg.sender == picops_userAddress
    require not uint8(stor7.field_160)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function picops_withdraw_excess() {
    require not saleAddress
    require msg.sender == picops_userAddress
    require not uint8(stor7.field_160)
    picops_block = 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy_the_tokens() {
    require eth.balance(this.address) > 20 * 10^18
    require not uint8(stor1.field_0)
    uint8(stor1.field_0) = 1
    contract_eth_value = eth.balance(this.address)
    call saleAddress with:
       value contract_eth_value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor1.field_0)
    if uint8(stor1.field_8):
        require eth.balance(this.address) < max_raised_amount
        balances[address(msg.sender)] += msg.value
    else:
        require block.number >= picops_block + 120
        picops_userAddress = msg.sender
        picops_block = block.number
}

function pool_drain(address arg1) {
    require msg.sender == 0x5777c72fb022ddf1185d3e2c7bb858862c134080
    require uint8(stor1.field_0)
    require block.number >= drain_block
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function perform_withdraw(address arg1) {
    require uint8(stor1.field_0)
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
        args msg.sender, (balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value) - (2 * balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value / 100)
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x5777c72fb022ddf1185d3e2c7bb858862c134080, balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value / 100
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args picops_userAddress, balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value / 100
    require ext_call.success
    require ext_call.return_data[0]
}



}
