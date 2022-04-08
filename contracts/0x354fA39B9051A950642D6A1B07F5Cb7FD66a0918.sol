contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1410]




// =====================  Runtime code  =====================


const sub_c52d404b(?) = 0x1776e1f26f98b1a5df9cd347953a26dd3cb466


address owner;
address buyerAddress;
uint256 price;
uint256 sub_08560ace;

function sub_08560ace(?) {
    return sub_08560ace
}

function buyer() {
    return buyerAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function _fallback() payable {
    revert
}

function init(uint256 arg1, uint256 arg2) {
    owner = msg.sender
    price = arg1
    sub_08560ace = arg2
}

function addBuyer(address arg1) {
    require owner == msg.sender
    buyerAddress = arg1
    emit 0x5a5c7f15: arg1
}

function kill() {
    require owner == msg.sender
    require ext_code.size(0x1776e1f26f98b1a5df9cd347953a26dd3cb466)
    call 0x001776e1f26f98b1a5df9cd347953a26dd3cb466.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(0x1776e1f26f98b1a5df9cd347953a26dd3cb466)
    call 0x001776e1f26f98b1a5df9cd347953a26dd3cb466.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function buy() payable {
    if buyerAddress != msg.sender:
        require msg.value == price
    require ext_code.size(0x1776e1f26f98b1a5df9cd347953a26dd3cb466)
    call 0x001776e1f26f98b1a5df9cd347953a26dd3cb466.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= sub_08560ace
    require ext_code.size(0x1776e1f26f98b1a5df9cd347953a26dd3cb466)
    call 0x001776e1f26f98b1a5df9cd347953a26dd3cb466.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(this.address), buyerAddress, ext_call.return_data[0]
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
