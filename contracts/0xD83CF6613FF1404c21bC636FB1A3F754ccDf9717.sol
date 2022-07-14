contract main {




// =====================  Runtime code  =====================


const _now = block.timestamp


uint256 sub_8bde5818;
mapping of uint256 sub_7758b06a;
uint256 sub_51296d62;

function sub_51296d62(?) {
    return sub_51296d62
}

function sub_7758b06a(?) {
    return sub_7758b06a[arg1]
}

function sub_8bde5818(?) {
    return sub_8bde5818
}

function _fallback() payable {
    revert
}

function sub_67536bfc(?) {
    if sub_8bde5818 >= 1:
        sub_7758b06a[stor0 - 1] = 0
        sub_8bde5818--
}

function sub_a7a9b324(?) payable {
    mem[64] = 96
    require not msg.value
    if sub_8bde5818:
        idx = 0
        while idx < gas_remaining - 6000 / 20500:
            mem[0] = idx + sub_8bde5818
            mem[32] = 1
            sub_7758b06a[idx + stor0] = block.timestamp
            idx = idx + 1
            continue 
        sub_8bde5818 += gas_remaining - 6000 / 20500
        var11001 = var11001 + 1
        continue 
    idx = 0
    while idx < (gas_remaining - 6000 / 20500) - 1:
        mem[0] = idx + sub_8bde5818
        mem[32] = 1
        sub_7758b06a[idx + stor0] = block.timestamp
        idx = idx + 1
        continue 
    sub_8bde5818 = (gas_remaining - 6000 / 20500) + sub_8bde5818 - 1
    var12001 = var12001 + 1
    continue 
}

function sub_4dcea9ed(?) {
    require ext_code.size(0x2c58b11405a6a8154fd3bbc4ccaa43924f2be769)
    call 0x2c58b11405a6a8154fd3bbc4ccaa43924f2be769.getCurrentRoundInfo() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 448
    if ext_call.return_data[96] != arg2:
        if arg2:
            return not bool(arg2)
    if ext_call.return_data[96] < block.timestamp:
        return ext_call.return_data[96] >= block.timestamp
    if ext_call.return_data[96] - block.timestamp > arg1:
        return ext_call.return_data[96] - block.timestamp <= arg1
    if 0x246fcfd04f5b12437f85d0f66e20e5e14c7fe051 == ext_call.return_data[236 len 20]:
        return True
    return (0x28e56377bc030aeb2fc9162e4faf3fa1fc8d7a27 == ext_call.return_data[236 len 20])
}

function sub_a4e62fc3(?) payable {
    mem[64] = 96
    require not msg.value
    if sub_51296d62 < block.timestamp:
        require ext_code.size(0x2c58b11405a6a8154fd3bbc4ccaa43924f2be769)
        call 0x2c58b11405a6a8154fd3bbc4ccaa43924f2be769.getCurrentRoundInfo() with:
             gas gas_remaining wei
        mem[96 len 448] = ext_call.return_data[0 len 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 448
        if ext_call.return_data[96] == arg2:
            if ext_call.return_data[96] >= block.timestamp:
                if ext_call.return_data[96] - block.timestamp <= arg1 - 84776335:
                    if 0x246fcfd04f5b12437f85d0f66e20e5e14c7fe051 == ext_call.return_data[236 len 20]:
                        if sub_8bde5818:
                            idx = 0
                            while idx < gas_remaining - 6000 / 20500:
                                mem[0] = idx + sub_8bde5818
                                mem[32] = 1
                                sub_7758b06a[idx + stor0] = block.timestamp
                                idx = idx + 1
                                continue 
                            sub_8bde5818 += gas_remaining - 6000 / 20500
                            var31001 = var31001 + 1
                            continue 
                        idx = 0
                        while idx < (gas_remaining - 6000 / 20500) - 1:
                            mem[0] = idx + sub_8bde5818
                            mem[32] = 1
                            sub_7758b06a[idx + stor0] = block.timestamp
                            idx = idx + 1
                            continue 
                        sub_8bde5818 = (gas_remaining - 6000 / 20500) + sub_8bde5818 - 1
                        var32001 = var32001 + 1
                        continue 
                    if 0x28e56377bc030aeb2fc9162e4faf3fa1fc8d7a27 == ext_call.return_data[236 len 20]:
                        if sub_8bde5818:
                            idx = 0
                            while idx < gas_remaining - 6000 / 20500:
                                mem[0] = idx + sub_8bde5818
                                mem[32] = 1
                                sub_7758b06a[idx + stor0] = block.timestamp
                                idx = idx + 1
                                continue 
                            sub_8bde5818 += gas_remaining - 6000 / 20500
                            var32001 = var32001 + 1
                            continue 
                        idx = 0
                        while idx < (gas_remaining - 6000 / 20500) - 1:
                            mem[0] = idx + sub_8bde5818
                            mem[32] = 1
                            sub_7758b06a[idx + stor0] = block.timestamp
                            idx = idx + 1
                            continue 
                        sub_8bde5818 = (gas_remaining - 6000 / 20500) + sub_8bde5818 - 1
                        var33001 = var33001 + 1
                        continue 
        else:
            if not arg2:
                if ext_call.return_data[96] >= block.timestamp:
                    if ext_call.return_data[96] - block.timestamp <= arg1 - 84776335:
                        if 0x246fcfd04f5b12437f85d0f66e20e5e14c7fe051 == ext_call.return_data[236 len 20]:
                            if sub_8bde5818:
                                idx = 0
                                while idx < gas_remaining - 6000 / 20500:
                                    mem[0] = idx + sub_8bde5818
                                    mem[32] = 1
                                    sub_7758b06a[idx + stor0] = block.timestamp
                                    idx = idx + 1
                                    continue 
                                sub_8bde5818 += gas_remaining - 6000 / 20500
                                var32001 = var32001 + 1
                                continue 
                            idx = 0
                            while idx < (gas_remaining - 6000 / 20500) - 1:
                                mem[0] = idx + sub_8bde5818
                                mem[32] = 1
                                sub_7758b06a[idx + stor0] = block.timestamp
                                idx = idx + 1
                                continue 
                            sub_8bde5818 = (gas_remaining - 6000 / 20500) + sub_8bde5818 - 1
                            var33001 = var33001 + 1
                            continue 
                        if 0x28e56377bc030aeb2fc9162e4faf3fa1fc8d7a27 == ext_call.return_data[236 len 20]:
                            if sub_8bde5818:
                                idx = 0
                                while idx < gas_remaining - 6000 / 20500:
                                    mem[0] = idx + sub_8bde5818
                                    mem[32] = 1
                                    sub_7758b06a[idx + stor0] = block.timestamp
                                    idx = idx + 1
                                    continue 
                                sub_8bde5818 += gas_remaining - 6000 / 20500
                                var33001 = var33001 + 1
                                continue 
                            idx = 0
                            while idx < (gas_remaining - 6000 / 20500) - 1:
                                mem[0] = idx + sub_8bde5818
                                mem[32] = 1
                                sub_7758b06a[idx + stor0] = block.timestamp
                                idx = idx + 1
                                continue 
                            sub_8bde5818 = (gas_remaining - 6000 / 20500) + sub_8bde5818 - 1
                            var34001 = var34001 + 1
                            continue 
        sub_51296d62 = block.timestamp + 60
    if sub_8bde5818 >= 1:
        sub_7758b06a[stor0 - 1] = 0
        sub_8bde5818--
}



}
