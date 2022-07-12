contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sub_10086338;

function sub_10086338(?) {
    require calldata.size - 4 >= 32
    return sub_10086338[arg1]
}

function _fallback() payable {
    revert
}

function sub_c9d6ec50(?) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    if block.timestamp >= arg2:
        if not sub_10086338[arg1]:
            sub_10086338[arg1] = block.number
}

function sub_7182549a(?) {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_edb5d9e9(?) payable {
    require calldata.size - 4 >= 128
    if block.timestamp < arg3:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if not sub_10086338[arg1]:
            sub_10086338[arg1] = 1
        if block.timestamp < arg3:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            if arg2 + sub_10086338[arg1] >= block.number:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                call arg4 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
