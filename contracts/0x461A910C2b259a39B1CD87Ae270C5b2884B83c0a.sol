contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of struct sub_626e6bcb;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
mapping of uint256 stor18;
mapping of uint256 stor19;
address stor2;
mapping of uint256 stor20;
mapping of uint256 stor21;
mapping of uint256 stor22;
mapping of uint256 stor23;
uint256 stor24;
uint256 stor25;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function sub_626e6bcb(?) {
    require arg1 < sub_626e6bcb.length
    return sub_626e6bcb[arg1].field_0
}

function sub_7f58ad3f(?) {
    require arg1 < stor11.length
    return sub_7f58ad3f[uint8(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_6a427b47(?) {
    return (stor4 + (24 * 3600 * arg1 - stor4 / 24 * 3600))
}

function sub_be9451b2(?) {
    return ((24 * 3600 * block.timestamp - stor4 / 24 * 3600 / 24 * 3600) - 1)
}

function acceptNextOwner() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only accept preapproved new owner.'
    owner = stor1
}

function sub_ab25b7b2(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    require block.timestamp > stor7
    stor8 = arg1
}

function sub_fd667ca5(?) {
    require arg2 > arg1
    require arg3 > arg2
    stor5 = arg1
    stor6 = arg2
    stor7 = arg3
    stor9 = arg4
    stor2 = arg5
    address(stor3.field_0) = arg6
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg7)
    Mask(88, 0, stor3.field_168) = 1
}

function approveNextOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 == owner:
        revert with 0, 'Cannot approve current owner.'
    stor1 = arg1
}

function getGameInfo() {
    return bool(uint8(stor3.field_168)), 
           bool(uint8(stor3.field_160)),
           stor12,
           stor13,
           stor14,
           stor15,
           stor16,
           stor17,
           stor5,
           stor6,
           stor7,
           stor8
}

function sub_1144aea9(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    call msg.sender with:
       value stor24 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dcfcd924(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    call msg.sender with:
       value stor25 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getEtherBack() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBet(uint256 arg1) {
    if arg1 == 1:
        return stor18[address(msg.sender)]
    if arg1 == 2:
        return stor19[address(msg.sender)]
    if arg1 == 3:
        return stor20[address(msg.sender)]
    if arg1 == 4:
        return stor21[address(msg.sender)]
    if arg1 == 5:
        return stor22[address(msg.sender)]
    if arg1 != 6:
        return 0
    return stor23[address(msg.sender)]
}

function sub_aedadfd9(?) {
    if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
        return 0
    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
    require (800 * stor18[address(msg.sender)]) + (800 * stor19[address(msg.sender)]) + (800 * stor20[address(msg.sender)]) + (800 * stor21[address(msg.sender)]) + (800 * stor22[address(msg.sender)]) + (800 * stor23[address(msg.sender)]) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == 800
    return ((800 * stor18[address(msg.sender)]) + (800 * stor19[address(msg.sender)]) + (800 * stor20[address(msg.sender)]) + (800 * stor21[address(msg.sender)]) + (800 * stor22[address(msg.sender)]) + (800 * stor23[address(msg.sender)]))
}

function sub_8f6b99c4(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    require stor6 > block.timestamp
    if bool(uint8(stor3.field_168)) != 1:
        revert with 0, 'This is not opened yet.'
    if uint8(stor3.field_160):
        revert with 0, 'This is Ether Game'
    if arg1 == 1:
        require stor18[address(msg.sender)] + arg2 >= stor18[address(msg.sender)]
        stor18[address(msg.sender)] += arg2
        require stor12 + arg2 >= stor12
        stor12 += arg2
    else:
        if arg1 == 2:
            require stor19[address(msg.sender)] + arg2 >= stor19[address(msg.sender)]
            stor19[address(msg.sender)] += arg2
            require stor13 + arg2 >= stor13
            stor13 += arg2
        else:
            if arg1 == 3:
                require stor20[address(msg.sender)] + arg2 >= stor20[address(msg.sender)]
                stor20[address(msg.sender)] += arg2
                require stor14 + arg2 >= stor14
                stor14 += arg2
            else:
                if arg1 == 4:
                    require stor21[address(msg.sender)] + arg2 >= stor21[address(msg.sender)]
                    stor21[address(msg.sender)] += arg2
                    require stor15 + arg2 >= stor15
                    stor15 += arg2
                else:
                    if arg1 == 5:
                        require stor22[address(msg.sender)] + arg2 >= stor22[address(msg.sender)]
                        stor22[address(msg.sender)] += arg2
                        require stor16 + arg2 >= stor16
                        stor16 += arg2
                    else:
                        if arg1 == 6:
                            require stor23[address(msg.sender)] + arg2 >= stor23[address(msg.sender)]
                            stor23[address(msg.sender)] += arg2
                            require stor17 + arg2 >= stor17
                            stor17 += arg2
    if arg2:
        require arg2
        require 1000 * arg2 / arg2 == 1000
        stor24 += 1000 * arg2 / 6
    if arg2:
        require arg2
        require 1000 * arg2 / arg2 == 1000
        stor25 += 1000 * arg2 / 45
    if sub_626e6bcb.length:
        mem[128] = uint256(sub_626e6bcb.field_0)
        idx = 128
        s = 0
        while (32 * sub_626e6bcb.length) + 96 > idx:
            mem[idx + 32] = sub_626e6bcb[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_626e6bcb.length) + 128] = stor11.length
    if stor11.length:
        mem[(32 * sub_626e6bcb.length) + 160] = uint128(stor11.field_0)
        idx = (32 * sub_626e6bcb.length) + 160
        s = 0
        while (32 * sub_626e6bcb.length) + (32 * stor11.length) + 128 > idx:
            mem[idx + 32] = uint128(stor11.field_8 * (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s))
            idx = idx + 32
            s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
            continue 
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < sub_626e6bcb.length:
        require s + 1 >= s
        require idx < sub_626e6bcb.length
        require mem[(32 * idx) + 128] >= 0
        if (sha3(block.timestamp) % 10) + 1 / 100 % 50000 < s + 1:
            s = s + mem[(32 * idx) + 128] + 1
            s = s + 1
            idx = idx + 1
            s = s + mem[(32 * idx) + 128] + 1
            continue 
        if (sha3(block.timestamp) % 10) + 1 / 100 % 50000 > s + mem[(32 * idx) + 128] + 1:
            s = s + mem[(32 * idx) + 128] + 1
            s = s + 1
            idx = idx + 1
            s = s + mem[(32 * idx) + 128] + 1
            continue 
        require idx < stor11.length
        if stor24:
            require stor24
            require stor24 * mem[(32 * idx) + (32 * sub_626e6bcb.length) + 176 len 16] / stor24 == mem[(32 * idx) + (32 * sub_626e6bcb.length) + 176 len 16]
            if uint128(stor24 * mem[(32 * idx) + (32 * sub_626e6bcb.length) + 176 len 16] / 100) > 0:
                call msg.sender with:
                   value uint128(stor24 * mem[(32 * idx) + (32 * sub_626e6bcb.length) + 176 len 16] / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function PlaceBet(uint256 arg1) payable {
    require stor6 > block.timestamp
    if bool(uint8(stor3.field_168)) != 1:
        revert with 0, 'This is not opened yet.'
    if bool(uint8(stor3.field_160)) != 1:
        revert with 0, 'This is Token Game'
    if arg1 == 1:
        require stor18[address(msg.sender)] + msg.value >= stor18[address(msg.sender)]
        stor18[address(msg.sender)] += msg.value
        require stor12 + msg.value >= stor12
        stor12 += msg.value
    else:
        if arg1 == 2:
            require stor19[address(msg.sender)] + msg.value >= stor19[address(msg.sender)]
            stor19[address(msg.sender)] += msg.value
            require stor13 + msg.value >= stor13
            stor13 += msg.value
        else:
            if arg1 == 3:
                require stor20[address(msg.sender)] + msg.value >= stor20[address(msg.sender)]
                stor20[address(msg.sender)] += msg.value
                require stor14 + msg.value >= stor14
                stor14 += msg.value
            else:
                if arg1 == 4:
                    require stor21[address(msg.sender)] + msg.value >= stor21[address(msg.sender)]
                    stor21[address(msg.sender)] += msg.value
                    require stor15 + msg.value >= stor15
                    stor15 += msg.value
                else:
                    if arg1 == 5:
                        require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                        stor22[address(msg.sender)] += msg.value
                        require stor16 + msg.value >= stor16
                        stor16 += msg.value
                    else:
                        if arg1 == 6:
                            require stor23[address(msg.sender)] + msg.value >= stor23[address(msg.sender)]
                            stor23[address(msg.sender)] += msg.value
                            require stor17 + msg.value >= stor17
                            stor17 += msg.value
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
        stor24 += 1000 * msg.value / 6
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
        stor25 += 1000 * msg.value / 45
    if sub_626e6bcb.length:
        mem[128] = uint256(sub_626e6bcb.field_0)
        idx = 128
        s = 0
        while (32 * sub_626e6bcb.length) + 96 > idx:
            mem[idx + 32] = sub_626e6bcb[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_626e6bcb.length) + 128] = stor11.length
    if stor11.length:
        mem[(32 * sub_626e6bcb.length) + 160] = uint128(stor11.field_0)
        idx = (32 * sub_626e6bcb.length) + 160
        s = 0
        while (32 * sub_626e6bcb.length) + (32 * stor11.length) + 128 > idx:
            mem[idx + 32] = uint128(stor11.field_8 * (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s))
            idx = idx + 32
            s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
            continue 
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < sub_626e6bcb.length:
        require s + 1 >= s
        require idx < sub_626e6bcb.length
        require mem[(32 * idx) + 128] >= 0
        if (sha3(block.timestamp) % 10) + 1 / 100 % 50000 < s + 1:
            s = s + mem[(32 * idx) + 128] + 1
            s = s + 1
            idx = idx + 1
            s = s + mem[(32 * idx) + 128] + 1
            continue 
        if (sha3(block.timestamp) % 10) + 1 / 100 % 50000 > s + mem[(32 * idx) + 128] + 1:
            s = s + mem[(32 * idx) + 128] + 1
            s = s + 1
            idx = idx + 1
            s = s + mem[(32 * idx) + 128] + 1
            continue 
        require idx < stor11.length
        if stor24:
            require stor24
            require stor24 * mem[(32 * idx) + (32 * sub_626e6bcb.length) + 176 len 16] / stor24 == mem[(32 * idx) + (32 * sub_626e6bcb.length) + 176 len 16]
            if uint128(stor24 * mem[(32 * idx) + (32 * sub_626e6bcb.length) + 176 len 16] / 100) > 0:
                call msg.sender with:
                   value uint128(stor24 * mem[(32 * idx) + (32 * sub_626e6bcb.length) + 176 len 16] / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_3018d14f(?) {
    if not stor12 + stor13 + stor14 + stor15 + stor16 + stor17:
        if stor8 == 1:
            if not stor18[address(msg.sender)]:
                require stor12 > 0
                require stor12
                if 0 / stor12:
                    require 0 / stor12
                    require not 0 / 0 / stor12
            else:
                require stor18[address(msg.sender)]
                require 100 * stor18[address(msg.sender)] / stor18[address(msg.sender)] == 100
                require stor12 > 0
                require stor12
                if 100 * stor18[address(msg.sender)] / stor12:
                    require 100 * stor18[address(msg.sender)] / stor12
                    require not 0 / 100 * stor18[address(msg.sender)] / stor12
        else:
            if stor8 == 2:
                if not stor19[address(msg.sender)]:
                    require stor13 > 0
                    require stor13
                    if 0 / stor13:
                        require 0 / stor13
                        require not 0 / 0 / stor13
                else:
                    require stor19[address(msg.sender)]
                    require 100 * stor19[address(msg.sender)] / stor19[address(msg.sender)] == 100
                    require stor13 > 0
                    require stor13
                    if 100 * stor19[address(msg.sender)] / stor13:
                        require 100 * stor19[address(msg.sender)] / stor13
                        require not 0 / 100 * stor19[address(msg.sender)] / stor13
            else:
                if stor8 == 3:
                    if not stor20[address(msg.sender)]:
                        require stor14 > 0
                        require stor14
                        if 0 / stor14:
                            require 0 / stor14
                            require not 0 / 0 / stor14
                    else:
                        require stor20[address(msg.sender)]
                        require 100 * stor20[address(msg.sender)] / stor20[address(msg.sender)] == 100
                        require stor14 > 0
                        require stor14
                        if 100 * stor20[address(msg.sender)] / stor14:
                            require 100 * stor20[address(msg.sender)] / stor14
                            require not 0 / 100 * stor20[address(msg.sender)] / stor14
                else:
                    if stor8 == 4:
                        if not stor21[address(msg.sender)]:
                            require stor15 > 0
                            require stor15
                            if 0 / stor15:
                                require 0 / stor15
                                require not 0 / 0 / stor15
                        else:
                            require stor21[address(msg.sender)]
                            require 100 * stor21[address(msg.sender)] / stor21[address(msg.sender)] == 100
                            require stor15 > 0
                            require stor15
                            if 100 * stor21[address(msg.sender)] / stor15:
                                require 100 * stor21[address(msg.sender)] / stor15
                                require not 0 / 100 * stor21[address(msg.sender)] / stor15
                    else:
                        if stor8 == 5:
                            if not stor22[address(msg.sender)]:
                                require stor16 > 0
                                require stor16
                                if 0 / stor16:
                                    require 0 / stor16
                                    require not 0 / 0 / stor16
                            else:
                                require stor22[address(msg.sender)]
                                require 100 * stor22[address(msg.sender)] / stor22[address(msg.sender)] == 100
                                require stor16 > 0
                                require stor16
                                if 100 * stor22[address(msg.sender)] / stor16:
                                    require 100 * stor22[address(msg.sender)] / stor16
                                    require not 0 / 100 * stor22[address(msg.sender)] / stor16
                        else:
                            if stor8 == 6:
                                if not stor23[address(msg.sender)]:
                                    require stor17 > 0
                                    require stor17
                                    if 0 / stor17:
                                        require 0 / stor17
                                        require not 0 / 0 / stor17
                                else:
                                    require stor23[address(msg.sender)]
                                    require 100 * stor23[address(msg.sender)] / stor23[address(msg.sender)] == 100
                                    require stor17 > 0
                                    require stor17
                                    if 100 * stor23[address(msg.sender)] / stor17:
                                        require 100 * stor23[address(msg.sender)] / stor17
                                        require not 0 / 100 * stor23[address(msg.sender)] / stor17
        return 0
    require stor12 + stor13 + stor14 + stor15 + stor16 + stor17
    require (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17) / stor12 + stor13 + stor14 + stor15 + stor16 + stor17 == 9500
    if stor8 == 1:
        if not stor18[address(msg.sender)]:
            require stor12 > 0
            require stor12
            if not 0 / stor12:
                return 0
            require 0 / stor12
            require (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12) / 0 / stor12 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
            if not (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12):
                return 0
            require (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12)
            require (9500 * 10^18 * stor12 * 0 / stor12) + (9500 * 10^18 * stor13 * 0 / stor12) + (9500 * 10^18 * stor14 * 0 / stor12) + (9500 * 10^18 * stor15 * 0 / stor12) + (9500 * 10^18 * stor16 * 0 / stor12) + (9500 * 10^18 * stor17 * 0 / stor12) / (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12) == 10^18
            return ((9500 * 10^18 * stor12 * 0 / stor12) + (9500 * 10^18 * stor13 * 0 / stor12) + (9500 * 10^18 * stor14 * 0 / stor12) + (9500 * 10^18 * stor15 * 0 / stor12) + (9500 * 10^18 * stor16 * 0 / stor12) + (9500 * 10^18 * stor17 * 0 / stor12) / 10 * 10^6)
        require stor18[address(msg.sender)]
        require 100 * stor18[address(msg.sender)] / stor18[address(msg.sender)] == 100
        require stor12 > 0
        require stor12
        if not 100 * stor18[address(msg.sender)] / stor12:
            return 0
        require 100 * stor18[address(msg.sender)] / stor12
        require (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / 100 * stor18[address(msg.sender)] / stor12 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12):
            return 0
        require (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12)
        require (9500 * 10^18 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12) == 10^18
        return ((9500 * 10^18 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / 10 * 10^6)
    if stor8 == 2:
        if not stor19[address(msg.sender)]:
            require stor13 > 0
            require stor13
            if not 0 / stor13:
                return 0
            require 0 / stor13
            require (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13) / 0 / stor13 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
            if not (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13):
                return 0
            require (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13)
            require (9500 * 10^18 * stor12 * 0 / stor13) + (9500 * 10^18 * stor13 * 0 / stor13) + (9500 * 10^18 * stor14 * 0 / stor13) + (9500 * 10^18 * stor15 * 0 / stor13) + (9500 * 10^18 * stor16 * 0 / stor13) + (9500 * 10^18 * stor17 * 0 / stor13) / (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13) == 10^18
            return ((9500 * 10^18 * stor12 * 0 / stor13) + (9500 * 10^18 * stor13 * 0 / stor13) + (9500 * 10^18 * stor14 * 0 / stor13) + (9500 * 10^18 * stor15 * 0 / stor13) + (9500 * 10^18 * stor16 * 0 / stor13) + (9500 * 10^18 * stor17 * 0 / stor13) / 10 * 10^6)
        require stor19[address(msg.sender)]
        require 100 * stor19[address(msg.sender)] / stor19[address(msg.sender)] == 100
        require stor13 > 0
        require stor13
        if not 100 * stor19[address(msg.sender)] / stor13:
            return 0
        require 100 * stor19[address(msg.sender)] / stor13
        require (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / 100 * stor19[address(msg.sender)] / stor13 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13):
            return 0
        require (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13)
        require (9500 * 10^18 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13) == 10^18
        return ((9500 * 10^18 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / 10 * 10^6)
    if stor8 == 3:
        if not stor20[address(msg.sender)]:
            require stor14 > 0
            require stor14
            if not 0 / stor14:
                return 0
            require 0 / stor14
            require (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14) / 0 / stor14 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
            if not (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14):
                return 0
            require (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14)
            require (9500 * 10^18 * stor12 * 0 / stor14) + (9500 * 10^18 * stor13 * 0 / stor14) + (9500 * 10^18 * stor14 * 0 / stor14) + (9500 * 10^18 * stor15 * 0 / stor14) + (9500 * 10^18 * stor16 * 0 / stor14) + (9500 * 10^18 * stor17 * 0 / stor14) / (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14) == 10^18
            return ((9500 * 10^18 * stor12 * 0 / stor14) + (9500 * 10^18 * stor13 * 0 / stor14) + (9500 * 10^18 * stor14 * 0 / stor14) + (9500 * 10^18 * stor15 * 0 / stor14) + (9500 * 10^18 * stor16 * 0 / stor14) + (9500 * 10^18 * stor17 * 0 / stor14) / 10 * 10^6)
        require stor20[address(msg.sender)]
        require 100 * stor20[address(msg.sender)] / stor20[address(msg.sender)] == 100
        require stor14 > 0
        require stor14
        if not 100 * stor20[address(msg.sender)] / stor14:
            return 0
        require 100 * stor20[address(msg.sender)] / stor14
        require (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / 100 * stor20[address(msg.sender)] / stor14 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14):
            return 0
        require (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14)
        require (9500 * 10^18 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14) == 10^18
        return ((9500 * 10^18 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / 10 * 10^6)
    if stor8 == 4:
        if not stor21[address(msg.sender)]:
            require stor15 > 0
            require stor15
            if not 0 / stor15:
                return 0
            require 0 / stor15
            require (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15) / 0 / stor15 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
            if not (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15):
                return 0
            require (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15)
            require (9500 * 10^18 * stor12 * 0 / stor15) + (9500 * 10^18 * stor13 * 0 / stor15) + (9500 * 10^18 * stor14 * 0 / stor15) + (9500 * 10^18 * stor15 * 0 / stor15) + (9500 * 10^18 * stor16 * 0 / stor15) + (9500 * 10^18 * stor17 * 0 / stor15) / (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15) == 10^18
            return ((9500 * 10^18 * stor12 * 0 / stor15) + (9500 * 10^18 * stor13 * 0 / stor15) + (9500 * 10^18 * stor14 * 0 / stor15) + (9500 * 10^18 * stor15 * 0 / stor15) + (9500 * 10^18 * stor16 * 0 / stor15) + (9500 * 10^18 * stor17 * 0 / stor15) / 10 * 10^6)
        require stor21[address(msg.sender)]
        require 100 * stor21[address(msg.sender)] / stor21[address(msg.sender)] == 100
        require stor15 > 0
        require stor15
        if not 100 * stor21[address(msg.sender)] / stor15:
            return 0
        require 100 * stor21[address(msg.sender)] / stor15
        require (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / 100 * stor21[address(msg.sender)] / stor15 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15):
            return 0
        require (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15)
        require (9500 * 10^18 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15) == 10^18
        return ((9500 * 10^18 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / 10 * 10^6)
    if stor8 == 5:
        if not stor22[address(msg.sender)]:
            require stor16 > 0
            require stor16
            if not 0 / stor16:
                return 0
            require 0 / stor16
            require (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16) / 0 / stor16 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
            if not (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16):
                return 0
            require (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16)
            require (9500 * 10^18 * stor12 * 0 / stor16) + (9500 * 10^18 * stor13 * 0 / stor16) + (9500 * 10^18 * stor14 * 0 / stor16) + (9500 * 10^18 * stor15 * 0 / stor16) + (9500 * 10^18 * stor16 * 0 / stor16) + (9500 * 10^18 * stor17 * 0 / stor16) / (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16) == 10^18
            return ((9500 * 10^18 * stor12 * 0 / stor16) + (9500 * 10^18 * stor13 * 0 / stor16) + (9500 * 10^18 * stor14 * 0 / stor16) + (9500 * 10^18 * stor15 * 0 / stor16) + (9500 * 10^18 * stor16 * 0 / stor16) + (9500 * 10^18 * stor17 * 0 / stor16) / 10 * 10^6)
        require stor22[address(msg.sender)]
        require 100 * stor22[address(msg.sender)] / stor22[address(msg.sender)] == 100
        require stor16 > 0
        require stor16
        if not 100 * stor22[address(msg.sender)] / stor16:
            return 0
        require 100 * stor22[address(msg.sender)] / stor16
        require (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / 100 * stor22[address(msg.sender)] / stor16 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16):
            return 0
        require (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16)
        require (9500 * 10^18 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16) == 10^18
        return ((9500 * 10^18 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / 10 * 10^6)
    if stor8 != 6:
        return 0
    if not stor23[address(msg.sender)]:
        require stor17 > 0
        require stor17
        if not 0 / stor17:
            return 0
        require 0 / stor17
        require (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17) / 0 / stor17 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17):
            return 0
        require (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17)
        require (9500 * 10^18 * stor12 * 0 / stor17) + (9500 * 10^18 * stor13 * 0 / stor17) + (9500 * 10^18 * stor14 * 0 / stor17) + (9500 * 10^18 * stor15 * 0 / stor17) + (9500 * 10^18 * stor16 * 0 / stor17) + (9500 * 10^18 * stor17 * 0 / stor17) / (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17) == 10^18
        return ((9500 * 10^18 * stor12 * 0 / stor17) + (9500 * 10^18 * stor13 * 0 / stor17) + (9500 * 10^18 * stor14 * 0 / stor17) + (9500 * 10^18 * stor15 * 0 / stor17) + (9500 * 10^18 * stor16 * 0 / stor17) + (9500 * 10^18 * stor17 * 0 / stor17) / 10 * 10^6)
    require stor23[address(msg.sender)]
    require 100 * stor23[address(msg.sender)] / stor23[address(msg.sender)] == 100
    require stor17 > 0
    require stor17
    if not 100 * stor23[address(msg.sender)] / stor17:
        return 0
    require 100 * stor23[address(msg.sender)] / stor17
    require (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / 100 * stor23[address(msg.sender)] / stor17 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
    if not (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17):
        return 0
    require (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17)
    require (9500 * 10^18 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17) == 10^18
    return ((9500 * 10^18 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / 10 * 10^6)
}

function sub_7f98aa71(?) {
    if not stor12 + stor13 + stor14 + stor15 + stor16 + stor17:
        if stor8 == 1:
            if not stor18[address(msg.sender)]:
                require stor12 > 0
                require stor12
                if 0 / stor12:
                    require 0 / stor12
                    require not 0 / 0 / stor12
                return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 0 / stor12
            require stor18[address(msg.sender)]
            require 100 * stor18[address(msg.sender)] / stor18[address(msg.sender)] == 100
            require stor12 > 0
            require stor12
            if 100 * stor18[address(msg.sender)] / stor12:
                require 100 * stor18[address(msg.sender)] / stor12
                require not 0 / 100 * stor18[address(msg.sender)] / stor12
            return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 100 * stor18[address(msg.sender)] / stor12
        if stor8 == 2:
            if not stor19[address(msg.sender)]:
                require stor13 > 0
                require stor13
                if 0 / stor13:
                    require 0 / stor13
                    require not 0 / 0 / stor13
                return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 0 / stor13
            require stor19[address(msg.sender)]
            require 100 * stor19[address(msg.sender)] / stor19[address(msg.sender)] == 100
            require stor13 > 0
            require stor13
            if 100 * stor19[address(msg.sender)] / stor13:
                require 100 * stor19[address(msg.sender)] / stor13
                require not 0 / 100 * stor19[address(msg.sender)] / stor13
            return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 100 * stor19[address(msg.sender)] / stor13
        if stor8 == 3:
            if not stor20[address(msg.sender)]:
                require stor14 > 0
                require stor14
                if 0 / stor14:
                    require 0 / stor14
                    require not 0 / 0 / stor14
                return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 0 / stor14
            require stor20[address(msg.sender)]
            require 100 * stor20[address(msg.sender)] / stor20[address(msg.sender)] == 100
            require stor14 > 0
            require stor14
            if 100 * stor20[address(msg.sender)] / stor14:
                require 100 * stor20[address(msg.sender)] / stor14
                require not 0 / 100 * stor20[address(msg.sender)] / stor14
            return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 100 * stor20[address(msg.sender)] / stor14
        if stor8 == 4:
            if not stor21[address(msg.sender)]:
                require stor15 > 0
                require stor15
                if 0 / stor15:
                    require 0 / stor15
                    require not 0 / 0 / stor15
                return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 0 / stor15
            require stor21[address(msg.sender)]
            require 100 * stor21[address(msg.sender)] / stor21[address(msg.sender)] == 100
            require stor15 > 0
            require stor15
            if 100 * stor21[address(msg.sender)] / stor15:
                require 100 * stor21[address(msg.sender)] / stor15
                require not 0 / 100 * stor21[address(msg.sender)] / stor15
            return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 100 * stor21[address(msg.sender)] / stor15
        if stor8 == 5:
            if not stor22[address(msg.sender)]:
                require stor16 > 0
                require stor16
                if 0 / stor16:
                    require 0 / stor16
                    require not 0 / 0 / stor16
                return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 0 / stor16
            require stor22[address(msg.sender)]
            require 100 * stor22[address(msg.sender)] / stor22[address(msg.sender)] == 100
            require stor16 > 0
            require stor16
            if 100 * stor22[address(msg.sender)] / stor16:
                require 100 * stor22[address(msg.sender)] / stor16
                require not 0 / 100 * stor22[address(msg.sender)] / stor16
            return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 100 * stor22[address(msg.sender)] / stor16
        if stor8 != 6:
            return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 0
        if not stor23[address(msg.sender)]:
            require stor17 > 0
            require stor17
            if 0 / stor17:
                require 0 / stor17
                require not 0 / 0 / stor17
            return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 0 / stor17
        require stor23[address(msg.sender)]
        require 100 * stor23[address(msg.sender)] / stor23[address(msg.sender)] == 100
        require stor17 > 0
        require stor17
        if 100 * stor23[address(msg.sender)] / stor17:
            require 100 * stor23[address(msg.sender)] / stor17
            require not 0 / 100 * stor23[address(msg.sender)] / stor17
        return 0, 0, 0, stor12 + stor13 + stor14 + stor15 + stor16 + stor17, 100 * stor23[address(msg.sender)] / stor17
    require stor12 + stor13 + stor14 + stor15 + stor16 + stor17
    require (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17) / stor12 + stor13 + stor14 + stor15 + stor16 + stor17 == 9500
    if stor8 == 1:
        if not stor18[address(msg.sender)]:
            require stor12 > 0
            require stor12
            if not 0 / stor12:
                return 0, 
                       (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                       0,
                       stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                       0 / stor12
            require 0 / stor12
            require (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12) / 0 / stor12 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
            if not (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12):
                return 0, 
                       (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                       0,
                       stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                       0 / stor12
            require (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12)
            require (9500 * 10^18 * stor12 * 0 / stor12) + (9500 * 10^18 * stor13 * 0 / stor12) + (9500 * 10^18 * stor14 * 0 / stor12) + (9500 * 10^18 * stor15 * 0 / stor12) + (9500 * 10^18 * stor16 * 0 / stor12) + (9500 * 10^18 * stor17 * 0 / stor12) / (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12) == 10^18
            return (9500 * 10^18 * stor12 * 0 / stor12) + (9500 * 10^18 * stor13 * 0 / stor12) + (9500 * 10^18 * stor14 * 0 / stor12) + (9500 * 10^18 * stor15 * 0 / stor12) + (9500 * 10^18 * stor16 * 0 / stor12) + (9500 * 10^18 * stor17 * 0 / stor12) / 10 * 10^6, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   0 / stor12
        require stor18[address(msg.sender)]
        require 100 * stor18[address(msg.sender)] / stor18[address(msg.sender)] == 100
        require stor12 > 0
        require stor12
        if not 100 * stor18[address(msg.sender)] / stor12:
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   100 * stor18[address(msg.sender)] / stor12
        require 100 * stor18[address(msg.sender)] / stor12
        require (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / 100 * stor18[address(msg.sender)] / stor12 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12):
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   100 * stor18[address(msg.sender)] / stor12
        require (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12)
        require (9500 * 10^18 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12) == 10^18
        return (9500 * 10^18 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / 10 * 10^6, 
               (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
               0,
               stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
               100 * stor18[address(msg.sender)] / stor12
    if stor8 == 2:
        if not stor19[address(msg.sender)]:
            require stor13 > 0
            require stor13
            if not 0 / stor13:
                return 0, 
                       (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                       0,
                       stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                       0 / stor13
            require 0 / stor13
            require (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13) / 0 / stor13 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
            if not (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13):
                return 0, 
                       (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                       0,
                       stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                       0 / stor13
            require (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13)
            require (9500 * 10^18 * stor12 * 0 / stor13) + (9500 * 10^18 * stor13 * 0 / stor13) + (9500 * 10^18 * stor14 * 0 / stor13) + (9500 * 10^18 * stor15 * 0 / stor13) + (9500 * 10^18 * stor16 * 0 / stor13) + (9500 * 10^18 * stor17 * 0 / stor13) / (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13) == 10^18
            return (9500 * 10^18 * stor12 * 0 / stor13) + (9500 * 10^18 * stor13 * 0 / stor13) + (9500 * 10^18 * stor14 * 0 / stor13) + (9500 * 10^18 * stor15 * 0 / stor13) + (9500 * 10^18 * stor16 * 0 / stor13) + (9500 * 10^18 * stor17 * 0 / stor13) / 10 * 10^6, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   0 / stor13
        require stor19[address(msg.sender)]
        require 100 * stor19[address(msg.sender)] / stor19[address(msg.sender)] == 100
        require stor13 > 0
        require stor13
        if not 100 * stor19[address(msg.sender)] / stor13:
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   100 * stor19[address(msg.sender)] / stor13
        require 100 * stor19[address(msg.sender)] / stor13
        require (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / 100 * stor19[address(msg.sender)] / stor13 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13):
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   100 * stor19[address(msg.sender)] / stor13
        require (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13)
        require (9500 * 10^18 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13) == 10^18
        return (9500 * 10^18 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / 10 * 10^6, 
               (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
               0,
               stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
               100 * stor19[address(msg.sender)] / stor13
    if stor8 == 3:
        if not stor20[address(msg.sender)]:
            require stor14 > 0
            require stor14
            if not 0 / stor14:
                return 0, 
                       (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                       0,
                       stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                       0 / stor14
            require 0 / stor14
            require (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14) / 0 / stor14 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
            if not (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14):
                return 0, 
                       (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                       0,
                       stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                       0 / stor14
            require (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14)
            require (9500 * 10^18 * stor12 * 0 / stor14) + (9500 * 10^18 * stor13 * 0 / stor14) + (9500 * 10^18 * stor14 * 0 / stor14) + (9500 * 10^18 * stor15 * 0 / stor14) + (9500 * 10^18 * stor16 * 0 / stor14) + (9500 * 10^18 * stor17 * 0 / stor14) / (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14) == 10^18
            return (9500 * 10^18 * stor12 * 0 / stor14) + (9500 * 10^18 * stor13 * 0 / stor14) + (9500 * 10^18 * stor14 * 0 / stor14) + (9500 * 10^18 * stor15 * 0 / stor14) + (9500 * 10^18 * stor16 * 0 / stor14) + (9500 * 10^18 * stor17 * 0 / stor14) / 10 * 10^6, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   0 / stor14
        require stor20[address(msg.sender)]
        require 100 * stor20[address(msg.sender)] / stor20[address(msg.sender)] == 100
        require stor14 > 0
        require stor14
        if not 100 * stor20[address(msg.sender)] / stor14:
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   100 * stor20[address(msg.sender)] / stor14
        require 100 * stor20[address(msg.sender)] / stor14
        require (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / 100 * stor20[address(msg.sender)] / stor14 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14):
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   100 * stor20[address(msg.sender)] / stor14
        require (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14)
        require (9500 * 10^18 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14) == 10^18
        return (9500 * 10^18 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / 10 * 10^6, 
               (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
               0,
               stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
               100 * stor20[address(msg.sender)] / stor14
    if stor8 == 4:
        if not stor21[address(msg.sender)]:
            require stor15 > 0
            require stor15
            if not 0 / stor15:
                return 0, 
                       (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                       0,
                       stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                       0 / stor15
            require 0 / stor15
            require (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15) / 0 / stor15 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
            if not (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15):
                return 0, 
                       (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                       0,
                       stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                       0 / stor15
            require (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15)
            require (9500 * 10^18 * stor12 * 0 / stor15) + (9500 * 10^18 * stor13 * 0 / stor15) + (9500 * 10^18 * stor14 * 0 / stor15) + (9500 * 10^18 * stor15 * 0 / stor15) + (9500 * 10^18 * stor16 * 0 / stor15) + (9500 * 10^18 * stor17 * 0 / stor15) / (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15) == 10^18
            return (9500 * 10^18 * stor12 * 0 / stor15) + (9500 * 10^18 * stor13 * 0 / stor15) + (9500 * 10^18 * stor14 * 0 / stor15) + (9500 * 10^18 * stor15 * 0 / stor15) + (9500 * 10^18 * stor16 * 0 / stor15) + (9500 * 10^18 * stor17 * 0 / stor15) / 10 * 10^6, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   0 / stor15
        require stor21[address(msg.sender)]
        require 100 * stor21[address(msg.sender)] / stor21[address(msg.sender)] == 100
        require stor15 > 0
        require stor15
        if not 100 * stor21[address(msg.sender)] / stor15:
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   100 * stor21[address(msg.sender)] / stor15
        require 100 * stor21[address(msg.sender)] / stor15
        require (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / 100 * stor21[address(msg.sender)] / stor15 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15):
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   100 * stor21[address(msg.sender)] / stor15
        require (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15)
        require (9500 * 10^18 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15) == 10^18
        return (9500 * 10^18 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / 10 * 10^6, 
               (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
               0,
               stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
               100 * stor21[address(msg.sender)] / stor15
    if stor8 == 5:
        if not stor22[address(msg.sender)]:
            require stor16 > 0
            require stor16
            if not 0 / stor16:
                return 0, 
                       (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                       0,
                       stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                       0 / stor16
            require 0 / stor16
            require (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16) / 0 / stor16 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
            if not (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16):
                return 0, 
                       (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                       0,
                       stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                       0 / stor16
            require (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16)
            require (9500 * 10^18 * stor12 * 0 / stor16) + (9500 * 10^18 * stor13 * 0 / stor16) + (9500 * 10^18 * stor14 * 0 / stor16) + (9500 * 10^18 * stor15 * 0 / stor16) + (9500 * 10^18 * stor16 * 0 / stor16) + (9500 * 10^18 * stor17 * 0 / stor16) / (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16) == 10^18
            return (9500 * 10^18 * stor12 * 0 / stor16) + (9500 * 10^18 * stor13 * 0 / stor16) + (9500 * 10^18 * stor14 * 0 / stor16) + (9500 * 10^18 * stor15 * 0 / stor16) + (9500 * 10^18 * stor16 * 0 / stor16) + (9500 * 10^18 * stor17 * 0 / stor16) / 10 * 10^6, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   0 / stor16
        require stor22[address(msg.sender)]
        require 100 * stor22[address(msg.sender)] / stor22[address(msg.sender)] == 100
        require stor16 > 0
        require stor16
        if not 100 * stor22[address(msg.sender)] / stor16:
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   100 * stor22[address(msg.sender)] / stor16
        require 100 * stor22[address(msg.sender)] / stor16
        require (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / 100 * stor22[address(msg.sender)] / stor16 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16):
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   100 * stor22[address(msg.sender)] / stor16
        require (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16)
        require (9500 * 10^18 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16) == 10^18
        return (9500 * 10^18 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / 10 * 10^6, 
               (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
               0,
               stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
               100 * stor22[address(msg.sender)] / stor16
    if stor8 != 6:
        return 0, 
               (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
               0,
               stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
               0
    if not stor23[address(msg.sender)]:
        require stor17 > 0
        require stor17
        if not 0 / stor17:
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   0 / stor17
        require 0 / stor17
        require (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17) / 0 / stor17 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
        if not (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17):
            return 0, 
                   (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
                   0,
                   stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
                   0 / stor17
        require (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17)
        require (9500 * 10^18 * stor12 * 0 / stor17) + (9500 * 10^18 * stor13 * 0 / stor17) + (9500 * 10^18 * stor14 * 0 / stor17) + (9500 * 10^18 * stor15 * 0 / stor17) + (9500 * 10^18 * stor16 * 0 / stor17) + (9500 * 10^18 * stor17 * 0 / stor17) / (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17) == 10^18
        return (9500 * 10^18 * stor12 * 0 / stor17) + (9500 * 10^18 * stor13 * 0 / stor17) + (9500 * 10^18 * stor14 * 0 / stor17) + (9500 * 10^18 * stor15 * 0 / stor17) + (9500 * 10^18 * stor16 * 0 / stor17) + (9500 * 10^18 * stor17 * 0 / stor17) / 10 * 10^6, 
               (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
               0,
               stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
               0 / stor17
    require stor23[address(msg.sender)]
    require 100 * stor23[address(msg.sender)] / stor23[address(msg.sender)] == 100
    require stor17 > 0
    require stor17
    if not 100 * stor23[address(msg.sender)] / stor17:
        return 0, 
               (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
               0,
               stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
               100 * stor23[address(msg.sender)] / stor17
    require 100 * stor23[address(msg.sender)] / stor17
    require (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / 100 * stor23[address(msg.sender)] / stor17 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
    if not (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17):
        return 0, 
               (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
               0,
               stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
               100 * stor23[address(msg.sender)] / stor17
    require (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17)
    require (9500 * 10^18 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17) == 10^18
    return (9500 * 10^18 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / 10 * 10^6, 
           (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17),
           0,
           stor12 + stor13 + stor14 + stor15 + stor16 + stor17,
           100 * stor23[address(msg.sender)] / stor17
}

function withdraw() {
    require stor8
    if not stor12 + stor13 + stor14 + stor15 + stor16 + stor17:
        if stor8 == 1:
            if not stor18[address(msg.sender)]:
                require stor12 > 0
                require stor12
                if 0 / stor12:
                    require 0 / stor12
                    require not 0 / 0 / stor12
            else:
                require stor18[address(msg.sender)]
                require 100 * stor18[address(msg.sender)] / stor18[address(msg.sender)] == 100
                require stor12 > 0
                require stor12
                if 100 * stor18[address(msg.sender)] / stor12:
                    require 100 * stor18[address(msg.sender)] / stor12
                    require not 0 / 100 * stor18[address(msg.sender)] / stor12
        else:
            if stor8 == 2:
                if not stor19[address(msg.sender)]:
                    require stor13 > 0
                    require stor13
                    if 0 / stor13:
                        require 0 / stor13
                        require not 0 / 0 / stor13
                else:
                    require stor19[address(msg.sender)]
                    require 100 * stor19[address(msg.sender)] / stor19[address(msg.sender)] == 100
                    require stor13 > 0
                    require stor13
                    if 100 * stor19[address(msg.sender)] / stor13:
                        require 100 * stor19[address(msg.sender)] / stor13
                        require not 0 / 100 * stor19[address(msg.sender)] / stor13
            else:
                if stor8 == 3:
                    if not stor20[address(msg.sender)]:
                        require stor14 > 0
                        require stor14
                        if 0 / stor14:
                            require 0 / stor14
                            require not 0 / 0 / stor14
                    else:
                        require stor20[address(msg.sender)]
                        require 100 * stor20[address(msg.sender)] / stor20[address(msg.sender)] == 100
                        require stor14 > 0
                        require stor14
                        if 100 * stor20[address(msg.sender)] / stor14:
                            require 100 * stor20[address(msg.sender)] / stor14
                            require not 0 / 100 * stor20[address(msg.sender)] / stor14
                else:
                    if stor8 == 4:
                        if not stor21[address(msg.sender)]:
                            require stor15 > 0
                            require stor15
                            if 0 / stor15:
                                require 0 / stor15
                                require not 0 / 0 / stor15
                        else:
                            require stor21[address(msg.sender)]
                            require 100 * stor21[address(msg.sender)] / stor21[address(msg.sender)] == 100
                            require stor15 > 0
                            require stor15
                            if 100 * stor21[address(msg.sender)] / stor15:
                                require 100 * stor21[address(msg.sender)] / stor15
                                require not 0 / 100 * stor21[address(msg.sender)] / stor15
                    else:
                        if stor8 == 5:
                            if not stor22[address(msg.sender)]:
                                require stor16 > 0
                                require stor16
                                if 0 / stor16:
                                    require 0 / stor16
                                    require not 0 / 0 / stor16
                            else:
                                require stor22[address(msg.sender)]
                                require 100 * stor22[address(msg.sender)] / stor22[address(msg.sender)] == 100
                                require stor16 > 0
                                require stor16
                                if 100 * stor22[address(msg.sender)] / stor16:
                                    require 100 * stor22[address(msg.sender)] / stor16
                                    require not 0 / 100 * stor22[address(msg.sender)] / stor16
                        else:
                            if stor8 == 6:
                                if not stor23[address(msg.sender)]:
                                    require stor17 > 0
                                    require stor17
                                    if 0 / stor17:
                                        require 0 / stor17
                                        require not 0 / 0 / stor17
                                else:
                                    require stor23[address(msg.sender)]
                                    require 100 * stor23[address(msg.sender)] / stor23[address(msg.sender)] == 100
                                    require stor17 > 0
                                    require stor17
                                    if 100 * stor23[address(msg.sender)] / stor17:
                                        require 100 * stor23[address(msg.sender)] / stor17
                                        require not 0 / 100 * stor23[address(msg.sender)] / stor17
        if bool(uint8(stor3.field_160)) == 1:
            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(stor3.field_0), msg.sender, 0
            else:
                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        stor18[address(msg.sender)] = 0
        stor19[address(msg.sender)] = 0
        stor20[address(msg.sender)] = 0
        stor21[address(msg.sender)] = 0
        stor22[address(msg.sender)] = 0
        stor23[address(msg.sender)] = 0
        if uint8(stor3.field_160):
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor3.field_0), msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require stor12 + stor13 + stor14 + stor15 + stor16 + stor17
        require (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17) / stor12 + stor13 + stor14 + stor15 + stor16 + stor17 == 9500
        if stor8 == 1:
            if not stor18[address(msg.sender)]:
                require stor12 > 0
                require stor12
                if not 0 / stor12:
                    if bool(uint8(stor3.field_160)) == 1:
                        if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(stor3.field_0), msg.sender, 0
                        else:
                            require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                            require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    stor18[address(msg.sender)] = 0
                    stor19[address(msg.sender)] = 0
                    stor20[address(msg.sender)] = 0
                    stor21[address(msg.sender)] = 0
                    stor22[address(msg.sender)] = 0
                    stor23[address(msg.sender)] = 0
                    if uint8(stor3.field_160):
                        call msg.sender with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(stor3.field_0), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    require 0 / stor12
                    require (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12) / 0 / stor12 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                    if not (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12):
                        if bool(uint8(stor3.field_160)) == 1:
                            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, 0
                            else:
                                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        stor18[address(msg.sender)] = 0
                        stor19[address(msg.sender)] = 0
                        stor20[address(msg.sender)] = 0
                        stor21[address(msg.sender)] = 0
                        stor22[address(msg.sender)] = 0
                        stor23[address(msg.sender)] = 0
                        if uint8(stor3.field_160):
                            call msg.sender with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(stor3.field_0), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12)
                        require (9500 * 10^18 * stor12 * 0 / stor12) + (9500 * 10^18 * stor13 * 0 / stor12) + (9500 * 10^18 * stor14 * 0 / stor12) + (9500 * 10^18 * stor15 * 0 / stor12) + (9500 * 10^18 * stor16 * 0 / stor12) + (9500 * 10^18 * stor17 * 0 / stor12) / (9500 * stor12 * 0 / stor12) + (9500 * stor13 * 0 / stor12) + (9500 * stor14 * 0 / stor12) + (9500 * stor15 * 0 / stor12) + (9500 * stor16 * 0 / stor12) + (9500 * stor17 * 0 / stor12) == 10^18
                        if not (9500 * 10^18 * stor12 * 0 / stor12) + (9500 * 10^18 * stor13 * 0 / stor12) + (9500 * 10^18 * stor14 * 0 / stor12) + (9500 * 10^18 * stor15 * 0 / stor12) + (9500 * 10^18 * stor16 * 0 / stor12) + (9500 * 10^18 * stor17 * 0 / stor12) / 10 * 10^6:
                            if bool(uint8(stor3.field_160)) == 1:
                                if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                else:
                                    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                    require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        stor18[address(msg.sender)] = 0
                        stor19[address(msg.sender)] = 0
                        stor20[address(msg.sender)] = 0
                        stor21[address(msg.sender)] = 0
                        stor22[address(msg.sender)] = 0
                        stor23[address(msg.sender)] = 0
                        if uint8(stor3.field_160):
                            call msg.sender with:
                               value (9500 * 10^18 * stor12 * 0 / stor12) + (9500 * 10^18 * stor13 * 0 / stor12) + (9500 * 10^18 * stor14 * 0 / stor12) + (9500 * 10^18 * stor15 * 0 / stor12) + (9500 * 10^18 * stor16 * 0 / stor12) + (9500 * 10^18 * stor17 * 0 / stor12) / 10 * 10^6 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 0 / stor12) + (9500 * 10^18 * stor13 * 0 / stor12) + (9500 * 10^18 * stor14 * 0 / stor12) + (9500 * 10^18 * stor15 * 0 / stor12) + (9500 * 10^18 * stor16 * 0 / stor12) + (9500 * 10^18 * stor17 * 0 / stor12) / 10 * 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                require stor18[address(msg.sender)]
                require 100 * stor18[address(msg.sender)] / stor18[address(msg.sender)] == 100
                require stor12 > 0
                require stor12
                if not 100 * stor18[address(msg.sender)] / stor12:
                    if bool(uint8(stor3.field_160)) == 1:
                        if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(stor3.field_0), msg.sender, 0
                        else:
                            require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                            require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    stor18[address(msg.sender)] = 0
                    stor19[address(msg.sender)] = 0
                    stor20[address(msg.sender)] = 0
                    stor21[address(msg.sender)] = 0
                    stor22[address(msg.sender)] = 0
                    stor23[address(msg.sender)] = 0
                    if uint8(stor3.field_160):
                        call msg.sender with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(stor3.field_0), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    require 100 * stor18[address(msg.sender)] / stor12
                    require (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / 100 * stor18[address(msg.sender)] / stor12 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                    if not (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12):
                        if bool(uint8(stor3.field_160)) == 1:
                            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, 0
                            else:
                                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        stor18[address(msg.sender)] = 0
                        stor19[address(msg.sender)] = 0
                        stor20[address(msg.sender)] = 0
                        stor21[address(msg.sender)] = 0
                        stor22[address(msg.sender)] = 0
                        stor23[address(msg.sender)] = 0
                        if uint8(stor3.field_160):
                            call msg.sender with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(stor3.field_0), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12)
                        require (9500 * 10^18 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / (9500 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * stor17 * 100 * stor18[address(msg.sender)] / stor12) == 10^18
                        if not (9500 * 10^18 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / 10 * 10^6:
                            if bool(uint8(stor3.field_160)) == 1:
                                if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                else:
                                    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                    require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        stor18[address(msg.sender)] = 0
                        stor19[address(msg.sender)] = 0
                        stor20[address(msg.sender)] = 0
                        stor21[address(msg.sender)] = 0
                        stor22[address(msg.sender)] = 0
                        stor23[address(msg.sender)] = 0
                        if uint8(stor3.field_160):
                            call msg.sender with:
                               value (9500 * 10^18 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / 10 * 10^6 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor13 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor14 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor15 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor16 * 100 * stor18[address(msg.sender)] / stor12) + (9500 * 10^18 * stor17 * 100 * stor18[address(msg.sender)] / stor12) / 10 * 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
        else:
            if stor8 == 2:
                if not stor19[address(msg.sender)]:
                    require stor13 > 0
                    require stor13
                    if not 0 / stor13:
                        if bool(uint8(stor3.field_160)) == 1:
                            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, 0
                            else:
                                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        stor18[address(msg.sender)] = 0
                        stor19[address(msg.sender)] = 0
                        stor20[address(msg.sender)] = 0
                        stor21[address(msg.sender)] = 0
                        stor22[address(msg.sender)] = 0
                        stor23[address(msg.sender)] = 0
                        if uint8(stor3.field_160):
                            call msg.sender with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(stor3.field_0), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require 0 / stor13
                        require (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13) / 0 / stor13 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                        if not (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13):
                            if bool(uint8(stor3.field_160)) == 1:
                                if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                else:
                                    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                    require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            stor18[address(msg.sender)] = 0
                            stor19[address(msg.sender)] = 0
                            stor20[address(msg.sender)] = 0
                            stor21[address(msg.sender)] = 0
                            stor22[address(msg.sender)] = 0
                            stor23[address(msg.sender)] = 0
                            if uint8(stor3.field_160):
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13)
                            require (9500 * 10^18 * stor12 * 0 / stor13) + (9500 * 10^18 * stor13 * 0 / stor13) + (9500 * 10^18 * stor14 * 0 / stor13) + (9500 * 10^18 * stor15 * 0 / stor13) + (9500 * 10^18 * stor16 * 0 / stor13) + (9500 * 10^18 * stor17 * 0 / stor13) / (9500 * stor12 * 0 / stor13) + (9500 * stor13 * 0 / stor13) + (9500 * stor14 * 0 / stor13) + (9500 * stor15 * 0 / stor13) + (9500 * stor16 * 0 / stor13) + (9500 * stor17 * 0 / stor13) == 10^18
                            if not (9500 * 10^18 * stor12 * 0 / stor13) + (9500 * 10^18 * stor13 * 0 / stor13) + (9500 * 10^18 * stor14 * 0 / stor13) + (9500 * 10^18 * stor15 * 0 / stor13) + (9500 * 10^18 * stor16 * 0 / stor13) + (9500 * 10^18 * stor17 * 0 / stor13) / 10 * 10^6:
                                if bool(uint8(stor3.field_160)) == 1:
                                    if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                    else:
                                        require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                        require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            stor18[address(msg.sender)] = 0
                            stor19[address(msg.sender)] = 0
                            stor20[address(msg.sender)] = 0
                            stor21[address(msg.sender)] = 0
                            stor22[address(msg.sender)] = 0
                            stor23[address(msg.sender)] = 0
                            if uint8(stor3.field_160):
                                call msg.sender with:
                                   value (9500 * 10^18 * stor12 * 0 / stor13) + (9500 * 10^18 * stor13 * 0 / stor13) + (9500 * 10^18 * stor14 * 0 / stor13) + (9500 * 10^18 * stor15 * 0 / stor13) + (9500 * 10^18 * stor16 * 0 / stor13) + (9500 * 10^18 * stor17 * 0 / stor13) / 10 * 10^6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 0 / stor13) + (9500 * 10^18 * stor13 * 0 / stor13) + (9500 * 10^18 * stor14 * 0 / stor13) + (9500 * 10^18 * stor15 * 0 / stor13) + (9500 * 10^18 * stor16 * 0 / stor13) + (9500 * 10^18 * stor17 * 0 / stor13) / 10 * 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    require stor19[address(msg.sender)]
                    require 100 * stor19[address(msg.sender)] / stor19[address(msg.sender)] == 100
                    require stor13 > 0
                    require stor13
                    if not 100 * stor19[address(msg.sender)] / stor13:
                        if bool(uint8(stor3.field_160)) == 1:
                            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, 0
                            else:
                                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        stor18[address(msg.sender)] = 0
                        stor19[address(msg.sender)] = 0
                        stor20[address(msg.sender)] = 0
                        stor21[address(msg.sender)] = 0
                        stor22[address(msg.sender)] = 0
                        stor23[address(msg.sender)] = 0
                        if uint8(stor3.field_160):
                            call msg.sender with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(stor3.field_0), msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require 100 * stor19[address(msg.sender)] / stor13
                        require (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / 100 * stor19[address(msg.sender)] / stor13 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                        if not (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13):
                            if bool(uint8(stor3.field_160)) == 1:
                                if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                else:
                                    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                    require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            stor18[address(msg.sender)] = 0
                            stor19[address(msg.sender)] = 0
                            stor20[address(msg.sender)] = 0
                            stor21[address(msg.sender)] = 0
                            stor22[address(msg.sender)] = 0
                            stor23[address(msg.sender)] = 0
                            if uint8(stor3.field_160):
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13)
                            require (9500 * 10^18 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / (9500 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * stor17 * 100 * stor19[address(msg.sender)] / stor13) == 10^18
                            if not (9500 * 10^18 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / 10 * 10^6:
                                if bool(uint8(stor3.field_160)) == 1:
                                    if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                    else:
                                        require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                        require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            stor18[address(msg.sender)] = 0
                            stor19[address(msg.sender)] = 0
                            stor20[address(msg.sender)] = 0
                            stor21[address(msg.sender)] = 0
                            stor22[address(msg.sender)] = 0
                            stor23[address(msg.sender)] = 0
                            if uint8(stor3.field_160):
                                call msg.sender with:
                                   value (9500 * 10^18 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / 10 * 10^6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor13 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor14 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor15 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor16 * 100 * stor19[address(msg.sender)] / stor13) + (9500 * 10^18 * stor17 * 100 * stor19[address(msg.sender)] / stor13) / 10 * 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            else:
                if stor8 == 3:
                    if not stor20[address(msg.sender)]:
                        require stor14 > 0
                        require stor14
                        if not 0 / stor14:
                            if bool(uint8(stor3.field_160)) == 1:
                                if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                else:
                                    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                    require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            stor18[address(msg.sender)] = 0
                            stor19[address(msg.sender)] = 0
                            stor20[address(msg.sender)] = 0
                            stor21[address(msg.sender)] = 0
                            stor22[address(msg.sender)] = 0
                            stor23[address(msg.sender)] = 0
                            if uint8(stor3.field_160):
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require 0 / stor14
                            require (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14) / 0 / stor14 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                            if not (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14):
                                if bool(uint8(stor3.field_160)) == 1:
                                    if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                    else:
                                        require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                        require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                stor18[address(msg.sender)] = 0
                                stor19[address(msg.sender)] = 0
                                stor20[address(msg.sender)] = 0
                                stor21[address(msg.sender)] = 0
                                stor22[address(msg.sender)] = 0
                                stor23[address(msg.sender)] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14)
                                require (9500 * 10^18 * stor12 * 0 / stor14) + (9500 * 10^18 * stor13 * 0 / stor14) + (9500 * 10^18 * stor14 * 0 / stor14) + (9500 * 10^18 * stor15 * 0 / stor14) + (9500 * 10^18 * stor16 * 0 / stor14) + (9500 * 10^18 * stor17 * 0 / stor14) / (9500 * stor12 * 0 / stor14) + (9500 * stor13 * 0 / stor14) + (9500 * stor14 * 0 / stor14) + (9500 * stor15 * 0 / stor14) + (9500 * stor16 * 0 / stor14) + (9500 * stor17 * 0 / stor14) == 10^18
                                if not (9500 * 10^18 * stor12 * 0 / stor14) + (9500 * 10^18 * stor13 * 0 / stor14) + (9500 * 10^18 * stor14 * 0 / stor14) + (9500 * 10^18 * stor15 * 0 / stor14) + (9500 * 10^18 * stor16 * 0 / stor14) + (9500 * 10^18 * stor17 * 0 / stor14) / 10 * 10^6:
                                    if bool(uint8(stor3.field_160)) == 1:
                                        if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, 0
                                        else:
                                            require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                            require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                stor18[address(msg.sender)] = 0
                                stor19[address(msg.sender)] = 0
                                stor20[address(msg.sender)] = 0
                                stor21[address(msg.sender)] = 0
                                stor22[address(msg.sender)] = 0
                                stor23[address(msg.sender)] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                       value (9500 * 10^18 * stor12 * 0 / stor14) + (9500 * 10^18 * stor13 * 0 / stor14) + (9500 * 10^18 * stor14 * 0 / stor14) + (9500 * 10^18 * stor15 * 0 / stor14) + (9500 * 10^18 * stor16 * 0 / stor14) + (9500 * 10^18 * stor17 * 0 / stor14) / 10 * 10^6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 0 / stor14) + (9500 * 10^18 * stor13 * 0 / stor14) + (9500 * 10^18 * stor14 * 0 / stor14) + (9500 * 10^18 * stor15 * 0 / stor14) + (9500 * 10^18 * stor16 * 0 / stor14) + (9500 * 10^18 * stor17 * 0 / stor14) / 10 * 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                    else:
                        require stor20[address(msg.sender)]
                        require 100 * stor20[address(msg.sender)] / stor20[address(msg.sender)] == 100
                        require stor14 > 0
                        require stor14
                        if not 100 * stor20[address(msg.sender)] / stor14:
                            if bool(uint8(stor3.field_160)) == 1:
                                if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                else:
                                    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                    require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            stor18[address(msg.sender)] = 0
                            stor19[address(msg.sender)] = 0
                            stor20[address(msg.sender)] = 0
                            stor21[address(msg.sender)] = 0
                            stor22[address(msg.sender)] = 0
                            stor23[address(msg.sender)] = 0
                            if uint8(stor3.field_160):
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(stor3.field_0), msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require 100 * stor20[address(msg.sender)] / stor14
                            require (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / 100 * stor20[address(msg.sender)] / stor14 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                            if not (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14):
                                if bool(uint8(stor3.field_160)) == 1:
                                    if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                    else:
                                        require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                        require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                stor18[address(msg.sender)] = 0
                                stor19[address(msg.sender)] = 0
                                stor20[address(msg.sender)] = 0
                                stor21[address(msg.sender)] = 0
                                stor22[address(msg.sender)] = 0
                                stor23[address(msg.sender)] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14)
                                require (9500 * 10^18 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / (9500 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * stor17 * 100 * stor20[address(msg.sender)] / stor14) == 10^18
                                if not (9500 * 10^18 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / 10 * 10^6:
                                    if bool(uint8(stor3.field_160)) == 1:
                                        if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, 0
                                        else:
                                            require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                            require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                stor18[address(msg.sender)] = 0
                                stor19[address(msg.sender)] = 0
                                stor20[address(msg.sender)] = 0
                                stor21[address(msg.sender)] = 0
                                stor22[address(msg.sender)] = 0
                                stor23[address(msg.sender)] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                       value (9500 * 10^18 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / 10 * 10^6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor13 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor14 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor15 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor16 * 100 * stor20[address(msg.sender)] / stor14) + (9500 * 10^18 * stor17 * 100 * stor20[address(msg.sender)] / stor14) / 10 * 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                else:
                    if stor8 == 4:
                        if not stor21[address(msg.sender)]:
                            require stor15 > 0
                            require stor15
                            if not 0 / stor15:
                                if bool(uint8(stor3.field_160)) == 1:
                                    if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                    else:
                                        require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                        require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                stor18[address(msg.sender)] = 0
                                stor19[address(msg.sender)] = 0
                                stor20[address(msg.sender)] = 0
                                stor21[address(msg.sender)] = 0
                                stor22[address(msg.sender)] = 0
                                stor23[address(msg.sender)] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require 0 / stor15
                                require (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15) / 0 / stor15 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                                if not (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15):
                                    if bool(uint8(stor3.field_160)) == 1:
                                        if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, 0
                                        else:
                                            require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                            require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    stor18[address(msg.sender)] = 0
                                    stor19[address(msg.sender)] = 0
                                    stor20[address(msg.sender)] = 0
                                    stor21[address(msg.sender)] = 0
                                    stor22[address(msg.sender)] = 0
                                    stor23[address(msg.sender)] = 0
                                    if uint8(stor3.field_160):
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                else:
                                    require (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15)
                                    require (9500 * 10^18 * stor12 * 0 / stor15) + (9500 * 10^18 * stor13 * 0 / stor15) + (9500 * 10^18 * stor14 * 0 / stor15) + (9500 * 10^18 * stor15 * 0 / stor15) + (9500 * 10^18 * stor16 * 0 / stor15) + (9500 * 10^18 * stor17 * 0 / stor15) / (9500 * stor12 * 0 / stor15) + (9500 * stor13 * 0 / stor15) + (9500 * stor14 * 0 / stor15) + (9500 * stor15 * 0 / stor15) + (9500 * stor16 * 0 / stor15) + (9500 * stor17 * 0 / stor15) == 10^18
                                    if not (9500 * 10^18 * stor12 * 0 / stor15) + (9500 * 10^18 * stor13 * 0 / stor15) + (9500 * 10^18 * stor14 * 0 / stor15) + (9500 * 10^18 * stor15 * 0 / stor15) + (9500 * 10^18 * stor16 * 0 / stor15) + (9500 * 10^18 * stor17 * 0 / stor15) / 10 * 10^6:
                                        if bool(uint8(stor3.field_160)) == 1:
                                            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, 0
                                            else:
                                                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    stor18[address(msg.sender)] = 0
                                    stor19[address(msg.sender)] = 0
                                    stor20[address(msg.sender)] = 0
                                    stor21[address(msg.sender)] = 0
                                    stor22[address(msg.sender)] = 0
                                    stor23[address(msg.sender)] = 0
                                    if uint8(stor3.field_160):
                                        call msg.sender with:
                                           value (9500 * 10^18 * stor12 * 0 / stor15) + (9500 * 10^18 * stor13 * 0 / stor15) + (9500 * 10^18 * stor14 * 0 / stor15) + (9500 * 10^18 * stor15 * 0 / stor15) + (9500 * 10^18 * stor16 * 0 / stor15) + (9500 * 10^18 * stor17 * 0 / stor15) / 10 * 10^6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 0 / stor15) + (9500 * 10^18 * stor13 * 0 / stor15) + (9500 * 10^18 * stor14 * 0 / stor15) + (9500 * 10^18 * stor15 * 0 / stor15) + (9500 * 10^18 * stor16 * 0 / stor15) + (9500 * 10^18 * stor17 * 0 / stor15) / 10 * 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                        else:
                            require stor21[address(msg.sender)]
                            require 100 * stor21[address(msg.sender)] / stor21[address(msg.sender)] == 100
                            require stor15 > 0
                            require stor15
                            if not 100 * stor21[address(msg.sender)] / stor15:
                                if bool(uint8(stor3.field_160)) == 1:
                                    if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                    else:
                                        require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                        require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                stor18[address(msg.sender)] = 0
                                stor19[address(msg.sender)] = 0
                                stor20[address(msg.sender)] = 0
                                stor21[address(msg.sender)] = 0
                                stor22[address(msg.sender)] = 0
                                stor23[address(msg.sender)] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require 100 * stor21[address(msg.sender)] / stor15
                                require (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / 100 * stor21[address(msg.sender)] / stor15 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                                if not (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15):
                                    if bool(uint8(stor3.field_160)) == 1:
                                        if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, 0
                                        else:
                                            require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                            require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    stor18[address(msg.sender)] = 0
                                    stor19[address(msg.sender)] = 0
                                    stor20[address(msg.sender)] = 0
                                    stor21[address(msg.sender)] = 0
                                    stor22[address(msg.sender)] = 0
                                    stor23[address(msg.sender)] = 0
                                    if uint8(stor3.field_160):
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                else:
                                    require (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15)
                                    require (9500 * 10^18 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / (9500 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * stor17 * 100 * stor21[address(msg.sender)] / stor15) == 10^18
                                    if not (9500 * 10^18 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / 10 * 10^6:
                                        if bool(uint8(stor3.field_160)) == 1:
                                            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, 0
                                            else:
                                                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    stor18[address(msg.sender)] = 0
                                    stor19[address(msg.sender)] = 0
                                    stor20[address(msg.sender)] = 0
                                    stor21[address(msg.sender)] = 0
                                    stor22[address(msg.sender)] = 0
                                    stor23[address(msg.sender)] = 0
                                    if uint8(stor3.field_160):
                                        call msg.sender with:
                                           value (9500 * 10^18 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / 10 * 10^6 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor13 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor14 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor15 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor16 * 100 * stor21[address(msg.sender)] / stor15) + (9500 * 10^18 * stor17 * 100 * stor21[address(msg.sender)] / stor15) / 10 * 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                    else:
                        if stor8 == 5:
                            if not stor22[address(msg.sender)]:
                                require stor16 > 0
                                require stor16
                                if not 0 / stor16:
                                    if bool(uint8(stor3.field_160)) == 1:
                                        if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, 0
                                        else:
                                            require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                            require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    stor18[address(msg.sender)] = 0
                                    stor19[address(msg.sender)] = 0
                                    stor20[address(msg.sender)] = 0
                                    stor21[address(msg.sender)] = 0
                                    stor22[address(msg.sender)] = 0
                                    stor23[address(msg.sender)] = 0
                                    if uint8(stor3.field_160):
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                else:
                                    require 0 / stor16
                                    require (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16) / 0 / stor16 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                                    if not (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16):
                                        if bool(uint8(stor3.field_160)) == 1:
                                            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, 0
                                            else:
                                                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        stor18[address(msg.sender)] = 0
                                        stor19[address(msg.sender)] = 0
                                        stor20[address(msg.sender)] = 0
                                        stor21[address(msg.sender)] = 0
                                        stor22[address(msg.sender)] = 0
                                        stor23[address(msg.sender)] = 0
                                        if uint8(stor3.field_160):
                                            call msg.sender with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    else:
                                        require (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16)
                                        require (9500 * 10^18 * stor12 * 0 / stor16) + (9500 * 10^18 * stor13 * 0 / stor16) + (9500 * 10^18 * stor14 * 0 / stor16) + (9500 * 10^18 * stor15 * 0 / stor16) + (9500 * 10^18 * stor16 * 0 / stor16) + (9500 * 10^18 * stor17 * 0 / stor16) / (9500 * stor12 * 0 / stor16) + (9500 * stor13 * 0 / stor16) + (9500 * stor14 * 0 / stor16) + (9500 * stor15 * 0 / stor16) + (9500 * stor16 * 0 / stor16) + (9500 * stor17 * 0 / stor16) == 10^18
                                        if not (9500 * 10^18 * stor12 * 0 / stor16) + (9500 * 10^18 * stor13 * 0 / stor16) + (9500 * 10^18 * stor14 * 0 / stor16) + (9500 * 10^18 * stor15 * 0 / stor16) + (9500 * 10^18 * stor16 * 0 / stor16) + (9500 * 10^18 * stor17 * 0 / stor16) / 10 * 10^6:
                                            if bool(uint8(stor3.field_160)) == 1:
                                                if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args address(stor3.field_0), msg.sender, 0
                                                else:
                                                    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                    require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                        stor18[address(msg.sender)] = 0
                                        stor19[address(msg.sender)] = 0
                                        stor20[address(msg.sender)] = 0
                                        stor21[address(msg.sender)] = 0
                                        stor22[address(msg.sender)] = 0
                                        stor23[address(msg.sender)] = 0
                                        if uint8(stor3.field_160):
                                            call msg.sender with:
                                               value (9500 * 10^18 * stor12 * 0 / stor16) + (9500 * 10^18 * stor13 * 0 / stor16) + (9500 * 10^18 * stor14 * 0 / stor16) + (9500 * 10^18 * stor15 * 0 / stor16) + (9500 * 10^18 * stor16 * 0 / stor16) + (9500 * 10^18 * stor17 * 0 / stor16) / 10 * 10^6 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 0 / stor16) + (9500 * 10^18 * stor13 * 0 / stor16) + (9500 * 10^18 * stor14 * 0 / stor16) + (9500 * 10^18 * stor15 * 0 / stor16) + (9500 * 10^18 * stor16 * 0 / stor16) + (9500 * 10^18 * stor17 * 0 / stor16) / 10 * 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                            else:
                                require stor22[address(msg.sender)]
                                require 100 * stor22[address(msg.sender)] / stor22[address(msg.sender)] == 100
                                require stor16 > 0
                                require stor16
                                if not 100 * stor22[address(msg.sender)] / stor16:
                                    if bool(uint8(stor3.field_160)) == 1:
                                        if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, 0
                                        else:
                                            require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                            require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    stor18[address(msg.sender)] = 0
                                    stor19[address(msg.sender)] = 0
                                    stor20[address(msg.sender)] = 0
                                    stor21[address(msg.sender)] = 0
                                    stor22[address(msg.sender)] = 0
                                    stor23[address(msg.sender)] = 0
                                    if uint8(stor3.field_160):
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                else:
                                    require 100 * stor22[address(msg.sender)] / stor16
                                    require (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / 100 * stor22[address(msg.sender)] / stor16 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                                    if not (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16):
                                        if bool(uint8(stor3.field_160)) == 1:
                                            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, 0
                                            else:
                                                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        stor18[address(msg.sender)] = 0
                                        stor19[address(msg.sender)] = 0
                                        stor20[address(msg.sender)] = 0
                                        stor21[address(msg.sender)] = 0
                                        stor22[address(msg.sender)] = 0
                                        stor23[address(msg.sender)] = 0
                                        if uint8(stor3.field_160):
                                            call msg.sender with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    else:
                                        require (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16)
                                        require (9500 * 10^18 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / (9500 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * stor17 * 100 * stor22[address(msg.sender)] / stor16) == 10^18
                                        if not (9500 * 10^18 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / 10 * 10^6:
                                            if bool(uint8(stor3.field_160)) == 1:
                                                if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args address(stor3.field_0), msg.sender, 0
                                                else:
                                                    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                    require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                        stor18[address(msg.sender)] = 0
                                        stor19[address(msg.sender)] = 0
                                        stor20[address(msg.sender)] = 0
                                        stor21[address(msg.sender)] = 0
                                        stor22[address(msg.sender)] = 0
                                        stor23[address(msg.sender)] = 0
                                        if uint8(stor3.field_160):
                                            call msg.sender with:
                                               value (9500 * 10^18 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / 10 * 10^6 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor13 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor14 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor15 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor16 * 100 * stor22[address(msg.sender)] / stor16) + (9500 * 10^18 * stor17 * 100 * stor22[address(msg.sender)] / stor16) / 10 * 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                        else:
                            if stor8 != 6:
                                if bool(uint8(stor3.field_160)) == 1:
                                    if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, 0
                                    else:
                                        require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                        require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                stor18[address(msg.sender)] = 0
                                stor19[address(msg.sender)] = 0
                                stor20[address(msg.sender)] = 0
                                stor21[address(msg.sender)] = 0
                                stor22[address(msg.sender)] = 0
                                stor23[address(msg.sender)] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(stor3.field_0), msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                if not stor23[address(msg.sender)]:
                                    require stor17 > 0
                                    require stor17
                                    if not 0 / stor17:
                                        if bool(uint8(stor3.field_160)) == 1:
                                            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, 0
                                            else:
                                                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        stor18[address(msg.sender)] = 0
                                        stor19[address(msg.sender)] = 0
                                        stor20[address(msg.sender)] = 0
                                        stor21[address(msg.sender)] = 0
                                        stor22[address(msg.sender)] = 0
                                        stor23[address(msg.sender)] = 0
                                        if uint8(stor3.field_160):
                                            call msg.sender with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    else:
                                        require 0 / stor17
                                        require (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17) / 0 / stor17 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                                        if not (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17):
                                            if bool(uint8(stor3.field_160)) == 1:
                                                if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args address(stor3.field_0), msg.sender, 0
                                                else:
                                                    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                    require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            stor18[address(msg.sender)] = 0
                                            stor19[address(msg.sender)] = 0
                                            stor20[address(msg.sender)] = 0
                                            stor21[address(msg.sender)] = 0
                                            stor22[address(msg.sender)] = 0
                                            stor23[address(msg.sender)] = 0
                                            if uint8(stor3.field_160):
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                        else:
                                            require (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17)
                                            require (9500 * 10^18 * stor12 * 0 / stor17) + (9500 * 10^18 * stor13 * 0 / stor17) + (9500 * 10^18 * stor14 * 0 / stor17) + (9500 * 10^18 * stor15 * 0 / stor17) + (9500 * 10^18 * stor16 * 0 / stor17) + (9500 * 10^18 * stor17 * 0 / stor17) / (9500 * stor12 * 0 / stor17) + (9500 * stor13 * 0 / stor17) + (9500 * stor14 * 0 / stor17) + (9500 * stor15 * 0 / stor17) + (9500 * stor16 * 0 / stor17) + (9500 * stor17 * 0 / stor17) == 10^18
                                            if not (9500 * 10^18 * stor12 * 0 / stor17) + (9500 * 10^18 * stor13 * 0 / stor17) + (9500 * 10^18 * stor14 * 0 / stor17) + (9500 * 10^18 * stor15 * 0 / stor17) + (9500 * 10^18 * stor16 * 0 / stor17) + (9500 * 10^18 * stor17 * 0 / stor17) / 10 * 10^6:
                                                if bool(uint8(stor3.field_160)) == 1:
                                                    if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                        require ext_code.size(stor2)
                                                        call stor2.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(stor3.field_0), msg.sender, 0
                                                    else:
                                                        require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                        require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                        require ext_code.size(stor2)
                                                        call stor2.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                            stor18[address(msg.sender)] = 0
                                            stor19[address(msg.sender)] = 0
                                            stor20[address(msg.sender)] = 0
                                            stor21[address(msg.sender)] = 0
                                            stor22[address(msg.sender)] = 0
                                            stor23[address(msg.sender)] = 0
                                            if uint8(stor3.field_160):
                                                call msg.sender with:
                                                   value (9500 * 10^18 * stor12 * 0 / stor17) + (9500 * 10^18 * stor13 * 0 / stor17) + (9500 * 10^18 * stor14 * 0 / stor17) + (9500 * 10^18 * stor15 * 0 / stor17) + (9500 * 10^18 * stor16 * 0 / stor17) + (9500 * 10^18 * stor17 * 0 / stor17) / 10 * 10^6 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 0 / stor17) + (9500 * 10^18 * stor13 * 0 / stor17) + (9500 * 10^18 * stor14 * 0 / stor17) + (9500 * 10^18 * stor15 * 0 / stor17) + (9500 * 10^18 * stor16 * 0 / stor17) + (9500 * 10^18 * stor17 * 0 / stor17) / 10 * 10^6
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                else:
                                    require stor23[address(msg.sender)]
                                    require 100 * stor23[address(msg.sender)] / stor23[address(msg.sender)] == 100
                                    require stor17 > 0
                                    require stor17
                                    if not 100 * stor23[address(msg.sender)] / stor17:
                                        if bool(uint8(stor3.field_160)) == 1:
                                            if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, 0
                                            else:
                                                require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        stor18[address(msg.sender)] = 0
                                        stor19[address(msg.sender)] = 0
                                        stor20[address(msg.sender)] = 0
                                        stor21[address(msg.sender)] = 0
                                        stor22[address(msg.sender)] = 0
                                        stor23[address(msg.sender)] = 0
                                        if uint8(stor3.field_160):
                                            call msg.sender with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(stor3.field_0), msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    else:
                                        require 100 * stor23[address(msg.sender)] / stor17
                                        require (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / 100 * stor23[address(msg.sender)] / stor17 == (9500 * stor12) + (9500 * stor13) + (9500 * stor14) + (9500 * stor15) + (9500 * stor16) + (9500 * stor17)
                                        if not (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17):
                                            if bool(uint8(stor3.field_160)) == 1:
                                                if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args address(stor3.field_0), msg.sender, 0
                                                else:
                                                    require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                    require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            stor18[address(msg.sender)] = 0
                                            stor19[address(msg.sender)] = 0
                                            stor20[address(msg.sender)] = 0
                                            stor21[address(msg.sender)] = 0
                                            stor22[address(msg.sender)] = 0
                                            stor23[address(msg.sender)] = 0
                                            if uint8(stor3.field_160):
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                        else:
                                            require (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17)
                                            require (9500 * 10^18 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / (9500 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * stor17 * 100 * stor23[address(msg.sender)] / stor17) == 10^18
                                            if not (9500 * 10^18 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / 10 * 10^6:
                                                if bool(uint8(stor3.field_160)) == 1:
                                                    if not stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]:
                                                        require ext_code.size(stor2)
                                                        call stor2.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(stor3.field_0), msg.sender, 0
                                                    else:
                                                        require stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)]
                                                        require (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9) / stor18[address(msg.sender)] + stor19[address(msg.sender)] + stor20[address(msg.sender)] + stor21[address(msg.sender)] + stor22[address(msg.sender)] + stor23[address(msg.sender)] == stor9
                                                        require ext_code.size(stor2)
                                                        call stor2.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(stor3.field_0), msg.sender, (stor18[address(msg.sender)] * stor9) + (stor19[address(msg.sender)] * stor9) + (stor20[address(msg.sender)] * stor9) + (stor21[address(msg.sender)] * stor9) + (stor22[address(msg.sender)] * stor9) + (stor23[address(msg.sender)] * stor9)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                            stor18[address(msg.sender)] = 0
                                            stor19[address(msg.sender)] = 0
                                            stor20[address(msg.sender)] = 0
                                            stor21[address(msg.sender)] = 0
                                            stor22[address(msg.sender)] = 0
                                            stor23[address(msg.sender)] = 0
                                            if uint8(stor3.field_160):
                                                call msg.sender with:
                                                   value (9500 * 10^18 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / 10 * 10^6 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(stor3.field_0), msg.sender, (9500 * 10^18 * stor12 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor13 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor14 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor15 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor16 * 100 * stor23[address(msg.sender)] / stor17) + (9500 * 10^18 * stor17 * 100 * stor23[address(msg.sender)] / stor17) / 10 * 10^6
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
}



}
