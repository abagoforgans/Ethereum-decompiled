contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2010]




// =====================  Runtime code  =====================


const sub_51b29de9(?) = (block.number xor block.timestamp xor msg.sender xor 202916155157117075457 * block.hash(block.number))


function sub_099b7432(?) payable {
    return (arg1 % 52 % 4)
}

function sub_cfcd2f11(?) payable {
    return (Mask(8, 2, arg1 % 52) >> 2)
}

function sub_b1cc652a(?) payable {
    return sha3(arg1[all], ' of ', arg2[all])
}

function sub_9451b856(?) payable {
    return (arg1 xor 202916155157117075457 * block.hash(block.number))
}

function _fallback() payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}

function sub_cac13486(?) payable {
    if arg1 % 4:
        if 1 == arg1 % 4:
            mem[256] = mem[280 len 8]
            return Array(len=8, data=mem[256])
        if 2 == arg1 % 4:
            mem[256] = mem[283 len 5]
            return Array(len=5, data=mem[256])
        if arg1 % 4 != 3:
            return ''
    mem[256] = mem[282 len 6]
    return Array(len=6, data=mem[256])
}

function sub_581d2f8d(?) payable {
    if not uint8(arg1 % 13):
        mem[256] = mem[285 len 3]
        return Array(len=3, data=mem[256])
    if 1 == uint8(arg1 % 13):
        mem[256] = mem[284 len 4]
        return Array(len=4, data=mem[256])
    if 2 == uint8(arg1 % 13):
        mem[256] = mem[283 len 5]
        return Array(len=5, data=mem[256])
    if 3 == uint8(arg1 % 13):
        mem[256] = mem[284 len 4]
        return Array(len=4, data=mem[256])
    if 4 == uint8(arg1 % 13):
        mem[256] = mem[286 len 2]
        return Array(len=2, data=mem[256])
    if uint8(arg1 % 13) != 5:
        if uint8(arg1 % 13) != 6:
            if uint8(arg1 % 13) != 7:
                if uint8(arg1 % 13) != 8:
                    if uint8(arg1 % 13) != 9:
                        if uint8(arg1 % 13) != 10:
                            if uint8(arg1 % 13) != 11:
                                if uint8(arg1 % 13) != 12:
                                    return ''
    mem[256] = mem[287 len 1]
    return Array(len=1, data=mem[256])
}

function sub_8e277e27(?) payable {
    if not uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('Ace', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('Ace', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('Ace', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('Ace', ' of ')
        return sha3('Ace', ' of ', 'Hearts')
    if 1 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('King', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('King', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('King', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('King', ' of ')
        return sha3('King', ' of ', 'Hearts')
    if 2 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('Queen', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('Queen', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('Queen', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('Queen', ' of ')
        return sha3('Queen', ' of ', 'Hearts')
    if 3 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('Jack', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('Jack', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('Jack', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('Jack', ' of ')
        return sha3('Jack', ' of ', 'Hearts')
    if 4 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('10', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('10', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('10', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('10', ' of ')
        return sha3('10', ' of ', 'Hearts')
    if 5 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('9', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('9', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('9', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('9', ' of ')
        return sha3('9', ' of ', 'Hearts')
    if 6 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('8', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('8', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('8', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('8', ' of ')
        return sha3('8', ' of ', 'Hearts')
    if 7 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('7', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('7', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('7', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('7', ' of ')
        return sha3('7', ' of ', 'Hearts')
    if 8 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('6', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('6', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('6', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('6', ' of ')
        return sha3('6', ' of ', 'Hearts')
    if 9 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('5', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('5', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('5', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('5', ' of ')
        return sha3('5', ' of ', 'Hearts')
    if 10 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('4', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('4', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('4', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('4', ' of ')
        return sha3('4', ' of ', 'Hearts')
    if 11 == uint8(arg1 % 52 % 4 % 13):
        if not Mask(2, 2, arg1 % 52):
            return sha3('3', ' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('3', ' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3('3', ' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3('3', ' of ')
        return sha3('3', ' of ', 'Hearts')
    if uint8(arg1 % 52 % 4 % 13) != 12:
        if not Mask(2, 2, arg1 % 52):
            return sha3(' of ', 'Spades')
        if 1 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3(' of ', 'Diamonds')
        if 2 == Mask(2, 2, arg1 % 52) >> 2:
            return sha3(' of ', 'Clubs')
        if Mask(2, 2, arg1 % 52) >> 2 != 3:
            return sha3(' of ')
        return sha3(' of ', 'Hearts')
    if not Mask(2, 2, arg1 % 52):
        return sha3('2', ' of ', 'Spades')
    if 1 == Mask(2, 2, arg1 % 52) >> 2:
        return sha3('2', ' of ', 'Diamonds')
    if 2 == Mask(2, 2, arg1 % 52) >> 2:
        return sha3('2', ' of ', 'Clubs')
    if Mask(2, 2, arg1 % 52) >> 2 != 3:
        return sha3('2', ' of ')
    return sha3('2', ' of ', 'Hearts')
}



}
