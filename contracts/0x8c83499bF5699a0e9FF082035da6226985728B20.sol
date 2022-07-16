contract main {




// =====================  Runtime code  =====================


address owner;
address sub_302990efAddress;
address sub_fa0b49adAddress;
address sub_cc401f59Address;
uint256 sub_8ea12ded;
mapping of struct sub_1c655596;

function sub_1c655596(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    return sub_1c655596[address(arg1)].field_0, 
           bool(sub_1c655596[address(arg1)].field_2824),
           sub_1c655596[address(arg1)].field_256,
           sub_1c655596[address(arg1)].field_512,
           sub_1c655596[address(arg1)].field_768,
           sub_1c655596[address(arg1)].field_1024,
           sub_1c655596[address(arg1)].field_1280,
           sub_1c655596[address(arg1)].field_1536,
           sub_1c655596[address(arg1)].field_1792,
           sub_1c655596[address(arg1)].field_2048,
           sub_1c655596[address(arg1)].field_2304,
           sub_1c655596[address(arg1)].field_2560
}

function sub_2105de24(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_2304
}

function sub_302990ef(?) {
    return sub_302990efAddress
}

function sub_38aeab65(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_512
}

function sub_400dc2fa(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_2560
}

function sub_600e1be5(?) {
    return sub_8ea12ded
}

function sub_698de207(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_2048
}

function sub_6a23196b(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_0
}

function sub_6f3341d1(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_1024
}

function sub_82b9d1bb(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_768
}

function owner() {
    return owner
}

function sub_8ea12ded(?) {
    return sub_8ea12ded
}

function sub_95e2d7bc(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_1280
}

function sub_a232d082(?) {
    require calldata.size - 4 >= 32
    return bool(sub_1c655596[address(arg1)].field_2816)
}

function sub_cc401f59(?) {
    return sub_cc401f59Address
}

function sub_d09b8ed5(?) {
    require calldata.size - 4 >= 32
    return bool(sub_1c655596[address(arg1)].field_2824)
}

function sub_e9e61cb1(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_1792
}

function sub_ef350589(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_1536
}

function sub_fa0b49ad(?) {
    return sub_fa0b49adAddress
}

function sub_fc804f07(?) {
    require calldata.size - 4 >= 32
    return sub_1c655596[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function sub_ddd11d1c(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    sub_302990efAddress = arg1
    sub_fa0b49adAddress = arg2
    sub_cc401f59Address = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c1f33ad5(?) {
    require calldata.size - 4 >= 32
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_8ea12ded = arg1
}

function sub_41b759af(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_0 = arg2
}

function sub_5a2a4c7a(?) {
    require calldata.size - 4 >= 32
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_2816 = 1
}

function sub_d060872a(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_768 = arg2
}

function sub_dcd3f858(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_256 = arg2
}

function sub_df94d2bf(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_512 = arg2
}

function sub_2290429f(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_2304 = arg2
}

function sub_23a9468a(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_1792 = arg2
}

function sub_26ca3747(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_2048 = arg2
}

function sub_2709ffdf(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_1280 = arg2
}

function sub_488158e2(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_1536 = arg2
}

function sub_79e09dfe(?) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    sub_1c655596[address(arg1)].field_512 = arg2
    sub_1c655596[address(arg1)].field_1024 = arg3
    sub_1c655596[address(arg1)].field_1536 = arg4
    sub_1c655596[address(arg1)].field_1792 = arg5
}

function sub_aea4d9b5(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_2560 = arg2
}

function sub_d8dfd153(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_1024 = arg2
}

function sub_dfdc3cbd(?) {
    require calldata.size - 4 >= 64
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    sub_1c655596[address(arg1)].field_2824 = Mask(248, 0, arg2)
}

function sub_7d8c2975(?) {
    require calldata.size - 4 >= 128
    if sub_302990efAddress != msg.sender:
        if sub_fa0b49adAddress != msg.sender:
            if owner != msg.sender:
                require msg.sender == sub_cc401f59Address
    require not sub_1c655596[address(arg1)].field_2816
    sub_1c655596[address(arg1)].field_2816 = 1
    sub_1c655596[address(arg1)].field_0 = arg3
    sub_1c655596[address(arg1)].field_2824 = Mask(248, 0, arg2)
    sub_1c655596[address(arg1)].field_256 = block.timestamp
    sub_1c655596[address(arg1)].field_768 = 0
    sub_1c655596[address(arg1)].field_1280 = arg4
    sub_1c655596[address(arg1)].field_2048 = 150
}



}
