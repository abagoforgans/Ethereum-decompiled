contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    emit Admined(stor0);
    stor1 = code.data[1605 len 20]
    return code.data[320 len 1273]
}



// =====================  Runtime code  =====================


address adminAddress;
address eRC20TokenAddress;

function ERC20Token() {
    return eRC20TokenAddress
}

function admin() {
    return adminAddress
}

function _fallback() {
    revert
}

function transferAdminship(address arg1) {
    require msg.sender == adminAddress
    require arg1
    adminAddress = arg1
    emit TransferAdminship(adminAddress);
}

function batch(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == adminAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_9)
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_9), arg2
        require ext_call.success
        idx = idx + 1
        continue 
}



}
