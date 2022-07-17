contract main {




// =====================  Runtime code  =====================


mapping of uint256 value;

function getValue() {
    return value[address(msg.sender)]
}

function _fallback() payable {
    revert
}

function sub_47d4ad62(?) payable {
    require msg.value > 0
    value[address(msg.sender)] += msg.value
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 != msg.sender
    require value[address(msg.sender)] >= arg1
    value[address(msg.sender)] -= arg1
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
