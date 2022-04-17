contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[698 len 20]
    stor1 = msg.sender
    return code.data[100 len 586]
}



// =====================  Runtime code  =====================


address icoAddress;
address owner;

function ico() {
    return icoAddress
}

function owner() {
    return owner
}

function resetManager() {
    require owner == msg.sender
    require ext_code.size(icoAddress)
    call icoAddress.setNewManager(address rg1) with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function sub_2da91fa2(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x7dfbdf6d00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_9)
        require ext_code.size(icoAddress)
        call icoAddress.returnFundsFor(address rg1) with:
             gas gas_remaining - 710 wei
            args address(_9)
        require ext_call.success
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if uint32(call.func_hash) == unknown_0x2da91fa2(?????):
        require not msg.value
        mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _15 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = 0x7dfbdf6d00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = address(_15)
            require ext_code.size(icoAddress)
            call icoAddress.returnFundsFor(address rg1) with:
                 gas gas_remaining - 710 wei
                args address(_15)
            require ext_call.success
            idx = idx + 1
            continue 
    else:
        if unknown_0x5d452201(?????) == uint32(call.func_hash):
            require not msg.value
            return icoAddress
        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash):
            require not msg.value
            return owner
        require unknown_0xa432578e(?????) == uint32(call.func_hash)
        require not msg.value
        require owner == msg.sender
        require ext_code.size(icoAddress)
        call icoAddress.setNewManager(address rg1) with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
}



}
