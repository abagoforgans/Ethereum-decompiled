contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint8 stor2;
array of uint256 stor3;
uint256 stor4;
array of struct stor5;
array of uint8 stor6;
array of uint256 stor7;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3.length = 800
    stor2.length = 168 * 24 * 3600
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = 8 * stor5.length + 1
        while 8 * stor5.length > idx:
            stor5[idx].field_0 = 0
            stor5[idx].field_256 = 0
            uint8(stor5[idx].field_512) = 0
            stor5[idx].field_768 = 0
            uint8(stor5[idx].field_1536) = 0
            stor5[idx].field_1792 = 0
            idx = idx + 8
            continue 
    require stor5.length - 1 < stor5.length
    stor36B6[stor5.length - 1] = 0x3c81cf7279de81901303687979a6b62fdf04ec93480108d2ef38090d6135ad9f
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = (8 * stor5.length + 1) + code.data[3654 len 32]
        while code.data[3654 len 32] + (8 * stor5.length) > idx:
            stor[idx] = 0
            stor1[idx] = 0
            stor2[idx] = 0
            stor3[idx] = 0
            stor6[idx] = 0
            stor7[idx] = 0
            idx = idx + 8
            continue 
    require stor5.length - 1 < stor5.length
    stor[code.data[3654 len 32] + (8 * stor5.length - 1) + 1] = 0xb1540f17822cbe4daef5f1d96662b2dc92c5f9a2411429faaf73555d3149b68e
    stor4 = eth.balance(this.address) / stor3.length
    return code.data[441 len 3213]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint8 stor1;
array of uint8 stor2;
array of uint256 stor3;
uint256 max_bet_this_spin;
uint256 stor5;
array of uint8 stor6;
array of uint256 stor7;
mapping of uint256 stor99;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint8 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint8 stor1546678032441257452667456735582814959992782782816731922691272282333561699766;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463805;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463806;
array of uint8 stor38904946689225133062030360029229464415395357281359004841078294910011182463807;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463808;
array of uint8 stor38904946689225133062030360029229464415395357281359004841078294910011182463811;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463812;
array of uint256 stor79613103061719108015629534446346307020060586265373265636200101787793142102845;

function locked_funds_for_revealed_spins() payable {
    return stor1.length
}

function owner() payable {
    return address(owner)
}

function max_bet_this_spin() payable {
    return max_bet_this_spin
}

function owner_time_limit() payable {
    return stor2.length
}

function check_bet(uint256 arg1, address arg2, uint8 arg3) payable {
    require arg1 < stor5
    return stor[(8 * arg1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db5][address(arg2)][arg3 << 248]
}

function fraction() payable {
    return stor3.length
}

function _fallback() payable {
    revert 
}

function current_spin_number() payable {
    return (stor5 - 1)
}

function get_hash(uint8 arg1, bytes32 arg2) payable {
    return sha3(arg1, arg2)
}

function bet_this_spin() payable {
    require stor5 - 1 < stor5
    return storB003[stor5 - 1] != 0
}

function owner_deposit() payable {
    require msg.sender == address(owner)
    require msg.value != 0
}

function owner_set_fraction(uint256 arg1) payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    require arg1 != 0
    stor3.length = arg1
}

function spins(uint256 arg1) payable {
    require arg1 < stor5
    return stor5603[arg1], stor36B6[arg1], stor36B6[arg1], stor36B6[arg1], bool(stor36B6[arg1]), storB003[arg1]
}

function owner_set_time_limit(uint256 arg1) payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    require arg1 <= 336 * 24 * 3600
    stor2.length = arg1
}

function owner_transfer_ownership(address arg1) payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function seconds_left() payable {
    require stor5 - 1 < stor5
    if 0 == stor5603[stor5 - 1]:
        return -1
    if block.timestamp <= stor5603[stor5 - 1]:
        return (stor5603[stor5 - 1] - block.timestamp)
    else:
        return 0
}

function reserved_funds() payable {
    require stor5 - 2 < stor5
    require stor5 - 1 < stor5
    if stor5603[stor5 - 2]:
        if stor5603[stor5 - 1]:
            return stor1.length
        return (stor1.length + stor5603[stor5 - 1])
    if stor5603[stor5 - 1]:
        return (stor1.length + stor5603[stor5 - 2])
    return (stor1.length + stor5603[stor5 - 2] + stor5603[stor5 - 1])
}

function owner_withdraw(uint256 arg1) payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    require stor5 - 2 < stor5
    require stor5 - 1 < stor5
    if stor5603[stor5 - 2]:
        if stor5603[stor5 - 1]:
            require arg1 <= eth.balance(this.address) - stor1.length
        else:
            require arg1 <= eth.balance(this.address) - stor1.length - stor5603[stor5 - 1]
    else:
        if stor5603[stor5 - 1]:
            require arg1 <= eth.balance(this.address) - stor1.length - stor5603[stor5 - 2]
        else:
            require arg1 <= eth.balance(this.address) - stor1.length - stor5603[stor5 - 2] - stor5603[stor5 - 1]
    call address(owner) with:
       value arg1 wei
         gas 0 wei
}

function player_declare_taking_too_long() payable {
    require msg.value <= 0
    require stor5 - 2 < stor5
    require stor5 - 1 < stor5
    if not storB003[stor5 - 2]:
        if not storB003[stor5 - 1]:
            if not storB003[stor5 - 2]:
                require storB003[stor5 - 1]
        else:
            if not storB003[stor5 - 2]:
                require block.timestamp > stor5603[stor5 - 1]
    else:
        if not storB003[stor5 - 1]:
            if block.timestamp <= stor5603[stor5 - 2]:
                require storB003[stor5 - 1]
        else:
            if block.timestamp <= stor5603[stor5 - 2]:
                require block.timestamp > stor5603[stor5 - 1]
    stor5603[stor5 - 2] = 1
    stor5603[stor5 - 1] = 1
    stor1.length = stor5603[stor5 - 1] + stor5603[stor5 - 2] + stor1.length
}

function player_make_bet(uint8 arg1) payable {
    require msg.value != 0
    require stor5 - 1 < stor5
    require not stor5603[stor5 - 1]
    require arg1 <= 37
    require msg.value + stor[(8 * stor5 - 1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb41][arg1 << 248] <= max_bet_this_spin
    require stor5 - 2 < stor5
    require stor5 - 1 < stor5
    if stor5603[stor5 - 2]:
        if stor5603[stor5 - 1]:
            require (36 * msg.value) + stor1.length <= eth.balance(this.address)
        else:
            require (36 * msg.value) + stor1.length + stor5603[stor5 - 1] <= eth.balance(this.address)
    else:
        if stor5603[stor5 - 1]:
            require (36 * msg.value) + stor1.length + stor5603[stor5 - 2] <= eth.balance(this.address)
        else:
            require (36 * msg.value) + stor1.length + stor5603[stor5 - 2] + stor5603[stor5 - 1] <= eth.balance(this.address)
    stor[(8 * stor5 - 1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb42][address(msg.sender)][arg1 << 248] += msg.value
    stor[(8 * stor5 - 1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb41][arg1 << 248] += msg.value
    stor5603[stor5 - 1] += 36 * msg.value
    if 0 == stor5603[stor5 - 1]:
        stor5603[stor5 - 1] = block.timestamp + stor2.length
    emit MadeBet(msg.value, arg1 << 248, msg.sender);
}

function owner_reveal_and_commit(uint8 arg1, bytes32 arg2, bytes32 arg3) payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    require stor5 - 2 < stor5
    if not stor5603[stor5 - 2]:
        require sha3(arg1, arg2) == stor5603[stor5 - 2]
        require arg1 <= 37
        uint256(stor5603[stor5 - 2]) = arg1 or Mask(248, 8, uint256(stor5603[stor5 - 2]))
        stor5603[stor5 - 2] = arg2
        stor1.length += 36 * stor[(8 * stor5 - 2) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb41][arg1 << 248]
        emit Revealed(stor5 - 2, arg1);
    stor5++
    if not stor5 <= stor5 + 1:
        idx = (8 * stor5 + 1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3d
        while (8 * stor5) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3d > idx:
            stor[idx] = 0
            uint256(stor1[idx]) = 0
            stor2[idx] = 0
            stor3[idx] = 0
            stor6[idx] = 0
            stor7[idx] = 0
            idx = idx + 8
            continue 
    require stor5 - 1 < stor5
    stor5603[stor5 - 1] = arg3
    require stor5 - 2 < stor5
    require stor5 - 1 < stor5
    if stor5603[stor5 - 2]:
        if stor5603[stor5 - 1]:
            max_bet_this_spin = eth.balance(this.address) - stor1.length / stor3.length
        else:
            max_bet_this_spin = eth.balance(this.address) - stor1.length - stor5603[stor5 - 1] / stor3.length
    else:
        if stor5603[stor5 - 1]:
            max_bet_this_spin = eth.balance(this.address) - stor1.length - stor5603[stor5 - 2] / stor3.length
        else:
            max_bet_this_spin = eth.balance(this.address) - stor1.length - stor5603[stor5 - 2] - stor5603[stor5 - 1] / stor3.length
}

function player_collect_winnings(uint256 arg1) payable {
    require msg.value <= 0
    require arg1 < stor5
    if stor5603[arg1]:
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < 38:
            mem[0] = uint8(idx)
            mem[32] = sha3(address(msg.sender), (8 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb42)
            require not uint8(stor1[('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('add', 38904946689225133062030360029229464415395357281359004841078294910011182463810, ('mul', 8, ('param', 'arg1')))))])
            if stor[(8 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb42][address(msg.sender)][idx << 248] <= 0:
                s = sha3(idx << 248, sha3(address(msg.sender), (8 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb42))
                idx = idx + 1
                s = s
                continue 
            call msg.sender with:
               value 36 * stor[(8 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb42][address(msg.sender)][idx << 248] wei
                 gas 0 wei
            stor1.length += -36 * stor[(8 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb42][address(msg.sender)][idx << 248]
            uint8(stor1[('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('add', 38904946689225133062030360029229464415395357281359004841078294910011182463810, ('mul', 8, ('param', 'arg1')))))]) = 1
            s = sha3(idx << 248, sha3(address(msg.sender), (8 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb42))
            idx = idx + 1
            s = 1
            continue 
        if s:
        revert 
    require not uint8(stor1[('map', ('type', 8, ('stor', ('array', ('mul', 8, ('param', 'arg1')), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463807)))), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('add', 38904946689225133062030360029229464415395357281359004841078294910011182463810, ('mul', 8, ('param', 'arg1')))))])
    require stor[(8 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb42][address(msg.sender)][uint8(stor5603[arg1])] != 0
    call msg.sender with:
       value 36 * stor[(8 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb42][address(msg.sender)][uint8(stor5603[arg1])] wei
         gas 0 wei
    stor1.length += -36 * stor[(8 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb42][address(msg.sender)][uint8(stor5603[arg1])]
    uint8(stor1[('map', ('type', 8, ('stor', ('array', ('mul', 8, ('param', 'arg1')), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463807)))), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('add', 38904946689225133062030360029229464415395357281359004841078294910011182463810, ('mul', 8, ('param', 'arg1')))))]) = 1
}



}
