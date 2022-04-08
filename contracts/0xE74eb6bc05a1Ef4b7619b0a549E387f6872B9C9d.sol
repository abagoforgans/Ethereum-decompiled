contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 2570]
}



// =====================  Runtime code  =====================


address curatorAddress;
uint256 sub_fde60b72;
mapping of address stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;

function curator() {
    return curatorAddress
}

function sub_fde60b72(?) {
    return sub_fde60b72
}

function killContract() {
    require msg.sender == curatorAddress
    selfdestruct(curatorAddress)
}

function _fallback() {
    revert
}

function sub_c9409739(?) {
    require msg.sender == curatorAddress
    curatorAddress = arg1
}

function addFund(address arg1) {
    require msg.sender == curatorAddress
    stor2[stor1] = arg1
    uint8(stor3[stor1]) = 1
    sub_fde60b72++
}

function sub_8753371c(?) {
    require msg.sender == curatorAddress
    uint256(stor3[arg1]) = not bool(uint8(stor3[arg1])) or Mask(248, 8, uint256(stor3[arg1]))
}

function sub_d5a940c1(?) {
    idx = 0
    while idx < sub_fde60b72:
        mem[0] = idx
        mem[32] = 3
        if uint8(stor3[idx]):
            stor5.length++
            if not stor5.length <= stor5.length + 1:
                s = sha3(5) + stor5.length + 1
                while sha3(5) + stor5.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = idx
            mem[32] = 2
            address(stor5[stor5.length].field_0) = stor2[idx]
        idx = idx + 1
        continue 
    if stor5.length:
        mem[160] = address(stor5.field_0)
        idx = 160
        s = 0
        while (32 * stor5.length) + 128 > idx:
            mem[idx + 32] = address(stor5[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor5.length) + 160] = 32
    mem[(32 * stor5.length) + 192] = stor5.length
    if Mask(251, 0, stor5.length):
        mem[(32 * stor5.length) + 224] = mem[160]
        mem[(32 * stor5.length) + 256 len floor32((32 * stor5.length) - 1)] = mem[192 len floor32((32 * stor5.length) - 1)]
    return Array(len=stor5.length, data=mem[(32 * stor5.length) + 224 len 32 * stor5.length])
}

function sub_bb561945(?) {
    s = 0
    idx = 0
    while idx < sub_fde60b72:
        mem[0] = idx
        mem[32] = 3
        if not uint8(stor3[idx]):
            s = s
            idx = idx + 1
            continue 
        mem[32] = 2
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            s = sha3(4) + stor4.length + 1
            while sha3(4) + stor4.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 4
        mem[160] = 0
        require ext_code.size(stor2[idx])
        call stor2[idx].0x4ed8dc65 with:
             gas gas_remaining - 710 wei
        mem[128] = ext_call.return_data[0]
        require ext_call.success
        stor4[stor4.length].field_0 = ext_call.return_data[0]
        s = stor2[idx]
        idx = idx + 1
        continue 
    if stor4.length:
        mem[160] = uint256(stor4.field_0)
        idx = 160
        s = 0
        while (32 * stor4.length) + 128 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor4.length) + 160] = 32
    mem[(32 * stor4.length) + 192] = stor4.length
    if Mask(251, 0, stor4.length):
        mem[(32 * stor4.length) + 224] = mem[160]
        mem[(32 * stor4.length) + 256 len floor32((32 * stor4.length) - 1)] = mem[192 len floor32((32 * stor4.length) - 1)]
    return Array(len=stor4.length, data=mem[(32 * stor4.length) + 224 len 32 * stor4.length])
}

function fundsCombinedValue() {
    s = 0
    idx = 0
    while idx < sub_fde60b72:
        mem[0] = idx
        mem[32] = 3
        if not uint8(stor3[idx]):
            s = s
            idx = idx + 1
            continue 
        mem[32] = 2
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            s = sha3(4) + stor4.length + 1
            while sha3(4) + stor4.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 4
        mem[192] = 0
        require ext_code.size(stor2[idx])
        call stor2[idx].0x4ed8dc65 with:
             gas gas_remaining - 710 wei
        mem[160] = ext_call.return_data[0]
        require ext_call.success
        stor4[stor4.length].field_0 = ext_call.return_data[0]
        s = stor2[idx]
        idx = idx + 1
        continue 
    if stor4.length:
        mem[192] = uint256(stor4.field_0)
        idx = 192
        s = 0
        while (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < stor4.length:
        require idx < stor4.length
        idx = idx + 1
        s = s + mem[(32 * idx) + 192]
        continue 
    return (s * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length * stor4.length)
}



}
