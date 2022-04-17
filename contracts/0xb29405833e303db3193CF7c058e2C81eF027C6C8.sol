contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = 3000 * 10^18
    require not msg.value
    stor4 = 4405455
    return code.data[53 len 2393]
}



// =====================  Runtime code  =====================


const min_required_amount = 100 * 10^18

const sale = 0x8c39ff53c6c3d5307dcf05ade5ea5d332526dde4


mapping of uint256 balances;
uint8 stor1;
uint8 stor1; offset 8
uint256 stor1; offset 8
uint256 contract_eth_value;
uint256 max_raised_amount;
uint256 min_refund_block;

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(uint8(stor1.field_0))
}

function contract_eth_value() {
    return contract_eth_value
}

function min_refund_block() {
    return min_refund_block
}

function max_raised_amount() {
    return max_raised_amount
}

function contract_enabled() {
    return bool(uint8(stor1.field_8))
}

function enable_sale() {
    if msg.sender == 0xc68bb418ee2b566e4a3786f0fa838aea85ae1186:
        Mask(248, 0, stor1.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor1.field_0)
    require uint8(stor1.field_8)
    require eth.balance(this.address) < max_raised_amount
    balances[address(msg.sender)] += msg.value
}

function default_helper() payable {
    require not uint8(stor1.field_0)
    require uint8(stor1.field_8)
    require eth.balance(this.address) < max_raised_amount
    balances[address(msg.sender)] += msg.value
}

function refund_me() {
    if uint8(stor1.field_0):
        require block.number >= min_refund_block
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy_the_tokens() {
    if msg.sender == 0xc68bb418ee2b566e4a3786f0fa838aea85ae1186:
        if not uint8(stor1.field_0):
            require eth.balance(this.address) >= 100 * 10^18
            uint8(stor1.field_0) = 1
            contract_eth_value = eth.balance(this.address)
            call 0x8c39ff53c6c3d5307dcf05ade5ea5d332526dde4 with:
               value contract_eth_value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
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
        args msg.sender, balances[address(msg.sender)] * ext_call.return_data[0] / contract_eth_value
    require ext_call.success
    require ext_call.return_data[0]
}



}
