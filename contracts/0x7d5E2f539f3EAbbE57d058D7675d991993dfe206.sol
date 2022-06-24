contract main {




// =====================  Runtime code  =====================


uint256 counter;
uint256 sub_b374befd;
array of uint256 prize;
mapping of uint8 stor3;

function counter() payable {
    return counter
}

function isWinner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function sub_b374befd(?) payable {
    return sub_b374befd
}

function getPrize() payable {
    return prize[0 len prize.length]
}

function _fallback() payable {
    revert
}

function claim(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if counter >= 10:
        revert with 0, 'All prizes collected'
    if stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe43616e6e6f742070617274696369706174652074776963652e20427574206665656c206672656520746f20737962696c2075,
                    mem[215 len 13]
    require sub_b374befd == arg1
    sub_b374befd = arg2
    counter++
    stor3[msg.sender] = 1
}



}
