contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 3
    stor1 = 1
    return code.data[34 len 1160]
}



// =====================  Runtime code  =====================


uint256 sub_17754cd5;
uint256 sub_e1bbccee;
array of address sub_ea8e2317;

function sub_17754cd5(?) {
    return sub_17754cd5
}

function sub_e1bbccee(?) {
    return sub_e1bbccee
}

function sub_ea8e2317(?) {
    require arg2 < uint256(sub_ea8e2317[arg1])
    return address(sub_ea8e2317[arg1][arg2])
}

function sub_b2276170(?) {
    require sub_17754cd5
    require block.hash(block.number - 1) % sub_17754cd5 < uint256(sub_ea8e2317[arg1])
    call address(sub_ea8e2317[arg1][block.hash(block.number - 1) % stor0]) with:
       value arg1 * sub_17754cd5 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        uint256(sub_ea8e2317[arg1]) = 0
        if not uint256(sub_ea8e2317[arg1]) <= 0:
            idx = 0
            while uint256(sub_ea8e2317[arg1]) > idx:
                uint256(sub_ea8e2317[arg1][idx]) = 0
                idx = idx + 1
                continue 
}

function _fallback() {
    idx = 0
    while idx <= sub_17754cd5:
        mem[32] = 2
        require idx < uint256(sub_ea8e2317[msg.value])
        mem[0] = sha3(msg.value, 2)
        require address(sub_ea8e2317[msg.value][idx]) != msg.sender
        idx = idx + 1
        continue 
    require uint256(sub_ea8e2317[msg.value]) < sub_17754cd5
    uint256(sub_ea8e2317[msg.value])++
    if not uint256(sub_ea8e2317[msg.value]) <= uint256(sub_ea8e2317[msg.value]) + 1:
        idx = uint256(sub_ea8e2317[msg.value]) + 1
        while uint256(sub_ea8e2317[msg.value]) > idx:
            uint256(sub_ea8e2317[msg.value][idx]) = 0
            idx = idx + 1
            continue 
    uint256(sub_ea8e2317[msg.value][uint256(sub_ea8e2317[msg.value])]) = msg.sender or Mask(96, 160, uint256(sub_ea8e2317[msg.value][uint256(sub_ea8e2317[msg.value])]))
    if uint256(sub_ea8e2317[msg.value]) == sub_17754cd5:
        require sub_17754cd5
        require block.hash(block.number - 1) % sub_17754cd5 < uint256(sub_ea8e2317[msg.value])
        call address(sub_ea8e2317[msg.value][block.hash(block.number - 1) % stor0]) with:
           value msg.value * sub_17754cd5 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            uint256(sub_ea8e2317[msg.value]) = 0
            if not uint256(sub_ea8e2317[msg.value]) <= 0:
                idx = 0
                while uint256(sub_ea8e2317[msg.value]) > idx:
                    uint256(sub_ea8e2317[msg.value][idx]) = 0
                    idx = idx + 1
                    continue 
}

function sub_944bc7ed(?) {
    idx = 0
    while idx <= sub_17754cd5:
        mem[32] = 2
        require idx < uint256(sub_ea8e2317[msg.value])
        mem[0] = sha3(msg.value, 2)
        require address(sub_ea8e2317[msg.value][idx]) != msg.sender
        idx = idx + 1
        continue 
    require uint256(sub_ea8e2317[msg.value]) < sub_17754cd5
    uint256(sub_ea8e2317[msg.value])++
    if not uint256(sub_ea8e2317[msg.value]) <= uint256(sub_ea8e2317[msg.value]) + 1:
        idx = uint256(sub_ea8e2317[msg.value]) + 1
        while uint256(sub_ea8e2317[msg.value]) > idx:
            uint256(sub_ea8e2317[msg.value][idx]) = 0
            idx = idx + 1
            continue 
    uint256(sub_ea8e2317[msg.value][uint256(sub_ea8e2317[msg.value])]) = msg.sender or Mask(96, 160, uint256(sub_ea8e2317[msg.value][uint256(sub_ea8e2317[msg.value])]))
    if uint256(sub_ea8e2317[msg.value]) == sub_17754cd5:
        require sub_17754cd5
        require block.hash(block.number - 1) % sub_17754cd5 < uint256(sub_ea8e2317[msg.value])
        call address(sub_ea8e2317[msg.value][block.hash(block.number - 1) % stor0]) with:
           value msg.value * sub_17754cd5 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            uint256(sub_ea8e2317[msg.value]) = 0
            if not uint256(sub_ea8e2317[msg.value]) <= 0:
                idx = 0
                while uint256(sub_ea8e2317[msg.value]) > idx:
                    uint256(sub_ea8e2317[msg.value][idx]) = 0
                    idx = idx + 1
                    continue 
}



}
