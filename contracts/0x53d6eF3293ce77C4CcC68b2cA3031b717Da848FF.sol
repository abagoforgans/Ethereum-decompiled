contract main {




// =====================  Runtime code  =====================


uint256 version;
address primaryAddress;
uint256 stor2;
mapping of address sub_151f3734;
mapping of address sub_cf050395;
mapping of uint8 stor5;

function sub_151f3734(?) {
    require arg1
    return sub_151f3734[address(arg1)]
}

function version() {
    return version
}

function primary() {
    return primaryAddress
}

function sub_cf050395(?) {
    require arg1
    return sub_cf050395[address(arg1)]
}

function sub_cf0a7b4d(?) {
    return sub_cf050395[arg1]
}

function sub_e2601a57(?) {
    return sub_151f3734[arg1]
}

function _fallback() payable {
    revert
}

function transferPrimary(address arg1) {
    require msg.sender == primaryAddress
    require arg1
    primaryAddress = arg1
    emit PrimaryTransferred(arg1);
}

function sub_ff740c1d(?) {
    if stor5[address(arg1)][address(arg2)]:
        return bool(stor5[address(arg1)][address(arg2)])
    return bool(stor5[address(arg2)][address(arg1)])
}

function sub_a0736912(?) {
    require msg.sender == primaryAddress
    require arg1
    require arg2
    require not sub_151f3734[address(arg1)]
    require arg2 != arg1
    require not stor5[address(arg1)][address(arg2)]
    require not stor5[address(arg2)][address(arg1)]
    sub_151f3734[address(arg1)] = arg2
    sub_cf050395[address(arg2)] = arg1
    stor5[address(arg1)][address(arg2)] = 1
}

function approve(address arg1, address arg2, uint256 arg3) {
    require msg.sender == primaryAddress
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function exchange(address arg1, uint256 arg2) {
    stor2++
    require arg2 > 0
    require arg1
    require sub_cf050395[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_cf050395[address(arg1)])
    call sub_cf050395[address(arg1)].0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Exchange(arg2, arg1, sub_cf050395[address(arg1)], msg.sender);
    require stor2 + 1 == stor2
}



}
