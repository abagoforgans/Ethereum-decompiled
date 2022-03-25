contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
uint256 stor1; offset 8

function _fallback() payable {
    stor0 = 3
    uint8(stor1.field_0) = 1
    Mask(248, 0, stor1.field_8) = Mask(248, 0, msg.sender)
    return code.data[96 len 1688]
}



// =====================  Runtime code  =====================


uint256 sub_17754cd5;
uint8 stor1;
address owner; offset 8
uint256 stor1; offset 8
array of address sub_ea8e2317;

function sub_17754cd5(?) payable {
    return sub_17754cd5
}

function owner() payable {
    return owner
}

function sub_a8f11498(?) payable {
    return bool(uint8(stor1.field_0))
}

function sub_ea8e2317(?) payable {
    require arg2 < uint256(sub_ea8e2317[arg1])
    return address(sub_ea8e2317[arg1][arg2])
}

function changeOwner() payable {
    Mask(248, 0, stor1.field_8) = Mask(248, 0, tx.origin)
}

function sub_0da0b5a3(?) payable {
    if msg.sender == owner:
        call owner with:
           value eth.balance(this.address) / 100 wei
             gas 0 wei
        if ext_call.success:
            uint8(stor1.field_0) = 0
}

function sub_b2276170(?) payable {
    require block.hash(block.number - 1) % sub_17754cd5 < uint256(sub_ea8e2317[arg1])
    call address(sub_ea8e2317[arg1][block.hash(block.number - 1) % stor0]) with:
       value (arg1 * sub_17754cd5) - (arg1 * sub_17754cd5 / 100) wei
         gas 0 wei
    if ext_call.success:
        uint256(sub_ea8e2317[arg1]) = 0
        if not uint256(sub_ea8e2317[arg1]) <= 0:
            idx = 0
            while uint256(sub_ea8e2317[arg1]) > idx:
                uint256(sub_ea8e2317[arg1][idx]) = 0
                idx = idx + 1
                continue 
        uint8(stor1.field_0) = 1
}

function _fallback() payable {
    idx = 0
    while idx < uint256(sub_ea8e2317[msg.value]):
        require idx < uint256(sub_ea8e2317[msg.value])
        require address(sub_ea8e2317[msg.value][idx]) != msg.sender
        mem[0] = msg.value
        mem[32] = 2
        idx = idx + 1
        continue 
    require uint256(sub_ea8e2317[msg.value]) < sub_17754cd5
    require tx.origin == msg.sender
    uint256(sub_ea8e2317[msg.value])++
    if not uint256(sub_ea8e2317[msg.value]) <= uint256(sub_ea8e2317[msg.value]) + 1:
        idx = uint256(sub_ea8e2317[msg.value]) + 1
        while uint256(sub_ea8e2317[msg.value]) > idx:
            uint256(sub_ea8e2317[msg.value][idx]) = 0
            idx = idx + 1
            continue 
    uint256(sub_ea8e2317[msg.value][uint256(sub_ea8e2317[msg.value])]) = msg.sender or Mask(96, 160, uint256(sub_ea8e2317[msg.value][uint256(sub_ea8e2317[msg.value])]))
    if uint256(sub_ea8e2317[msg.value]) == sub_17754cd5:
        require block.hash(block.number - 1) % sub_17754cd5 < uint256(sub_ea8e2317[msg.value])
        call address(sub_ea8e2317[msg.value][block.hash(block.number - 1) % stor0]) with:
           value (msg.value * sub_17754cd5) - (msg.value * sub_17754cd5 / 100) wei
             gas 0 wei
        if ext_call.success:
            uint256(sub_ea8e2317[msg.value]) = 0
            if not uint256(sub_ea8e2317[msg.value]) <= 0:
                idx = 0
                while uint256(sub_ea8e2317[msg.value]) > idx:
                    uint256(sub_ea8e2317[msg.value][idx]) = 0
                    idx = idx + 1
                    continue 
            uint8(stor1.field_0) = 1
}

function sub_944bc7ed(?) payable {
    idx = 0
    while idx < uint256(sub_ea8e2317[msg.value]):
        require idx < uint256(sub_ea8e2317[msg.value])
        require address(sub_ea8e2317[msg.value][idx]) != msg.sender
        mem[0] = msg.value
        mem[32] = 2
        idx = idx + 1
        continue 
    require uint256(sub_ea8e2317[msg.value]) < sub_17754cd5
    require tx.origin == msg.sender
    uint256(sub_ea8e2317[msg.value])++
    if not uint256(sub_ea8e2317[msg.value]) <= uint256(sub_ea8e2317[msg.value]) + 1:
        idx = uint256(sub_ea8e2317[msg.value]) + 1
        while uint256(sub_ea8e2317[msg.value]) > idx:
            uint256(sub_ea8e2317[msg.value][idx]) = 0
            idx = idx + 1
            continue 
    uint256(sub_ea8e2317[msg.value][uint256(sub_ea8e2317[msg.value])]) = msg.sender or Mask(96, 160, uint256(sub_ea8e2317[msg.value][uint256(sub_ea8e2317[msg.value])]))
    if uint256(sub_ea8e2317[msg.value]) == sub_17754cd5:
        require block.hash(block.number - 1) % sub_17754cd5 < uint256(sub_ea8e2317[msg.value])
        call address(sub_ea8e2317[msg.value][block.hash(block.number - 1) % stor0]) with:
           value (msg.value * sub_17754cd5) - (msg.value * sub_17754cd5 / 100) wei
             gas 0 wei
        if ext_call.success:
            uint256(sub_ea8e2317[msg.value]) = 0
            if not uint256(sub_ea8e2317[msg.value]) <= 0:
                idx = 0
                while uint256(sub_ea8e2317[msg.value]) > idx:
                    uint256(sub_ea8e2317[msg.value][idx]) = 0
                    idx = idx + 1
                    continue 
            uint8(stor1.field_0) = 1
}



}
