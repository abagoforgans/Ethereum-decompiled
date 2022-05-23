contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address sub_6ad87c95Address;

function sub_6ad87c95(?) {
    return sub_6ad87c95Address
}

function _fallback() payable {
    revert
}

function owner() {
    require ext_code.size(stor0)
    call stor0.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function isValidOwner(address arg1) {
    require ext_code.size(stor0)
    call stor0.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[12 len 20]:
        if bool(stor1[address(arg1)]) != 1:
            return 0
    return 1
}

function airdrop(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(stor0)
    call stor0.0x8da5cb5b with:
         gas gas_remaining wei
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _30 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _30
            require ext_code.size(sub_6ad87c95Address)
            call sub_6ad87c95Address.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _30
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        require bool(stor1[address(msg.sender)]) == 1
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _33 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _33
            require ext_code.size(sub_6ad87c95Address)
            call sub_6ad87c95Address.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _33
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
}



}
