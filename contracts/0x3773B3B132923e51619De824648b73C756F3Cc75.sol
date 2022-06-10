contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sub_1479197f;

function sub_1479197f(?) {
    require calldata.size - 4 >= 32
    return sub_1479197f[address(arg1)]
}

function move(address arg1) {
    require calldata.size - 4 >= 32
    sub_1479197f[arg1] = sub_1479197f[msg.sender]
    sub_1479197f[msg.sender] = 0
    emit 0x9fe3b115: msg.sender, arg1
}

function _fallback() payable {
    require msg.value >= 1
    sub_1479197f[msg.sender] += msg.value
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewDonation(msg.sender, msg.value);
}



}
