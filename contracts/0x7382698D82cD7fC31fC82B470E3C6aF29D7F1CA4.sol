contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor1 = 0x5673a779d66d008053a846b29ab6a506567fba90
    stor2 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    require not msg.value
    return code.data[128 len 600]
}



// =====================  Runtime code  =====================


address stor1;
address stor2;

function _fallback() payable {
    revert
}

function payMe() payable {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_ebc0b4dd(?) {
    s = 0
    idx = 0
    s = 0
    s = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[416] = 0
        require ext_code.size(stor2)
        call stor2.getKitty(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args cd[((32 * idx) + cd[4] + 36)]
        mem[96 len 320] = ext_call.return_data[0 len 320]
        require ext_call.success
        if ext_call.return_data[0]:
            if ext_call.return_data[32]:
                mem[128] = 0
                mem[100] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor2)
                call stor2.0x88c2a0bf with:
                     gas gas_remaining - 710 wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[96] = ext_call.return_data[0]
                require ext_call.success
        s = cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        s = ext_call.return_data[96]
        continue 
}



}
