contract main {




// =====================  Runtime code  =====================


uint128 object;
uint16 sub_e8099997; offset 160
address peerAddress;
address sub_4cc75f35Address;
mapping of uint16 sub_01733d55;
mapping of address sub_b71a77fc;
mapping of struct sub_318715dc;
mapping of struct sub_8bd89501;

function sub_01733d55(?) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_01733d55[Mask(128, 128, arg1)][1][uint16(sub_01733d55[Mask(128, 128, arg1)])])
}

function peer() payable {
    return peerAddress
}

function object() payable {
    return Mask(128, 128, object)
}

function sub_318715dc(?) payable {
    require calldata.size - 4 >= 32
    return Mask(128, 128, sub_318715dc[Mask(128, 128, arg1)].field_0), 
           sub_318715dc[Mask(128, 128, arg1)].field_128 << 128,
           sub_318715dc[Mask(128, 128, arg1)].field_256
}

function sub_3348a0ac(?) payable {
    require calldata.size - 4 >= 32
    return uint16(sub_01733d55[Mask(128, 128, arg1)])
}

function sub_3b3ce19e(?) payable {
    require calldata.size - 4 >= 64
    return uint256(sub_01733d55[Mask(128, 128, arg1)][1][arg2 << 240])
}

function sub_3e6d8c7d(?) payable {
    require calldata.size - 4 >= 64
    return uint16(sub_01733d55[Mask(128, 128, arg1)][2][arg2 << 240])
}

function sub_4cc75f35(?) payable {
    return sub_4cc75f35Address
}

function sub_6b99db0c(?) payable {
    require calldata.size - 4 >= 32
    return uint16(sub_01733d55[Mask(128, 128, arg1)])
}

function sub_8bd89501(?) payable {
    require calldata.size - 4 >= 32
    return Mask(128, 128, sub_8bd89501[arg1].field_0), sub_8bd89501[arg1].field_128 << 128, sub_8bd89501[arg1].field_256
}

function sub_b71a77fc(?) payable {
    require calldata.size - 4 >= 32
    return sub_b71a77fc[Mask(128, 128, arg1)]
}

function sub_e8099997(?) payable {
    return sub_e8099997
}

function _fallback() payable {
    revert
}

function resetState() payable {
    if msg.sender == peerAddress:
        sub_e8099997 = 0
}

function sub_731ada0d(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender == peerAddress:
        object = arg1
}

function sub_3033bbd2(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender == peerAddress:
        sub_b71a77fc[Mask(128, 128, arg1)] = arg2
}

function sub_11c1f93d(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender == peerAddress:
        uint16(sub_01733d55[Mask(128, 128, arg2)]) = uint16(uint16(sub_01733d55[Mask(128, 128, arg2)]) + 1)
        require ext_code.size(sub_4cc75f35Address)
        call sub_4cc75f35Address.0xc9ecb87a with:
             gas gas_remaining wei
            args Mask(128, 128, arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(sub_01733d55[Mask(128, 128, arg2)][1][uint16(sub_01733d55[Mask(128, 128, arg2)]) + 1 << 240]) = arg1
        uint16(sub_01733d55[Mask(128, 128, arg2)][2][uint16(sub_01733d55[Mask(128, 128, arg2)]) + 1 << 240]) = uint16(ext_call.return_data[0])
}

function sub_1fb96545(?) payable {
    require calldata.size - 4 >= 160
    if msg.sender == peerAddress:
        if sub_318715dc[Mask(128, 128, arg2)].field_256 >= 1:
            sub_8bd89501[stor5[Mask(128, 128, arg2)].field_256].field_0 = arg1
            sub_8bd89501[stor5[Mask(128, 128, arg2)].field_256].field_128 = arg2
            sub_8bd89501[stor5[Mask(128, 128, arg2)].field_256].field_128 = 0
            sub_8bd89501[stor5[Mask(128, 128, arg2)].field_256].field_256 = arg5
        else:
            sub_e8099997 = uint16(sub_e8099997 + 1)
            sub_318715dc[Mask(128, 128, arg2)].field_0 = 0
            sub_318715dc[Mask(128, 128, arg2)].field_128 = arg3
            sub_318715dc[Mask(128, 128, arg2)].field_256 = 0
            sub_318715dc[Mask(128, 128, arg2)].field_256 = uint16(sub_e8099997 + 1)
            sub_8bd89501[stor1 + 1 << 240].field_0 = arg1
            sub_8bd89501[stor1 + 1 << 240].field_128 = arg2
            sub_8bd89501[stor1 + 1 << 240].field_128 = 0
            sub_8bd89501[stor1 + 1 << 240].field_256 = arg5
        emit 0x6607eca7: Mask(128, 128, arg1), Mask(128, 128, arg2), Mask(128, 128, arg3), Mask(128, 128, arg4), arg5
}

function sub_b3812b36(?) payable {
    require calldata.size - 4 >= 160
    if msg.sender == peerAddress:
        if msg.sender == sub_b71a77fc[Mask(128, 128, arg1)]:
            if sub_318715dc[Mask(128, 128, arg2)].field_256 >= 1:
                sub_8bd89501[stor5[Mask(128, 128, arg2)].field_256].field_0 = arg1
                sub_8bd89501[stor5[Mask(128, 128, arg2)].field_256].field_128 = arg2
                sub_8bd89501[stor5[Mask(128, 128, arg2)].field_256].field_128 = 0
                sub_8bd89501[stor5[Mask(128, 128, arg2)].field_256].field_256 = arg5
            else:
                sub_e8099997 = uint16(sub_e8099997 + 1)
                sub_318715dc[Mask(128, 128, arg2)].field_0 = arg4
                sub_318715dc[Mask(128, 128, arg2)].field_128 = arg3
                sub_318715dc[Mask(128, 128, arg2)].field_256 = uint16(sub_e8099997 + 1)
                sub_8bd89501[stor1 + 1 << 240].field_0 = arg1
                sub_8bd89501[stor1 + 1 << 240].field_128 = arg2
                sub_8bd89501[stor1 + 1 << 240].field_128 = 0
                sub_8bd89501[stor1 + 1 << 240].field_256 = arg5
            emit 0xd6550a78: Mask(128, 128, arg1), Mask(128, 128, arg2), Mask(128, 128, arg3), Mask(128, 128, arg4), arg5
}



}
