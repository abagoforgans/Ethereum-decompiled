contract main {




// =====================  Runtime code  =====================


address owner;
uint256 threshold;

function threshold() {
    return threshold
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_3989650f(?) {
    return eth.balance(arg1)
}

function changeThreshold(uint256 arg1) {
    require msg.sender == owner
    threshold = arg1
}

function sub_f68b6704(?) payable {
    require msg.sender == owner
    require eth.balance(arg1) <= threshold
    call address(arg1) with:
       value msg.value wei
         gas gas_remaining wei
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2be93952(?) payable {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
