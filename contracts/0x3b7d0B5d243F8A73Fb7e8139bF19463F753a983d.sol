contract main {




// =====================  Runtime code  =====================


address _owner;
address sub_9d03eefaAddress;
mapping of uint256 sub_824a2361;
mapping of uint8 stor3;
array of struct sub_a353cc19;
mapping of uint256 sub_cda1aa14;
uint256 sub_7572c83c;
uint256 sub_83cba9a0;
uint8 stor8;

function sub_08f432ac(?) payable {
    return bool(stor8)
}

function sub_7572c83c(?) payable {
    return sub_7572c83c
}

function sub_824a2361(?) payable {
    require calldata.size - 4 >= 32
    return sub_824a2361[arg1]
}

function sub_83cba9a0(?) payable {
    return sub_83cba9a0
}

function sub_8a117c21(?) payable {
    return bool(stor8)
}

function sub_9d03eefa(?) payable {
    return sub_9d03eefaAddress
}

function sub_a353cc19(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a353cc19.length
    return sub_a353cc19[arg1].field_0
}

function _owner() payable {
    return _owner
}

function sub_cda1aa14(?) payable {
    require calldata.size - 4 >= 32
    return sub_cda1aa14[arg1]
}

function sub_d35cf66b(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_de4534e7(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_59fb2cc5(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 32, 27, 0xfe4f6e6c7920746865206f776e65722063616e20646f20746869732e00000000
    stor8 = uint8(arg1)
}

function sub_86e2a8c4(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 32, 27, 0xfe4f6e6c7920746865206f776e65722063616e20646f20746869732e00000000
    sub_83cba9a0 = arg1
    emit 0x6fa9a15f: arg1
}

function sub_ab17eb38(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 32, 27, 0xfe4f6e6c7920746865206f776e65722063616e20646f20746869732e00000000
    sub_7572c83c = arg1
    emit 0x78f2a094: arg1
}

function sub_3f3b061a(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 32, 27, 0xfe4f6e6c7920746865206f776e65722063616e20646f20746869732e00000000
    sub_9d03eefaAddress = arg1
    emit UpdatedOwner(_owner, arg1);
}

function sub_5bab7b3b(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        return 0
    if not arg2:
        require sub_7572c83c * arg1 / arg1 == sub_7572c83c
        return (sub_7572c83c * arg1 / 1000)
    require sub_83cba9a0 * arg1 / arg1 == sub_83cba9a0
    return (sub_83cba9a0 * arg1 / 1000)
}

function updateOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 32, 27, 0xfe4f6e6c7920746865206f776e65722063616e20646f20746869732e00000000
    if not arg1:
        revert with 0, 'New Owner is not found'
    _owner = arg1
    emit UpdatedOwner(address(arg1), sub_9d03eefaAddress);
}

function sub_dd67b170(?) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    if 1 == bool(stor3[address(arg2)]):
        require sub_824a2361[address(arg2)] * arg1 / arg1 == sub_824a2361[address(arg2)]
        return (sub_824a2361[address(arg2)] * arg1 / 1000)
    if not arg3:
        require sub_7572c83c * arg1 / arg1 == sub_7572c83c
        return (sub_7572c83c * arg1 / 1000)
    require sub_83cba9a0 * arg1 / arg1 == sub_83cba9a0
    return (sub_83cba9a0 * arg1 / 1000)
}

function sub_d4204cfa(?) payable {
    if not sub_a353cc19.length:
        mem[(32 * sub_a353cc19.length) + 128] = 32
        mem[(32 * sub_a353cc19.length) + 160] = sub_a353cc19.length
        mem[(32 * sub_a353cc19.length) + 192 len floor32(sub_a353cc19.length)] = mem[128 len floor32(sub_a353cc19.length)]
        return memory
          from (32 * sub_a353cc19.length) + 128
           len (96 * sub_a353cc19.length) + 64
    mem[128] = address(sub_a353cc19.field_0)
    idx = 128
    s = 0
    while (32 * sub_a353cc19.length) + 96 > idx:
        mem[idx + 32] = sub_a353cc19[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_a353cc19.length) + 192 len floor32(sub_a353cc19.length)] = mem[128 len floor32(sub_a353cc19.length)]
    return Array(len=sub_a353cc19.length, data=mem[128 len floor32(sub_a353cc19.length)], mem[(32 * sub_a353cc19.length) + floor32(sub_a353cc19.length) + 192 len (32 * sub_a353cc19.length) - floor32(sub_a353cc19.length)]), 
}

function sub_c6bb6f4b(?) payable {
    require calldata.size - 4 >= 96
    if _owner != msg.sender:
        revert with 0, 32, 27, 0xfe4f6e6c7920746865206f776e65722063616e20646f20746869732e00000000
    if stor3[address(arg1)]:
        if arg3:
            sub_824a2361[address(arg1)] = arg2
            stor3[address(arg1)] = uint8(arg3)
            emit 0x29e5be56: address(arg1), arg2, arg3
        else:
            if sub_cda1aa14[address(arg1)]:
                if 1 >= sub_a353cc19.length:
                    if 1 == sub_a353cc19.length:
                        require sub_a353cc19.length
                        sub_a353cc19[sub_a353cc19.length].field_0 = 0
                        sub_a353cc19.length--
                else:
                    require sub_a353cc19.length - 1 < sub_a353cc19.length
                    require sub_cda1aa14[address(arg1)] - 1 < sub_a353cc19.length
                    sub_a353cc19[stor5[address(arg1)]].field_0 = sub_a353cc19[sub_a353cc19.length].field_0
                    require sub_a353cc19.length
                    sub_a353cc19[sub_a353cc19.length].field_0 = 0
                    sub_a353cc19.length--
                    sub_cda1aa14[address(arg1)] = 0
                sub_824a2361[address(arg1)] = arg2
                stor3[address(arg1)] = uint8(arg3)
                emit 0x29e5be56: address(arg1), arg2, arg3
    else:
        if arg3 == 1:
            sub_a353cc19.length++
            sub_a353cc19[sub_a353cc19.length].field_0 = arg1
            sub_cda1aa14[address(arg1)] = sub_a353cc19.length
            sub_824a2361[address(arg1)] = arg2
            stor3[address(arg1)] = uint8(arg3)
            emit 0x29e5be56: address(arg1), arg2, arg3
        else:
            if arg3:
                sub_824a2361[address(arg1)] = arg2
                stor3[address(arg1)] = uint8(arg3)
                emit 0x29e5be56: address(arg1), arg2, arg3
            else:
                if sub_cda1aa14[address(arg1)]:
                    if 1 >= sub_a353cc19.length:
                        if 1 == sub_a353cc19.length:
                            require sub_a353cc19.length
                            sub_a353cc19[sub_a353cc19.length].field_0 = 0
                            sub_a353cc19.length--
                    else:
                        require sub_a353cc19.length - 1 < sub_a353cc19.length
                        require sub_cda1aa14[address(arg1)] - 1 < sub_a353cc19.length
                        sub_a353cc19[stor5[address(arg1)]].field_0 = sub_a353cc19[sub_a353cc19.length].field_0
                        require sub_a353cc19.length
                        sub_a353cc19[sub_a353cc19.length].field_0 = 0
                        sub_a353cc19.length--
                        sub_cda1aa14[address(arg1)] = 0
                    sub_824a2361[address(arg1)] = arg2
                    stor3[address(arg1)] = uint8(arg3)
                    emit 0x29e5be56: address(arg1), arg2, arg3
}



}
