contract main {




// =====================  Runtime code  =====================


uint256 minimum;
uint256 fee;
address owner;
address beneficiaryAddress;
address clientAddress;

function client() {
    return clientAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function minimum() {
    return minimum
}

function owner() {
    return owner
}

function fee() {
    return fee
}

function balance() {
    require msg.sender == owner
    return eth.balance(this.address)
}

function sub_ee2ebf63(?) {
    require msg.sender == owner
    minimum = arg1
    fee = arg2
    beneficiaryAddress = arg3
    clientAddress = arg4
    return 1
}

function withdraw() {
    require msg.sender == owner
    require eth.balance(this.address) > 0
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function _fallback() payable {
    if eth.balance(this.address) >= minimum:
        call beneficiaryAddress with:
           value eth.balance(this.address) * fee / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call clientAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
