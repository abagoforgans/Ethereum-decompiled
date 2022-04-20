contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;

function _fallback() payable {
    stor4 = 10^18
    require not msg.value
    stor0 = msg.sender
    return code.data[107 len 2086]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of uint256 stor2;
array of address stor3;
uint256 stor4;

function sub_a135f3d8(?) {
    require msg.sender == stor0
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = 2
        require stor2[address(stor3[idx])] + s >= stor2[address(stor3[idx])]
        idx = idx + 1
        s = stor2[address(stor3[idx])] + s
        continue 
    return (stor[_6] * stor3.length)
}

function sub_0a87f7b6(?) {
    require msg.sender == stor0
    require stor4 >= arg2
    require msg.sender == stor0
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = 2
        require stor2[address(stor3[idx])] + s >= stor2[address(stor3[idx])]
        idx = idx + 1
        s = stor2[address(stor3[idx])] + s
        continue 
    require stor2[address(arg1)] <= stor[_8] * stor3.length
    require stor4 - arg2 > (stor[_8] * stor3.length) - stor2[address(arg1)]
    stor2[address(arg1)] = arg2
    return 0
}

function sub_52c96632(?) {
    require msg.sender == stor0
    require stor4 >= arg2
    if stor1[address(arg1)]:
        require msg.sender == stor0
        require stor4 >= arg2
        require msg.sender == stor0
        idx = 0
        s = 0
        while idx < stor3.length:
            mem[0] = address(stor3[idx])
            mem[32] = 2
            require stor2[address(stor3[idx])] + s >= stor2[address(stor3[idx])]
            idx = idx + 1
            s = stor2[address(stor3[idx])] + s
            continue 
        require stor2[address(arg1)] <= stor[_28] * stor3.length
        require stor4 - arg2 > (stor[_28] * stor3.length) - stor2[address(arg1)]
    else:
        stor1[address(arg1)] = 1
        stor2[address(arg1)] = 0
        stor3.length++
        if not stor3.length > stor3.length + 1:
            address(stor3[stor3.length]) = arg1
            require msg.sender == stor0
            require stor4 >= arg2
            require msg.sender == stor0
            idx = 0
            s = 0
            while idx < stor3.length:
                mem[0] = address(stor3[idx])
                mem[32] = 2
                require stor2[address(stor3[idx])] + s >= stor2[address(stor3[idx])]
                idx = idx + 1
                s = stor2[address(stor3[idx])] + s
                continue 
            require stor2[address(arg1)] <= stor[_27] * stor3.length
            require stor4 - arg2 > (stor[_27] * stor3.length) - stor2[address(arg1)]
        else:
            idx = stor3.length + 1
            while stor3.length > idx:
                uint256(stor3[idx]) = 0
                idx = idx + 1
                continue 
            address(stor3[stor3.length]) = arg1
            require msg.sender == stor0
            require stor4 >= arg2
            require msg.sender == stor0
            idx = 0
            s = 0
            while idx < stor3.length:
                mem[0] = address(stor3[idx])
                mem[32] = 2
                _45 = sha3(address(stor3[idx]), 2)
                require stor2[address(stor3[idx])] + s >= stor2[address(stor3[idx])]
                idx = idx + 1
                s = stor2[address(stor3[idx])] + s
                continue 
            require stor2[address(arg1)] <= stor[_45] * stor3.length
            require stor4 - arg2 > (stor[_45] * stor3.length) - stor2[address(arg1)]
    stor2[address(arg1)] = arg2
    return 0
}

function _fallback() payable {
    require stor4
    require msg.value == (stor4 * msg.value / stor4) + (msg.value % stor4)
    s = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = 2
        if not stor2[address(stor3[idx])]:
            if uint32(ext_code.size(address(stor3[idx]))) > 0:
                if s + (stor2[address(stor3[idx])] * msg.value / stor4) >= s:
                    s = 1
                    s = stor2[address(stor3[idx])] * msg.value / stor4
                    s = address(stor3[idx])
                    idx = idx + 1
                    s = s + (stor2[address(stor3[idx])] * msg.value / stor4)
                    continue 
            else:
                call address(stor3[idx]) with:
                   value stor2[address(stor3[idx])] * msg.value / stor4 wei
                     gas 2300 * is_zero(value) wei
                if s + (stor2[address(stor3[idx])] * msg.value / stor4) >= s:
                    s = ext_call.success
                    s = stor2[address(stor3[idx])] * msg.value / stor4
                    s = address(stor3[idx])
                    idx = idx + 1
                    s = s + (stor2[address(stor3[idx])] * msg.value / stor4)
                    continue 
            ('lt', ('add', ('var', 1), ('mul', ('stor', ('map', ('type', 160, ('stor', ('array', ('var', 0), ('name', 'stor3', 3)))), ('name', 'stor2', 2))), ('div', 'callvalue', ('stor', ('name', 'stor4', 4))))), ('var', 1))
        else:
            if stor2[address(stor3[idx])]:
                if stor2[address(stor3[idx])] * msg.value / stor4 / stor2[address(stor3[idx])] == msg.value / stor4:
                    if uint32(ext_code.size(address(stor3[idx]))) > 0:
                        if s + (stor2[address(stor3[idx])] * msg.value / stor4) >= s:
                            s = 1
                            s = stor2[address(stor3[idx])] * msg.value / stor4
                            s = address(stor3[idx])
                            idx = idx + 1
                            s = s + (stor2[address(stor3[idx])] * msg.value / stor4)
                            continue 
                    else:
                        call address(stor3[idx]) with:
                           value stor2[address(stor3[idx])] * msg.value / stor4 wei
                             gas 2300 * is_zero(value) wei
                        if s + (stor2[address(stor3[idx])] * msg.value / stor4) >= s:
                            s = ext_call.success
                            s = stor2[address(stor3[idx])] * msg.value / stor4
                            s = address(stor3[idx])
                            idx = idx + 1
                            s = s + (stor2[address(stor3[idx])] * msg.value / stor4)
                            continue 
                    ('lt', ('add', ('var', 1), ('mul', ('stor', ('map', ('type', 160, ('stor', ('array', ('var', 0), ('name', 'stor3', 3)))), ('name', 'stor2', 2))), ('div', 'callvalue', ('stor', ('name', 'stor4', 4))))), ('var', 1))
        revert
    require s <= msg.value
    if uint32(ext_code.size(msg.sender)) <= 0:
        call msg.sender with:
           value msg.value - s wei
             gas 2300 * is_zero(value) wei
}



}
