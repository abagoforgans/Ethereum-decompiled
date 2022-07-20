contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of struct unitsOwned;
mapping of struct sub_0cdddceb;
mapping of uint256 stor4;
mapping of struct stor5;
mapping of struct upgradesOwned;
mapping of struct sub_0a8e987c;
mapping of struct sub_126ef280;
mapping of uint8 stor9;
address stor10;

function upgradesOwned(address arg1, uint256 arg2) {
    return upgradesOwned[arg1][arg2].field_0, upgradesOwned[arg1][arg2].field_0, upgradesOwned[arg1][arg2].field_128
}

function sub_0a8e987c(?) {
    return sub_0a8e987c[arg1].field_0, 
           sub_0a8e987c[arg1].field_256,
           sub_0a8e987c[arg1].field_512,
           sub_0a8e987c[arg1].field_768,
           sub_0a8e987c[arg1].field_848,
           sub_0a8e987c[arg1].field_768
}

function sub_0cdddceb(?) {
    return sub_0cdddceb[arg1][arg2].field_0, sub_0cdddceb[arg1][arg2].field_224
}

function sub_126ef280(?) {
    return sub_126ef280[arg1].field_0, 
           sub_126ef280[arg1].field_256,
           sub_126ef280[arg1].field_512,
           sub_126ef280[arg1].field_768,
           sub_126ef280[arg1].field_1024,
           sub_126ef280[arg1].field_1280,
           sub_126ef280[arg1].field_1536,
           sub_126ef280[arg1].field_1536,
           sub_126ef280[arg1].field_1536,
           sub_126ef280[arg1].field_1536,
           sub_126ef280[arg1].field_1536,
           sub_126ef280[arg1].field_1536,
           sub_126ef280[arg1].field_1536,
           sub_126ef280[arg1].field_1760
}

function unitsOwned(address arg1, uint256 arg2) {
    return unitsOwned[arg1][arg2].field_0, unitsOwned[arg1][arg2].field_80
}

function _fallback() payable {
    revert
}

function sub_12e68ddf(?) {
    require msg.sender == stor10
    stor0 = arg1
}

function sub_f40b26bd(?) {
    require msg.sender == stor10
    stor1 = arg1
}

function sub_5352df60(?) {
    require stor9[msg.sender]
    stor4[address(arg1)][arg3] += arg2
}

function sub_c26c006d(?) {
    require stor9[msg.sender]
    stor4[address(arg1)][arg3] -= arg2
}

function setOperator(address arg1, bool arg2) {
    require msg.sender == stor10
    stor9[address(arg1)] = uint8(arg2)
}

function sub_d1bf3d3f(?) {
    return ((stor5[address(arg1)][arg2].field_0 * uint32(stor5[address(arg1)][arg2].field_32 + 100)) + (sub_0a8e987c[arg2].field_512 * uint32(stor5[address(arg1)][arg2].field_32 + 100)))
}

function sub_c9518675(?) {
    require stor9[msg.sender]
    sub_0a8e987c[arg1].field_0 = arg1
    sub_0a8e987c[arg1].field_256 = Mask(224, 0, arg2)
    sub_0a8e987c[arg1].field_512 = arg3
    sub_0a8e987c[arg1].field_768 = Mask(80, 0, arg4)
    sub_0a8e987c[arg1].field_848 = Mask(80, 0, arg5)
    sub_0a8e987c[arg1].field_928 = Mask(80, 0, arg6)
}

function sub_e00cf084(?) {
    require stor9[msg.sender]
    sub_126ef280[arg1].field_0 = arg1
    sub_126ef280[arg1].field_256 = Mask(224, 0, arg2)
    sub_126ef280[arg1].field_512 = arg3
    sub_126ef280[arg1].field_768 = arg4
    sub_126ef280[arg1].field_1024 = arg5
    sub_126ef280[arg1].field_1280 = arg6
    sub_126ef280[arg1].field_1536 = arg7
    sub_126ef280[arg1].field_1568 = arg8
    sub_126ef280[arg1].field_1600 = arg9
    sub_126ef280[arg1].field_1632 = arg10
    sub_126ef280[arg1].field_1664 = arg11
    sub_126ef280[arg1].field_1696 = arg12
    sub_126ef280[arg1].field_1728 = arg13
    sub_126ef280[arg1].field_1760 = arg14
}

function sub_60bada1c(?) {
    require stor9[msg.sender]
    if uint32((80 * sub_0cdddceb[address(arg1)][arg2].field_224) + 80) > Mask(224, 0, Mask(224, 0, arg3) + sub_0cdddceb[address(arg1)][arg2].field_0):
        sub_0cdddceb[address(arg1)][arg2].field_0 = Mask(224, 0, Mask(224, 0, arg3) + sub_0cdddceb[address(arg1)][arg2].field_0)
        return 0
    sub_0cdddceb[address(arg1)][arg2].field_0 = Mask(224, 0, sub_0cdddceb[address(arg1)][arg2].field_0 + Mask(224, 0, arg3) - uint32((80 * sub_0cdddceb[address(arg1)][arg2].field_224) + 80))
    sub_0cdddceb[address(arg1)][arg2].field_224 = uint32(sub_0cdddceb[address(arg1)][arg2].field_224 + 1)
    stor5[address(arg1)][arg2].field_0 = stor5[address(arg1)][arg2].field_0
    stor5[address(arg1)][arg2].field_32 = stor5[address(arg1)][arg2].field_32
    stor5[address(arg1)][arg2].field_64 = stor5[address(arg1)][arg2].field_64
    stor5[address(arg1)][arg2].field_96 = uint32(stor5[address(arg1)][arg2].field_96 + 5)
    stor5[address(arg1)][arg2].field_128 = stor5[address(arg1)][arg2].field_128
    stor5[address(arg1)][arg2].field_160 = uint32(stor5[address(arg1)][arg2].field_160 + 5)
    stor5[address(arg1)][arg2].field_192 = stor5[address(arg1)][arg2].field_192
    stor5[address(arg1)][arg2].field_224 = uint32(stor5[address(arg1)][arg2].field_224 + 5)
    require ext_code.size(stor0)
    call stor0.0x36bce998 with:
         gas gas_remaining wei
        args address(arg1), (5 * sub_0a8e987c[arg2].field_768 * unitsOwned[address(arg1)][arg2].field_0) + (5 * stor5[address(arg1)][arg2].field_64 * unitsOwned[address(arg1)][arg2].field_0) << 176, (5 * sub_0a8e987c[arg2].field_848 * unitsOwned[address(arg1)][arg2].field_0) + (5 * stor5[address(arg1)][arg2].field_128 * unitsOwned[address(arg1)][arg2].field_0) << 176, Mask(80, 0, (5 * sub_0a8e987c[arg2].field_928 * unitsOwned[address(arg1)][arg2].field_0) + (5 * stor5[address(arg1)][arg2].field_192 * unitsOwned[address(arg1)][arg2].field_0))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_a442ed60(?) {
    require stor9[msg.sender]
    if 0 >= sub_0a8e987c[arg2].field_512:
        require ext_code.size(stor0)
        call stor0.0xfa5ccd0b with:
             gas gas_remaining wei
            args address(arg1), (sub_0a8e987c[arg2].field_768 * unitsOwned[address(arg1)][arg2].field_0 * arg6) + (stor5[address(arg1)][arg2].field_64 * unitsOwned[address(arg1)][arg2].field_0 * arg6) + (unitsOwned[address(arg1)][arg2].field_0 * arg5 * uint32(stor5[address(arg1)][arg2].field_96 + 100)) << 176, (sub_0a8e987c[arg2].field_848 * unitsOwned[address(arg1)][arg2].field_0 * arg8) + (stor5[address(arg1)][arg2].field_128 * unitsOwned[address(arg1)][arg2].field_0 * arg8) + (unitsOwned[address(arg1)][arg2].field_0 * arg7 * uint32(stor5[address(arg1)][arg2].field_160 + 100)) << 176, Mask(80, 0, (sub_0a8e987c[arg2].field_928 * unitsOwned[address(arg1)][arg2].field_0 * arg10) + (stor5[address(arg1)][arg2].field_192 * unitsOwned[address(arg1)][arg2].field_0 * arg10) + (unitsOwned[address(arg1)][arg2].field_0 * arg9 * uint32(stor5[address(arg1)][arg2].field_224 + 100)))
    else:
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xb5967e16 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xadd1dcfa with:
             gas gas_remaining wei
            args address(arg1), (sub_0a8e987c[arg2].field_512 * Mask(80, 0, unitsOwned[address(arg1)][arg2].field_0 * arg4)) + (stor5[address(arg1)][arg2].field_0 * Mask(80, 0, unitsOwned[address(arg1)][arg2].field_0 * arg4)) + Mask(80, 0, unitsOwned[address(arg1)][arg2].field_0 * arg3 * uint32(stor5[address(arg1)][arg2].field_32 + 100)) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor5[address(arg1)][arg2].field_0 = uint32(stor5[address(arg1)][arg2].field_0 - arg3)
    stor5[address(arg1)][arg2].field_32 = uint32(stor5[address(arg1)][arg2].field_32 - arg4)
    stor5[address(arg1)][arg2].field_64 = uint32(stor5[address(arg1)][arg2].field_64 - arg5)
    stor5[address(arg1)][arg2].field_96 = uint32(stor5[address(arg1)][arg2].field_96 - arg6)
    stor5[address(arg1)][arg2].field_128 = uint32(stor5[address(arg1)][arg2].field_128 - arg7)
    stor5[address(arg1)][arg2].field_160 = uint32(stor5[address(arg1)][arg2].field_160 - arg8)
    stor5[address(arg1)][arg2].field_192 = uint32(stor5[address(arg1)][arg2].field_192 - arg9)
    stor5[address(arg1)][arg2].field_224 = uint32(stor5[address(arg1)][arg2].field_224 - arg10)
}

function sub_a9ed5b43(?) {
    require stor9[msg.sender]
    if 0 >= sub_0a8e987c[arg2].field_512:
        require ext_code.size(stor0)
        call stor0.0x36bce998 with:
             gas gas_remaining wei
            args address(arg1), (sub_0a8e987c[arg2].field_768 * unitsOwned[address(arg1)][arg2].field_0 * arg6) + (stor5[address(arg1)][arg2].field_64 * unitsOwned[address(arg1)][arg2].field_0 * arg6) + (unitsOwned[address(arg1)][arg2].field_0 * arg5 * uint32(stor5[address(arg1)][arg2].field_96 + 100)) << 176, (sub_0a8e987c[arg2].field_848 * unitsOwned[address(arg1)][arg2].field_0 * arg8) + (stor5[address(arg1)][arg2].field_128 * unitsOwned[address(arg1)][arg2].field_0 * arg8) + (unitsOwned[address(arg1)][arg2].field_0 * arg7 * uint32(stor5[address(arg1)][arg2].field_160 + 100)) << 176, Mask(80, 0, (sub_0a8e987c[arg2].field_928 * unitsOwned[address(arg1)][arg2].field_0 * arg10) + (stor5[address(arg1)][arg2].field_192 * unitsOwned[address(arg1)][arg2].field_0 * arg10) + (unitsOwned[address(arg1)][arg2].field_0 * arg9 * uint32(stor5[address(arg1)][arg2].field_224 + 100)))
    else:
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xb5967e16 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
             gas gas_remaining wei
            args address(arg1), (sub_0a8e987c[arg2].field_512 * Mask(80, 0, unitsOwned[address(arg1)][arg2].field_0 * arg4)) + (stor5[address(arg1)][arg2].field_0 * Mask(80, 0, unitsOwned[address(arg1)][arg2].field_0 * arg4)) + Mask(80, 0, unitsOwned[address(arg1)][arg2].field_0 * arg3 * uint32(stor5[address(arg1)][arg2].field_32 + 100)) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor5[address(arg1)][arg2].field_0 = uint32(stor5[address(arg1)][arg2].field_0 + arg3)
    stor5[address(arg1)][arg2].field_32 = uint32(stor5[address(arg1)][arg2].field_32 + arg4)
    stor5[address(arg1)][arg2].field_64 = uint32(stor5[address(arg1)][arg2].field_64 + arg5)
    stor5[address(arg1)][arg2].field_96 = uint32(stor5[address(arg1)][arg2].field_96 + arg6)
    stor5[address(arg1)][arg2].field_128 = uint32(stor5[address(arg1)][arg2].field_128 + arg7)
    stor5[address(arg1)][arg2].field_160 = uint32(stor5[address(arg1)][arg2].field_160 + arg8)
    stor5[address(arg1)][arg2].field_192 = uint32(stor5[address(arg1)][arg2].field_192 + arg9)
    stor5[address(arg1)][arg2].field_224 = uint32(stor5[address(arg1)][arg2].field_224 + arg10)
}

function sub_11d5aa93(?) {
    require stor9[msg.sender]
    if Mask(80, 0, (stor5[address(arg3)][arg2].field_64 * uint32(stor5[address(arg3)][arg2].field_96 + 100)) + (sub_0a8e987c[arg2].field_768 * uint32(stor5[address(arg3)][arg2].field_96 + 100))) > 0:
        require ext_code.size(stor0)
        call stor0.0xfa5ccd0b with:
             gas gas_remaining wei
            args address(arg3), (stor5[address(arg3)][arg2].field_64 * uint32(stor5[address(arg3)][arg2].field_96 + 100) * Mask(80, 0, arg1)) + (sub_0a8e987c[arg2].field_768 * uint32(stor5[address(arg3)][arg2].field_96 + 100) * Mask(80, 0, arg1)) << 176, (stor5[address(arg3)][arg2].field_128 * uint32(stor5[address(arg3)][arg2].field_160 + 100) * Mask(80, 0, arg1)) + (sub_0a8e987c[arg2].field_848 * uint32(stor5[address(arg3)][arg2].field_160 + 100) * Mask(80, 0, arg1)) << 176, Mask(80, 0, (sub_0a8e987c[arg2].field_928 * uint32(stor5[address(arg3)][arg2].field_224 + 100) * Mask(80, 0, arg1)) + (stor5[address(arg3)][arg2].field_192 * uint32(stor5[address(arg3)][arg2].field_224 + 100) * Mask(80, 0, arg1)))
    else:
        if Mask(80, 0, (stor5[address(arg3)][arg2].field_128 * uint32(stor5[address(arg3)][arg2].field_160 + 100)) + (sub_0a8e987c[arg2].field_848 * uint32(stor5[address(arg3)][arg2].field_160 + 100))) > 0:
            require ext_code.size(stor0)
            call stor0.0xfa5ccd0b with:
                 gas gas_remaining wei
                args address(arg3), (stor5[address(arg3)][arg2].field_64 * uint32(stor5[address(arg3)][arg2].field_96 + 100) * Mask(80, 0, arg1)) + (sub_0a8e987c[arg2].field_768 * uint32(stor5[address(arg3)][arg2].field_96 + 100) * Mask(80, 0, arg1)) << 176, (stor5[address(arg3)][arg2].field_128 * uint32(stor5[address(arg3)][arg2].field_160 + 100) * Mask(80, 0, arg1)) + (sub_0a8e987c[arg2].field_848 * uint32(stor5[address(arg3)][arg2].field_160 + 100) * Mask(80, 0, arg1)) << 176, Mask(80, 0, (sub_0a8e987c[arg2].field_928 * uint32(stor5[address(arg3)][arg2].field_224 + 100) * Mask(80, 0, arg1)) + (stor5[address(arg3)][arg2].field_192 * uint32(stor5[address(arg3)][arg2].field_224 + 100) * Mask(80, 0, arg1)))
        else:
            if Mask(80, 0, (sub_0a8e987c[arg2].field_928 * uint32(stor5[address(arg3)][arg2].field_224 + 100)) + (stor5[address(arg3)][arg2].field_192 * uint32(stor5[address(arg3)][arg2].field_224 + 100))) <= 0:
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xadd1dcfa with:
                     gas gas_remaining wei
                    args address(arg3), (stor5[address(arg3)][arg2].field_0 * uint32(stor5[address(arg3)][arg2].field_32 + 100) * Mask(80, 0, arg1)) + (sub_0a8e987c[arg2].field_512 * uint32(stor5[address(arg3)][arg2].field_32 + 100) * Mask(80, 0, arg1)) / 100
            else:
                require ext_code.size(stor0)
                call stor0.0xfa5ccd0b with:
                     gas gas_remaining wei
                    args address(arg3), (stor5[address(arg3)][arg2].field_64 * uint32(stor5[address(arg3)][arg2].field_96 + 100) * Mask(80, 0, arg1)) + (sub_0a8e987c[arg2].field_768 * uint32(stor5[address(arg3)][arg2].field_96 + 100) * Mask(80, 0, arg1)) << 176, (stor5[address(arg3)][arg2].field_128 * uint32(stor5[address(arg3)][arg2].field_160 + 100) * Mask(80, 0, arg1)) + (sub_0a8e987c[arg2].field_848 * uint32(stor5[address(arg3)][arg2].field_160 + 100) * Mask(80, 0, arg1)) << 176, Mask(80, 0, (sub_0a8e987c[arg2].field_928 * uint32(stor5[address(arg3)][arg2].field_224 + 100) * Mask(80, 0, arg1)) + (stor5[address(arg3)][arg2].field_192 * uint32(stor5[address(arg3)][arg2].field_224 + 100) * Mask(80, 0, arg1)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    unitsOwned[address(arg3)][arg2].field_0 = Mask(80, 0, unitsOwned[address(arg3)][arg2].field_0 - Mask(80, 0, arg1))
}

function sub_e6fe72bb(?) {
    require unitsOwned[msg.sender][arg1].field_0 >= Mask(80, 0, arg2)
    require Mask(80, 0, arg2) > 0
    require sub_0a8e987c[arg1].field_256 > 0
    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
    call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xb5967e16 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100))) > 0:
        require ext_code.size(stor0)
        call stor0.0xfa5ccd0b with:
             gas gas_remaining wei
            args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
    else:
        if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100))) > 0:
            require ext_code.size(stor0)
            call stor0.0xfa5ccd0b with:
                 gas gas_remaining wei
                args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
        else:
            if Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100))) <= 0:
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xadd1dcfa with:
                     gas gas_remaining wei
                    args msg.sender, (stor5[address(msg.sender)][arg1].field_0 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_512 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) / 100
            else:
                require ext_code.size(stor0)
                call stor0.0xfa5ccd0b with:
                     gas gas_remaining wei
                    args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    unitsOwned[address(msg.sender)][arg1].field_0 = Mask(80, 0, unitsOwned[address(msg.sender)][arg1].field_0 - Mask(80, 0, arg2))
    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
    call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, Mask(222, 2, 3 * sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) >> 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_454764ac(?) {
    require stor9[msg.sender]
    if 0 >= sub_0a8e987c[arg2].field_512:
        require ext_code.size(stor0)
        call stor0.0x8688ce0 with:
             gas gas_remaining wei
            args address(arg1), (sub_0a8e987c[arg2].field_768 * uint32(uint32(stor5[address(arg1)][arg2].field_96 + ('signextend', 3, ('add', ('call.data', 164, 32), ('mul', -1, ('call.data', 420, 32))))) + 100) * unitsOwned[address(arg1)][stor7[arg2].field_0].field_0) + (uint32(stor5[address(arg1)][arg2].field_64 + ('signextend', 3, ('add', ('call.data', 132, 32), ('mul', -1, ('call.data', 388, 32))))) * uint32(uint32(stor5[address(arg1)][arg2].field_96 + ('signextend', 3, ('add', ('call.data', 164, 32), ('mul', -1, ('call.data', 420, 32))))) + 100) * unitsOwned[address(arg1)][stor7[arg2].field_0].field_0) - (Mask(80, 0, (sub_0a8e987c[arg2].field_768 * uint32(stor5[address(arg1)][arg2].field_96 + 100)) + (stor5[address(arg1)][arg2].field_64 * uint32(stor5[address(arg1)][arg2].field_96 + 100))) * unitsOwned[address(arg1)][stor7[arg2].field_0].field_0), (sub_0a8e987c[arg2].field_848 * uint32(uint32(stor5[address(arg1)][arg2].field_160 + ('signextend', 3, ('add', ('call.data', 228, 32), ('mul', -1, ('call.data', 484, 32))))) + 100) * unitsOwned[address(arg1)][stor7[arg2].field_0].field_0) + (uint32(stor5[address(arg1)][arg2].field_128 + ('signextend', 3, ('add', ('call.data', 196, 32), ('mul', -1, ('call.data', 452, 32))))) * uint32(uint32(stor5[address(arg1)][arg2].field_160 + ('signextend', 3, ('add', ('call.data', 228, 32), ('mul', -1, ('call.data', 484, 32))))) + 100) * unitsOwned[address(arg1)][stor7[arg2].field_0].field_0) - (Mask(80, 0, (sub_0a8e987c[arg2].field_848 * uint32(stor5[address(arg1)][arg2].field_160 + 100)) + (stor5[address(arg1)][arg2].field_128 * uint32(stor5[address(arg1)][arg2].field_160 + 100))) * unitsOwned[address(arg1)][stor7[arg2].field_0].field_0), (sub_0a8e987c[arg2].field_928 * uint32(uint32(stor5[address(arg1)][arg2].field_224 + ('signextend', 3, ('add', ('call.data', 292, 32), ('mul', -1, ('call.data', 548, 32))))) + 100) * unitsOwned[address(arg1)][stor7[arg2].field_0].field_0) + (uint32(stor5[address(arg1)][arg2].field_192 + ('signextend', 3, ('add', ('call.data', 260, 32), ('mul', -1, ('call.data', 516, 32))))) * uint32(uint32(stor5[address(arg1)][arg2].field_224 + ('signextend', 3, ('add', ('call.data', 292, 32), ('mul', -1, ('call.data', 548, 32))))) + 100) * unitsOwned[address(arg1)][stor7[arg2].field_0].field_0) - (Mask(80, 0, (sub_0a8e987c[arg2].field_928 * uint32(stor5[address(arg1)][arg2].field_224 + 100)) + (stor5[address(arg1)][arg2].field_192 * uint32(stor5[address(arg1)][arg2].field_224 + 100))) * unitsOwned[address(arg1)][stor7[arg2].field_0].field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor5[address(arg1)][stor7[arg2].field_0].field_0 = stor5[address(arg1)][arg2].field_0
        stor5[address(arg1)][stor7[arg2].field_0].field_32 = stor5[address(arg1)][arg2].field_32
        stor5[address(arg1)][stor7[arg2].field_0].field_64 = uint32(stor5[address(arg1)][arg2].field_64 + ('signextend', 3, ('add', ('call.data', 132, 32), ('mul', -1, ('call.data', 388, 32)))))
        stor5[address(arg1)][stor7[arg2].field_0].field_96 = uint32(stor5[address(arg1)][arg2].field_96 + ('signextend', 3, ('add', ('call.data', 164, 32), ('mul', -1, ('call.data', 420, 32)))))
        stor5[address(arg1)][stor7[arg2].field_0].field_128 = uint32(stor5[address(arg1)][arg2].field_128 + ('signextend', 3, ('add', ('call.data', 196, 32), ('mul', -1, ('call.data', 452, 32)))))
        stor5[address(arg1)][stor7[arg2].field_0].field_160 = uint32(stor5[address(arg1)][arg2].field_160 + ('signextend', 3, ('add', ('call.data', 228, 32), ('mul', -1, ('call.data', 484, 32)))))
        stor5[address(arg1)][stor7[arg2].field_0].field_192 = uint32(stor5[address(arg1)][arg2].field_192 + ('signextend', 3, ('add', ('call.data', 260, 32), ('mul', -1, ('call.data', 516, 32)))))
        stor5[address(arg1)][stor7[arg2].field_0].field_224 = uint32(stor5[address(arg1)][arg2].field_224 + ('signextend', 3, ('add', ('call.data', 292, 32), ('mul', -1, ('call.data', 548, 32)))))
    else:
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xb5967e16 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
        if (sub_0a8e987c[arg2].field_512 * uint32(uint32(stor5[address(arg1)][arg2].field_32 + ('signextend', 3, ('add', ('call.data', 100, 32), ('mul', -1, ('call.data', 356, 32))))) + 100)) + (uint32(stor5[address(arg1)][arg2].field_0 + ('signextend', 3, ('add', ('call.data', 68, 32), ('mul', -1, ('call.data', 324, 32))))) * uint32(uint32(stor5[address(arg1)][arg2].field_32 + ('signextend', 3, ('add', ('call.data', 100, 32), ('mul', -1, ('call.data', 356, 32))))) + 100)) - (sub_0a8e987c[arg2].field_512 * uint32(stor5[address(arg1)][arg2].field_32 + 100)) - (stor5[address(arg1)][arg2].field_0 * uint32(stor5[address(arg1)][arg2].field_32 + 100)) <= 0:
            call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xadd1dcfa with:
                 gas gas_remaining wei
                args address(arg1), (-1 * sub_0a8e987c[arg2].field_512 * uint32(uint32(stor5[address(arg1)][arg2].field_32 + ('signextend', 3, ('add', ('call.data', 100, 32), ('mul', -1, ('call.data', 356, 32))))) + 100) * unitsOwned[address(arg1)][arg2].field_0) - (uint32(stor5[address(arg1)][arg2].field_0 + ('signextend', 3, ('add', ('call.data', 68, 32), ('mul', -1, ('call.data', 324, 32))))) * uint32(uint32(stor5[address(arg1)][arg2].field_32 + ('signextend', 3, ('add', ('call.data', 100, 32), ('mul', -1, ('call.data', 356, 32))))) + 100) * unitsOwned[address(arg1)][arg2].field_0) + (sub_0a8e987c[arg2].field_512 * uint32(stor5[address(arg1)][arg2].field_32 + 100) * unitsOwned[address(arg1)][arg2].field_0) + (stor5[address(arg1)][arg2].field_0 * uint32(stor5[address(arg1)][arg2].field_32 + 100) * unitsOwned[address(arg1)][arg2].field_0) / 100
        else:
            call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                 gas gas_remaining wei
                args address(arg1), (sub_0a8e987c[arg2].field_512 * uint32(uint32(stor5[address(arg1)][arg2].field_32 + ('signextend', 3, ('add', ('call.data', 100, 32), ('mul', -1, ('call.data', 356, 32))))) + 100) * unitsOwned[address(arg1)][arg2].field_0) + (uint32(stor5[address(arg1)][arg2].field_0 + ('signextend', 3, ('add', ('call.data', 68, 32), ('mul', -1, ('call.data', 324, 32))))) * uint32(uint32(stor5[address(arg1)][arg2].field_32 + ('signextend', 3, ('add', ('call.data', 100, 32), ('mul', -1, ('call.data', 356, 32))))) + 100) * unitsOwned[address(arg1)][arg2].field_0) - (sub_0a8e987c[arg2].field_512 * uint32(stor5[address(arg1)][arg2].field_32 + 100) * unitsOwned[address(arg1)][arg2].field_0) - (stor5[address(arg1)][arg2].field_0 * uint32(stor5[address(arg1)][arg2].field_32 + 100) * unitsOwned[address(arg1)][arg2].field_0) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor5[address(arg1)][arg2].field_0 = uint32(stor5[address(arg1)][arg2].field_0 + ('signextend', 3, ('add', ('call.data', 68, 32), ('mul', -1, ('call.data', 324, 32)))))
        stor5[address(arg1)][arg2].field_32 = uint32(stor5[address(arg1)][arg2].field_32 + ('signextend', 3, ('add', ('call.data', 100, 32), ('mul', -1, ('call.data', 356, 32)))))
        stor5[address(arg1)][arg2].field_64 = stor5[address(arg1)][arg2].field_64
        stor5[address(arg1)][arg2].field_96 = stor5[address(arg1)][arg2].field_96
        stor5[address(arg1)][arg2].field_128 = stor5[address(arg1)][arg2].field_128
        stor5[address(arg1)][arg2].field_160 = stor5[address(arg1)][arg2].field_160
        stor5[address(arg1)][arg2].field_192 = stor5[address(arg1)][arg2].field_192
        stor5[address(arg1)][arg2].field_224 = stor5[address(arg1)][arg2].field_224
}

function sub_511de280(?) {
    if not sub_126ef280[arg1 << 192].field_768:
        upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_0 = 0
        upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_64 = upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_64
        upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_128 = upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_128
        upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_256 = 0
        require sub_126ef280[arg1 << 192].field_512 > 0
        require upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_0 < arg1
        require upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_0 >= sub_126ef280[arg1 << 192].field_1024
    else:
        upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_0 = upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_0
        if 1 == sub_126ef280[arg1 << 192].field_768:
            upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_64 = arg1
            upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_128 = upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_128
            require sub_126ef280[arg1 << 192].field_512 > 0
            require upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_64 < arg1
            require upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_64 >= sub_126ef280[arg1 << 192].field_1024
        else:
            upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_64 = upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_64
            if sub_126ef280[arg1 << 192].field_768 != 2:
                upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_128 = upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_128
                require sub_126ef280[arg1 << 192].field_512 > 0
                require 0 < arg1
                require 0 >= sub_126ef280[arg1 << 192].field_1024
            else:
                upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_128 = arg1
                require sub_126ef280[arg1 << 192].field_512 > 0
                require upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_128 < arg1
                require upgradesOwned[msg.sender][stor8[arg1 << 192].field_512].field_128 >= sub_126ef280[arg1 << 192].field_1024
    require ext_code.size(stor1)
    call stor1.0xa8be8329 with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
    call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xbb002ba8 with:
         gas gas_remaining wei
        args msg.sender, Mask(224, 0, sub_126ef280[arg1 << 192].field_256 - (Mask(224, 0, ext_call.return_data[0] * sub_126ef280[arg1 << 192].field_256) / 100))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0x1149ef5a with:
         gas gas_remaining wei
        args Mask(224, 0, sub_126ef280[arg1 << 192].field_256 - (Mask(224, 0, ext_call.return_data[0] * sub_126ef280[arg1 << 192].field_256) / 100))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 2 == sub_126ef280[arg1 << 192].field_768:
        stor4[msg.sender][stor8[arg1 << 192].field_512] += sub_126ef280[arg1 << 192].field_1280
    else:
        if 1 == sub_126ef280[arg1 << 192].field_768:
            if 0 >= sub_0a8e987c[stor8[arg1 << 192].field_512].field_512:
                require ext_code.size(stor0)
                call stor0.0x36bce998 with:
                     gas gas_remaining wei
                    args msg.sender, (sub_0a8e987c[stor8[arg1 << 192].field_512].field_768 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1632) + (stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_64 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1632) + (unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1600 * uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_96 + 100)) << 176, (sub_0a8e987c[stor8[arg1 << 192].field_512].field_848 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1696) + (stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_128 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1696) + (unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1664 * uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_160 + 100)) << 176, Mask(80, 0, (sub_0a8e987c[stor8[arg1 << 192].field_512].field_928 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1760) + (stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_192 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1760) + (unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1728 * uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_224 + 100)))
            else:
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xb5967e16 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                     gas gas_remaining wei
                    args msg.sender, (sub_0a8e987c[stor8[arg1 << 192].field_512].field_512 * Mask(80, 0, unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1568)) + (stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * Mask(80, 0, unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1568)) + Mask(80, 0, unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1536 * uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_32 + 100)) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 + sub_126ef280[arg1 << 192].field_1536)
            stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_32 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_32 + sub_126ef280[arg1 << 192].field_1568)
            stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_64 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_64 + sub_126ef280[arg1 << 192].field_1600)
            stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_96 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_96 + sub_126ef280[arg1 << 192].field_1632)
            stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_128 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_128 + sub_126ef280[arg1 << 192].field_1664)
            stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_160 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_160 + sub_126ef280[arg1 << 192].field_1696)
            stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_192 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_192 + sub_126ef280[arg1 << 192].field_1728)
            stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_224 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_224 + sub_126ef280[arg1 << 192].field_1760)
        else:
            if not sub_126ef280[arg1 << 192].field_768:
                if 0 >= sub_0a8e987c[stor8[arg1 << 192].field_512].field_512:
                    require ext_code.size(stor0)
                    call stor0.0x36bce998 with:
                         gas gas_remaining wei
                        args msg.sender, (sub_0a8e987c[stor8[arg1 << 192].field_512].field_768 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1632) + (stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_64 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1632) + (unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1600 * uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_96 + 100)) << 176, (sub_0a8e987c[stor8[arg1 << 192].field_512].field_848 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1696) + (stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_128 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1696) + (unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1664 * uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_160 + 100)) << 176, Mask(80, 0, (sub_0a8e987c[stor8[arg1 << 192].field_512].field_928 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1760) + (stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_192 * unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1760) + (unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1728 * uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_224 + 100)))
                else:
                    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                    call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xb5967e16 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                    call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                         gas gas_remaining wei
                        args msg.sender, (sub_0a8e987c[stor8[arg1 << 192].field_512].field_512 * Mask(80, 0, unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1568)) + (stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * Mask(80, 0, unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1568)) + Mask(80, 0, unitsOwned[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 * sub_126ef280[arg1 << 192].field_1536 * uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_32 + 100)) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_0 + sub_126ef280[arg1 << 192].field_1536)
                stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_32 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_32 + sub_126ef280[arg1 << 192].field_1568)
                stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_64 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_64 + sub_126ef280[arg1 << 192].field_1600)
                stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_96 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_96 + sub_126ef280[arg1 << 192].field_1632)
                stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_128 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_128 + sub_126ef280[arg1 << 192].field_1664)
                stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_160 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_160 + sub_126ef280[arg1 << 192].field_1696)
                stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_192 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_192 + sub_126ef280[arg1 << 192].field_1728)
                stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_224 = uint32(stor5[address(msg.sender)][stor8[arg1 << 192].field_512].field_224 + sub_126ef280[arg1 << 192].field_1760)
}

function sub_43f4e4dc(?) {
    require stor9[msg.sender]
    mem[0] = arg1
    mem[32] = sha3(address(arg3), 2)
    if unitsOwned[address(arg3)][arg1].field_80:
        unitsOwned[address(arg3)][arg1].field_0 = Mask(80, 0, Mask(80, 0, arg2) + unitsOwned[address(arg3)][arg1].field_0)
    else:
        mem[96] = 0xebff831f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
        call 0xc81068cd335889736fc485592e4d73a82403d44b.0xebff831f with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _8 = mem[96 len 4], address(arg3) << 64
        require mem[96 len 4], address(arg3) << 64 <= 4294967296
        require mem[96 len 4], address(arg3) << 64 + 32 <= return_data.size
        require mem[mem[96 len 4], address(arg3) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg3) << 64 + (32 * mem[mem[96 len 4], address(arg3) << 64 + 96]) + 32 <= return_data.size
        _19 = mem[mem[96 len 4], address(arg3) << 64 + 96]
        require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
        call 0xc81068cd335889736fc485592e4d73a82403d44b.0x8d67799e with:
             gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg4 >= ext_call.return_data[0]:
            if uint8(var23008) >= _19:
                require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                     gas gas_remaining wei
                    args address(arg3), var23008 << 248, arg1
            else:
                require uint8(var25009) < mem[_8 + 96]
                if not var29001:
                    require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                    call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                         gas gas_remaining wei
                        args address(arg3), var29009 << 248, arg1
                else:
                    idx = var29009
                    while uint8(idx + 1) < _19:
                        require uint8(idx + 1) < mem[_8 + 96]
                        if mem[(32 * uint8(idx + 1)) + _8 + 128] > 0:
                            idx = idx + 1
                            continue 
                        require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                        call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                             gas gas_remaining wei
                            args address(arg3), idx + 1 << 248, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        unitsOwned[address(arg3)][arg1].field_0 = Mask(80, 0, arg2)
                        unitsOwned[address(arg3)][arg1].field_80 = 1
                        if Mask(80, 0, (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100))) > 0:
                            require ext_code.size(stor0)
                            call stor0.0x36bce998 with:
                                 gas gas_remaining wei
                                args address(arg3), (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                        else:
                            if Mask(80, 0, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100))) > 0:
                                require ext_code.size(stor0)
                                call stor0.0x36bce998 with:
                                     gas gas_remaining wei
                                    args address(arg3), (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                            else:
                                if Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100))) <= 0:
                                    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                                    call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                                         gas gas_remaining wei
                                        args address(arg3), (stor5[address(arg3)][arg1].field_0 * uint32(stor5[address(arg3)][arg1].field_32 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_512 * uint32(stor5[address(arg3)][arg1].field_32 + 100) * Mask(80, 0, arg2)) / 100
                                else:
                                    require ext_code.size(stor0)
                                    call stor0.0x36bce998 with:
                                         gas gas_remaining wei
                                        args address(arg3), (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                    call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                         gas gas_remaining wei
                        args address(arg3), None + 1 << 248, arg1
        else:
            if arg4 >= _19:
                require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                     gas gas_remaining wei
                    args address(arg3), arg4 << 248, arg1
            else:
                require arg4 < mem[_8 + 96]
                if mem[(32 * uint8(arg4)) + _8 + 128] <= 0:
                    require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                    call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                         gas gas_remaining wei
                        args address(arg3), arg4 << 248, arg1
                else:
                    if uint8(var26008) >= _19:
                        require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                        call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                             gas gas_remaining wei
                            args address(arg3), var26008 << 248, arg1
                    else:
                        require uint8(var28009) < mem[_8 + 96]
                        if not var32001:
                            require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                            call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                 gas gas_remaining wei
                                args address(arg3), var32009 << 248, arg1
                        else:
                            idx = var32009
                            while uint8(idx + 1) < _19:
                                require uint8(idx + 1) < mem[_8 + 96]
                                if mem[(32 * uint8(idx + 1)) + _8 + 128] > 0:
                                    idx = idx + 1
                                    continue 
                                require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                                call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                     gas gas_remaining wei
                                    args address(arg3), idx + 1 << 248, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                unitsOwned[address(arg3)][arg1].field_0 = Mask(80, 0, arg2)
                                unitsOwned[address(arg3)][arg1].field_80 = 1
                                if Mask(80, 0, (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100))) > 0:
                                    require ext_code.size(stor0)
                                    call stor0.0x36bce998 with:
                                         gas gas_remaining wei
                                        args address(arg3), (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                else:
                                    if Mask(80, 0, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100))) > 0:
                                        require ext_code.size(stor0)
                                        call stor0.0x36bce998 with:
                                             gas gas_remaining wei
                                            args address(arg3), (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                    else:
                                        if Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100))) <= 0:
                                            require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                                            call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                                                 gas gas_remaining wei
                                                args address(arg3), (stor5[address(arg3)][arg1].field_0 * uint32(stor5[address(arg3)][arg1].field_32 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_512 * uint32(stor5[address(arg3)][arg1].field_32 + 100) * Mask(80, 0, arg2)) / 100
                                        else:
                                            require ext_code.size(stor0)
                                            call stor0.0x36bce998 with:
                                                 gas gas_remaining wei
                                                args address(arg3), (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                            call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                 gas gas_remaining wei
                                args address(arg3), None + 1 << 248, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        unitsOwned[address(arg3)][arg1].field_0 = Mask(80, 0, arg2)
        unitsOwned[address(arg3)][arg1].field_80 = 1
    if Mask(80, 0, (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100))) > 0:
        require ext_code.size(stor0)
        call stor0.0x36bce998 with:
             gas gas_remaining wei
            args address(arg3), (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
    else:
        if Mask(80, 0, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100))) > 0:
            require ext_code.size(stor0)
            call stor0.0x36bce998 with:
                 gas gas_remaining wei
                args address(arg3), (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
        else:
            if Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100))) <= 0:
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                     gas gas_remaining wei
                    args address(arg3), (stor5[address(arg3)][arg1].field_0 * uint32(stor5[address(arg3)][arg1].field_32 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_512 * uint32(stor5[address(arg3)][arg1].field_32 + 100) * Mask(80, 0, arg2)) / 100
            else:
                require ext_code.size(stor0)
                call stor0.0x36bce998 with:
                     gas gas_remaining wei
                    args address(arg3), (stor5[address(arg3)][arg1].field_64 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(arg3)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(arg3)][arg1].field_128 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(arg3)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(arg3)][arg1].field_192 * uint32(stor5[address(arg3)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4705c181(?) {
    require sub_0a8e987c[arg1].field_256
    require Mask(224, 0, Mask(224, 0, sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) / sub_0a8e987c[arg1].field_256) == Mask(80, 0, arg2)
    require Mask(224, 0, sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) > 0
    if Mask(80, 0, Mask(80, 0, arg2) + unitsOwned[msg.sender][arg1].field_0) <= 99:
        require ext_code.size(stor1)
        call stor1.0xa8be8329 with:
             gas gas_remaining wei
            args msg.sender, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xbb002ba8 with:
             gas gas_remaining wei
            args msg.sender, Mask(224, 0, (sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) - (Mask(224, 0, ext_call.return_data[0] * sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) / 100))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[132] = this.address
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0x4f03f17c with:
             gas gas_remaining wei
            args Mask(222, 2, 3 * sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) << 32, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.0x1149ef5a with:
             gas gas_remaining wei
            args Mask(224, 0, (sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) - (Mask(224, 0, ext_call.return_data[0] * sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) / 100) - (Mask(222, 2, 3 * sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) >> 2))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = arg1
        mem[32] = sha3(address(msg.sender), 2)
        if unitsOwned[address(msg.sender)][arg1].field_80:
            unitsOwned[address(msg.sender)][arg1].field_0 = Mask(80, 0, Mask(80, 0, arg2) + unitsOwned[address(msg.sender)][arg1].field_0)
        else:
            mem[96] = 0xebff831f00000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
            call 0xc81068cd335889736fc485592e4d73a82403d44b.0xebff831f with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _44 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
            _58 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
            call 0xc81068cd335889736fc485592e4d73a82403d44b.0x8d67799e with:
                 gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg3 >= ext_call.return_data[0]:
                if uint8(var38008) >= _58:
                    require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                    call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                         gas gas_remaining wei
                        args msg.sender, var38008 << 248, arg1
                else:
                    require uint8(var40009) < mem[_44 + 96]
                    if not var44001:
                        require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                        call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                             gas gas_remaining wei
                            args msg.sender, var44009 << 248, arg1
                    else:
                        idx = var44009
                        while uint8(idx + 1) < _58:
                            require uint8(idx + 1) < mem[_44 + 96]
                            if mem[(32 * uint8(idx + 1)) + _44 + 128] > 0:
                                idx = idx + 1
                                continue 
                            require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                            call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                 gas gas_remaining wei
                                args msg.sender, idx + 1 << 248, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            unitsOwned[address(msg.sender)][arg1].field_0 = Mask(80, 0, arg2)
                            unitsOwned[address(msg.sender)][arg1].field_80 = 1
                            if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100))) > 0:
                                require ext_code.size(stor0)
                                call stor0.0x36bce998 with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                            else:
                                if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100))) > 0:
                                    require ext_code.size(stor0)
                                    call stor0.0x36bce998 with:
                                         gas gas_remaining wei
                                        args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                else:
                                    if Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100))) <= 0:
                                        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                                        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                                             gas gas_remaining wei
                                            args msg.sender, (stor5[address(msg.sender)][arg1].field_0 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_512 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) / 100
                                    else:
                                        require ext_code.size(stor0)
                                        call stor0.0x36bce998 with:
                                             gas gas_remaining wei
                                            args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                        call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                             gas gas_remaining wei
                            args msg.sender, None + 1 << 248, arg1
            else:
                if arg3 >= _58:
                    require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                    call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                         gas gas_remaining wei
                        args msg.sender, arg3 << 248, arg1
                else:
                    require arg3 < mem[_44 + 96]
                    if mem[(32 * uint8(arg3)) + _44 + 128] <= 0:
                        require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                        call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                             gas gas_remaining wei
                            args msg.sender, arg3 << 248, arg1
                    else:
                        if uint8(var41008) >= _58:
                            require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                            call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                 gas gas_remaining wei
                                args msg.sender, var41008 << 248, arg1
                        else:
                            require uint8(var43009) < mem[_44 + 96]
                            if not var47001:
                                require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                                call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                     gas gas_remaining wei
                                    args msg.sender, var47009 << 248, arg1
                            else:
                                idx = var47009
                                while uint8(idx + 1) < _58:
                                    require uint8(idx + 1) < mem[_44 + 96]
                                    if mem[(32 * uint8(idx + 1)) + _44 + 128] > 0:
                                        idx = idx + 1
                                        continue 
                                    require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                                    call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                         gas gas_remaining wei
                                        args msg.sender, idx + 1 << 248, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    unitsOwned[address(msg.sender)][arg1].field_0 = Mask(80, 0, arg2)
                                    unitsOwned[address(msg.sender)][arg1].field_80 = 1
                                    if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100))) > 0:
                                        require ext_code.size(stor0)
                                        call stor0.0x36bce998 with:
                                             gas gas_remaining wei
                                            args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                    else:
                                        if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100))) > 0:
                                            require ext_code.size(stor0)
                                            call stor0.0x36bce998 with:
                                                 gas gas_remaining wei
                                                args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                        else:
                                            if Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100))) <= 0:
                                                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                                                call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (stor5[address(msg.sender)][arg1].field_0 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_512 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) / 100
                                            else:
                                                require ext_code.size(stor0)
                                                call stor0.0x36bce998 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                                call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                     gas gas_remaining wei
                                    args msg.sender, None + 1 << 248, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            unitsOwned[address(msg.sender)][arg1].field_0 = Mask(80, 0, arg2)
            unitsOwned[address(msg.sender)][arg1].field_80 = 1
    else:
        require Mask(80, 0, Mask(80, 0, arg2) + unitsOwned[msg.sender][arg1].field_0) < stor4[msg.sender][arg1] + 99
        require ext_code.size(stor1)
        call stor1.0xa8be8329 with:
             gas gas_remaining wei
            args msg.sender, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xbb002ba8 with:
             gas gas_remaining wei
            args msg.sender, Mask(224, 0, (sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) - (Mask(224, 0, ext_call.return_data[0] * sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) / 100))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[132] = this.address
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0x4f03f17c with:
             gas gas_remaining wei
            args Mask(222, 2, 3 * sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) << 32, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.0x1149ef5a with:
             gas gas_remaining wei
            args Mask(224, 0, (sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) - (Mask(224, 0, ext_call.return_data[0] * sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) / 100) - (Mask(222, 2, 3 * sub_0a8e987c[arg1].field_256 * Mask(80, 0, arg2)) >> 2))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = arg1
        mem[32] = sha3(address(msg.sender), 2)
        if unitsOwned[address(msg.sender)][arg1].field_80:
            unitsOwned[address(msg.sender)][arg1].field_0 = Mask(80, 0, Mask(80, 0, arg2) + unitsOwned[address(msg.sender)][arg1].field_0)
        else:
            mem[96] = 0xebff831f00000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
            call 0xc81068cd335889736fc485592e4d73a82403d44b.0xebff831f with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _47 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
            _71 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
            call 0xc81068cd335889736fc485592e4d73a82403d44b.0x8d67799e with:
                 gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg3 >= ext_call.return_data[0]:
                if uint8(var39008) >= _71:
                    require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                    call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                         gas gas_remaining wei
                        args msg.sender, var39008 << 248, arg1
                else:
                    require uint8(var41009) < mem[_47 + 96]
                    if not var45001:
                        require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                        call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                             gas gas_remaining wei
                            args msg.sender, var45009 << 248, arg1
                    else:
                        idx = var45009
                        while uint8(idx + 1) < _71:
                            require uint8(idx + 1) < mem[_47 + 96]
                            if mem[(32 * uint8(idx + 1)) + _47 + 128] > 0:
                                idx = idx + 1
                                continue 
                            require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                            call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                 gas gas_remaining wei
                                args msg.sender, idx + 1 << 248, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            unitsOwned[address(msg.sender)][arg1].field_0 = Mask(80, 0, arg2)
                            unitsOwned[address(msg.sender)][arg1].field_80 = 1
                            if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100))) > 0:
                                require ext_code.size(stor0)
                                call stor0.0x36bce998 with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                            else:
                                if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100))) > 0:
                                    require ext_code.size(stor0)
                                    call stor0.0x36bce998 with:
                                         gas gas_remaining wei
                                        args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                else:
                                    if Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100))) <= 0:
                                        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                                        call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                                             gas gas_remaining wei
                                            args msg.sender, (stor5[address(msg.sender)][arg1].field_0 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_512 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) / 100
                                    else:
                                        require ext_code.size(stor0)
                                        call stor0.0x36bce998 with:
                                             gas gas_remaining wei
                                            args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                        call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                             gas gas_remaining wei
                            args msg.sender, None + 1 << 248, arg1
            else:
                if arg3 >= _71:
                    require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                    call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                         gas gas_remaining wei
                        args msg.sender, arg3 << 248, arg1
                else:
                    require arg3 < mem[_47 + 96]
                    if mem[(32 * uint8(arg3)) + _47 + 128] <= 0:
                        require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                        call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                             gas gas_remaining wei
                            args msg.sender, arg3 << 248, arg1
                    else:
                        if uint8(var42008) >= _71:
                            require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                            call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                 gas gas_remaining wei
                                args msg.sender, var42008 << 248, arg1
                        else:
                            require uint8(var44009) < mem[_47 + 96]
                            if not var48001:
                                require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                                call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                     gas gas_remaining wei
                                    args msg.sender, var48009 << 248, arg1
                            else:
                                idx = var48009
                                while uint8(idx + 1) < _71:
                                    require uint8(idx + 1) < mem[_47 + 96]
                                    if mem[(32 * uint8(idx + 1)) + _47 + 128] > 0:
                                        idx = idx + 1
                                        continue 
                                    require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                                    call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                         gas gas_remaining wei
                                        args msg.sender, idx + 1 << 248, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    unitsOwned[address(msg.sender)][arg1].field_0 = Mask(80, 0, arg2)
                                    unitsOwned[address(msg.sender)][arg1].field_80 = 1
                                    if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100))) > 0:
                                        require ext_code.size(stor0)
                                        call stor0.0x36bce998 with:
                                             gas gas_remaining wei
                                            args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                    else:
                                        if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100))) > 0:
                                            require ext_code.size(stor0)
                                            call stor0.0x36bce998 with:
                                                 gas gas_remaining wei
                                                args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                        else:
                                            if Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100))) <= 0:
                                                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                                                call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (stor5[address(msg.sender)][arg1].field_0 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_512 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) / 100
                                            else:
                                                require ext_code.size(stor0)
                                                call stor0.0x36bce998 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc81068cd335889736fc485592e4d73a82403d44b)
                                call 0xc81068cd335889736fc485592e4d73a82403d44b.0xaf209cf8 with:
                                     gas gas_remaining wei
                                    args msg.sender, None + 1 << 248, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            unitsOwned[address(msg.sender)][arg1].field_0 = Mask(80, 0, arg2)
            unitsOwned[address(msg.sender)][arg1].field_80 = 1
    if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100))) > 0:
        require ext_code.size(stor0)
        call stor0.0x36bce998 with:
             gas gas_remaining wei
            args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
    else:
        if Mask(80, 0, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100))) > 0:
            require ext_code.size(stor0)
            call stor0.0x36bce998 with:
                 gas gas_remaining wei
                args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
        else:
            if Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100))) <= 0:
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da8)
                call 0x00df0960778c6e6597f197ed9a25f12f5d971da8.0xa732f9ac with:
                     gas gas_remaining wei
                    args msg.sender, (stor5[address(msg.sender)][arg1].field_0 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_512 * uint32(stor5[address(msg.sender)][arg1].field_32 + 100) * Mask(80, 0, arg2)) / 100
            else:
                require ext_code.size(stor0)
                call stor0.0x36bce998 with:
                     gas gas_remaining wei
                    args msg.sender, (stor5[address(msg.sender)][arg1].field_64 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_768 * uint32(stor5[address(msg.sender)][arg1].field_96 + 100) * Mask(80, 0, arg2)) << 176, (stor5[address(msg.sender)][arg1].field_128 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) + (sub_0a8e987c[arg1].field_848 * uint32(stor5[address(msg.sender)][arg1].field_160 + 100) * Mask(80, 0, arg2)) << 176, Mask(80, 0, (sub_0a8e987c[arg1].field_928 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)) + (stor5[address(msg.sender)][arg1].field_192 * uint32(stor5[address(msg.sender)][arg1].field_224 + 100) * Mask(80, 0, arg2)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
