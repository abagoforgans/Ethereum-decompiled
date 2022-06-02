contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function makeWish(string arg1) payable {
    emit 0xd4783d8b: Array(len=arg1.length, data=arg1[all]), msg.value, msg.sender
}

function changeOwner(address arg1) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    stor0 = arg1
}

function withdrawAll() {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
