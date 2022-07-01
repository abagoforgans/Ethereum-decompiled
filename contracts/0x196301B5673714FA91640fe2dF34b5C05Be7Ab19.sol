contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1, bool arg2)
#  - withdraw(address arg1)
#
address stor0;
mapping of uint8 stor1;
array of struct stor10;
array of struct stor11;
array of uint256 stor12;
array of struct stor13;
mapping of uint256 stor14;
address stor15;
uint256 stor15;
mapping of uint256 stor16;
mapping of uint128 sub_ca5dbdb8;
mapping of struct stor18;
uint256 stor19;
uint256 stor19;
uint256 stor3;
bool stor4; offset 256
uint64 stor4;
uint64 stor4; offset 160
address stor4;
bool stor5; offset 256
uint64 stor5;
uint8 stor6; offset 240
uint8 stor6; offset 248
uint16 stor6;
uint16 stor6; offset 240
uint32 stor6;
uint64 stor6; offset 32
uint64 stor6; offset 96
uint128 stor6; offset 160
uint256 stor6;
uint256 stor6;
uint256 sub_0ab852e0;
uint128 stor7;
uint128 stor7; offset 1
uint128 stor7; offset 81
uint128 stor7;
uint128 stor7; offset 80
uint128 stor7; offset 79
uint128 stor7; offset 160
uint256 stor7; offset 80
bool stor8; offset 256
uint8 stor8;
uint8 stor8; offset 8
uint128 stor8;
uint128 stor8; offset 16
uint128 stor8; offset 96
uint128 stor8; offset 176
array of struct stor9;
array of struct stor97569884605916225051403212656556507955018248777258318895762758024193532305078;

function sub_0ab852e0(?) {
    return sub_0ab852e0
}

function sub_ca5dbdb8(?) {
    return uint128(sub_ca5dbdb8[arg1])
}

function sub_96ca14b1(?) {
    return uint16(stor6.field_0), uint256(stor19), uint64(stor6.field_32)
}

function sub_1aea6257(?) {
    if msg.sender == stor0:
        return True
    return bool(stor1[msg.sender])
}

function sub_f8704355(?) {
    return (uint256(sub_ca5dbdb8[msg.sender]) > 0x100000000000000000000000000000000)
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
    stor3 = sha3(arg1)
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
    uint256(stor19) = arg2
    if not arg1:
        uint256(stor6.field_0) = Mask(240, 0, stor6.field_0)
    else:
        uint8(stor6.field_240) = 1
        uint8(stor6.field_248) = 0
}

function sub_eacba928(?) {
    mem[96 len 3200] = call.data[4 len 3200]
    if stor0 != msg.sender:
        mem[3296] = address(msg.sender)
        require stor1[msg.sender]
    idx = 0
    while idx < 100:
        stor9.length++
        mem[0] = 9
        uint256(stor9[stor9.length].field_0) = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
}

function sub_40d807d6(?) {
    mem[96 len 3168] = call.data[4 len 3168]
    if stor0 != msg.sender:
        mem[3264] = address(msg.sender)
        require stor1[msg.sender]
    idx = 0
    while idx < 99:
        stor10.length++
        mem[0] = 10
        uint256(stor10[stor10.length].field_0) = mem[(32 * idx) + 96]
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
        stor11.length++
        mem[0] = 11
        uint256(stor11[stor11.length].field_0) = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
}

function sub_bc3a05b7(?) {
    if stor0 != msg.sender:
        require stor1[msg.sender]
    require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
    call 0x03cb0021808442ad5efb61197966aef72a1def96.deduct(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x105631c6cddba84d12fa916f0045b1f97ec9c268, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    Mask(80, 0, stor7.field_0) = Mask(80, 0, arg1)
    uint256(stor15) = arg2
}

function sub_97f3e790(?) {
    if stor0 != msg.sender:
        require stor1[msg.sender]
    require arg1 < stor13.length
    if arg2 == uint64(stor13[arg1].field_256):
        if not uint8(stor13[arg1].field_488):
            require arg1 < stor13.length
            if not arg3:
                uint8(stor13[arg1].field_488) = 2
                Mask(80, 0, stor7.field_0) = Mask(80, 0, Mask(80, 0, stor13[arg1].field_160) + Mask(80, 0, stor7.field_0))
            else:
                uint8(stor13[arg1].field_488) = 1
                stor14[address(stor13[arg1].field_0)] += Mask(80, 0, stor13[arg1].field_160)
}

function getWinners(uint256 arg1) {
    if arg1 >= stor13.length:
        return address(stor4.field_0), 
               Mask(79, 1, Mask(80, 0, stor7.field_80) + Mask(80, 0, stor7.field_0)) << 176,
               uint64(stor4.field_0),
               uint8(stor8.field_0),
               0,
               uint64(stor5.field_0),
               0
    require stor13[arg1].field_448 % 1099511627776 - 1 % 1099511627776 < stor12.length
    return address(stor13[arg1].field_0), 
           Mask(80, 0, stor13[arg1].field_0),
           uint64(stor13[arg1].field_256),
           stor('array', ('mask_shl', 35, 5, -5, ('add', -1, ('stor', 40, 448, ('array', ('mul', 2, ('param', 'arg1')), ('name', 'stor13', 13))))), ('name', 'stor12', 12))[uint8(stor13[arg1].field_448 % 1099511627776 - 1)] + 1 << 248,
           uint8(stor13[arg1].field_256),
           uint64(stor13[arg1].field_256),
           uint64(stor13[arg1].field_384)
}

function getInfo() {
    if stor18[msg.sender].field_160 % 1099511627776 >= stor12.length:
        require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
        call 0x03cb0021808442ad5efb61197966aef72a1def96.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return uint8(stor8.field_8) + (256 * uint8(stor8.field_0) + (256 * Mask(80, 0, stor6.field_160) + (uint64(stor6.field_96) + (uint64(stor6.field_32) + (uint32(stor6.field_0) << 64) << 64) << 80))), 
               Mask(80, 0, stor7.field_80) + Mask(80, 0, stor7.field_0) << 176,
               Mask(80, 0, stor8.field_0),
               Mask(80, 0, stor18[msg.sender].field_0),
               Mask(80, 0, stor18[msg.sender].field_0) + stor16[msg.sender] + stor14[msg.sender],
               uint256(sub_ca5dbdb8[msg.sender]),
               ext_call.return_data[0],
               address(stor4.field_0),
               Mask(144, 0, stor15) + Mask(224, 0, stor19) + (2 * stor13.length) + uint16(stor6.field_240)
    require stor18[msg.sender].field_160 % 1099511627776 < stor12.length
    require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
    call 0x03cb0021808442ad5efb61197966aef72a1def96.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor('array', ('stor', 35, 165, ('map', ('data', 'msg.sender'), ('name', 'stor18', 18))), ('name', 'stor12', 12))[uint8(stor18[msg.sender].field_160 % 1099511627776)] <= 0:
        return uint8(stor8.field_8) + (256 * uint8(stor8.field_0) + (256 * Mask(80, 0, stor6.field_160) + (uint64(stor6.field_96) + (uint64(stor6.field_32) + (uint32(stor6.field_0) << 64) << 64) << 80))), 
               Mask(80, 0, stor7.field_80) + Mask(80, 0, stor7.field_0) << 176,
               Mask(80, 0, stor8.field_0),
               0,
               Mask(80, 0, stor18[msg.sender].field_0) + stor16[msg.sender] + stor14[msg.sender],
               uint256(sub_ca5dbdb8[msg.sender]),
               ext_call.return_data[0],
               address(stor4.field_0),
               Mask(144, 0, stor15) + Mask(224, 0, stor19) + (2 * stor13.length) + uint16(stor6.field_240)
    return uint8(stor8.field_8) + (256 * uint8(stor8.field_0) + (256 * Mask(80, 0, stor6.field_160) + (uint64(stor6.field_96) + (uint64(stor6.field_32) + (uint32(stor6.field_0) << 64) << 64) << 80))), 
           Mask(80, 0, stor7.field_80) + Mask(80, 0, stor7.field_0) << 176,
           Mask(80, 0, stor8.field_0),
           0,
           Mask(80, 0, Mask(80, 0, stor18[msg.sender].field_0) + Mask(80, 0, stor18[msg.sender].field_80)) + stor16[msg.sender] + stor14[msg.sender],
           uint256(sub_ca5dbdb8[msg.sender]),
           ext_call.return_data[0],
           address(stor4.field_0),
           Mask(144, 0, stor15) + Mask(224, 0, stor19) + (2 * stor13.length) + uint16(stor6.field_240)
}

function startGame(uint256 arg1) {
    if stor0 != msg.sender:
        require stor1[msg.sender]
    if uint32(stor6.field_0):
        if uint32(stor6.field_0) <= 1:
            if block.timestamp < uint64(stor6.field_32):
                if arg1 >= block.timestamp:
                    uint64(stor6.field_32) = uint64(arg1)
                    uint64(stor6.field_96) = uint64(arg1 + (3 * 3600))
                else:
                    uint64(stor6.field_32) = uint64(block.timestamp)
                    uint64(stor6.field_96) = uint64(block.timestamp + (3 * 3600))
    else:
        if 0 < uint32(stor6.field_0):
            Mask(79, 0, stor7.field_0) = Mask(79, 0, stor7.field_1)
            Mask(81, 0, stor7.field_79) = 0
            Mask(96, 0, stor7.field_160) = 0
            if not uint16(stor6.field_240):
                stor13.length++
                address(stor13[stor13.length].field_0) = address(stor4.field_0)
                Mask(80, 0, stor13[stor13.length].field_160) = Mask(80, 0, Mask(79, 0, stor7.field_81) + Mask(79, 0, stor7.field_1))
                storD7B6[stor13.length].field_0 % 1099511627776 = stor12.length % 1099511627776
                uint64(storD7B6[stor13.length].field_0) = uint64(stor5.field_0)
                uint64(storD7B6[stor13.length].field_0) = uint64(stor4.field_160)
                uint64(storD7B6[stor13.length].field_64) = 0
                uint64(storD7B6[stor13.length].field_128) = uint64(stor6.field_96)
                storD7B6[stor13.length].field_192 % 281474976710656 = 0
                storD7B6[stor13.length].field_256 % 1 = 0
            else:
                stor14[address(stor4.field_0)] += Mask(80, 0, Mask(79, 0, stor7.field_81) + Mask(79, 0, stor7.field_1))
                stor13.length++
                address(stor13[stor13.length].field_0) = address(stor4.field_0)
                Mask(80, 0, stor13[stor13.length].field_160) = Mask(80, 0, Mask(79, 0, stor7.field_81) + Mask(79, 0, stor7.field_1))
                storD7B6[stor13.length].field_0 % 1099511627776 = stor12.length % 1099511627776
                uint64(storD7B6[stor13.length].field_0) = uint64(stor5.field_0)
                uint64(storD7B6[stor13.length].field_0) = uint64(stor4.field_160)
                uint64(storD7B6[stor13.length].field_64) = 0
                uint64(storD7B6[stor13.length].field_128) = uint64(stor6.field_96)
                storD7B6[stor13.length].field_192 % 1099511627776 = 0
                uint8(storD7B6[stor13.length].field_232) = 3
            sub_0ab852e0 += Mask(79, 0, stor7.field_81)
        stor12.length++
        uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0) = uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0) and !(255 * 256^stor12.length % 32)
        require 0 < stor9.length
        uint32(stor6.field_0) = uint32(uint32(stor6.field_0) + 1)
        uint64(stor6.field_32) = uint64(block.timestamp + 600)
        uint64(stor6.field_96) = uint64(uint64(block.timestamp + 600) + (3 * 3600))
        Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9.field_168)
        uint8(stor8.field_0) = 1
        uint8(stor8.field_8) = 1
        Mask(80, 0, stor8.field_16) = 0
        Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9.field_168) / 1000)
        Mask(80, 0, stor8.field_176) = 0
        stor8.field_256 % 1 = 0
        stor8.field_256 % 1 = 0
        address(stor4.field_0) = stor0
        uint64(stor4.field_160) = 0
        stor4.field_256 % 1 = 0
        uint64(stor5.field_0) = 0
        stor5.field_256 % 1 = 0
        if arg1 >= block.timestamp:
            uint64(stor6.field_32) = uint64(arg1)
            uint64(stor6.field_96) = uint64(arg1 + (3 * 3600))
        else:
            uint64(stor6.field_32) = uint64(block.timestamp)
            uint64(stor6.field_96) = uint64(block.timestamp + (3 * 3600))
}

function _fallback() payable {
    if msg.value <= 0:
        if uint64(stor6.field_96) <= block.timestamp + 600:
            if block.timestamp >= uint64(stor6.field_32):
                if stor12.length % 1099511627776:
                    require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
                    call 0x03cb0021808442ad5efb61197966aef72a1def96.deduct(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        Mask(176, 0, stor7.field_80) = Mask(80, 0, stor7.field_80)
                        Mask(96, 0, stor7.field_160) = 0
                        Mask(80, 0, stor8.field_16) = Mask(80, 0, stor8.field_16)
                        if uint64(stor6.field_96) > block.timestamp + (3 * 3600):
                            uint64(stor6.field_96) = uint64(block.timestamp + (3 * 3600))
                        if 0 >= Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16):
                            stor12.length++
                            uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0) = uint8(stor8.field_0) * 256^stor12.length % 32 or !(255 * 256^stor12.length % 32) and uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0)
                            if Mask(80, 0, stor8.field_176) > Mask(80, 0, stor7.field_80):
                                stor16[stor3] -= Mask(80, 0, Mask(80, 0, stor8.field_176) - Mask(80, 0, stor7.field_80))
                            else:
                                if Mask(80, 0, stor7.field_0) > Mask(80, 0, stor8.field_176):
                                    stor16[stor3] += Mask(80, 0, Mask(80, 0, stor7.field_80) - Mask(80, 0, stor8.field_176))
                            Mask(80, 0, stor7.field_80) = 0
                            if uint8(stor8.field_0) >= 100:
                                require uint8(uint8(stor8.field_0) - 1) < stor9.length
                                uint8(stor8.field_8) = uint8(stor8.field_0)
                                Mask(80, 0, stor8.field_16) = 0
                                Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168) / 1000)
                                Mask(80, 0, stor8.field_176) = 0
                                stor8.field_256 % 1 = 0
                                uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168)
                            else:
                                require uint8(stor8.field_0) < stor9.length
                                uint8(stor8.field_0) = uint8(uint8(stor8.field_0) + 1)
                                uint8(stor8.field_8) = uint8(uint8(stor8.field_0) + 1)
                                Mask(80, 0, stor8.field_16) = 0
                                Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(stor8.field_0)].field_168) / 1000)
                                Mask(80, 0, stor8.field_176) = 0
                                stor8.field_256 % 1 = 0
                                uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(stor8.field_0)].field_168)
                        else:
                            if not Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16):
                                stor12.length++
                                uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0) = uint8(stor8.field_0) * 256^stor12.length % 32 or !(255 * 256^stor12.length % 32) and uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0)
                                if Mask(80, 0, stor8.field_176) > Mask(80, 0, stor7.field_80):
                                    stor16[stor3] -= Mask(80, 0, Mask(80, 0, stor8.field_176) - Mask(80, 0, stor7.field_80))
                                else:
                                    if Mask(80, 0, stor7.field_0) > Mask(80, 0, stor8.field_176):
                                        stor16[stor3] += Mask(80, 0, Mask(80, 0, stor7.field_80) - Mask(80, 0, stor8.field_176))
                                Mask(80, 0, stor7.field_80) = 0
                                if uint8(stor8.field_0) >= 100:
                                    require uint8(uint8(stor8.field_0) - 1) < stor9.length
                                    uint8(stor8.field_8) = uint8(stor8.field_0)
                                    Mask(80, 0, stor8.field_16) = 0
                                    Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168) / 1000)
                                    Mask(80, 0, stor8.field_176) = 0
                                    stor8.field_256 % 1 = 0
                                    uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                    uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                    Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168)
                                else:
                                    require uint8(stor8.field_0) < stor9.length
                                    uint8(stor8.field_0) = uint8(uint8(stor8.field_0) + 1)
                                    uint8(stor8.field_8) = uint8(uint8(stor8.field_0) + 1)
                                    Mask(80, 0, stor8.field_16) = 0
                                    Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(stor8.field_0)].field_168) / 1000)
                                    Mask(80, 0, stor8.field_176) = 0
                                    stor8.field_256 % 1 = 0
                                    uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                    uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                    Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(stor8.field_0)].field_168)
    else:
        require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
        call 0x03cb0021808442ad5efb61197966aef72a1def96.deposit(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint64(stor6.field_96) <= block.timestamp + 600:
            if block.timestamp >= uint64(stor6.field_32):
                if stor12.length % 1099511627776:
                    require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
                    if msg.value / 1568 * 10^12 <= 500:
                        call 0x03cb0021808442ad5efb61197966aef72a1def96.deduct(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 1568 * 10^12 * msg.value / 1568 * 10^12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            uint256(stor15) += 1568 * 10^12 * msg.value / 1568 * 10^12
                            uint256(sub_ca5dbdb8[msg.sender]) += 1568 * 10^12 * msg.value / 1568 * 10^12
                            Mask(80, 0, stor7.field_0) = Mask(80, 0, (24 * 10^13 * msg.value / 1568 * 10^12) + Mask(80, 0, stor7.field_0))
                            Mask(80, 0, stor7.field_80) = Mask(80, 0, (1328 * 10^12 * msg.value / 1568 * 10^12) + Mask(80, 0, stor7.field_80))
                            Mask(80, 0, stor8.field_16) = Mask(80, 0, Mask(80, 0, stor8.field_16) + (2 * 10^15 * msg.value / 1568 * 10^12))
                            if (2 * msg.value / 1568 * 10^12) + uint64(stor6.field_96) <= block.timestamp + (3 * 3600):
                                uint64(stor6.field_96) = uint64((2 * msg.value / 1568 * 10^12) + uint64(stor6.field_96))
                            else:
                                uint64(stor6.field_96) = uint64(block.timestamp + (3 * 3600))
                            if 2 * 10^15 * msg.value / 1568 * 10^12 >= Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16):
                                stor12.length++
                                uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0) = uint8(stor8.field_0) * 256^stor12.length % 32 or !(255 * 256^stor12.length % 32) and uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0)
                                if Mask(80, 0, stor8.field_176) > Mask(80, 0, stor7.field_80):
                                    stor16[stor3] -= Mask(80, 0, Mask(80, 0, stor8.field_176) - Mask(80, 0, stor7.field_80))
                                else:
                                    if Mask(80, 0, stor7.field_0) > Mask(80, 0, stor8.field_176):
                                        stor16[stor3] += Mask(80, 0, Mask(80, 0, stor7.field_80) - Mask(80, 0, stor8.field_176))
                                Mask(80, 0, stor7.field_80) = 0
                                if uint8(stor8.field_0) >= 100:
                                    require uint8(uint8(stor8.field_0) - 1) < stor9.length
                                    uint8(stor8.field_8) = uint8(stor8.field_0)
                                    Mask(80, 0, stor8.field_16) = 0
                                    Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168) / 1000)
                                    Mask(80, 0, stor8.field_176) = 0
                                    stor8.field_256 % 1 = 0
                                    uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                    uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                    Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168)
                                else:
                                    require uint8(stor8.field_0) < stor9.length
                                    uint8(stor8.field_0) = uint8(uint8(stor8.field_0) + 1)
                                    uint8(stor8.field_8) = uint8(uint8(stor8.field_0) + 1)
                                    Mask(80, 0, stor8.field_16) = 0
                                    Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(stor8.field_0)].field_168) / 1000)
                                    Mask(80, 0, stor8.field_176) = 0
                                    stor8.field_256 % 1 = 0
                                    uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                    uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                    Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(stor8.field_0)].field_168)
                            else:
                                if not Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16) - (2 * 10^15 * msg.value / 1568 * 10^12):
                                    stor12.length++
                                    uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0) = uint8(stor8.field_0) * 256^stor12.length % 32 or !(255 * 256^stor12.length % 32) and uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0)
                                    if Mask(80, 0, stor8.field_176) > Mask(80, 0, stor7.field_80):
                                        stor16[stor3] -= Mask(80, 0, Mask(80, 0, stor8.field_176) - Mask(80, 0, stor7.field_80))
                                    else:
                                        if Mask(80, 0, stor7.field_0) > Mask(80, 0, stor8.field_176):
                                            stor16[stor3] += Mask(80, 0, Mask(80, 0, stor7.field_80) - Mask(80, 0, stor8.field_176))
                                    Mask(80, 0, stor7.field_80) = 0
                                    if uint8(stor8.field_0) >= 100:
                                        require uint8(uint8(stor8.field_0) - 1) < stor9.length
                                        uint8(stor8.field_8) = uint8(stor8.field_0)
                                        Mask(80, 0, stor8.field_16) = 0
                                        Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168) / 1000)
                                        Mask(80, 0, stor8.field_176) = 0
                                        stor8.field_256 % 1 = 0
                                        uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                        uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                        Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168)
                                    else:
                                        require uint8(stor8.field_0) < stor9.length
                                        uint8(stor8.field_0) = uint8(uint8(stor8.field_0) + 1)
                                        uint8(stor8.field_8) = uint8(uint8(stor8.field_0) + 1)
                                        Mask(80, 0, stor8.field_16) = 0
                                        Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(stor8.field_0)].field_168) / 1000)
                                        Mask(80, 0, stor8.field_176) = 0
                                        stor8.field_256 % 1 = 0
                                        uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                        uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                        Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(stor8.field_0)].field_168)
                    else:
                        call 0x03cb0021808442ad5efb61197966aef72a1def96.deduct(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 784 * 10^15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            uint256(stor15) += 784 * 10^15
                            uint256(sub_ca5dbdb8[msg.sender]) += 784 * 10^15
                            Mask(80, 0, stor7.field_0) = Mask(80, 0, Mask(80, 0, stor7.field_0) + 12 * 10^16)
                            Mask(80, 0, stor7.field_80) = Mask(80, 0, Mask(80, 0, stor7.field_80) + 664 * 10^15)
                            Mask(80, 0, stor8.field_16) = Mask(80, 0, Mask(80, 0, stor8.field_16) + 10^18)
                            if uint64(stor6.field_96) + 1000 <= block.timestamp + (3 * 3600):
                                uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 1000)
                            else:
                                uint64(stor6.field_96) = uint64(block.timestamp + (3 * 3600))
                            if 10^18 >= Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16):
                                stor12.length++
                                uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0) = uint8(stor8.field_0) * 256^stor12.length % 32 or !(255 * 256^stor12.length % 32) and uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0)
                                if Mask(80, 0, stor8.field_176) > Mask(80, 0, stor7.field_80):
                                    stor16[stor3] -= Mask(80, 0, Mask(80, 0, stor8.field_176) - Mask(80, 0, stor7.field_80))
                                else:
                                    if Mask(80, 0, stor7.field_0) > Mask(80, 0, stor8.field_176):
                                        stor16[stor3] += Mask(80, 0, Mask(80, 0, stor7.field_80) - Mask(80, 0, stor8.field_176))
                                Mask(80, 0, stor7.field_80) = 0
                                if uint8(stor8.field_0) >= 100:
                                    require uint8(uint8(stor8.field_0) - 1) < stor9.length
                                    uint8(stor8.field_8) = uint8(stor8.field_0)
                                    Mask(80, 0, stor8.field_16) = 0
                                    Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168) / 1000)
                                    Mask(80, 0, stor8.field_176) = 0
                                    stor8.field_256 % 1 = 0
                                    uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                    uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                    Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168)
                                else:
                                    require uint8(stor8.field_0) < stor9.length
                                    uint8(stor8.field_0) = uint8(uint8(stor8.field_0) + 1)
                                    uint8(stor8.field_8) = uint8(uint8(stor8.field_0) + 1)
                                    Mask(80, 0, stor8.field_16) = 0
                                    Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(stor8.field_0)].field_168) / 1000)
                                    Mask(80, 0, stor8.field_176) = 0
                                    stor8.field_256 % 1 = 0
                                    uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                    uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                    Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(stor8.field_0)].field_168)
                            else:
                                if not Mask(80, 0, stor6.field_160) + -Mask(80, 0, stor8.field_16) - 10^18:
                                    stor12.length++
                                    uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0) = uint8(stor8.field_0) * 256^stor12.length % 32 or !(255 * 256^stor12.length % 32) and uint256(stor12[Mask(251, 0, stor12.length.field_5)].field_0)
                                    if Mask(80, 0, stor8.field_176) > Mask(80, 0, stor7.field_80):
                                        stor16[stor3] -= Mask(80, 0, Mask(80, 0, stor8.field_176) - Mask(80, 0, stor7.field_80))
                                    else:
                                        if Mask(80, 0, stor7.field_0) > Mask(80, 0, stor8.field_176):
                                            stor16[stor3] += Mask(80, 0, Mask(80, 0, stor7.field_80) - Mask(80, 0, stor8.field_176))
                                    Mask(80, 0, stor7.field_80) = 0
                                    if uint8(stor8.field_0) >= 100:
                                        require uint8(uint8(stor8.field_0) - 1) < stor9.length
                                        uint8(stor8.field_8) = uint8(stor8.field_0)
                                        Mask(80, 0, stor8.field_16) = 0
                                        Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168) / 1000)
                                        Mask(80, 0, stor8.field_176) = 0
                                        stor8.field_256 % 1 = 0
                                        uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                        uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                        Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_168)
                                    else:
                                        require uint8(stor8.field_0) < stor9.length
                                        uint8(stor8.field_0) = uint8(uint8(stor8.field_0) + 1)
                                        uint8(stor8.field_8) = uint8(uint8(stor8.field_0) + 1)
                                        Mask(80, 0, stor8.field_16) = 0
                                        Mask(80, 0, stor8.field_96) = Mask(80, 0, 664 * Mask(88, 0, stor9[uint8(stor8.field_0)].field_168) / 1000)
                                        Mask(80, 0, stor8.field_176) = 0
                                        stor8.field_256 % 1 = 0
                                        uint64(stor6.field_32) = uint64(block.timestamp + 120)
                                        uint64(stor6.field_96) = uint64(uint64(stor6.field_96) + 120)
                                        Mask(80, 0, stor6.field_160) = Mask(80, 0, stor9[uint8(stor8.field_0)].field_168)
}

function sub_6a5d580a(?) {
    if 0 == stor12.length:
        return 0, arg2
    if arg1 < 2 * 10^15:
        return 0, arg2
    if not uint8(stor8.field_8):
        return 0, arg2
    mem[288] = uint8(stor8.field_8)
    require uint8(uint8(stor8.field_0) - 1) < stor9.length
    if arg1 <= 10^18:
        if 2 * 10^15 * arg1 / 2 * 10^15 >= Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16):
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16)
            while uint8(stor8.field_8) > 1:
                _139 = mem[288]
                require uint8(mem[288] - 2) < stor10.length
                mem[0] = 10
                require Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)
                if 0 < Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64):
                    mem[288] = uint8(mem[288] - 1)
                    s = uint32(stor10[uint8(_139 - 2)].field_0)
                    s = uint32(stor10[uint8(_139 - 2)].field_32)
                    s = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(_139 - 2)].field_64)
                    s = Mask(112, 0, stor10[uint8(_139 - 2)].field_144)
                    s = ((Mask(112, 0, stor10[uint8(_139 - 2)].field_144) * uint32(stor10[uint8(_139 - 2)].field_32) * t) + (t * uint32(stor10[uint8(_139 - 2)].field_0) * t) - (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_139 - 2)].field_0) * t) - (Mask(80, 0, stor10[uint8(_139 - 2)].field_64) * uint32(stor10[uint8(_139 - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(_139 - 2)].field_144) * uint32(stor10[uint8(_139 - 2)].field_32) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) - (t * uint32(stor10[uint8(_139 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) + (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_139 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) + (Mask(80, 0, stor10[uint8(_139 - 2)].field_64) * uint32(stor10[uint8(_139 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) - (Mask(112, 0, stor10[uint8(_139 - 2)].field_144) * uint32(stor10[uint8(_139 - 2)].field_32) * Mask(80, 0, stor10[uint8(_139 - 2)].field_64)) - (t * uint32(stor10[uint8(_139 - 2)].field_0) * Mask(80, 0, stor10[uint8(_139 - 2)].field_64)) + (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_139 - 2)].field_0) * Mask(80, 0, stor10[uint8(_139 - 2)].field_64)) + (Mask(80, 0, stor10[uint8(_139 - 2)].field_64) * uint32(stor10[uint8(_139 - 2)].field_0) * Mask(80, 0, stor10[uint8(_139 - 2)].field_64)) / Mask(112, 0, stor10[uint8(_139 - 2)].field_144)) + s
                    t = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(_139 - 2)].field_64)
                    continue 
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001, 
                           arg2
                return (s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) - Mask(80, 0, Mask(80, 0, (s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
            require var24004 < stor11.length
            mem[0] = 11
            if 0 > Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64):
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (var26007 + ((var26012 * uint32(stor11[var26001].field_0) * var26012) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0) * var26012) + (10^18 * uint32(stor11[var26001].field_32) * var26012) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return var26007 + ((var26012 * uint32(stor11[var26001].field_0) * var26012) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0) * var26012) + (10^18 * uint32(stor11[var26001].field_32) * var26012) / 10^18) / 1000001, 
                           arg2
                return (var26007 + ((var26012 * uint32(stor11[var26001].field_0) * var26012) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0) * var26012) + (10^18 * uint32(stor11[var26001].field_32) * var26012) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (var26007 + ((var26012 * uint32(stor11[var26001].field_0) * var26012) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0) * var26012) + (10^18 * uint32(stor11[var26001].field_32) * var26012) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
            s = uint32(stor[sha3(mem[0]) + var26001].field_0)
            t = uint32(stor[sha3(mem[0]) + var26001].field_32)
            u = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor[sha3(mem[0]) + var26001].field_64)
            idx = var26006
            v = var26007
            w = var26012
            while idx != 0:
                require idx - 1 < stor11.length
                mem[0] = 11
                if 0 <= Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0):
                    s = uint32(stor11[idx].field_0)
                    t = uint32(stor11[idx].field_0)
                    u = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0)
                    idx = idx - 1
                    v = v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18)
                    w = u
                    continue 
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor11[idx].field_0) * u) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0) * u) + (10^18 * uint32(stor11[idx].field_0) * u) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor11[idx].field_0) * u) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0) * u) + (10^18 * uint32(stor11[idx].field_0) * u) / 10^18) / 1000001, 
                           arg2
                return (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor11[idx].field_0) * u) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0) * u) + (10^18 * uint32(stor11[idx].field_0) * u) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor11[idx].field_0) * u) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0) * u) + (10^18 * uint32(stor11[idx].field_0) * u) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
        else:
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16)
            while uint8(stor8.field_8) > 1:
                _140 = mem[288]
                require uint8(mem[288] - 2) < stor10.length
                mem[0] = 10
                require Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)
                if Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16) - (2 * 10^15 * arg1 / 2 * 10^15) < Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64):
                    mem[288] = uint8(mem[288] - 1)
                    s = uint32(stor10[uint8(_140 - 2)].field_0)
                    s = uint32(stor10[uint8(_140 - 2)].field_32)
                    s = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(_140 - 2)].field_64)
                    s = Mask(112, 0, stor10[uint8(_140 - 2)].field_144)
                    s = ((Mask(112, 0, stor10[uint8(_140 - 2)].field_144) * uint32(stor10[uint8(_140 - 2)].field_32) * t) + (t * uint32(stor10[uint8(_140 - 2)].field_0) * t) - (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_140 - 2)].field_0) * t) - (Mask(80, 0, stor10[uint8(_140 - 2)].field_64) * uint32(stor10[uint8(_140 - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(_140 - 2)].field_144) * uint32(stor10[uint8(_140 - 2)].field_32) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) - (t * uint32(stor10[uint8(_140 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) + (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_140 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) + (Mask(80, 0, stor10[uint8(_140 - 2)].field_64) * uint32(stor10[uint8(_140 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) - (Mask(112, 0, stor10[uint8(_140 - 2)].field_144) * uint32(stor10[uint8(_140 - 2)].field_32) * Mask(80, 0, stor10[uint8(_140 - 2)].field_64)) - (t * uint32(stor10[uint8(_140 - 2)].field_0) * Mask(80, 0, stor10[uint8(_140 - 2)].field_64)) + (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_140 - 2)].field_0) * Mask(80, 0, stor10[uint8(_140 - 2)].field_64)) + (Mask(80, 0, stor10[uint8(_140 - 2)].field_64) * uint32(stor10[uint8(_140 - 2)].field_0) * Mask(80, 0, stor10[uint8(_140 - 2)].field_64)) / Mask(112, 0, stor10[uint8(_140 - 2)].field_144)) + s
                    t = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(_140 - 2)].field_64)
                    continue 
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor6.field_160)) - (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor8.field_16)) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (2 * 10^15 * Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * arg1 / 2 * 10^15) + (2 * 10^15 * t * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor6.field_160)) - (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor8.field_16)) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (2 * 10^15 * Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * arg1 / 2 * 10^15) + (2 * 10^15 * t * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001, 
                           arg2
                return (s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor6.field_160)) - (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor8.field_16)) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (2 * 10^15 * Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * arg1 / 2 * 10^15) + (2 * 10^15 * t * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) - Mask(80, 0, Mask(80, 0, (s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor6.field_160)) - (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor8.field_16)) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (2 * 10^15 * Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * arg1 / 2 * 10^15) + (2 * 10^15 * t * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) - (2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * arg1 / 2 * 10^15) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
            require var24004 < stor11.length
            mem[0] = 11
            if Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16) - (2 * 10^15 * arg1 / 2 * 10^15) > Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64):
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (var26007 + ((var26012 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (var26012 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * var26012 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) + (var26012 * var26012 * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * var26012 * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * var26012 * uint32(stor11[var26001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * var26012 * uint32(stor11[var26001].field_0)) - (var26012 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (10^18 * var26012 * uint32(stor11[var26001].field_32)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_32)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_32)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_32)) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return var26007 + ((var26012 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (var26012 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * var26012 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) + (var26012 * var26012 * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * var26012 * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * var26012 * uint32(stor11[var26001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * var26012 * uint32(stor11[var26001].field_0)) - (var26012 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (10^18 * var26012 * uint32(stor11[var26001].field_32)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_32)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_32)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_32)) / 10^18) / 1000001, 
                           arg2
                return (var26007 + ((var26012 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (var26012 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * var26012 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) + (var26012 * var26012 * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * var26012 * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * var26012 * uint32(stor11[var26001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * var26012 * uint32(stor11[var26001].field_0)) - (var26012 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (10^18 * var26012 * uint32(stor11[var26001].field_32)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_32)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_32)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_32)) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (var26007 + ((var26012 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (var26012 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * var26012 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_0)) + (var26012 * var26012 * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * var26012 * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * var26012 * uint32(stor11[var26001].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * var26012 * uint32(stor11[var26001].field_0)) - (var26012 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (10^18 * var26012 * uint32(stor11[var26001].field_32)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_32)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_32)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor11[var26001].field_32)) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
            s = uint32(stor[sha3(mem[0]) + var26001].field_0)
            t = uint32(stor[sha3(mem[0]) + var26001].field_32)
            u = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor[sha3(mem[0]) + var26001].field_64)
            idx = var26006
            v = var26007
            w = var26012
            while idx != 0:
                require idx - 1 < stor11.length
                mem[0] = 11
                if Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16) - (2 * 10^15 * arg1 / 2 * 10^15) <= Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0):
                    s = uint32(stor11[idx].field_0)
                    t = uint32(stor11[idx].field_0)
                    u = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0)
                    idx = idx - 1
                    v = v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18)
                    w = u
                    continue 
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (u * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (2 * 10^15 * u * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) + (u * u * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * u * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * u * uint32(stor11[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * u * uint32(stor11[idx].field_0)) - (u * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (u * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (2 * 10^15 * u * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) + (u * u * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * u * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * u * uint32(stor11[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * u * uint32(stor11[idx].field_0)) - (u * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) / 10^18) / 1000001, 
                           arg2
                return (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (u * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (2 * 10^15 * u * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) + (u * u * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * u * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * u * uint32(stor11[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * u * uint32(stor11[idx].field_0)) - (u * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (u * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (2 * 10^15 * u * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) + (2 * 10^15 * Mask(80, 0, stor6.field_160) * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) - (2 * 10^15 * Mask(80, 0, stor8.field_16) * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) - (4000000000000 * 10^18 * arg1 / 2 * 10^15 * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) + (u * u * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * u * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * u * uint32(stor11[idx].field_0)) + (2 * 10^15 * arg1 / 2 * 10^15 * u * uint32(stor11[idx].field_0)) - (u * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (2 * 10^15 * arg1 / 2 * 10^15 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (2000000000000000 * 10^18 * arg1 / 2 * 10^15 * uint32(stor11[idx].field_0)) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
    else:
        if 10^18 >= Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16):
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16)
            while uint8(stor8.field_8) > 1:
                _141 = mem[288]
                require uint8(mem[288] - 2) < stor10.length
                mem[0] = 10
                require Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)
                if 0 < Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64):
                    mem[288] = uint8(mem[288] - 1)
                    s = uint32(stor10[uint8(_141 - 2)].field_0)
                    s = uint32(stor10[uint8(_141 - 2)].field_32)
                    s = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(_141 - 2)].field_64)
                    s = Mask(112, 0, stor10[uint8(_141 - 2)].field_144)
                    s = ((Mask(112, 0, stor10[uint8(_141 - 2)].field_144) * uint32(stor10[uint8(_141 - 2)].field_32) * t) + (t * uint32(stor10[uint8(_141 - 2)].field_0) * t) - (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_141 - 2)].field_0) * t) - (Mask(80, 0, stor10[uint8(_141 - 2)].field_64) * uint32(stor10[uint8(_141 - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(_141 - 2)].field_144) * uint32(stor10[uint8(_141 - 2)].field_32) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) - (t * uint32(stor10[uint8(_141 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) + (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_141 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) + (Mask(80, 0, stor10[uint8(_141 - 2)].field_64) * uint32(stor10[uint8(_141 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) - (Mask(112, 0, stor10[uint8(_141 - 2)].field_144) * uint32(stor10[uint8(_141 - 2)].field_32) * Mask(80, 0, stor10[uint8(_141 - 2)].field_64)) - (t * uint32(stor10[uint8(_141 - 2)].field_0) * Mask(80, 0, stor10[uint8(_141 - 2)].field_64)) + (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_141 - 2)].field_0) * Mask(80, 0, stor10[uint8(_141 - 2)].field_64)) + (Mask(80, 0, stor10[uint8(_141 - 2)].field_64) * uint32(stor10[uint8(_141 - 2)].field_0) * Mask(80, 0, stor10[uint8(_141 - 2)].field_64)) / Mask(112, 0, stor10[uint8(_141 - 2)].field_144)) + s
                    t = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(_141 - 2)].field_64)
                    continue 
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001, 
                           arg2
                return (s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) - Mask(80, 0, Mask(80, 0, (s + ((Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
            require var24004 < stor11.length
            mem[0] = 11
            if 0 > Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64):
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (var26007 + ((var26012 * uint32(stor11[var26001].field_0) * var26012) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0) * var26012) + (10^18 * uint32(stor11[var26001].field_32) * var26012) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return var26007 + ((var26012 * uint32(stor11[var26001].field_0) * var26012) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0) * var26012) + (10^18 * uint32(stor11[var26001].field_32) * var26012) / 10^18) / 1000001, 
                           arg2
                return (var26007 + ((var26012 * uint32(stor11[var26001].field_0) * var26012) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0) * var26012) + (10^18 * uint32(stor11[var26001].field_32) * var26012) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (var26007 + ((var26012 * uint32(stor11[var26001].field_0) * var26012) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0) * var26012) + (10^18 * uint32(stor11[var26001].field_32) * var26012) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
            s = uint32(stor[sha3(mem[0]) + var26001].field_0)
            t = uint32(stor[sha3(mem[0]) + var26001].field_32)
            u = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor[sha3(mem[0]) + var26001].field_64)
            idx = var26006
            v = var26007
            w = var26012
            while idx != 0:
                require idx - 1 < stor11.length
                mem[0] = 11
                if 0 <= Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0):
                    s = uint32(stor11[idx].field_0)
                    t = uint32(stor11[idx].field_0)
                    u = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0)
                    idx = idx - 1
                    v = v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18)
                    w = u
                    continue 
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor11[idx].field_0) * u) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0) * u) + (10^18 * uint32(stor11[idx].field_0) * u) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor11[idx].field_0) * u) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0) * u) + (10^18 * uint32(stor11[idx].field_0) * u) / 10^18) / 1000001, 
                           arg2
                return (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor11[idx].field_0) * u) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0) * u) + (10^18 * uint32(stor11[idx].field_0) * u) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((u * uint32(stor11[idx].field_0) * u) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0) * u) + (10^18 * uint32(stor11[idx].field_0) * u) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
        else:
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = Mask(80, 0, stor6.field_160) - Mask(80, 0, stor8.field_16)
            while uint8(stor8.field_8) > 1:
                _142 = mem[288]
                require uint8(mem[288] - 2) < stor10.length
                mem[0] = 10
                require Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)
                if Mask(80, 0, stor6.field_160) + -Mask(80, 0, stor8.field_16) - 10^18 < Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64):
                    mem[288] = uint8(mem[288] - 1)
                    s = uint32(stor10[uint8(_142 - 2)].field_0)
                    s = uint32(stor10[uint8(_142 - 2)].field_32)
                    s = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(_142 - 2)].field_64)
                    s = Mask(112, 0, stor10[uint8(_142 - 2)].field_144)
                    s = ((Mask(112, 0, stor10[uint8(_142 - 2)].field_144) * uint32(stor10[uint8(_142 - 2)].field_32) * t) + (t * uint32(stor10[uint8(_142 - 2)].field_0) * t) - (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_142 - 2)].field_0) * t) - (Mask(80, 0, stor10[uint8(_142 - 2)].field_64) * uint32(stor10[uint8(_142 - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(_142 - 2)].field_144) * uint32(stor10[uint8(_142 - 2)].field_32) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) - (t * uint32(stor10[uint8(_142 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) + (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_142 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) + (Mask(80, 0, stor10[uint8(_142 - 2)].field_64) * uint32(stor10[uint8(_142 - 2)].field_0) * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8)) - (Mask(112, 0, stor10[uint8(_142 - 2)].field_144) * uint32(stor10[uint8(_142 - 2)].field_32) * Mask(80, 0, stor10[uint8(_142 - 2)].field_64)) - (t * uint32(stor10[uint8(_142 - 2)].field_0) * Mask(80, 0, stor10[uint8(_142 - 2)].field_64)) + (Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) * uint32(stor10[uint8(_142 - 2)].field_0) * Mask(80, 0, stor10[uint8(_142 - 2)].field_64)) + (Mask(80, 0, stor10[uint8(_142 - 2)].field_64) * uint32(stor10[uint8(_142 - 2)].field_0) * Mask(80, 0, stor10[uint8(_142 - 2)].field_64)) / Mask(112, 0, stor10[uint8(_142 - 2)].field_144)) + s
                    t = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(_142 - 2)].field_64)
                    continue 
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (s + ((10^18 * Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32)) - (1000000000000000000 * 10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (10^18 * t * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) - (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor6.field_160)) + (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor8.field_16)) - (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return s + ((10^18 * Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32)) - (1000000000000000000 * 10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (10^18 * t * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) - (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor6.field_160)) + (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor8.field_16)) - (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001, 
                           arg2
                return (s + ((10^18 * Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32)) - (1000000000000000000 * 10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (10^18 * t * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) - (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor6.field_160)) + (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor8.field_16)) - (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) - Mask(80, 0, Mask(80, 0, (s + ((10^18 * Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32)) - (1000000000000000000 * 10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (10^18 * t * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * t) - (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * t) - (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor6.field_160)) + (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) - (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor6.field_160)) + (Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144) * uint32(stor10[uint8(mem[288] - 2)].field_32) * Mask(80, 0, stor8.field_16)) - (10^18 * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (t * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) + (Mask(80, 0, stor6.field_160) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (Mask(80, 0, stor8.field_16) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) - (2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(80, 0, stor10[uint8(mem[288] - 2)].field_64) * uint32(stor10[uint8(mem[288] - 2)].field_0) * Mask(80, 0, stor8.field_16)) / Mask(112, 0, stor10[uint8(mem[288] - 2)].field_144)) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
            require var24004 < stor11.length
            mem[0] = 11
            if Mask(80, 0, stor6.field_160) + -Mask(80, 0, stor8.field_16) - 10^18 > Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64):
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (var26007 + ((-1000000000000000000 * 10^18 * uint32(stor11[var26001].field_0)) - (10^18 * var26012 * uint32(stor11[var26001].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (var26012 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (var26012 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (10^18 * var26012 * uint32(stor11[var26001].field_0)) + (var26012 * var26012 * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * var26012 * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * var26012 * uint32(stor11[var26001].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (var26012 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (1000000000000000000 * 10^18 * uint32(stor11[var26001].field_32)) + (10^18 * var26012 * uint32(stor11[var26001].field_32)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_32)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_32)) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return var26007 + ((-1000000000000000000 * 10^18 * uint32(stor11[var26001].field_0)) - (10^18 * var26012 * uint32(stor11[var26001].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (var26012 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (var26012 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (10^18 * var26012 * uint32(stor11[var26001].field_0)) + (var26012 * var26012 * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * var26012 * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * var26012 * uint32(stor11[var26001].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (var26012 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (1000000000000000000 * 10^18 * uint32(stor11[var26001].field_32)) + (10^18 * var26012 * uint32(stor11[var26001].field_32)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_32)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_32)) / 10^18) / 1000001, 
                           arg2
                return (var26007 + ((-1000000000000000000 * 10^18 * uint32(stor11[var26001].field_0)) - (10^18 * var26012 * uint32(stor11[var26001].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (var26012 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (var26012 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (10^18 * var26012 * uint32(stor11[var26001].field_0)) + (var26012 * var26012 * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * var26012 * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * var26012 * uint32(stor11[var26001].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (var26012 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (1000000000000000000 * 10^18 * uint32(stor11[var26001].field_32)) + (10^18 * var26012 * uint32(stor11[var26001].field_32)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_32)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_32)) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (var26007 + ((-1000000000000000000 * 10^18 * uint32(stor11[var26001].field_0)) - (10^18 * var26012 * uint32(stor11[var26001].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (var26012 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (var26012 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_0)) + (10^18 * var26012 * uint32(stor11[var26001].field_0)) + (var26012 * var26012 * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor6.field_160) * var26012 * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor8.field_16) * var26012 * uint32(stor11[var26001].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (var26012 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[var26001].field_64) * uint32(stor11[var26001].field_0)) + (1000000000000000000 * 10^18 * uint32(stor11[var26001].field_32)) + (10^18 * var26012 * uint32(stor11[var26001].field_32)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[var26001].field_32)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[var26001].field_32)) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
            s = uint32(stor[sha3(mem[0]) + var26001].field_0)
            t = uint32(stor[sha3(mem[0]) + var26001].field_32)
            u = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor[sha3(mem[0]) + var26001].field_64)
            idx = var26006
            v = var26007
            w = var26012
            while idx != 0:
                require idx - 1 < stor11.length
                mem[0] = 11
                if Mask(80, 0, stor6.field_160) + -Mask(80, 0, stor8.field_16) - 10^18 <= Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0):
                    s = uint32(stor11[idx].field_0)
                    t = uint32(stor11[idx].field_0)
                    u = Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0)
                    idx = idx - 1
                    v = v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18)
                    w = u
                    continue 
                if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((-1000000000000000000 * 10^18 * uint32(stor11[idx].field_0)) - (10^18 * u * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (u * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (u * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) + (u * u * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * u * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * u * uint32(stor11[idx].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (u * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (1000000000000000000 * 10^18 * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)):
                    return v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((-1000000000000000000 * 10^18 * uint32(stor11[idx].field_0)) - (10^18 * u * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (u * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (u * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) + (u * u * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * u * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * u * uint32(stor11[idx].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (u * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (1000000000000000000 * 10^18 * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) / 10^18) / 1000001, 
                           arg2
                return (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((-1000000000000000000 * 10^18 * uint32(stor11[idx].field_0)) - (10^18 * u * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (u * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (u * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) + (u * u * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * u * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * u * uint32(stor11[idx].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (u * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (1000000000000000000 * 10^18 * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) + ((-1000000000000000000 * 10^18 * uint32(stor11[idx].field_0)) - (10^18 * u * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (u * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (u * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) + (u * u * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor6.field_160) * u * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor8.field_16) * u * uint32(stor11[idx].field_0)) - (10^18 * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (u * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (Mask(80, 0, stor6.field_160) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) - (Mask(80, 0, stor8.field_16) * 2 * Mask(80, 0, stor9[uint8(uint8(stor8.field_0) - 1)].field_8) + Mask(192, 0, stor11[idx].field_0) * uint32(stor11[idx].field_0)) + (1000000000000000000 * 10^18 * uint32(stor11[idx].field_0)) + (10^18 * u * uint32(stor11[idx].field_0)) - (10^18 * Mask(80, 0, stor6.field_160) * uint32(stor11[idx].field_0)) + (10^18 * Mask(80, 0, stor8.field_16) * uint32(stor11[idx].field_0)) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
                       arg2
    if Mask(80, 0, stor8.field_96) >= Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)):
        return v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) / 1000001, arg2
    return (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) / 1000001) - Mask(80, 0, Mask(80, 0, (v + ((10^18 * w * t) - (10^18 * u * t) + (w * w * s) - (u * w * s) - (w * u * s) + (u * u * s) / 10^18) / 1000001) + Mask(80, 0, stor8.field_176)) - Mask(80, 0, stor8.field_96)), 
           arg2
}



}
