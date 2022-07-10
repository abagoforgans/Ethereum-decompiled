contract main {




// =====================  Runtime code  =====================


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

function owner() {
    return owner
}

function fee() {
    return fee
}

function changeFee(uint256 arg1) {
    require msg.sender == owner
    fee = arg1
}

function sub_5ea0afa2(?) {
    require msg.sender == owner
    clientAddress = arg1
}

function changeBeneficiaryAddress(address arg1) {
    require msg.sender == owner
    beneficiaryAddress = arg1
}

function emergencyWithdraw() {
    require msg.sender == owner
    require eth.balance(this.address) > 0
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
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
