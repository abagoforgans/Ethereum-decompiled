contract main {




// =====================  Runtime code  =====================


const sub_7a215a22(?) = eth.balance(this.address)


address stor0;
mapping of uint256 sub_ef751ba7;

function sub_ef751ba7(?) {
    return sub_ef751ba7[arg1][arg2][arg3]
}

function _fallback() payable {
    revert
}

function sub_e96fa057(?) payable {
    require msg.value > 10^16
    require msg.value < 100 * 10^18
    sub_ef751ba7[arg2][msg.sender][arg1 << 248] += msg.value
    emit 0x89183a1f: arg2, msg.sender, arg1 << 248, msg.value
}

function sub_418cd3e7(?) {
    require msg.sender == stor0
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_169b1c1c(?) {
    require msg.sender == stor0
    require sub_ef751ba7[arg1][address(arg3)][arg2 << 248] > 0
    if arg4 <= 0:
        call arg3 with:
           value (99 * sub_ef751ba7[arg1][address(arg3)][1]) + (99 * sub_ef751ba7[arg1][address(arg3)][0]) + (99 * sub_ef751ba7[arg1][address(arg3)][2]) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_ef751ba7[arg1][address(arg3)][0] = 0
        sub_ef751ba7[arg1][address(arg3)][1] = 0
        sub_ef751ba7[arg1][address(arg3)][2] = 0
        emit 0x792d7e87: arg1, address(arg3), (99 * sub_ef751ba7[arg1][address(arg3)][1]) + (99 * sub_ef751ba7[arg1][address(arg3)][0]) + (99 * sub_ef751ba7[arg1][address(arg3)][2]) / 100
    else:
        require 100 * arg4
        call arg3 with:
           value (99 * sub_ef751ba7[arg1][address(arg3)][arg2 << 248] / 100) + (99 * arg5 * sub_ef751ba7[arg1][address(arg3)][arg2 << 248] / 100 * arg4) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_ef751ba7[arg1][address(arg3)][0] = 0
        sub_ef751ba7[arg1][address(arg3)][1] = 0
        sub_ef751ba7[arg1][address(arg3)][2] = 0
        emit 0x792d7e87: arg1, address(arg3), (99 * sub_ef751ba7[arg1][address(arg3)][arg2 << 248] / 100) + (99 * arg5 * sub_ef751ba7[arg1][address(arg3)][arg2 << 248] / 100 * arg4)
}



}
