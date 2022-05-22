contract main {




// =====================  Runtime code  =====================


address owner;
address purchase_address;
uint256 gas;

function gas() {
    return gas
}

function owner() {
    return owner
}

function purchase_address() {
    return purchase_address
}

function set_transfer_gas(uint256 arg1) {
    require msg.sender == owner
    gas = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function _fallback() payable {
    call purchase_address with:
       value msg.value wei
         gas gas wei
    require ext_call.success
}

function emergency_withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas wei
    require ext_call.success
}

function approve_unwanted_tokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
