contract main {




// =====================  Runtime code  =====================


address owner;
uint8 decimals; offset 160
address stor1;
array of uint256 name;
address tokenAddress;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function sub_cb32b9d2(?) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TransferredToken(ext_call.return_data[0], owner);
    emit 0x4fb03f19: this.address
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function balanceOf() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8f163b39(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        require address(cd[((32 * idx) + cd[4] + 36)])
        mem[100] = this.address
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[36]:
            mem[96] = cd[36]
            emit FailedTransfer(cd[36], address(cd[((32 * idx) + cd[4] + 36)]));
        else:
            mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[132] = cd[36]
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = cd[36]
            emit TransferredToken(cd[36], address(cd[((32 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
}

function sub_74544942(?) {
    require msg.sender == owner
    require ('cd', 4).length == ('cd', 36).length
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require address(cd[((32 * idx) + cd[4] + 36)])
        mem[100] = this.address
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[((32 * idx) + cd[36] + 36)]:
            mem[96] = cd[((32 * idx) + cd[36] + 36)]
            emit FailedTransfer(cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[4] + 36)]));
        else:
            mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[132] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = cd[((32 * idx) + cd[36] + 36)]
            emit TransferredToken(cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
}



}
