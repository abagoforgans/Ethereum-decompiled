contract main {




// =====================  Runtime code  =====================


address sub_a286e4c7Address;
address owner_;
uint256 stor2;

function sub_a286e4c7(?) {
    return sub_a286e4c7Address
}

function owner_() {
    return owner_
}

function _fallback() payable {
    revert
}

function sub_b628ff8f(?) {
    require msg.sender == owner_
    sub_a286e4c7Address = arg1
}

function sub_5e0cc9c6(?) {
    require msg.sender == owner_
    stor2 = sha3(arg1, block.timestamp)
}

function getSalt() {
    require sub_a286e4c7Address
    if sub_a286e4c7Address != msg.sender:
        return 100
    if block.difficulty + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath add failed'
    return sha3(block.difficulty + block.timestamp + 777, stor2)
}



}
