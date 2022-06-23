contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;

function isComplete() {
    return bool(uint8(stor3.field_160))
}

function _fallback() payable {
    if uint8(stor3.field_160):
        revert with 0, 'This dump has completed!'
    emit ReceivedFunds(msg.value, msg.sender);
}

function complete() {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner may edit this contract'
    if uint8(stor3.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This dump has already raised the required ether.'
    call stor1 with:
       value eth.balance(this.address) - (eth.balance(this.address) / 10) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(stor3.field_0) with:
       value eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    Mask(96, 0, stor3.field_160) = 1
    emit 0xd75eac15: (eth.balance(this.address) - (eth.balance(this.address) / 10)), stor1
    emit 0xeb6a405d: (eth.balance(this.address) / 10), address(stor3.field_0)
}



}
