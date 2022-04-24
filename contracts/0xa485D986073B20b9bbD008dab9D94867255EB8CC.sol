contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    return code.data[91 len 876]
}



// =====================  Runtime code  =====================


address owner;
address sub_15b81f94Address;

function sub_15b81f94(?) {
    return sub_15b81f94Address
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function w() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_6df586b2(?) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
}

function sub_8872ab4a(?) {
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < ('cd', 4).length:
        mem[416] = 0
        require ext_code.size(sub_15b81f94Address)
        call sub_15b81f94Address.getKitty(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args cd[((32 * uint8(idx)) + cd[4] + 36)]
        mem[96 len 320] = ext_call.return_data[0 len 320]
        require ext_call.success
        if not ext_call.return_data[0]:
            if uint8(s) <= 15:
                idx = idx + 1
                s = s
                t = ext_call.return_data[0]
                continue 
        else:
            require uint8(idx) < ('cd', 4).length
            mem[128] = 0
            mem[100] = cd[((32 * uint8(idx)) + cd[4] + 36)]
            require ext_code.size(sub_15b81f94Address)
            call sub_15b81f94Address.giveBirth(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args cd[((32 * uint8(idx)) + cd[4] + 36)]
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if uint8(s + 1) <= 15:
                idx = idx + 1
                s = s + 1
                t = ext_call.return_data[0]
                continue 
}



}
