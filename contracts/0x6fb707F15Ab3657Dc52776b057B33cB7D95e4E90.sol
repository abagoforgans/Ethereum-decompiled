contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function sub_1c856696(?) {
    require calldata.size - 4 >= 64
    return bool(stor0[address(arg1)][arg2])
}

function sub_a44c02de(?) {
    require calldata.size - 4 >= 64
    return bool(stor0[arg1][arg2])
}

function _fallback() payable {
    revert with 0, 'UNSUPPORTED'
}

function sub_71c28821(?) {
    require calldata.size - 4 >= 32
    if stor0[msg.sender][arg1]:
        revert with 0, 'ALREADY_EXIST'
    stor0[msg.sender][arg1] = 1
    emit 0xb0b1ce0b: msg.sender, arg1
}



}
