contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x96a65609a7b84e8842732deb08f56c3e21ac6f8a
    require not msg.value
    stor1 = msg.sender
    return code.data[182 len 1330]
}



// =====================  Runtime code  =====================


const token_price = 1481481481481481

const min_value = 10^17


address contract_address;
address owner;
uint256 tokens_total;

function owner() {
    return owner
}

function contract_address() {
    return contract_address
}

function tokens_total() {
    return tokens_total
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return 1
}

function _fallback() payable {
    require msg.value >= 10^17
    tokens_total = 10^18 * msg.value / 1481481481481481
    require tokens_total > 0
    call contract_address with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args msg.sender, tokens_total
    require ext_call.success
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
