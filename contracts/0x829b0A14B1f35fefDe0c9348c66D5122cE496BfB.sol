contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    require not msg.value
    stor1 = msg.sender
    return code.data[95 len 609]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function claimAll() {
    require stor1 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_63a3fec3(?) {
    mem[96 len 320] = call.data[4 len 320]
    idx = 0
    while idx < call.data[4]:
        require idx < 10
        _16 = mem[(32 * idx) + 96]
        mem[448] = 0
        mem[420] = _16
        require ext_code.size(stor0)
        call stor0.isPregnant(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _16
        mem[416] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            require idx < 10
            _22 = mem[(32 * idx) + 96]
            mem[448] = 0
            mem[420] = _22
            require ext_code.size(stor0)
            call stor0.0x88c2a0bf with:
                 gas gas_remaining - 710 wei
                args _22
            mem[416] = ext_call.return_data[0]
            require ext_call.success
        idx = idx + 1
        continue 
}



}
