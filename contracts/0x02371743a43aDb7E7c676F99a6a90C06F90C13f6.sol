contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function kill() {
    if stor0 != msg.sender:
    if eth.balance(this.address):
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function used() {
    return not not stor1
}

function pay() {
    if stor1:
        if msg.sender == stor0:
            call stor1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 0
}

function sub_325c2144(?) {
    if stor1:
        if msg.sender == stor0:
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 0
}

function send(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1:
        stor1 = arg1
        stor2 = msg.sender
    else:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
