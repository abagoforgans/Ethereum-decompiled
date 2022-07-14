contract main {




// =====================  Runtime code  =====================


uint256 sub_d8ad2208;
mapping of uint256 stor1;

function sub_d8ad2208(?) payable {
    return sub_d8ad2208
}

function _fallback() payable {
    revert
}

function sub_016bf1f2(?) payable {
    if sub_d8ad2208 >= 1:
        stor1[stor0 - 1] = 0
        sub_d8ad2208--
}

function sub_d0e6aaf7(?) payable {
    mem[64] = 96
    if sub_d8ad2208:
        idx = 0
        while idx < gas_remaining - 6000 / 20500:
            mem[0] = idx + sub_d8ad2208
            mem[32] = 1
            stor1[idx + stor0] = block.timestamp
            idx = idx + 1
            continue 
        sub_d8ad2208 += gas_remaining - 6000 / 20500
        var10001 = var10001 + 1
        continue 
    idx = 0
    while idx < (gas_remaining - 6000 / 20500) - 1:
        mem[0] = idx + sub_d8ad2208
        mem[32] = 1
        stor1[idx + stor0] = block.timestamp
        idx = idx + 1
        continue 
    sub_d8ad2208 = (gas_remaining - 6000 / 20500) + sub_d8ad2208 - 1
    var11001 = var11001 + 1
    continue 
}

function sub_d4968df2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[100] = 0x5fc95c91ef6c3e2d8970cc70c6a16ad550afa7f
    require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
    staticcall 0x3cb0021808442ad5efb61197966aef72a1def96.0x70a08231 with:
            gas gas_remaining wei
           args 0x5fc95c91ef6c3e2d8970cc70c6a16ad550afa7f
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 < block.timestamp:
        if sub_d8ad2208 >= 1:
            stor1[stor0 - 1] = 0
            sub_d8ad2208--
    if ext_call.return_data[0] != arg1:
        if sub_d8ad2208 >= 1:
            stor1[stor0 - 1] = 0
            sub_d8ad2208--
    if sub_d8ad2208:
        idx = 0
        while idx < gas_remaining - 6000 / 20500:
            mem[0] = idx + sub_d8ad2208
            mem[32] = 1
            stor1[idx + stor0] = block.timestamp
            idx = idx + 1
            continue 
        sub_d8ad2208 += gas_remaining - 6000 / 20500
        var18001 = var18001 + 1
        continue 
    idx = 0
    while idx < (gas_remaining - 6000 / 20500) - 1:
        mem[0] = idx + sub_d8ad2208
        mem[32] = 1
        stor1[idx + stor0] = block.timestamp
        idx = idx + 1
        continue 
    sub_d8ad2208 = (gas_remaining - 6000 / 20500) + sub_d8ad2208 - 1
    var19001 = var19001 + 1
    continue 
}



}
