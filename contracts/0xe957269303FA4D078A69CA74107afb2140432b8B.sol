contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2222]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function _fallback() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EtherReceived(msg.sender, msg.value);
}

function sweep() {
    require eth.balance(this.address) > 0
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sub_6bbe0bab(?) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function sub_486b03c2(?) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg2), address(arg3), arg4
    require ext_call.success
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approveTokenTransfer(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferTokenFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg2), address(arg3), arg4
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sweepToken(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_82b5b8ab(?) {
    require owner == msg.sender
    idx = 0
    while idx < ('cd', 68).length:
        mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[36])
        mem[132] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(cd[36]), cd[((32 * idx) + cd[68] + 36)]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
