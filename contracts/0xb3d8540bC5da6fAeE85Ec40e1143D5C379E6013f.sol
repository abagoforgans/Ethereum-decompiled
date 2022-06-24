contract main {




// =====================  Runtime code  =====================


address stor0;
address stor2;
uint256 decimals;
mapping of uint8 stor4;

function decimals() {
    return decimals
}

function addExecutor(address arg1) {
    require msg.sender == stor2
    stor4[address(arg1)] = 1
}

function sub_00860eae(?) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Airdrop(arg2, arg1);
}

function _fallback() payable {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 4000
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 4000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Airdrop(4000, msg.sender);
}

function multipleAirdrop(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require bool(stor4[address(msg.sender)]) == 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _23 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _25 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require ext_code.size(stor0)
        call stor0.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _25
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _25
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _25
        emit Airdrop(_25, address(_23));
        idx = idx + 1
        continue 
    return arg1.length
}



}
