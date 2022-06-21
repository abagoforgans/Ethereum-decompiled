contract main {




// =====================  Runtime code  =====================


address stor1;
mapping of uint256 sub_fc8b9c06;

function sub_fc8b9c06(?) {
    return sub_fc8b9c06[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_3604610a(?) payable {
    sub_fc8b9c06[msg.sender] += msg.value
}

function sub_e4a2d6fc(?) {
    if sub_fc8b9c06[msg.sender] > eth.balance(this.address):
        revert with 0, 'Not enough funds in contract.'
    call msg.sender with:
       value sub_fc8b9c06[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return sub_fc8b9c06[msg.sender]
}

function sub_569a6c8d(?) {
    if arg1 > eth.balance(this.address):
        revert with 0, 'Not enough funds in contract.'
    if arg1 > sub_fc8b9c06[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Refund amount exceeds credit balance.'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bbda69c2(?) {
    if stor1 != msg.sender:
        if arg1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must own Mokens contract, or refund own credit.'
    if sub_fc8b9c06[address(arg1)] > eth.balance(this.address):
        revert with 0, 'Not enough funds in contract.'
    call arg1 with:
       value sub_fc8b9c06[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return sub_fc8b9c06[address(arg1)]
}

function sub_01776c6c(?) {
    if stor1 != msg.sender:
        if arg1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must own Mokens contract, or refund own credit.'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Not enough funds in contract.'
    if arg2 > sub_fc8b9c06[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Refund amount exceeds credit balance.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
