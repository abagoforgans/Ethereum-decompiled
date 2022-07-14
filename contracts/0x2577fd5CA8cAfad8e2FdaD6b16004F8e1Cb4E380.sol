contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address creatorAddress; offset 8
uint256 sub_1802b9e6;
uint256 sub_61b830b9;
address sub_20cb3ebdAddress;

function creator() {
    return creatorAddress
}

function sub_1802b9e6(?) {
    return sub_1802b9e6
}

function sub_20cb3ebd(?) {
    return sub_20cb3ebdAddress
}

function sub_61b830b9(?) {
    return sub_61b830b9
}

function sub_d08350a4(?) {
    return bool(stor0)
}

function _fallback() {
    revert
}

function sub_4966d7b0(?) payable {
    require calldata.size - 4 >= 32
    require not stor0
    require msg.sender == creatorAddress
    sub_1802b9e6 = arg1
    sub_61b830b9 = msg.value
    stor0 = 1
}

function redeemBond() {
    require msg.sender == creatorAddress
    if block.timestamp < sub_1802b9e6:
        call msg.sender with:
           value sub_61b830b9 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_67e8e41f(?) payable {
    require msg.sender == sub_20cb3ebdAddress
    if block.timestamp >= sub_1802b9e6:
        call msg.sender with:
           value sub_61b830b9 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
