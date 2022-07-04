contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;

function _fallback() payable {
    mem[64] = 96
    var4001 = var4001 + 1
    continue 
}

function send(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(address(arg1), arg2);
}



}
