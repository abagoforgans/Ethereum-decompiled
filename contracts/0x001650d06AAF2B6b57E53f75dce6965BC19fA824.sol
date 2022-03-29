contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 2104]




// =====================  Runtime code  =====================


array of address stor1;
array of uint256 stor2;

function _fallback() payable {
    revert 
}

function cardFacevalue(uint8 arg1) payable {
    return uint8((arg1 % 13) + 1)
}

function blackjackValue(uint8 arg1) payable {
    if uint8((arg1 % 13) + 1) < 10:
        return uint8((arg1 % 13) + 1)
    return 10
}

function cardDescription(uint8 arg1) payable {
    require uint8(arg1 / 13) <= 3
    require uint8(arg1 / 13) <= 3
    return arg1 / 13 << 248, uint8((arg1 % 13) + 1)
}

function getRandomNumber(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require block.hash(arg1)
    require arg5
    return (sha3(block.hash(arg1), arg2, arg3, arg4) % arg5)
}

function sub_187a4b05(?) payable {
    uint256(stor[arg1]) = 0
    idx = 0
    while uint256(stor[arg1]) + 31 / 32 > idx:
        uint8(stor[idx + sha3(arg1)]) = 0
        idx = idx + 1
        continue 
    stor1[arg1] = msg.sender
    stor2[arg1] = arg2
}

function cardEmojified(uint8 arg1) payable {
    require uint8(arg1 / 13) <= 3
    require uint8(arg1 / 13) <= 3
    if uint8(arg1 / 13) != 2:
        require uint8(arg1 / 13) <= 3
        if uint8(arg1 / 13) != 3:
            require uint8(arg1 / 13) <= 3
            if uint8(arg1 / 13) != 1:
                require uint8(arg1 / 13) <= 3
                if uint8(arg1 / 13):
                    return (arg1 % 13) + 1 << 248, 64, 0
    return (arg1 % 13) + 1 << 248, 64, 6, 0
}

function sub_9f341e13(?) payable {
    require uint256(stor[arg1]) < 52
    require block.hash(arg2)
    require -uint256(stor[arg1]) + 52
    idx = 0
    s = sha3(block.hash(arg2), stor1[arg1], stor2[arg1], uint256(stor[arg1])) % -uint256(stor[arg1]) + 52
    while uint8(idx) < uint256(stor[arg1]):
        mem[0] = arg1
        if stor((Mask(3, 5, idx) >> 5) + sha3(arg1))[uint8(idx)] > uint8(s):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require ext_code.size(0xf48b5ba37248162275ec5891954fd60d683478f8)
    delegate 0xf48b5ba37248162275ec5891954fd60d683478f8.0xea9c8820 with:
         gas gas_remaining - 50 wei
        args arg1, uint8(s)
    require delegate.return_code
    return uint8(s)
}



}
