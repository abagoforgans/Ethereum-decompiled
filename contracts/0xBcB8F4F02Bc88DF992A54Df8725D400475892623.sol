contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1, bool arg2)
#
address stor0;
mapping of uint8 stor1;
array of struct stor10;
array of struct stor101051993584849178915136821395265346177868384823507754984078593667947067386056;
array of uint256 stor11;
array of struct stor12;
mapping of uint256 stor13;
address stor14;
uint256 stor14;
mapping of uint256 stor15;
mapping of struct sub_ca5dbdb8;
mapping of struct stor17;
uint256 stor18;
uint256 stor18;
uint256 stor2;
bool stor3; offset 256
uint64 stor3;
uint64 stor3; offset 160
address stor3;
bool stor4; offset 256
uint64 stor4;
uint256 sub_0ab852e0;
uint8 stor5; offset 240
uint8 stor5; offset 248
uint16 stor5;
uint16 stor5; offset 240
uint32 stor5;
uint64 stor5; offset 32
uint64 stor5; offset 96
uint128 stor5; offset 160
uint256 stor5;
uint256 stor5;
uint128 stor6;
uint128 stor6; offset 1
uint128 stor6; offset 81
uint128 stor6;
uint128 stor6; offset 80
uint128 stor6; offset 79
uint128 stor6; offset 160
uint256 stor6; offset 80
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;
bool stor7; offset 256
uint8 stor7;
uint8 stor7; offset 8
uint128 stor7;
uint128 stor7; offset 16
uint128 stor7; offset 96
uint128 stor7; offset 176
array of struct stor8;
array of struct stor9;

function sub_0ab852e0(?) {
    return sub_0ab852e0
}

function sub_ca5dbdb8(?) {
    return uint128(sub_ca5dbdb8[arg1].field_0)
}

function sub_96ca14b1(?) {
    return uint16(stor5.field_0), uint256(stor18), uint64(stor5.field_32)
}

function sub_1aea6257(?) {
    if msg.sender == stor0:
        return True
    return bool(stor1[msg.sender])
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
    stor2 = sha3(arg1)
}

function sub_f8704355(?) {
    return (uint256(sub_ca5dbdb8[msg.sender].field_0) > 0x100000000000000000000000000000000)
}

function sub_083e2eae(?) {
    require 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f == msg.sender
    sub_0ab852e0 = 0
    return sub_0ab852e0
}

function setAdministrator(bytes32 arg1, bool arg2) {
    if stor0 != msg.sender:
        require stor1[msg.sender]
    stor1[arg1] = uint8(arg2)
}

function sub_d60b8f1d(?) {
    if stor0 != msg.sender:
        require stor1[msg.sender]
    uint256(stor18) = arg2
    if not arg1:
        uint256(stor5.field_0) = Mask(240, 0, stor5.field_0)
    else:
        uint8(stor5.field_240) = 1
        uint8(stor5.field_248) = 0
}

function sub_40d807d6(?) {
    mem[96 len 3168] = call.data[4 len 3168]
    if stor0 != msg.sender:
        mem[3264] = address(msg.sender)
        require stor1[msg.sender]
    idx = 0
    while idx < 99:
        stor9.length++
        mem[0] = 9
        uint256(stor9[stor9.length].field_0) = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
}

function sub_eacba928(?) {
    mem[96 len 3200] = call.data[4 len 3200]
    if stor0 != msg.sender:
        mem[3296] = address(msg.sender)
        require stor1[msg.sender]
    idx = 0
    while idx < 100:
        stor8.length++
        mem[0] = 8
        uint256(stor8[stor8.length].field_0) = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
}

function sub_ea8fbe3d(?) {
    mem[96 len 1280] = call.data[4 len 1280]
    if stor0 != msg.sender:
        mem[1376] = address(msg.sender)
        require stor1[msg.sender]
    idx = 0
    while idx < 40:
        stor10.length++
        mem[0] = 10
        uint256(stor10[stor10.length].field_0) = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
}

function sub_bc3a05b7(?) {
    if stor0 != msg.sender:
        require stor1[msg.sender]
    require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
    call 0x03cb0021808442ad5efb61197966aef72a1def96.deduct(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x196301b5673714fa91640fe2df34b5c05be7ab19, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    Mask(80, 0, stor6.field_0) = Mask(80, 0, arg1)
    uint256(stor14) = arg2
}

function sub_97f3e790(?) {
    if stor0 != msg.sender:
        require stor1[msg.sender]
    require arg1 < stor12.length
    if arg2 == uint64(stor12[arg1].field_256):
        if not uint8(stor12[arg1].field_488):
            require arg1 < stor12.length
            if not arg3:
                uint8(stor12[arg1].field_488) = 2
                Mask(80, 0, stor6.field_0) = Mask(80, 0, Mask(80, 0, stor12[arg1].field_160) + Mask(80, 0, stor6.field_0))
            else:
                uint8(stor12[arg1].field_488) = 1
                stor13[address(stor12[arg1].field_0)] += Mask(80, 0, stor12[arg1].field_160)
}

function getWinners(uint256 arg1) {
    if arg1 >= stor12.length:
        return address(stor3.field_0), 
               Mask(79, 1, Mask(80, 0, stor6.field_80) + Mask(80, 0, stor6.field_0)) << 176,
               uint64(stor3.field_0),
               uint8(stor7.field_0),
               0,
               uint64(stor4.field_0),
               0
    require stor12[arg1].field_448 % 1099511627776 - 1 % 1099511627776 < stor11.length
    return address(stor12[arg1].field_0), 
           Mask(80, 0, stor12[arg1].field_0),
           uint64(stor12[arg1].field_256),
           stor('array', ('mask_shl', 35, 5, -5, ('add', -1, ('stor', 40, 448, ('array', ('mul', 2, ('param', 'arg1')), ('name', 'stor12', 12))))), ('name', 'stor11', 11))[uint8(stor12[arg1].field_448 % 1099511627776 - 1)] + 1 << 248,
           uint8(stor12[arg1].field_256),
           uint64(stor12[arg1].field_256),
           uint64(stor12[arg1].field_384)
}

function register() {
    if uint128(sub_ca5dbdb8[msg.sender].field_0) < 10^17:
        require ext_code.size(0x196301b5673714fa91640fe2df34b5c05be7ab19)
        call 0x196301b5673714fa91640fe2df34b5c05be7ab19.0xca5dbdb8 with:
             gas gas_remaining wei
            args sha3(msg.sender)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x105631c6cddba84d12fa916f0045b1f97ec9c268)
        call 0x105631c6cddba84d12fa916f0045b1f97ec9c268.0xca5dbdb8 with:
             gas gas_remaining wei
            args sha3(msg.sender)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) + uint128(sub_ca5dbdb8[msg.sender].field_0) >= 10^17:
            uint256(sub_ca5dbdb8[msg.sender].field_0) += 0x200000000000000000000000000000003 * ext_call.return_data[0]
            require ext_code.size(0x573aaaa81154cd24e96f0cb97fd86110b8f6767f)
            call 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f.0xb9431a2a with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function getInfo() {
    if msg.sender != tx.origin:
        return 0, 0, 0, 0, 0, 0, 0, tx.origin, 0
    if stor17[msg.sender].field_160 % 1099511627776 >= stor11.length:
        require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
        call 0x03cb0021808442ad5efb61197966aef72a1def96.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return uint8(stor7.field_8) + (256 * uint8(stor7.field_0) + (256 * Mask(80, 0, stor5.field_160) + (uint64(stor5.field_96) + (uint64(stor5.field_32) + (uint32(stor5.field_0) << 64) << 64) << 80))), 
               Mask(80, 0, stor6.field_80) + Mask(80, 0, stor6.field_0) << 176,
               Mask(80, 0, stor7.field_0),
               Mask(80, 0, stor17[msg.sender].field_0),
               Mask(80, 0, stor17[msg.sender].field_0) + stor15[msg.sender] + stor13[msg.sender],
               uint256(sub_ca5dbdb8[msg.sender].field_0),
               ext_call.return_data[0],
               address(stor3.field_0),
               Mask(144, 0, stor14) + Mask(224, 0, stor18) + (2 * stor12.length) + uint16(stor5.field_240)
    require stor17[msg.sender].field_160 % 1099511627776 < stor11.length
    require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
    call 0x03cb0021808442ad5efb61197966aef72a1def96.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor('array', ('stor', 35, 165, ('map', ('data', 'msg.sender'), ('name', 'stor17', 17))), ('name', 'stor11', 11))[uint8(stor17[msg.sender].field_160 % 1099511627776)] <= 0:
        return uint8(stor7.field_8) + (256 * uint8(stor7.field_0) + (256 * Mask(80, 0, stor5.field_160) + (uint64(stor5.field_96) + (uint64(stor5.field_32) + (uint32(stor5.field_0) << 64) << 64) << 80))), 
               Mask(80, 0, stor6.field_80) + Mask(80, 0, stor6.field_0) << 176,
               Mask(80, 0, stor7.field_0),
               0,
               Mask(80, 0, stor17[msg.sender].field_0) + stor15[msg.sender] + stor13[msg.sender],
               uint256(sub_ca5dbdb8[msg.sender].field_0),
               ext_call.return_data[0],
               address(stor3.field_0),
               Mask(144, 0, stor14) + Mask(224, 0, stor18) + (2 * stor12.length) + uint16(stor5.field_240)
    return uint8(stor7.field_8) + (256 * uint8(stor7.field_0) + (256 * Mask(80, 0, stor5.field_160) + (uint64(stor5.field_96) + (uint64(stor5.field_32) + (uint32(stor5.field_0) << 64) << 64) << 80))), 
           Mask(80, 0, stor6.field_80) + Mask(80, 0, stor6.field_0) << 176,
           Mask(80, 0, stor7.field_0),
           0,
           Mask(80, 0, Mask(80, 0, stor17[msg.sender].field_0) + Mask(80, 0, stor17[msg.sender].field_80)) + stor15[msg.sender] + stor13[msg.sender],
           uint256(sub_ca5dbdb8[msg.sender].field_0),
           ext_call.return_data[0],
           address(stor3.field_0),
           Mask(144, 0, stor14) + Mask(224, 0, stor18) + (2 * stor12.length) + uint16(stor5.field_240)
}

function startGame(uint256 arg1) {
    if stor0 != msg.sender:
        require stor1[msg.sender]
    if uint32(stor5.field_0):
        if uint32(stor5.field_0) <= 1:
            if block.timestamp < uint64(stor5.field_32):
                if arg1 >= block.timestamp:
                    uint64(stor5.field_32) = uint64(arg1)
                    uint64(stor5.field_96) = uint64(arg1 + (3 * 3600))
                else:
                    uint64(stor5.field_32) = uint64(block.timestamp)
                    uint64(stor5.field_96) = uint64(block.timestamp + (3 * 3600))
    else:
        if 0 < uint32(stor5.field_0):
            Mask(79, 0, stor6.field_0) = Mask(79, 0, stor6.field_1)
            Mask(81, 0, stor6.field_79) = 0
            Mask(96, 0, stor6.field_160) = 0
            if not uint16(stor5.field_240):
                stor12.length++
                address(stor12[stor12.length].field_0) = address(stor3.field_0)
                Mask(80, 0, stor12[stor12.length].field_160) = Mask(80, 0, Mask(79, 0, stor6.field_81) + Mask(79, 0, stor6.field_1))
                storDF69[stor12.length].field_0 % 1099511627776 = stor11.length % 1099511627776
                uint64(storDF69[stor12.length].field_0) = uint64(stor4.field_0)
                uint64(storDF69[stor12.length].field_0) = uint64(stor3.field_160)
                uint64(storDF69[stor12.length].field_64) = 0
                uint64(storDF69[stor12.length].field_128) = uint64(stor5.field_96)
                storDF69[stor12.length].field_192 % 281474976710656 = 0
                storDF69[stor12.length].field_256 % 1 = 0
            else:
                stor13[address(stor3.field_0)] += Mask(80, 0, Mask(79, 0, stor6.field_81) + Mask(79, 0, stor6.field_1))
                stor12.length++
                address(stor12[stor12.length].field_0) = address(stor3.field_0)
                Mask(80, 0, stor12[stor12.length].field_160) = Mask(80, 0, Mask(79, 0, stor6.field_81) + Mask(79, 0, stor6.field_1))
                storDF69[stor12.length].field_0 % 1099511627776 = stor11.length % 1099511627776
                uint64(storDF69[stor12.length].field_0) = uint64(stor4.field_0)
                uint64(storDF69[stor12.length].field_0) = uint64(stor3.field_160)
                uint64(storDF69[stor12.length].field_64) = 0
                uint64(storDF69[stor12.length].field_128) = uint64(stor5.field_96)
                storDF69[stor12.length].field_192 % 1099511627776 = 0
                uint8(storDF69[stor12.length].field_232) = 3
            sub_0ab852e0 += Mask(79, 0, stor6.field_81)
        stor11.length++
        stor175B[Mask(251, 0, stor11.length.field_5)] = stor175B[Mask(251, 0, stor11.length.field_5)] and !(255 * 256^stor11.length % 32)
        require 0 < stor8.length
        uint32(stor5.field_0) = uint32(uint32(stor5.field_0) + 1)
        uint64(stor5.field_32) = uint64(block.timestamp + 1200)
        uint64(stor5.field_96) = uint64(uint64(block.timestamp + 1200) + (3 * 3600))
        Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8.field_168)
        uint8(stor7.field_0) = 1
        uint8(stor7.field_8) = 1
        Mask(80, 0, stor7.field_16) = 0
        Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8.field_168) / 1000)
        Mask(80, 0, stor7.field_176) = 0
        stor7.field_256 % 1 = 0
        stor7.field_256 % 1 = 0
        address(stor3.field_0) = stor0
        uint64(stor3.field_160) = 0
        stor3.field_256 % 1 = 0
        uint64(stor4.field_0) = 0
        stor4.field_256 % 1 = 0
        if arg1 >= block.timestamp:
            uint64(stor5.field_32) = uint64(arg1)
            uint64(stor5.field_96) = uint64(arg1 + (3 * 3600))
        else:
            uint64(stor5.field_32) = uint64(block.timestamp)
            uint64(stor5.field_96) = uint64(block.timestamp + (3 * 3600))
}

function withdraw(address arg1) {
    require tx.origin == msg.sender
    if block.timestamp > uint64(stor5.field_96):
        if 0 < uint32(stor5.field_0):
            Mask(79, 0, stor6.field_0) = Mask(79, 0, stor6.field_1)
            Mask(81, 0, stor6.field_79) = 0
            Mask(96, 0, stor6.field_160) = 0
            if not uint16(stor5.field_240):
                stor12.length++
                address(stor12[stor12.length].field_0) = address(stor3.field_0)
                Mask(80, 0, stor12[stor12.length].field_160) = Mask(80, 0, Mask(79, 0, stor6.field_81) + Mask(79, 0, stor6.field_1))
                storDF69[stor12.length].field_0 % 1099511627776 = stor11.length % 1099511627776
                uint64(storDF69[stor12.length].field_0) = uint64(stor4.field_0)
                uint64(storDF69[stor12.length].field_0) = uint64(stor3.field_160)
                uint64(storDF69[stor12.length].field_64) = 0
                uint64(storDF69[stor12.length].field_128) = uint64(stor5.field_96)
                storDF69[stor12.length].field_192 % 281474976710656 = 0
                storDF69[stor12.length].field_256 % 1 = 0
            else:
                stor13[address(stor3.field_0)] += Mask(80, 0, Mask(79, 0, stor6.field_81) + Mask(79, 0, stor6.field_1))
                stor12.length++
                address(stor12[stor12.length].field_0) = address(stor3.field_0)
                Mask(80, 0, stor12[stor12.length].field_160) = Mask(80, 0, Mask(79, 0, stor6.field_81) + Mask(79, 0, stor6.field_1))
                storDF69[stor12.length].field_0 % 1099511627776 = stor11.length % 1099511627776
                uint64(storDF69[stor12.length].field_0) = uint64(stor4.field_0)
                uint64(storDF69[stor12.length].field_0) = uint64(stor3.field_160)
                uint64(storDF69[stor12.length].field_64) = 0
                uint64(storDF69[stor12.length].field_128) = uint64(stor5.field_96)
                storDF69[stor12.length].field_192 % 1099511627776 = 0
                uint8(storDF69[stor12.length].field_232) = 3
            sub_0ab852e0 += Mask(79, 0, stor6.field_81)
        stor11.length++
        stor175B[Mask(251, 0, stor11.length.field_5)] = stor175B[Mask(251, 0, stor11.length.field_5)] and !(255 * 256^stor11.length % 32)
        require 0 < stor8.length
        uint32(stor5.field_0) = uint32(uint32(stor5.field_0) + 1)
        uint64(stor5.field_32) = uint64(block.timestamp + 1200)
        uint64(stor5.field_96) = uint64(uint64(block.timestamp + 1200) + (3 * 3600))
        Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8.field_168)
        uint8(stor7.field_0) = 1
        uint8(stor7.field_8) = 1
        Mask(80, 0, stor7.field_16) = 0
        Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8.field_168) / 1000)
        Mask(80, 0, stor7.field_176) = 0
        stor7.field_256 % 1 = 0
        stor7.field_256 % 1 = 0
        address(stor3.field_0) = stor0
        uint64(stor3.field_160) = 0
        stor3.field_256 % 1 = 0
        uint64(stor4.field_0) = 0
        stor4.field_256 % 1 = 0
    if stor15[msg.sender] + stor13[msg.sender] > 0:
        stor13[msg.sender] = 0
        stor15[msg.sender] = 0
    if stor11.length % 1099511627776 <= stor17[msg.sender].field_160 % 1099511627776:
        Mask(80, 0, stor17[msg.sender].field_0) = 0
        Mask(80, 0, stor17[msg.sender].field_80) = Mask(80, 0, stor17[msg.sender].field_80)
        stor17[msg.sender].field_160 % 1099511627776 = stor17[msg.sender].field_160 % 1099511627776
        stor17[msg.sender].field_256 % 1 = 0
        if stor15[msg.sender] + stor13[msg.sender] + Mask(80, 0, stor17[msg.sender].field_0) > 0:
            require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
            if arg1:
                call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                     gas gas_remaining wei
                    args address(arg1), stor15[msg.sender] + stor13[msg.sender] + Mask(80, 0, stor17[msg.sender].field_0)
            else:
                call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                     gas gas_remaining wei
                    args msg.sender, stor15[msg.sender] + stor13[msg.sender] + Mask(80, 0, stor17[msg.sender].field_0)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require stor17[msg.sender].field_160 % 1099511627776 < stor11.length
        stor17[msg.sender].field_0 % 1099511627776 = stor11.length % 1099511627776
        address(stor17[msg.sender].field_40) = 0
        stor17[msg.sender].field_256 % 1 = 0
        stor17[msg.sender].field_256 % 1 = 0
        if stor('array', ('stor', 35, 165, ('map', ('data', 'msg.sender'), ('name', 'stor17', 17))), ('name', 'stor11', 11))[uint8(stor17[msg.sender].field_160 % 1099511627776)] <= 0:
            if stor15[msg.sender] + stor13[msg.sender] + Mask(80, 0, stor17[msg.sender].field_0) > 0:
                require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
                if arg1:
                    call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                         gas gas_remaining wei
                        args address(arg1), stor15[msg.sender] + stor13[msg.sender] + Mask(80, 0, stor17[msg.sender].field_0)
                else:
                    call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                         gas gas_remaining wei
                        args msg.sender, stor15[msg.sender] + stor13[msg.sender] + Mask(80, 0, stor17[msg.sender].field_0)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor15[msg.sender] + stor13[msg.sender] + Mask(80, 0, Mask(80, 0, stor17[msg.sender].field_0) + Mask(80, 0, stor17[msg.sender].field_80)) > 0:
                require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
                if arg1:
                    call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                         gas gas_remaining wei
                        args address(arg1), stor15[msg.sender] + stor13[msg.sender] + Mask(80, 0, Mask(80, 0, stor17[msg.sender].field_0) + Mask(80, 0, stor17[msg.sender].field_80))
                else:
                    call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                         gas gas_remaining wei
                        args msg.sender, stor15[msg.sender] + stor13[msg.sender] + Mask(80, 0, Mask(80, 0, stor17[msg.sender].field_0) + Mask(80, 0, stor17[msg.sender].field_80))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if uint128(sub_ca5dbdb8[msg.sender].field_0) - uint128(sub_ca5dbdb8[msg.sender].field_128) / 10^17 > 0:
        if uint256(stor18) > 0:
            require ext_code.size(0x573aaaa81154cd24e96f0cb97fd86110b8f6767f)
            call 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f.distribute(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, uint128(sub_ca5dbdb8[msg.sender].field_0) - uint128(sub_ca5dbdb8[msg.sender].field_128) / 10^17 * uint256(stor18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if uint128(sub_ca5dbdb8[msg.sender].field_128) < 10^17:
            require ext_code.size(0x573aaaa81154cd24e96f0cb97fd86110b8f6767f)
            call 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f.0xb9431a2a with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        uint256(sub_ca5dbdb8[msg.sender].field_0) = uint128(sub_ca5dbdb8[msg.sender].field_0) + (0x16345785d8a000000000000000000000000000000000000 * uint128(sub_ca5dbdb8[msg.sender].field_0) / 10^17)
}

function _fallback() payable {
    if msg.value <= 0:
        if uint64(stor5.field_96) <= block.timestamp + 600:
            if block.timestamp >= uint64(stor5.field_32):
                if stor11.length % 1099511627776:
                    require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
                    call 0x03cb0021808442ad5efb61197966aef72a1def96.deduct(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        Mask(176, 0, stor6.field_80) = Mask(80, 0, stor6.field_80)
                        Mask(96, 0, stor6.field_160) = 0
                        Mask(80, 0, stor7.field_16) = Mask(80, 0, stor7.field_16)
                        if uint64(stor5.field_96) > block.timestamp + (3 * 3600):
                            uint64(stor5.field_96) = uint64(block.timestamp + (3 * 3600))
                        if 0 >= Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16):
                            stor11.length++
                            stor175B[Mask(251, 0, stor11.length.field_5)] = uint8(stor7.field_0) * 256^stor11.length % 32 or !(255 * 256^stor11.length % 32) and stor175B[Mask(251, 0, stor11.length.field_5)]
                            if Mask(80, 0, stor7.field_176) > Mask(80, 0, stor6.field_80):
                                stor15[stor2] -= Mask(80, 0, Mask(80, 0, stor7.field_176) - Mask(80, 0, stor6.field_80))
                            else:
                                if Mask(80, 0, stor6.field_0) > Mask(80, 0, stor7.field_176):
                                    stor15[stor2] += Mask(80, 0, Mask(80, 0, stor6.field_80) - Mask(80, 0, stor7.field_176))
                            Mask(80, 0, stor6.field_80) = 0
                            if uint8(stor7.field_0) >= 100:
                                require uint8(uint8(stor7.field_0) - 1) < stor8.length
                                uint8(stor7.field_8) = uint8(stor7.field_0)
                                Mask(80, 0, stor7.field_16) = 0
                                Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168) / 1000)
                                Mask(80, 0, stor7.field_176) = 0
                                stor7.field_256 % 1 = 0
                                uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168)
                            else:
                                require uint8(stor7.field_0) < stor8.length
                                uint8(stor7.field_0) = uint8(uint8(stor7.field_0) + 1)
                                uint8(stor7.field_8) = uint8(uint8(stor7.field_0) + 1)
                                Mask(80, 0, stor7.field_16) = 0
                                Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(stor7.field_0)].field_168) / 1000)
                                Mask(80, 0, stor7.field_176) = 0
                                stor7.field_256 % 1 = 0
                                uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(stor7.field_0)].field_168)
                        else:
                            if not Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16):
                                stor11.length++
                                stor175B[Mask(251, 0, stor11.length.field_5)] = uint8(stor7.field_0) * 256^stor11.length % 32 or !(255 * 256^stor11.length % 32) and stor175B[Mask(251, 0, stor11.length.field_5)]
                                if Mask(80, 0, stor7.field_176) > Mask(80, 0, stor6.field_80):
                                    stor15[stor2] -= Mask(80, 0, Mask(80, 0, stor7.field_176) - Mask(80, 0, stor6.field_80))
                                else:
                                    if Mask(80, 0, stor6.field_0) > Mask(80, 0, stor7.field_176):
                                        stor15[stor2] += Mask(80, 0, Mask(80, 0, stor6.field_80) - Mask(80, 0, stor7.field_176))
                                Mask(80, 0, stor6.field_80) = 0
                                if uint8(stor7.field_0) >= 100:
                                    require uint8(uint8(stor7.field_0) - 1) < stor8.length
                                    uint8(stor7.field_8) = uint8(stor7.field_0)
                                    Mask(80, 0, stor7.field_16) = 0
                                    Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168) / 1000)
                                    Mask(80, 0, stor7.field_176) = 0
                                    stor7.field_256 % 1 = 0
                                    uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                    uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                    Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168)
                                else:
                                    require uint8(stor7.field_0) < stor8.length
                                    uint8(stor7.field_0) = uint8(uint8(stor7.field_0) + 1)
                                    uint8(stor7.field_8) = uint8(uint8(stor7.field_0) + 1)
                                    Mask(80, 0, stor7.field_16) = 0
                                    Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(stor7.field_0)].field_168) / 1000)
                                    Mask(80, 0, stor7.field_176) = 0
                                    stor7.field_256 % 1 = 0
                                    uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                    uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                    Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(stor7.field_0)].field_168)
    else:
        require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
        call 0x03cb0021808442ad5efb61197966aef72a1def96.deposit(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint64(stor5.field_96) <= block.timestamp + 600:
            if block.timestamp >= uint64(stor5.field_32):
                if stor11.length % 1099511627776:
                    require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
                    if msg.value / 1568 * 10^12 <= 500:
                        call 0x03cb0021808442ad5efb61197966aef72a1def96.deduct(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 1568 * 10^12 * msg.value / 1568 * 10^12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            uint256(stor14) += 1568 * 10^12 * msg.value / 1568 * 10^12
                            uint256(sub_ca5dbdb8[msg.sender].field_0) += 1568 * 10^12 * msg.value / 1568 * 10^12
                            Mask(80, 0, stor6.field_0) = Mask(80, 0, (24 * 10^13 * msg.value / 1568 * 10^12) + Mask(80, 0, stor6.field_0))
                            Mask(80, 0, stor6.field_80) = Mask(80, 0, (1328 * 10^12 * msg.value / 1568 * 10^12) + Mask(80, 0, stor6.field_80))
                            Mask(80, 0, stor7.field_16) = Mask(80, 0, Mask(80, 0, stor7.field_16) + (2 * 10^15 * msg.value / 1568 * 10^12))
                            if (2 * msg.value / 1568 * 10^12) + uint64(stor5.field_96) <= block.timestamp + (3 * 3600):
                                uint64(stor5.field_96) = uint64((2 * msg.value / 1568 * 10^12) + uint64(stor5.field_96))
                            else:
                                uint64(stor5.field_96) = uint64(block.timestamp + (3 * 3600))
                            if 2 * 10^15 * msg.value / 1568 * 10^12 >= Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16):
                                stor11.length++
                                stor175B[Mask(251, 0, stor11.length.field_5)] = uint8(stor7.field_0) * 256^stor11.length % 32 or !(255 * 256^stor11.length % 32) and stor175B[Mask(251, 0, stor11.length.field_5)]
                                if Mask(80, 0, stor7.field_176) > Mask(80, 0, stor6.field_80):
                                    stor15[stor2] -= Mask(80, 0, Mask(80, 0, stor7.field_176) - Mask(80, 0, stor6.field_80))
                                else:
                                    if Mask(80, 0, stor6.field_0) > Mask(80, 0, stor7.field_176):
                                        stor15[stor2] += Mask(80, 0, Mask(80, 0, stor6.field_80) - Mask(80, 0, stor7.field_176))
                                Mask(80, 0, stor6.field_80) = 0
                                if uint8(stor7.field_0) >= 100:
                                    require uint8(uint8(stor7.field_0) - 1) < stor8.length
                                    uint8(stor7.field_8) = uint8(stor7.field_0)
                                    Mask(80, 0, stor7.field_16) = 0
                                    Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168) / 1000)
                                    Mask(80, 0, stor7.field_176) = 0
                                    stor7.field_256 % 1 = 0
                                    uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                    uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                    Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168)
                                else:
                                    require uint8(stor7.field_0) < stor8.length
                                    uint8(stor7.field_0) = uint8(uint8(stor7.field_0) + 1)
                                    uint8(stor7.field_8) = uint8(uint8(stor7.field_0) + 1)
                                    Mask(80, 0, stor7.field_16) = 0
                                    Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(stor7.field_0)].field_168) / 1000)
                                    Mask(80, 0, stor7.field_176) = 0
                                    stor7.field_256 % 1 = 0
                                    uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                    uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                    Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(stor7.field_0)].field_168)
                            else:
                                if not Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16) - (2 * 10^15 * msg.value / 1568 * 10^12):
                                    stor11.length++
                                    stor175B[Mask(251, 0, stor11.length.field_5)] = uint8(stor7.field_0) * 256^stor11.length % 32 or !(255 * 256^stor11.length % 32) and stor175B[Mask(251, 0, stor11.length.field_5)]
                                    if Mask(80, 0, stor7.field_176) > Mask(80, 0, stor6.field_80):
                                        stor15[stor2] -= Mask(80, 0, Mask(80, 0, stor7.field_176) - Mask(80, 0, stor6.field_80))
                                    else:
                                        if Mask(80, 0, stor6.field_0) > Mask(80, 0, stor7.field_176):
                                            stor15[stor2] += Mask(80, 0, Mask(80, 0, stor6.field_80) - Mask(80, 0, stor7.field_176))
                                    Mask(80, 0, stor6.field_80) = 0
                                    if uint8(stor7.field_0) >= 100:
                                        require uint8(uint8(stor7.field_0) - 1) < stor8.length
                                        uint8(stor7.field_8) = uint8(stor7.field_0)
                                        Mask(80, 0, stor7.field_16) = 0
                                        Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168) / 1000)
                                        Mask(80, 0, stor7.field_176) = 0
                                        stor7.field_256 % 1 = 0
                                        uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                        uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                        Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168)
                                    else:
                                        require uint8(stor7.field_0) < stor8.length
                                        uint8(stor7.field_0) = uint8(uint8(stor7.field_0) + 1)
                                        uint8(stor7.field_8) = uint8(uint8(stor7.field_0) + 1)
                                        Mask(80, 0, stor7.field_16) = 0
                                        Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(stor7.field_0)].field_168) / 1000)
                                        Mask(80, 0, stor7.field_176) = 0
                                        stor7.field_256 % 1 = 0
                                        uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                        uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                        Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(stor7.field_0)].field_168)
                    else:
                        call 0x03cb0021808442ad5efb61197966aef72a1def96.deduct(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 784 * 10^15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            uint256(stor14) += 784 * 10^15
                            uint256(sub_ca5dbdb8[msg.sender].field_0) += 784 * 10^15
                            Mask(80, 0, stor6.field_0) = Mask(80, 0, Mask(80, 0, stor6.field_0) + 12 * 10^16)
                            Mask(80, 0, stor6.field_80) = Mask(80, 0, Mask(80, 0, stor6.field_80) + 664 * 10^15)
                            Mask(80, 0, stor7.field_16) = Mask(80, 0, Mask(80, 0, stor7.field_16) + 10^18)
                            if uint64(stor5.field_96) + 1000 <= block.timestamp + (3 * 3600):
                                uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 1000)
                            else:
                                uint64(stor5.field_96) = uint64(block.timestamp + (3 * 3600))
                            if 10^18 >= Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16):
                                stor11.length++
                                stor175B[Mask(251, 0, stor11.length.field_5)] = uint8(stor7.field_0) * 256^stor11.length % 32 or !(255 * 256^stor11.length % 32) and stor175B[Mask(251, 0, stor11.length.field_5)]
                                if Mask(80, 0, stor7.field_176) > Mask(80, 0, stor6.field_80):
                                    stor15[stor2] -= Mask(80, 0, Mask(80, 0, stor7.field_176) - Mask(80, 0, stor6.field_80))
                                else:
                                    if Mask(80, 0, stor6.field_0) > Mask(80, 0, stor7.field_176):
                                        stor15[stor2] += Mask(80, 0, Mask(80, 0, stor6.field_80) - Mask(80, 0, stor7.field_176))
                                Mask(80, 0, stor6.field_80) = 0
                                if uint8(stor7.field_0) >= 100:
                                    require uint8(uint8(stor7.field_0) - 1) < stor8.length
                                    uint8(stor7.field_8) = uint8(stor7.field_0)
                                    Mask(80, 0, stor7.field_16) = 0
                                    Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168) / 1000)
                                    Mask(80, 0, stor7.field_176) = 0
                                    stor7.field_256 % 1 = 0
                                    uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                    uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                    Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168)
                                else:
                                    require uint8(stor7.field_0) < stor8.length
                                    uint8(stor7.field_0) = uint8(uint8(stor7.field_0) + 1)
                                    uint8(stor7.field_8) = uint8(uint8(stor7.field_0) + 1)
                                    Mask(80, 0, stor7.field_16) = 0
                                    Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(stor7.field_0)].field_168) / 1000)
                                    Mask(80, 0, stor7.field_176) = 0
                                    stor7.field_256 % 1 = 0
                                    uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                    uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                    Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(stor7.field_0)].field_168)
                            else:
                                if not Mask(80, 0, stor5.field_160) + -Mask(80, 0, stor7.field_16) - 10^18:
                                    stor11.length++
                                    stor175B[Mask(251, 0, stor11.length.field_5)] = uint8(stor7.field_0) * 256^stor11.length % 32 or !(255 * 256^stor11.length % 32) and stor175B[Mask(251, 0, stor11.length.field_5)]
                                    if Mask(80, 0, stor7.field_176) > Mask(80, 0, stor6.field_80):
                                        stor15[stor2] -= Mask(80, 0, Mask(80, 0, stor7.field_176) - Mask(80, 0, stor6.field_80))
                                    else:
                                        if Mask(80, 0, stor6.field_0) > Mask(80, 0, stor7.field_176):
                                            stor15[stor2] += Mask(80, 0, Mask(80, 0, stor6.field_80) - Mask(80, 0, stor7.field_176))
                                    Mask(80, 0, stor6.field_80) = 0
                                    if uint8(stor7.field_0) >= 100:
                                        require uint8(uint8(stor7.field_0) - 1) < stor8.length
                                        uint8(stor7.field_8) = uint8(stor7.field_0)
                                        Mask(80, 0, stor7.field_16) = 0
                                        Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168) / 1000)
                                        Mask(80, 0, stor7.field_176) = 0
                                        stor7.field_256 % 1 = 0
                                        uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                        uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                        Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_168)
                                    else:
                                        require uint8(stor7.field_0) < stor8.length
                                        uint8(stor7.field_0) = uint8(uint8(stor7.field_0) + 1)
                                        uint8(stor7.field_8) = uint8(uint8(stor7.field_0) + 1)
                                        Mask(80, 0, stor7.field_16) = 0
                                        Mask(80, 0, stor7.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor8[uint8(stor7.field_0)].field_168) / 1000)
                                        Mask(80, 0, stor7.field_176) = 0
                                        stor7.field_256 % 1 = 0
                                        uint64(stor5.field_32) = uint64(block.timestamp + 600)
                                        uint64(stor5.field_96) = uint64(uint64(stor5.field_96) + 600)
                                        Mask(80, 0, stor5.field_160) = Mask(80, 0, stor8[uint8(stor7.field_0)].field_168)
}

function sub_6a5d580a(?) {
    if msg.sender != tx.origin:
        return 0, arg2
    if not stor11.length:
        return 0, arg2
    if arg1 < 2 * 10^15:
        return 0, arg2
    if not uint8(stor7.field_8):
        return 0, arg2
    mem[288] = uint8(stor7.field_8)
    require uint8(uint8(stor7.field_0) - 1) < stor8.length
    if arg1 <= 10^18:
        if 2 * 10^15 * arg1 / 2 * 10^15 >= Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16):
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16)
            while uint8(stor7.field_8) > 1:
                _141 = mem[288]
                require uint8(mem[288] - 2) < stor9.length
                mem[0] = 9
                require Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)
                if 0 < Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64):
                    mem[288] = uint8(mem[288] - 1)
                    s = uint32(stor9[uint8(_141 - 2)].field_0)
                    s = uint32(stor9[uint8(_141 - 2)].field_32)
                    s = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(_141 - 2)].field_64)
                    s = Mask(112, 0, stor9[uint8(_141 - 2)].field_144)
                    s = ((Mask(112, 0, stor9[uint8(_141 - 2)].field_144) * uint32(stor9[uint8(_141 - 2)].field_32) * t) + (t * uint32(stor9[uint8(_141 - 2)].field_0) * t) - (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_141 - 2)].field_0) * t) - (Mask(80, 0, stor9[uint8(_141 - 2)].field_64) * uint32(stor9[uint8(_141 - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(_141 - 2)].field_144) * uint32(stor9[uint8(_141 - 2)].field_32) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) - (t * uint32(stor9[uint8(_141 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) + (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_141 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) + (Mask(80, 0, stor9[uint8(_141 - 2)].field_64) * uint32(stor9[uint8(_141 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) - (Mask(112, 0, stor9[uint8(_141 - 2)].field_144) * uint32(stor9[uint8(_141 - 2)].field_32) * Mask(80, 0, stor9[uint8(_141 - 2)].field_64)) - (t * uint32(stor9[uint8(_141 - 2)].field_0) * Mask(80, 0, stor9[uint8(_141 - 2)].field_64)) + (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_141 - 2)].field_0) * Mask(80, 0, stor9[uint8(_141 - 2)].field_64)) + (Mask(80, 0, stor9[uint8(_141 - 2)].field_64) * uint32(stor9[uint8(_141 - 2)].field_0) * Mask(80, 0, stor9[uint8(_141 - 2)].field_64)) / Mask(112, 0, stor9[uint8(_141 - 2)].field_144)) + s
                    t = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(_141 - 2)].field_64)
                    continue 
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001, 
                           arg2
                return (s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) - Mask(80, 0, Mask(80, 0, (s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
            require var26004 < stor10.length
            mem[0] = 10
            if 0 > Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64):
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (var28007 + ((var28012 * uint32(stor10[var28001].field_0) * var28012) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0) * var28012) + (10^18 * uint32(stor10[var28001].field_32) * var28012) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return var28007 + ((var28012 * uint32(stor10[var28001].field_0) * var28012) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0) * var28012) + (10^18 * uint32(stor10[var28001].field_32) * var28012) / 10^18) / 1000001, 
                           arg2
                return (var28007 + ((var28012 * uint32(stor10[var28001].field_0) * var28012) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0) * var28012) + (10^18 * uint32(stor10[var28001].field_32) * var28012) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (var28007 + ((var28012 * uint32(stor10[var28001].field_0) * var28012) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0) * var28012) + (10^18 * uint32(stor10[var28001].field_32) * var28012) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
            s = uint32(stor[sha3(mem[0]) + var28001].field_0)
            t = uint32(stor[sha3(mem[0]) + var28001].field_32)
            u = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor[sha3(mem[0]) + var28001].field_64)
            idx = var28006
            v = var28007
            w = var28012
            while idx != 0:
                require idx - 1 < stor10.length
                mem[0] = 10
                if 0 <= Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0):
                    s = uint32(stor10[idx].field_0)
                    t = uint32(stor10[idx].field_0)
                    u = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0)
                    idx = idx - 1
                    v = v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18)
                    w = u
                    continue 
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor10[idx].field_0) * u) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0) * u) + (10^18 * uint32(stor10[idx].field_0) * u) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor10[idx].field_0) * u) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0) * u) + (10^18 * uint32(stor10[idx].field_0) * u) / 10^18) / 1000001, 
                           arg2
                return (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor10[idx].field_0) * u) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0) * u) + (10^18 * uint32(stor10[idx].field_0) * u) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor10[idx].field_0) * u) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0) * u) + (10^18 * uint32(stor10[idx].field_0) * u) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
        else:
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16)
            while uint8(stor7.field_8) > 1:
                _142 = mem[288]
                require uint8(mem[288] - 2) < stor9.length
                mem[0] = 9
                require Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)
                if Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16) - (2 * 10^15 * arg1 / 2 * 10^15) < Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64):
                    mem[288] = uint8(mem[288] - 1)
                    s = uint32(stor9[uint8(_142 - 2)].field_0)
                    s = uint32(stor9[uint8(_142 - 2)].field_32)
                    s = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(_142 - 2)].field_64)
                    s = Mask(112, 0, stor9[uint8(_142 - 2)].field_144)
                    s = ((Mask(112, 0, stor9[uint8(_142 - 2)].field_144) * uint32(stor9[uint8(_142 - 2)].field_32) * t) + (t * uint32(stor9[uint8(_142 - 2)].field_0) * t) - (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_142 - 2)].field_0) * t) - (Mask(80, 0, stor9[uint8(_142 - 2)].field_64) * uint32(stor9[uint8(_142 - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(_142 - 2)].field_144) * uint32(stor9[uint8(_142 - 2)].field_32) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) - (t * uint32(stor9[uint8(_142 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) + (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_142 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) + (Mask(80, 0, stor9[uint8(_142 - 2)].field_64) * uint32(stor9[uint8(_142 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) - (Mask(112, 0, stor9[uint8(_142 - 2)].field_144) * uint32(stor9[uint8(_142 - 2)].field_32) * Mask(80, 0, stor9[uint8(_142 - 2)].field_64)) - (t * uint32(stor9[uint8(_142 - 2)].field_0) * Mask(80, 0, stor9[uint8(_142 - 2)].field_64)) + (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_142 - 2)].field_0) * Mask(80, 0, stor9[uint8(_142 - 2)].field_64)) + (Mask(80, 0, stor9[uint8(_142 - 2)].field_64) * uint32(stor9[uint8(_142 - 2)].field_0) * Mask(80, 0, stor9[uint8(_142 - 2)].field_64)) / Mask(112, 0, stor9[uint8(_142 - 2)].field_144)) + s
                    t = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(_142 - 2)].field_64)
                    continue 
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor5.field_160)) - (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor7.field_16)) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (2 * 10^15 * Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * arg1 / 2 * 10^15) + (2 * 10^15 * t * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor5.field_160)) - (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor7.field_16)) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (2 * 10^15 * Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * arg1 / 2 * 10^15) + (2 * 10^15 * t * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001, 
                           arg2
                return (s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor5.field_160)) - (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor7.field_16)) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (2 * 10^15 * Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * arg1 / 2 * 10^15) + (2 * 10^15 * t * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) - Mask(80, 0, Mask(80, 0, (s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor5.field_160)) - (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor7.field_16)) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (2 * 10^15 * Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * arg1 / 2 * 10^15) + (2 * 10^15 * t * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
            require var26004 < stor10.length
            mem[0] = 10
            if Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16) - (2 * 10^15 * arg1 / 2 * 10^15) > Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64):
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (var28007 + ((var28012 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (var28012 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * var28012 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) + (var28012 * var28012 * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * var28012 * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * var28012 * uint32(stor10[var28001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * var28012 * uint32(stor10[var28001].field_0)) - (var28012 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (10^18 * var28012 * uint32(stor10[var28001].field_32)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_32)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_32)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_32)) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return var28007 + ((var28012 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (var28012 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * var28012 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) + (var28012 * var28012 * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * var28012 * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * var28012 * uint32(stor10[var28001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * var28012 * uint32(stor10[var28001].field_0)) - (var28012 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (10^18 * var28012 * uint32(stor10[var28001].field_32)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_32)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_32)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_32)) / 10^18) / 1000001, 
                           arg2
                return (var28007 + ((var28012 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (var28012 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * var28012 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) + (var28012 * var28012 * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * var28012 * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * var28012 * uint32(stor10[var28001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * var28012 * uint32(stor10[var28001].field_0)) - (var28012 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (10^18 * var28012 * uint32(stor10[var28001].field_32)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_32)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_32)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_32)) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (var28007 + ((var28012 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (var28012 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * var28012 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_0)) + (var28012 * var28012 * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * var28012 * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * var28012 * uint32(stor10[var28001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * var28012 * uint32(stor10[var28001].field_0)) - (var28012 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (10^18 * var28012 * uint32(stor10[var28001].field_32)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_32)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_32)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[var28001].field_32)) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
            s = uint32(stor[sha3(mem[0]) + var28001].field_0)
            t = uint32(stor[sha3(mem[0]) + var28001].field_32)
            u = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor[sha3(mem[0]) + var28001].field_64)
            idx = var28006
            v = var28007
            w = var28012
            while idx != 0:
                require idx - 1 < stor10.length
                mem[0] = 10
                if Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16) - (2 * 10^15 * arg1 / 2 * 10^15) <= Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0):
                    s = uint32(stor10[idx].field_0)
                    t = uint32(stor10[idx].field_0)
                    u = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0)
                    idx = idx - 1
                    v = v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18)
                    w = u
                    continue 
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (u * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (2 * 10^15 * u * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) + (u * u * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * u * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * u * uint32(stor10[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * u * uint32(stor10[idx].field_0)) - (u * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (u * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (2 * 10^15 * u * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) + (u * u * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * u * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * u * uint32(stor10[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * u * uint32(stor10[idx].field_0)) - (u * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) / 10^18) / 1000001, 
                           arg2
                return (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (u * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (2 * 10^15 * u * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) + (u * u * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * u * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * u * uint32(stor10[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * u * uint32(stor10[idx].field_0)) - (u * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (u * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (2 * 10^15 * u * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) + (2 * 10^15 * Mask(80, 0, stor5.field_160) * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) - (2 * 10^15 * Mask(80, 0, stor7.field_16) * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) + (u * u * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * u * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * u * uint32(stor10[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * u * uint32(stor10[idx].field_0)) - (u * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[idx].field_0)) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
    else:
        if 10^18 >= Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16):
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16)
            while uint8(stor7.field_8) > 1:
                _143 = mem[288]
                require uint8(mem[288] - 2) < stor9.length
                mem[0] = 9
                require Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)
                if 0 < Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64):
                    mem[288] = uint8(mem[288] - 1)
                    s = uint32(stor9[uint8(_143 - 2)].field_0)
                    s = uint32(stor9[uint8(_143 - 2)].field_32)
                    s = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(_143 - 2)].field_64)
                    s = Mask(112, 0, stor9[uint8(_143 - 2)].field_144)
                    s = ((Mask(112, 0, stor9[uint8(_143 - 2)].field_144) * uint32(stor9[uint8(_143 - 2)].field_32) * t) + (t * uint32(stor9[uint8(_143 - 2)].field_0) * t) - (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_143 - 2)].field_0) * t) - (Mask(80, 0, stor9[uint8(_143 - 2)].field_64) * uint32(stor9[uint8(_143 - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(_143 - 2)].field_144) * uint32(stor9[uint8(_143 - 2)].field_32) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) - (t * uint32(stor9[uint8(_143 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) + (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_143 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) + (Mask(80, 0, stor9[uint8(_143 - 2)].field_64) * uint32(stor9[uint8(_143 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) - (Mask(112, 0, stor9[uint8(_143 - 2)].field_144) * uint32(stor9[uint8(_143 - 2)].field_32) * Mask(80, 0, stor9[uint8(_143 - 2)].field_64)) - (t * uint32(stor9[uint8(_143 - 2)].field_0) * Mask(80, 0, stor9[uint8(_143 - 2)].field_64)) + (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_143 - 2)].field_0) * Mask(80, 0, stor9[uint8(_143 - 2)].field_64)) + (Mask(80, 0, stor9[uint8(_143 - 2)].field_64) * uint32(stor9[uint8(_143 - 2)].field_0) * Mask(80, 0, stor9[uint8(_143 - 2)].field_64)) / Mask(112, 0, stor9[uint8(_143 - 2)].field_144)) + s
                    t = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(_143 - 2)].field_64)
                    continue 
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001, 
                           arg2
                return (s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) - Mask(80, 0, Mask(80, 0, (s + ((Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
            require var26004 < stor10.length
            mem[0] = 10
            if 0 > Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64):
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (var28007 + ((var28012 * uint32(stor10[var28001].field_0) * var28012) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0) * var28012) + (10^18 * uint32(stor10[var28001].field_32) * var28012) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return var28007 + ((var28012 * uint32(stor10[var28001].field_0) * var28012) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0) * var28012) + (10^18 * uint32(stor10[var28001].field_32) * var28012) / 10^18) / 1000001, 
                           arg2
                return (var28007 + ((var28012 * uint32(stor10[var28001].field_0) * var28012) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0) * var28012) + (10^18 * uint32(stor10[var28001].field_32) * var28012) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (var28007 + ((var28012 * uint32(stor10[var28001].field_0) * var28012) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0) * var28012) + (10^18 * uint32(stor10[var28001].field_32) * var28012) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
            s = uint32(stor[sha3(mem[0]) + var28001].field_0)
            t = uint32(stor[sha3(mem[0]) + var28001].field_32)
            u = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor[sha3(mem[0]) + var28001].field_64)
            idx = var28006
            v = var28007
            w = var28012
            while idx != 0:
                require idx - 1 < stor10.length
                mem[0] = 10
                if 0 <= Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0):
                    s = uint32(stor10[idx].field_0)
                    t = uint32(stor10[idx].field_0)
                    u = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0)
                    idx = idx - 1
                    v = v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18)
                    w = u
                    continue 
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor10[idx].field_0) * u) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0) * u) + (10^18 * uint32(stor10[idx].field_0) * u) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor10[idx].field_0) * u) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0) * u) + (10^18 * uint32(stor10[idx].field_0) * u) / 10^18) / 1000001, 
                           arg2
                return (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor10[idx].field_0) * u) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0) * u) + (10^18 * uint32(stor10[idx].field_0) * u) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor10[idx].field_0) * u) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0) * u) + (10^18 * uint32(stor10[idx].field_0) * u) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
        else:
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = Mask(80, 0, stor5.field_160) - Mask(80, 0, stor7.field_16)
            while uint8(stor7.field_8) > 1:
                _144 = mem[288]
                require uint8(mem[288] - 2) < stor9.length
                mem[0] = 9
                require Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)
                if Mask(80, 0, stor5.field_160) + -Mask(80, 0, stor7.field_16) - 10^18 < Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64):
                    mem[288] = uint8(mem[288] - 1)
                    s = uint32(stor9[uint8(_144 - 2)].field_0)
                    s = uint32(stor9[uint8(_144 - 2)].field_32)
                    s = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(_144 - 2)].field_64)
                    s = Mask(112, 0, stor9[uint8(_144 - 2)].field_144)
                    s = ((Mask(112, 0, stor9[uint8(_144 - 2)].field_144) * uint32(stor9[uint8(_144 - 2)].field_32) * t) + (t * uint32(stor9[uint8(_144 - 2)].field_0) * t) - (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_144 - 2)].field_0) * t) - (Mask(80, 0, stor9[uint8(_144 - 2)].field_64) * uint32(stor9[uint8(_144 - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(_144 - 2)].field_144) * uint32(stor9[uint8(_144 - 2)].field_32) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) - (t * uint32(stor9[uint8(_144 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) + (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_144 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) + (Mask(80, 0, stor9[uint8(_144 - 2)].field_64) * uint32(stor9[uint8(_144 - 2)].field_0) * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8)) - (Mask(112, 0, stor9[uint8(_144 - 2)].field_144) * uint32(stor9[uint8(_144 - 2)].field_32) * Mask(80, 0, stor9[uint8(_144 - 2)].field_64)) - (t * uint32(stor9[uint8(_144 - 2)].field_0) * Mask(80, 0, stor9[uint8(_144 - 2)].field_64)) + (Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) * uint32(stor9[uint8(_144 - 2)].field_0) * Mask(80, 0, stor9[uint8(_144 - 2)].field_64)) + (Mask(80, 0, stor9[uint8(_144 - 2)].field_64) * uint32(stor9[uint8(_144 - 2)].field_0) * Mask(80, 0, stor9[uint8(_144 - 2)].field_64)) / Mask(112, 0, stor9[uint8(_144 - 2)].field_144)) + s
                    t = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(_144 - 2)].field_64)
                    continue 
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (s + ((10^18 * Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32)) - (1000000000000000000 * 10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (10^18 * t * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) - (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor5.field_160)) + (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor7.field_16)) - (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return s + ((10^18 * Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32)) - (1000000000000000000 * 10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (10^18 * t * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) - (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor5.field_160)) + (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor7.field_16)) - (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001, 
                           arg2
                return (s + ((10^18 * Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32)) - (1000000000000000000 * 10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (10^18 * t * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) - (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor5.field_160)) + (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor7.field_16)) - (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) - Mask(80, 0, Mask(80, 0, (s + ((10^18 * Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32)) - (1000000000000000000 * 10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (10^18 * t * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * t) - (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor5.field_160)) + (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) - (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor5.field_160)) + (Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144) * uint32(stor9[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor7.field_16)) - (10^18 * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (t * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) + (Mask(80, 0, stor5.field_160) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (Mask(80, 0, stor7.field_16) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) - (2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(80, 0, stor9[uint8(mem[288] - 2)].field_64) * uint32(stor9[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor7.field_16)) / Mask(112, 0, stor9[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
            require var26004 < stor10.length
            mem[0] = 10
            if Mask(80, 0, stor5.field_160) + -Mask(80, 0, stor7.field_16) - 10^18 > Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64):
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (var28007 + ((-1000000000000000000 * 10^18 * uint32(stor10[var28001].field_0)) - (10^18 * var28012 * uint32(stor10[var28001].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (var28012 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (var28012 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (10^18 * var28012 * uint32(stor10[var28001].field_0)) + (var28012 * var28012 * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * var28012 * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * var28012 * uint32(stor10[var28001].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (var28012 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (1000000000000000000 * 10^18 * uint32(stor10[var28001].field_32)) + (10^18 * var28012 * uint32(stor10[var28001].field_32)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_32)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_32)) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return var28007 + ((-1000000000000000000 * 10^18 * uint32(stor10[var28001].field_0)) - (10^18 * var28012 * uint32(stor10[var28001].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (var28012 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (var28012 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (10^18 * var28012 * uint32(stor10[var28001].field_0)) + (var28012 * var28012 * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * var28012 * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * var28012 * uint32(stor10[var28001].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (var28012 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (1000000000000000000 * 10^18 * uint32(stor10[var28001].field_32)) + (10^18 * var28012 * uint32(stor10[var28001].field_32)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_32)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_32)) / 10^18) / 1000001, 
                           arg2
                return (var28007 + ((-1000000000000000000 * 10^18 * uint32(stor10[var28001].field_0)) - (10^18 * var28012 * uint32(stor10[var28001].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (var28012 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (var28012 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (10^18 * var28012 * uint32(stor10[var28001].field_0)) + (var28012 * var28012 * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * var28012 * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * var28012 * uint32(stor10[var28001].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (var28012 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (1000000000000000000 * 10^18 * uint32(stor10[var28001].field_32)) + (10^18 * var28012 * uint32(stor10[var28001].field_32)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_32)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_32)) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (var28007 + ((-1000000000000000000 * 10^18 * uint32(stor10[var28001].field_0)) - (10^18 * var28012 * uint32(stor10[var28001].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (var28012 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (var28012 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_0)) + (10^18 * var28012 * uint32(stor10[var28001].field_0)) + (var28012 * var28012 * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor5.field_160) * var28012 * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor7.field_16) * var28012 * uint32(stor10[var28001].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (var28012 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[var28001].field_64) * uint32(stor10[var28001].field_0)) + (1000000000000000000 * 10^18 * uint32(stor10[var28001].field_32)) + (10^18 * var28012 * uint32(stor10[var28001].field_32)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[var28001].field_32)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[var28001].field_32)) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
            s = uint32(stor[sha3(mem[0]) + var28001].field_0)
            t = uint32(stor[sha3(mem[0]) + var28001].field_32)
            u = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor[sha3(mem[0]) + var28001].field_64)
            idx = var28006
            v = var28007
            w = var28012
            while idx != 0:
                require idx - 1 < stor10.length
                mem[0] = 10
                if Mask(80, 0, stor5.field_160) + -Mask(80, 0, stor7.field_16) - 10^18 <= Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0):
                    s = uint32(stor10[idx].field_0)
                    t = uint32(stor10[idx].field_0)
                    u = Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0)
                    idx = idx - 1
                    v = v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18)
                    w = u
                    continue 
                if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((-1000000000000000000 * 10^18 * uint32(stor10[idx].field_0)) - (10^18 * u * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (u * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (u * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) + (u * u * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * u * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * u * uint32(stor10[idx].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (u * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (1000000000000000000 * 10^18 * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)):
                    return v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((-1000000000000000000 * 10^18 * uint32(stor10[idx].field_0)) - (10^18 * u * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (u * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (u * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) + (u * u * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * u * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * u * uint32(stor10[idx].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (u * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (1000000000000000000 * 10^18 * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) / 10^18) / 1000001, 
                           arg2
                return (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((-1000000000000000000 * 10^18 * uint32(stor10[idx].field_0)) - (10^18 * u * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (u * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (u * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) + (u * u * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * u * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * u * uint32(stor10[idx].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (u * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (1000000000000000000 * 10^18 * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((-1000000000000000000 * 10^18 * uint32(stor10[idx].field_0)) - (10^18 * u * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (u * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (u * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) + (u * u * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor5.field_160) * u * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor7.field_16) * u * uint32(stor10[idx].field_0)) - (10^18 * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (u * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (Mask(80, 0, stor5.field_160) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) - (Mask(80, 0, stor7.field_16) * 2 * Mask(80, 0, stor8[uint8(uint8(stor7.field_0) - 1)].field_8) + Mask(192, 0, stor10[idx].field_0) * uint32(stor10[idx].field_0)) + (1000000000000000000 * 10^18 * uint32(stor10[idx].field_0)) + (10^18 * u * uint32(stor10[idx].field_0)) - (10^18 * Mask(80, 0, stor5.field_160) * uint32(stor10[idx].field_0)) + (10^18 * Mask(80, 0, stor7.field_16) * uint32(stor10[idx].field_0)) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
                       arg2
    if Mask(80, 0, stor7.field_96) >= Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)):
        return v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) / 1000001, arg2
    return (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) / 1000001) + Mask(80, 0, stor7.field_176)) - Mask(80, 0, stor7.field_96)), 
           arg2
}



}
