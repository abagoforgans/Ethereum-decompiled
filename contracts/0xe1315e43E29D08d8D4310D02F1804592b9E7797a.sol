contract main {




// =====================  Runtime code  =====================


const unsafeBlockRandom = ((block.hash(block.number - 1) % 5) + 1)


array of address stor0;
uint8 stor1;
uint256 stor1; offset 5
uint256 count;
array of uint256 stor2;
uint256 stor3;
mapping of struct user;

function count() {
    return count
}

function user(uint256 arg1) {
    return user[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_d6e1a9d4(?) {
    require count < stor2.length
    if stor('array', ('stor', 251, 5, ('name', 'stor1', 1)), ('name', 'stor2', 2))[stor1.field_0 % 32]:
        revert with 0, 'The last inning isn't over yet.'
    count++
    require count + 1 < stor2.length
    stor2[0.03125 / uint256(stor1.field_0) + 1] = 256^(count + 1 % 32) or !(255 * 256^(count + 1 % 32)) and stor2[0.03125 / uint256(stor1.field_0) + 1]
}

function Order(address arg1, uint256 arg2) payable {
    if arg2:
        if arg2 != 1:
            revert with 0, 'n is wrongas!!!'
    if msg.value <= 0:
        revert with 0, 'value is wrong'
    require count < stor2.length
    if not stor('array', ('stor', 251, 5, ('name', 'stor1', 1)), ('name', 'stor2', 2))[stor1.field_0 % 32]:
        revert with 0, 'It hasn't started yet.'
    if user[uint256(stor1.field_0)].field_0 <= 0:
        user[uint256(stor1.field_0)].field_256++
        stor[('array', 1, ('map', ('type', 256, ('field', 0, ('stor', ('name', 'stor1', 1)))), ('name', 'user', 4))) + user[uint256(stor1.field_0)].field_256].field_0 = arg1
        user[uint256(stor1.field_0)].field_0 += msg.value
        user[uint256(stor1.field_0)][2][address(arg1)].field_0 = 1
        user[uint256(stor1.field_0)][2][address(arg1)].field_256 = arg2
        user[uint256(stor1.field_0)][2][address(arg1)].field_512 = msg.value
    else:
        if not user[uint256(stor1.field_0)][2][address(arg1)].field_0:
            user[uint256(stor1.field_0)].field_256++
            stor[('array', 1, ('map', ('type', 256, ('field', 0, ('stor', ('name', 'stor1', 1)))), ('name', 'user', 4))) + user[uint256(stor1.field_0)].field_256].field_0 = arg1
            user[uint256(stor1.field_0)].field_0 += msg.value
            user[uint256(stor1.field_0)][2][address(arg1)].field_0 = 1
            user[uint256(stor1.field_0)][2][address(arg1)].field_256 = arg2
            user[uint256(stor1.field_0)][2][address(arg1)].field_512 = msg.value
        else:
            if arg2 == user[uint256(stor1.field_0)][2][address(arg1)].field_256:
                user[uint256(stor1.field_0)].field_0 += msg.value
                user[uint256(stor1.field_0)][2][address(arg1)].field_512 += msg.value
            else:
                user[uint256(stor1.field_0)].field_256++
                stor[('array', 1, ('map', ('type', 256, ('field', 0, ('stor', ('name', 'stor1', 1)))), ('name', 'user', 4))) + user[uint256(stor1.field_0)].field_256].field_0 = arg1
                user[uint256(stor1.field_0)].field_0 += msg.value
                user[uint256(stor1.field_0)][2][address(arg1)].field_0 = 1
                user[uint256(stor1.field_0)][2][address(arg1)].field_256 = arg2
                user[uint256(stor1.field_0)][2][address(arg1)].field_512 = msg.value
    emit 0x8cc678fe: address(arg1), arg2, msg.value
}

function sub_c940da87(?) {
    require count < stor2.length
    stor2[Mask(251, 0, stor1.field_5)] = 0
    stor3 = (block.hash(block.number - 1) % 5) + 1
    if user[uint256(stor1.field_0)].field_0:
        revert with 0, 'No one involved!'
    if stor3 < 4:
        idx = 0
        while idx < user[uint256(stor1.field_0)].field_256:
            mem[0] = user[uint256(stor1.field_0)][idx + 1].field_0
            mem[32] = sha3(count, 4) + 2
            if not user[uint256(stor1.field_0)][2][user[uint256(stor1.field_0)][idx + 1].field_0].field_256:
                require idx < user[uint256(stor1.field_0)].field_256
                stor0.length++
                mem[0] = 0
                stor0[stor0.length] = user[uint256(stor1.field_0)][idx + 1].field_0
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < user[uint256(stor1.field_0)].field_256:
            mem[0] = user[uint256(stor1.field_0)][idx + 1].field_0
            mem[32] = sha3(count, 4) + 2
            if user[uint256(stor1.field_0)][2][user[uint256(stor1.field_0)][idx + 1].field_0].field_256 == 1:
                require idx < user[uint256(stor1.field_0)].field_256
                stor0.length++
                mem[0] = 0
                stor0[stor0.length] = user[uint256(stor1.field_0)][idx + 1].field_0
            idx = idx + 1
            continue 
    if not stor0.length:
        call stor0.length with:
           value user[uint256(stor1.field_0)].field_0 wei
             gas 2300 * is_zero(value) wei
    else:
        idx = 0
        while idx < stor0.length:
            call stor0[idx] with:
               value 95 * user[uint256(stor1.field_0)].field_0 / 100 / stor0.length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < stor0.length
            mem[0] = 0
            mem[96] = stor0[idx]
            mem[128] = 95 * user[uint256(stor1.field_0)].field_0 / 100 / stor0.length
            emit 0x7d035f5a: stor0[idx], 95 * user[uint256(stor1.field_0)].field_0 / 100 / stor0.length
            idx = idx + 1
            continue 
        call stor0.length with:
           value user[uint256(stor1.field_0)].field_0 - (95 * user[uint256(stor1.field_0)].field_0 / 100 / stor0.length * stor0.length) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
