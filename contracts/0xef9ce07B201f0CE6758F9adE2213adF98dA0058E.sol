contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 1127]




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
array of struct stor5;
array of struct stor6;

function _fallback() payable {
    revert 
}

function sub_c7c29830(?) {
    stor0 = msg.sender
    stor1 = block.timestamp
}

function sub_cbfbca5e(?) {
    if 1 == arg1:
        return stor3
    if arg1 != 2:
        return 0
    return stor4
}

function sub_56966cb1(?) {
    if stor0 == msg.sender:
        call msg.sender with:
           value (5 * stor3) + (5 * stor4) / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if arg1 > 500:
            idx = 0
            while idx < stor6.length:
                mem[0] = 6
                require stor4
                call stor6[idx].field_0 with:
                   value (95 * stor3 * stor6[idx].field_256 / stor4) + (95 * stor4 * stor6[idx].field_256 / stor4) / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < stor5.length:
                mem[0] = 5
                require stor3
                call stor5[idx].field_0 with:
                   value (95 * stor3 * stor5[idx].field_256 / stor3) + (95 * stor4 * stor5[idx].field_256 / stor3) / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                idx = idx + 1
                continue 
            if arg1 > 500:
                idx = 0
                while idx < stor6.length:
                    mem[0] = 6
                    require stor4
                    call stor6[idx].field_0 with:
                       value (95 * stor3 * stor6[idx].field_256 / stor4) + (95 * stor4 * stor6[idx].field_256 / stor4) / 100 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    idx = idx + 1
                    continue 
}

function sub_5cc5b38b(?) payable {
    if arg1 != 1:
        if 2 == arg1:
            stor6.length++
            if not stor6.length <= stor6.length + 1:
                if 2 * stor6.length > 2 * stor6.length + 1:
                    stor6[stor6.length + 1].field_0 = 0
                    stor6[stor6.length + 1].field_256 = 0
                    idx = (2 * stor6.length + 1) + 2
                    while 2 * stor6.length > idx:
                        stor6[idx].field_0 = 0
                        stor6[idx].field_256 = 0
                        idx = idx + 2
                        continue 
            stor6[stor6.length].field_0 = msg.sender
            stor6[stor6.length].field_256 = msg.value
            stor4 += msg.value
    else:
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = 2 * stor5.length + 1
            while 2 * stor5.length > idx:
                stor5[idx].field_0 = 0
                stor5[idx].field_256 = 0
                idx = idx + 2
                continue 
        stor5[stor5.length].field_0 = msg.sender
        stor5[stor5.length].field_256 = msg.value
        stor3 += msg.value
        if 2 == arg1:
            stor6.length++
            if not stor6.length <= stor6.length + 1:
                if 2 * stor6.length > 2 * stor6.length + 1:
                    stor6[stor6.length + 1].field_0 = 0
                    stor6[stor6.length + 1].field_256 = 0
                    idx = (2 * stor6.length + 1) + 2
                    while 2 * stor6.length > idx:
                        stor6[idx].field_0 = 0
                        stor6[idx].field_256 = 0
                        idx = idx + 2
                        continue 
            stor6[stor6.length].field_0 = msg.sender
            stor6[stor6.length].field_256 = msg.value
            stor4 += msg.value
}



}
