contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function sub_2a5d2b90(?) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    emit 0xd220f928: msg.value, block.timestamp, msg.sender
}

function send(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == stor0
    require not stor1[arg3]
    require eth.balance(this.address) >= arg2
    stor1[arg3] = 1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa0d6cbbd: address(arg1), arg2, block.timestamp, arg3
}



}
