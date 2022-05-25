contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address treasurerAddress;

function owner() {
    return owner
}

function isLocked() {
    return bool(uint8(stor0.field_160))
}

function treasurer() {
    return treasurerAddress
}

function _fallback() payable {
    revert
}

function setTreasurer(address arg1) {
    require msg.sender == owner
    treasurerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require msg.sender == treasurerAddress
    require arg3 > 0
    require not uint8(stor0.field_160)
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdrawal(address(arg1), address(arg2), arg3);
}

function migrate(address arg1, address[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _17 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg2.length) + 132] = arg1
        mem[(32 * arg2.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_17))
        call address(_17).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
