contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2435 len 20]
    return code.data[191 len 2232]
}



// =====================  Runtime code  =====================


address controllerAddress;
address mspAddress;
mapping of uint8 stor2;

function msp() {
    return mspAddress
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function claimTokens(address arg1) {
    require msg.sender == controllerAddress
    if not arg1:
        call controllerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args controllerAddress, ext_call.return_data[0]
    require ext_call.success
    emit ClaimedTokens(ext_call.return_data[0], arg1, controllerAddress);
}

function spread(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == controllerAddress
    require arg1.length == arg2.length
    s = 0
    t = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if stor2[mem[(32 * idx) + 140 len 20]]:
            s = s
            t = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        require idx < arg2.length
        _22 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _22
        require ext_code.size(mspAddress)
        call mspAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _22
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        mem[0] = address(_19)
        mem[32] = 2
        stor2[address(_19)] = 1
        s = _22
        t = _19
        idx = idx + 1
        continue 
}



}
