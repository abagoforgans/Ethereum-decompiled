contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor1 = stor0
    require not msg.value
    return code.data[212 len 1320]
}



// =====================  Runtime code  =====================


address stor1;
array of struct sub_de00683a;

function sub_de00683a(?) {
    require arg2 < sub_de00683a[arg1].field_0
    return sub_de00683a[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function sub_6f549dbf(?) {
    require ext_code.size(stor1)
    call stor1.isPregnant(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_3f425cd3(?) {
    if not sub_de00683a[arg1].field_0:
        mem[(32 * sub_de00683a[arg1].field_0) + 160] = 32
        mem[(32 * sub_de00683a[arg1].field_0) + 192] = sub_de00683a[arg1].field_0
        mem[(32 * sub_de00683a[arg1].field_0) + 224 len floor32(sub_de00683a[arg1].field_0)] = mem[160 len floor32(sub_de00683a[arg1].field_0)]
        return memory
          from (32 * sub_de00683a[arg1].field_0) + 160
           len (96 * sub_de00683a[arg1].field_0) + 64
    mem[160] = sub_de00683a[arg1].field_0
    idx = 160
    s = 0
    while (32 * sub_de00683a[arg1].field_0) + 128 > idx:
        mem[idx + 32] = sub_de00683a[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_de00683a[arg1].field_0) + 224 len floor32(sub_de00683a[arg1].field_0)] = mem[160 len floor32(sub_de00683a[arg1].field_0)]
    return Array(len=sub_de00683a[arg1].field_0, data=mem[160 len floor32(sub_de00683a[arg1].field_0)], mem[(32 * sub_de00683a[arg1].field_0) + floor32(sub_de00683a[arg1].field_0) + 224 len (32 * sub_de00683a[arg1].field_0) - floor32(sub_de00683a[arg1].field_0)]), 
}

function sub_fb2f1d99(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    sub_de00683a[arg1].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while sub_de00683a[arg1].field_0 > idx:
            sub_de00683a[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            sub_de00683a[arg1][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while sub_de00683a[arg1].field_0 > idx:
            sub_de00683a[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < sub_de00683a[block.number].field_0:
        mem[0] = sha3(block.number, 2)
        mem[(32 * arg2.length) + 160] = 0
        mem[(32 * arg2.length) + 132] = sub_de00683a[block.number][idx].field_0
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args sub_de00683a[block.number][idx].field_0
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            require idx < sub_de00683a[block.number].field_0
            mem[0] = sha3(block.number, 2)
            mem[(32 * arg2.length) + 160] = 0
            mem[(32 * arg2.length) + 132] = sub_de00683a[block.number][idx].field_0
            require ext_code.size(stor1)
            call stor1.giveBirth(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args sub_de00683a[block.number][idx].field_0
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        idx = idx + 1
        continue 
}



}
