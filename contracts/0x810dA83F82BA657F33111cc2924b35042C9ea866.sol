contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    return code.data[68 len 1197]
}



// =====================  Runtime code  =====================


array of struct stor0;

function kittiesContract() {
    return address(stor0.length)
}

function _fallback() payable {
    revert
}

function isReady(uint256 arg1) {
    require ext_code.size(address(stor0.length))
    call address(stor0.length).getKitty(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    return ext_call.return_data[96] <= block.number + 1
}

function pregnantKitties() {
    mem[160] = 0
    require ext_code.size(address(stor0.length))
    call address(stor0.length).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[160] = 0
        mem[132] = idx
        require ext_code.size(address(stor0.length))
        call address(stor0.length).isPregnant(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args idx
        mem[128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                s = stor0.length + sha3(0) + 1
                while sha3(0) + stor0.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 0
            stor0[stor0.length].field_0 = idx
        idx = idx + 1
        continue 
    if stor0.length:
        mem[160] = uint256(stor0.field_0)
        idx = 160
        s = 0
        while (32 * stor0.length) + 128 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor0.length) + 224 len floor32(stor0.length)] = mem[160 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[160 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 224 len (32 * stor0.length) - floor32(stor0.length)]), 
}

function sub_4bf3e2cd(?) {
    mem[160] = 0
    require ext_code.size(address(stor0.length))
    call address(stor0.length).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[448] = 0
        require ext_code.size(address(stor0.length))
        call address(stor0.length).getKitty(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args idx
        mem[128 len 320] = ext_call.return_data[0 len 320]
        require ext_call.success
        if ext_call.return_data[0]:
            if ext_call.return_data[96] <= block.number + 1:
                stor0.length++
                if not stor0.length <= stor0.length + 1:
                    s = stor0.length + sha3(0) + 1
                    while sha3(0) + stor0.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                mem[0] = 0
                stor0[stor0.length].field_0 = idx
        idx = idx + 1
        continue 
    if stor0.length:
        mem[160] = uint256(stor0.field_0)
        idx = 160
        s = 0
        while (32 * stor0.length) + 128 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor0.length) + 224 len floor32(stor0.length)] = mem[160 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[160 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 224 len (32 * stor0.length) - floor32(stor0.length)]), 
}



}
