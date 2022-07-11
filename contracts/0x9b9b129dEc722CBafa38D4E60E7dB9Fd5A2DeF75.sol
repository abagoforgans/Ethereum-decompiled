contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor51;
array of address sub_c18530a0;
mapping of uint256 sub_14df8b72;
array of address stor31997345449574252472561286867836691613551392380036115619611668045310140188353;

function sub_14df8b72(?) payable {
    require calldata.size - 4 >= 32
    return sub_14df8b72[arg1]
}

function sub_9c969720(?) payable {
    return sub_c18530a0.length
}

function sub_c18530a0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c18530a0.length
    return address(sub_c18530a0[arg1])
}

function isGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor51[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceGovernor() payable {
    require msg.sender
    require stor51[address(msg.sender)]
    stor51[address(msg.sender)] = 0
    emit GovernorRemoved(msg.sender);
}

function addGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor51[address(msg.sender)]:
        revert with 0, 'Only Governor Action'
    require arg1
    require not stor51[address(arg1)]
    stor51[address(arg1)] = 1
    emit GovernorAdded(arg1);
}

function exists(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_14df8b72[address(arg1)] >= sub_c18530a0.length:
        return 0
    if not arg1:
        return 0
    require sub_14df8b72[address(arg1)] < sub_c18530a0.length
    return (address(sub_c18530a0[stor53[address(arg1)]]) == arg1)
}

function create(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor51[address(msg.sender)]:
        revert with 0, 'Only Governor Action'
    if sub_14df8b72[address(arg1)] < sub_c18530a0.length:
        if arg1:
            require sub_14df8b72[address(arg1)] < sub_c18530a0.length
            if address(sub_c18530a0[stor53[address(arg1)]]) == arg1:
                revert with 0, 'This BP exists'
    sub_14df8b72[address(arg1)] = sub_c18530a0.length
    sub_c18530a0.length++
    stor46BD[stor52.length] = arg1
    emit 0x3835b28e: address(arg1), msg.sender
}

function initialize() payable {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require msg.sender
    require not stor51[address(msg.sender)]
    stor51[address(msg.sender)] = 1
    emit GovernorAdded(msg.sender);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor51[address(msg.sender)]:
        revert with 0, 'Only Governor Action'
    require sub_c18530a0.length - 1 < sub_c18530a0.length
    address(sub_c18530a0[sub_c18530a0.length]) = 0
    sub_c18530a0.length--
    if sub_c18530a0.length > sub_c18530a0.length - 1:
        idx = sub_c18530a0.length - 1
        while sub_c18530a0.length > idx:
            uint256(sub_c18530a0[idx]) = 0
            idx = idx + 1
            continue 
    sub_14df8b72[address(arg1)] = 0
    require sub_14df8b72[address(arg1)] < sub_c18530a0.length
    address(sub_c18530a0[stor53[address(arg1)]]) = address(sub_c18530a0[sub_c18530a0.length])
    sub_14df8b72[address(stor52[stor52.length])] = sub_14df8b72[address(arg1)]
    emit 0x7165669f: address(arg1), msg.sender
}



}
