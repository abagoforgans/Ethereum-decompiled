contract main {




// =====================  Runtime code  =====================


#
#  - sub_3fa1221e(?)
#  - sub_46d30c3e(?)
#  - sub_65e2397f(?)
#  - getUserByAddress(address arg1)
#  - getUserByUsername(string arg1)
#  - sub_ee7fb209(?)
#
mapping of struct stor5;
uint256 sub_c675e061;
address managerAddress;

function manager() {
    return managerAddress
}

function sub_c675e061(?) {
    return sub_c675e061
}

function _fallback() payable {
    revert
}

function withdrawAmount(uint256 arg1) {
    require msg.sender == managerAddress
    call managerAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    require msg.sender == managerAddress
    call managerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function contribute(uint256 arg1) payable {
    require msg.value >= 10^14
    require stor5[arg1].field_1536
    if stor5[arg1].field_2048 >= stor5[arg1].field_1792:
        stor5[arg1].field_2304 = 0
        return 0
    stor5[arg1].field_2048 = msg.value
    return 1
}

function sub_6371d5e4(?) {
    require msg.sender == stor5[arg1].field_0
    require stor5[arg1].field_1536
    if stor5[arg1].field_2048 >= stor5[arg1].field_1792:
        call stor5[arg1].field_0 with:
           value stor5[arg1].field_1792 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
