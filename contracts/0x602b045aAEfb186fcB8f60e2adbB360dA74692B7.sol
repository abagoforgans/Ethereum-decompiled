contract main {




// =====================  Runtime code  =====================


address addressA;
address addressB;
uint256 stor2;

function addressB() {
    return addressB
}

function addressA() {
    return addressA
}

function _fallback() payable {
    if not stor2:
        require 0 <= msg.value
        call addressA with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call addressB with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require stor2
        require stor2 * msg.value / stor2 == msg.value
        require stor2 * msg.value / 100 <= msg.value
        call addressA with:
           value stor2 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call addressB with:
           value msg.value - (stor2 * msg.value / 100) wei
             gas 2300 * is_zero(value) wei
}



}
