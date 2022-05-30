contract main {




// =====================  Runtime code  =====================


address owner;
address destAddress;

function dest() {
    return destAddress
}

function owner() {
    return owner
}

function sd() {
    require msg.sender == owner
    selfdestruct(destAddress)
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
