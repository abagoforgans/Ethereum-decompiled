contract main {


// =======================  Init code  ======================


uint256 stor0; offset 64
uint256 stor1;
uint256 stor4;

function _fallback() payable {
    stor1 = msg.value
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor0 = Mask(192, 0, block.number)
    return code.data[105 len 2579]
}



// =====================  Runtime code  =====================


uint32 sub_3d277bfa;
uint32 sub_ee6141c7; offset 32
uint64 sub_59b3e64c; offset 64
uint256 stor0; offset 64
uint256 stor0; offset 32
uint256 stor0;
uint256 sub_05eaf53c;
array of address sub_565c8238;
array of uint256 sub_a3b7e018;
address sub_0039e086Address;
uint256 stor4;

function sub_0039e086(?) payable {
    return address(sub_0039e086Address)
}

function sub_05eaf53c(?) payable {
    return sub_05eaf53c
}

function sub_3d277bfa(?) payable {
    return sub_3d277bfa
}

function sub_565c8238(?) payable {
    require arg1 < sub_565c8238.length
    return address(sub_565c8238[arg1])
}

function sub_59b3e64c(?) payable {
    return sub_59b3e64c
}

function sub_a3b7e018(?) payable {
    require arg1 < sub_a3b7e018.length
    return sub_a3b7e018[arg1]
}

function sub_ee6141c7(?) payable {
    return sub_ee6141c7
}

function sub_085f451f(?) payable {
    if uint64(sub_59b3e64c + 3456) < block.number:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require sub_ee6141c7 - 1 < sub_565c8238.length
        selfdestruct(address(sub_565c8238[uint32(stor0.field_32)]))
    if msg.value < eth.balance(this.address) - msg.value / 100:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        Mask(192, 0, stor0.field_64) = Mask(192, 0, block.number)
        sub_565c8238.length++
        if not sub_565c8238.length <= sub_565c8238.length + 1:
            idx = sub_565c8238.length + 1
            while sub_565c8238.length > idx:
                uint256(sub_565c8238[idx]) = 0
                idx = idx + 1
                continue 
        require sub_ee6141c7 < sub_565c8238.length
        uint256(sub_565c8238[uint32(stor0.field_32)]) = msg.sender or Mask(96, 160, uint256(sub_565c8238[uint32(stor0.field_32)]))
        sub_a3b7e018.length++
        if not sub_a3b7e018.length <= sub_a3b7e018.length + 1:
            idx = sub_a3b7e018.length + 1
            while sub_a3b7e018.length > idx:
                sub_a3b7e018[idx] = 0
                idx = idx + 1
                continue 
        require sub_ee6141c7 < sub_a3b7e018.length
        sub_a3b7e018[uint32(stor0.field_32)] = 110 * msg.value / 100
        Mask(224, 0, stor0.field_32) = Mask(224, 0, sub_ee6141c7 + 1)
        call address(sub_0039e086Address) with:
           value 5 * msg.value / 100 wei
             gas 0 wei
        if sub_05eaf53c >= 10000 * 10^18:
            call 0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae with:
               value 5 * msg.value / 100 wei
                 gas 0 wei
        else:
            sub_05eaf53c += 5 * msg.value / 100
        if arg1 > 0:
            require arg1 < sub_a3b7e018.length
            if sub_a3b7e018[arg1] >= msg.value:
                require arg1 < sub_565c8238.length
                call address(sub_565c8238[arg1]) with:
                   value 5 * msg.value / 100 wei
                     gas 0 wei
        require sub_3d277bfa < sub_a3b7e018.length
        if sub_a3b7e018[uint32(stor0.field_0)] <= eth.balance(this.address) - sub_05eaf53c:
            require sub_3d277bfa < sub_565c8238.length
            require sub_3d277bfa < sub_a3b7e018.length
            call address(sub_565c8238[uint32(stor0.field_0)]) with:
               value sub_a3b7e018[uint32(stor0.field_0)] wei
                 gas 0 wei
            require sub_3d277bfa < sub_565c8238.length
            address(sub_565c8238[uint32(stor0.field_0)]) = 0
            require sub_3d277bfa < sub_a3b7e018.length
            sub_a3b7e018[uint32(stor0.field_0)] = 0
            uint256(stor0.field_0) = sub_3d277bfa + 1 or Mask(224, 32, uint256(stor0.field_0))
}

function _fallback() payable {
    if uint64(sub_59b3e64c + 3456) < block.number:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require sub_ee6141c7 - 1 < sub_565c8238.length
        selfdestruct(address(sub_565c8238[uint32(stor0.field_32)]))
    if msg.value < eth.balance(this.address) - msg.value / 100:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        Mask(192, 0, stor0.field_64) = Mask(192, 0, block.number)
        sub_565c8238.length++
        if not sub_565c8238.length <= sub_565c8238.length + 1:
            idx = sub_565c8238.length + 1
            while sub_565c8238.length > idx:
                uint256(sub_565c8238[idx]) = 0
                idx = idx + 1
                continue 
        require sub_ee6141c7 < sub_565c8238.length
        uint256(sub_565c8238[uint32(stor0.field_32)]) = msg.sender or Mask(96, 160, uint256(sub_565c8238[uint32(stor0.field_32)]))
        sub_a3b7e018.length++
        if not sub_a3b7e018.length <= sub_a3b7e018.length + 1:
            idx = sub_a3b7e018.length + 1
            while sub_a3b7e018.length > idx:
                sub_a3b7e018[idx] = 0
                idx = idx + 1
                continue 
        require sub_ee6141c7 < sub_a3b7e018.length
        sub_a3b7e018[uint32(stor0.field_32)] = 110 * msg.value / 100
        Mask(224, 0, stor0.field_32) = Mask(224, 0, sub_ee6141c7 + 1)
        call address(sub_0039e086Address) with:
           value 5 * msg.value / 100 wei
             gas 0 wei
        if sub_05eaf53c >= 10000 * 10^18:
            call 0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae with:
               value 5 * msg.value / 100 wei
                 gas 0 wei
        else:
            sub_05eaf53c += 5 * msg.value / 100
        require sub_3d277bfa < sub_a3b7e018.length
        if sub_a3b7e018[uint32(stor0.field_0)] <= eth.balance(this.address) - sub_05eaf53c:
            require sub_3d277bfa < sub_565c8238.length
            require sub_3d277bfa < sub_a3b7e018.length
            call address(sub_565c8238[uint32(stor0.field_0)]) with:
               value sub_a3b7e018[uint32(stor0.field_0)] wei
                 gas 0 wei
            require sub_3d277bfa < sub_565c8238.length
            address(sub_565c8238[uint32(stor0.field_0)]) = 0
            require sub_3d277bfa < sub_a3b7e018.length
            sub_a3b7e018[uint32(stor0.field_0)] = 0
            uint256(stor0.field_0) = sub_3d277bfa + 1 or Mask(224, 32, uint256(stor0.field_0))
}

function investInTheSystem() payable {
    sub_05eaf53c += msg.value
}

function sub_f2b39020(?) payable {
    if msg.sender == address(sub_0039e086Address):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function sub_e384d9e9(?) payable {
    idx = 0
    s = 0
    while idx < sub_a3b7e018.length:
        mem[0] = 3
        idx = idx + 1
        s = s + sub_a3b7e018[idx]
        continue 
    return (s * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length * sub_a3b7e018.length)
}



}
