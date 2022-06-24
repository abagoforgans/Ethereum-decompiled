contract main {




// =====================  Runtime code  =====================


const PRIME = 65537


uint256 sub_1321a813;

function sub_1321a813(?) {
    return sub_1321a813
}

function _fallback() payable {
    revert
}

function sub_cc97aaf9(?) {
    require calldata.size - 4 >= 32
    require sha3(msg.sender) == sub_1321a813
    require not sha3(msg.sender, arg1) % 65537
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
