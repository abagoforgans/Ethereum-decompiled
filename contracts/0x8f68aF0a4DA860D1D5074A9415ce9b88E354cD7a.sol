contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


function _fallback() payable {
    revert
}

function send(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(address(arg1), arg2);
}



}
