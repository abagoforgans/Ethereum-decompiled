contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function deposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor0 == msg.sender
    stor1 = arg1
}

function withdraw() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
