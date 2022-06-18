contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_565971c3Address;

function sub_565971c3(?) {
    return sub_565971c3Address
}

function _fallback() payable {
    revert
}

function sub_20d30143(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can access this method'
    sub_565971c3Address = arg1
}



}
