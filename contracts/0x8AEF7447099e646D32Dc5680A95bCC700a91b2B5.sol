contract main {




// =====================  Runtime code  =====================


address owner;
address sub_02663135Address;
address cashierAddress;
address stor3;
address stor4;
address stor5;

function sub_02663135(?) {
    return sub_02663135Address
}

function owner() {
    return owner
}

function cashier() {
    return cashierAddress
}

function sub_572e7d31(?) {
    require msg.sender == owner
    stor3 = arg1
}

function sub_da5fcafb(?) {
    require msg.sender == owner
    stor4 = arg1
    stor5 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_65052ec8(?) {
    require msg.sender == cashierAddress
    if arg1:
        cashierAddress = arg1
}

function getFunding(uint256 arg1) {
    require msg.sender == cashierAddress
    call cashierAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAllFunding() {
    require msg.sender == sub_02663135Address
    call sub_02663135Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if stor4 != msg.sender:
        if owner != msg.sender:
            call stor3 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_569e8ce0(?) {
    require ext_code.size(stor5)
    call stor5.0xa6b10dd1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require 5 * eth.balance(this.address) / ext_call.return_data[0]
    return (10^18 / 5 * eth.balance(this.address) / ext_call.return_data[0])
}



}
