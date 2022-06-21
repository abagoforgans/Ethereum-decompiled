contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 176
address sub_92be2002Address;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
mapping of uint256 stor22;
mapping of uint256 stor23;
mapping of uint256 stor24;
mapping of uint256 stor25;
mapping of uint256 stor26;
mapping of uint256 stor27;
uint256 stor28;

function owner() {
    return owner
}

function sub_92be2002(?) {
    return sub_92be2002Address
}

function _fallback() payable {
    revert
}

function sub_7fbaf0fe(?) {
    return stor16, stor17, stor18, stor19, stor20, stor21
}

function acceptNextOwner() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only accept preapproved new owner.'
    owner = stor1
}

function sub_9d9729e2(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    sub_92be2002Address = arg1
}

function sub_ab25b7b2(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    require block.timestamp > stor7
    stor8 = arg1
}

function approveNextOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    if owner == arg1:
        revert with 0, 'Cannot approve current owner.'
    stor1 = arg1
}

function getGameInfo() {
    return bool(uint8(stor3.field_168)), 
           bool(uint8(stor3.field_160)),
           stor10,
           stor11,
           stor12,
           stor13,
           stor14,
           stor15,
           stor5,
           stor6,
           stor7,
           stor8,
           stor9
}

function getBet(uint256 arg1) {
    if 1 == arg1:
        return stor22[msg.sender]
    if 2 == arg1:
        return stor23[msg.sender]
    if 3 == arg1:
        return stor24[msg.sender]
    if 4 == arg1:
        return stor25[msg.sender]
    if 5 == arg1:
        return stor26[msg.sender]
    if arg1 != 6:
        return 0
    return stor27[msg.sender]
}

function sub_6a427b47(?) {
    require stor4 <= arg1
    if not arg1 - stor4 / 24 * 3600:
        require stor4 >= stor4
        return stor4
    require 24 * 3600 * arg1 - stor4 / 24 * 3600 / arg1 - stor4 / 24 * 3600 == 24 * 3600
    require (24 * 3600 * arg1 - stor4 / 24 * 3600) + stor4 >= stor4
    return ((24 * 3600 * arg1 - stor4 / 24 * 3600) + stor4)
}

function sub_dcfcd924(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    stor28 = 0
    call msg.sender with:
       value stor28 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_19362798(?) {
    require arg2 > arg1
    require arg3 > arg2
    stor5 = arg1
    stor6 = arg2
    stor7 = arg3
    stor9 = arg10
    stor16 = arg4
    stor17 = arg5
    stor18 = arg6
    stor19 = arg7
    stor20 = arg8
    stor21 = arg9
    stor2 = arg11
    sub_92be2002Address = arg12
    uint8(stor3.field_160) = uint8(arg13)
    uint8(stor3.field_168) = 1
    Mask(80, 0, stor3.field_176) = Mask(80, 16, arg13) >> 16
}

function sub_be9451b2(?) {
    require stor4 <= block.timestamp
    if block.timestamp - stor4 / 24 * 3600:
        require 24 * 3600 * block.timestamp - stor4 / 24 * 3600 / block.timestamp - stor4 / 24 * 3600 == 24 * 3600
        require (24 * 3600 * block.timestamp - stor4 / 24 * 3600) + stor4 >= stor4
        require stor4 <= (24 * 3600 * block.timestamp - stor4 / 24 * 3600) + stor4
        require 1 <= 24 * 3600 * block.timestamp - stor4 / 24 * 3600 / 24 * 3600
        return ((24 * 3600 * block.timestamp - stor4 / 24 * 3600 / 24 * 3600) - 1)
    else:
        require stor4 >= stor4
        require stor4 > stor4
        revert
}

function sub_9c0beb5a(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    require block.timestamp < stor6
    if bool(uint8(stor3.field_168)) != 1:
        revert with 0, 'This is not opened yet.'
    if uint8(stor3.field_160):
        revert with 0, 'This is not an Ether Game'
    if 1 == arg2:
        require arg3 + stor10 >= stor10
        require arg3 + stor10 <= stor16
        require arg3 + stor22[address(arg1)] >= stor22[address(arg1)]
        stor22[address(arg1)] += arg3
        require arg3 + stor10 >= stor10
        stor10 += arg3
    else:
        if 2 == arg2:
            require arg3 + stor11 >= stor11
            require arg3 + stor11 <= stor17
            require arg3 + stor23[address(arg1)] >= stor23[address(arg1)]
            stor23[address(arg1)] += arg3
            require arg3 + stor11 >= stor11
            stor11 += arg3
        else:
            if 3 == arg2:
                require arg3 + stor11 >= stor11
                require arg3 + stor11 <= stor17
                require arg3 + stor24[address(arg1)] >= stor24[address(arg1)]
                stor24[address(arg1)] += arg3
                require arg3 + stor12 >= stor12
                stor12 += arg3
            else:
                if 4 == arg2:
                    require arg3 + stor11 >= stor11
                    require arg3 + stor11 <= stor17
                    require arg3 + stor25[address(arg1)] >= stor25[address(arg1)]
                    stor25[address(arg1)] += arg3
                    require arg3 + stor13 >= stor13
                    stor13 += arg3
                else:
                    if 5 == arg2:
                        require arg3 + stor11 >= stor11
                        require arg3 + stor11 <= stor17
                        require arg3 + stor26[address(arg1)] >= stor26[address(arg1)]
                        stor26[address(arg1)] += arg3
                        require arg3 + stor14 >= stor14
                        stor14 += arg3
                    else:
                        if 6 == arg2:
                            require arg3 + stor11 >= stor11
                            require arg3 + stor11 <= stor17
                            require arg3 + stor27[address(arg1)] >= stor27[address(arg1)]
                            stor27[address(arg1)] += arg3
                            require arg3 + stor15 >= stor15
                            stor15 += arg3
    emit 0xd6351783: msg.sender, arg3, arg2
}

function PlaceBet(uint256 arg1) payable {
    require stor6 > block.timestamp
    if bool(uint8(stor3.field_168)) != 1:
        revert with 0, 'This is not opened yet.'
    if bool(uint8(stor3.field_160)) != 1:
        revert with 0, 'This is a Token Game'
    require msg.value >= 10^16
    if arg1 == 1:
        require msg.value + stor10 >= stor10
        require msg.value + stor10 <= stor16
        require msg.value + stor22[msg.sender] >= stor22[msg.sender]
        stor22[msg.sender] += msg.value
        require msg.value + stor10 >= stor10
        stor10 += msg.value
    else:
        if 2 == arg1:
            require msg.value + stor11 >= stor11
            require msg.value + stor11 <= stor17
            require msg.value + stor23[msg.sender] >= stor23[msg.sender]
            stor23[msg.sender] += msg.value
            require msg.value + stor11 >= stor11
            stor11 += msg.value
        else:
            if 3 == arg1:
                require msg.value + stor12 >= stor12
                require msg.value + stor12 <= stor18
                require msg.value + stor24[msg.sender] >= stor24[msg.sender]
                stor24[msg.sender] += msg.value
                require msg.value + stor12 >= stor12
                stor12 += msg.value
            else:
                if 4 == arg1:
                    require msg.value + stor13 >= stor13
                    require msg.value + stor13 <= stor19
                    require msg.value + stor25[msg.sender] >= stor25[msg.sender]
                    stor25[msg.sender] += msg.value
                    require msg.value + stor13 >= stor13
                    stor13 += msg.value
                else:
                    if 5 == arg1:
                        require msg.value + stor14 >= stor14
                        require msg.value + stor14 <= stor20
                        require msg.value + stor26[msg.sender] >= stor26[msg.sender]
                        stor26[msg.sender] += msg.value
                        require msg.value + stor14 >= stor14
                        stor14 += msg.value
                    else:
                        if 6 == arg1:
                            require msg.value + stor15 >= stor15
                            require msg.value + stor15 <= stor21
                            require msg.value + stor27[msg.sender] >= stor27[msg.sender]
                            stor27[msg.sender] += msg.value
                            require msg.value + stor15 >= stor15
                            stor15 += msg.value
    if not msg.value:
        require stor28 >= stor28
    else:
        require 20 * msg.value / msg.value == 20
        require (20 * msg.value / 1000) + stor28 >= stor28
        stor28 += 20 * msg.value / 1000
    emit 0xd6351783: msg.sender, msg.value, arg1
}

function sub_3018d14f(?) {
    require stor11 + stor10 >= stor10
    require stor12 >= 0
    require stor13 >= 0
    require stor14 >= 0
    require stor15 >= 0
    if not stor15 + stor14 + stor13 + stor12 + stor11 + stor10:
        if 1 == stor8:
            if not stor22[msg.sender]:
                require stor10 > 0
                require stor10
                if 0 / stor10:
                    require not 0 / 0 / stor10
            else:
                require 100 * stor22[msg.sender] / stor22[msg.sender] == 100
                require stor10 > 0
                require stor10
                if 100 * stor22[msg.sender] / stor10:
                    require not 0 / 100 * stor22[msg.sender] / stor10
        else:
            if 2 == stor8:
                if not stor23[msg.sender]:
                    require stor11 > 0
                    require stor11
                    if 0 / stor11:
                        require not 0 / 0 / stor11
                else:
                    require 100 * stor23[msg.sender] / stor23[msg.sender] == 100
                    require stor11 > 0
                    require stor11
                    if 100 * stor23[msg.sender] / stor11:
                        require not 0 / 100 * stor23[msg.sender] / stor11
            else:
                if 3 == stor8:
                    if not stor24[msg.sender]:
                        require stor12 > 0
                        require stor12
                        if 0 / stor12:
                            require not 0 / 0 / stor12
                    else:
                        require 100 * stor24[msg.sender] / stor24[msg.sender] == 100
                        require stor12 > 0
                        require stor12
                        if 100 * stor24[msg.sender] / stor12:
                            require not 0 / 100 * stor24[msg.sender] / stor12
                else:
                    if 4 == stor8:
                        if not stor25[msg.sender]:
                            require stor13 > 0
                            require stor13
                            if 0 / stor13:
                                require not 0 / 0 / stor13
                        else:
                            require 100 * stor25[msg.sender] / stor25[msg.sender] == 100
                            require stor13 > 0
                            require stor13
                            if 100 * stor25[msg.sender] / stor13:
                                require not 0 / 100 * stor25[msg.sender] / stor13
                    else:
                        if 5 == stor8:
                            if not stor26[msg.sender]:
                                require stor14 > 0
                                require stor14
                                if 0 / stor14:
                                    require not 0 / 0 / stor14
                            else:
                                require 100 * stor26[msg.sender] / stor26[msg.sender] == 100
                                require stor14 > 0
                                require stor14
                                if 100 * stor26[msg.sender] / stor14:
                                    require not 0 / 100 * stor26[msg.sender] / stor14
                        else:
                            if 6 == stor8:
                                if not stor27[msg.sender]:
                                    require stor15 > 0
                                    require stor15
                                    if 0 / stor15:
                                        require not 0 / 0 / stor15
                                else:
                                    require 100 * stor27[msg.sender] / stor27[msg.sender] == 100
                                    require stor15 > 0
                                    require stor15
                                    if 100 * stor27[msg.sender] / stor15:
                                        require not 0 / 100 * stor27[msg.sender] / stor15
        return 0
    require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / stor15 + stor14 + stor13 + stor12 + stor11 + stor10 == 980
    if 1 == stor8:
        if not stor22[msg.sender]:
            require stor10 > 0
            require stor10
            if not 0 / stor10:
                return 0
            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor10 / 0 / stor10 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
            return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor10 / 100)
        require 100 * stor22[msg.sender] / stor22[msg.sender] == 100
        require stor10 > 0
        require stor10
        if not 100 * stor22[msg.sender] / stor10:
            return 0
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor22[msg.sender] / stor10 / 100 * stor22[msg.sender] / stor10 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor22[msg.sender] / stor10 / 100)
    if 2 == stor8:
        if not stor23[msg.sender]:
            require stor11 > 0
            require stor11
            if not 0 / stor11:
                return 0
            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor11 / 0 / stor11 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
            return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor11 / 100)
        require 100 * stor23[msg.sender] / stor23[msg.sender] == 100
        require stor11 > 0
        require stor11
        if not 100 * stor23[msg.sender] / stor11:
            return 0
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor23[msg.sender] / stor11 / 100 * stor23[msg.sender] / stor11 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor23[msg.sender] / stor11 / 100)
    if 3 == stor8:
        if not stor24[msg.sender]:
            require stor12 > 0
            require stor12
            if not 0 / stor12:
                return 0
            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor12 / 0 / stor12 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
            return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor12 / 100)
        require 100 * stor24[msg.sender] / stor24[msg.sender] == 100
        require stor12 > 0
        require stor12
        if not 100 * stor24[msg.sender] / stor12:
            return 0
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor24[msg.sender] / stor12 / 100 * stor24[msg.sender] / stor12 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor24[msg.sender] / stor12 / 100)
    if 4 == stor8:
        if not stor25[msg.sender]:
            require stor13 > 0
            require stor13
            if not 0 / stor13:
                return 0
            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor13 / 0 / stor13 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
            return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor13 / 100)
        require 100 * stor25[msg.sender] / stor25[msg.sender] == 100
        require stor13 > 0
        require stor13
        if not 100 * stor25[msg.sender] / stor13:
            return 0
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor25[msg.sender] / stor13 / 100 * stor25[msg.sender] / stor13 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor25[msg.sender] / stor13 / 100)
    if 5 == stor8:
        if not stor26[msg.sender]:
            require stor14 > 0
            require stor14
            if not 0 / stor14:
                return 0
            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor14 / 0 / stor14 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
            return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor14 / 100)
        require 100 * stor26[msg.sender] / stor26[msg.sender] == 100
        require stor14 > 0
        require stor14
        if not 100 * stor26[msg.sender] / stor14:
            return 0
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor26[msg.sender] / stor14 / 100 * stor26[msg.sender] / stor14 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor26[msg.sender] / stor14 / 100)
    if stor8 != 6:
        return 0
    if not stor27[msg.sender]:
        require stor15 > 0
        require stor15
        if not 0 / stor15:
            return 0
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor15 / 0 / stor15 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor15 / 100)
    require 100 * stor27[msg.sender] / stor27[msg.sender] == 100
    require stor15 > 0
    require stor15
    if not 100 * stor27[msg.sender] / stor15:
        return 0
    require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor27[msg.sender] / stor15 / 100 * stor27[msg.sender] / stor15 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
    return ((980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor27[msg.sender] / stor15 / 100)
}

function sub_7f98aa71(?) {
    require stor11 + stor10 >= stor10
    require stor12 >= 0
    require stor13 >= 0
    require stor14 >= 0
    require stor15 >= 0
    if not stor15 + stor14 + stor13 + stor12 + stor11 + stor10:
        if 1 == stor8:
            if not stor22[msg.sender]:
                require stor10 > 0
                require stor10
                if 0 / stor10:
                    require not 0 / 0 / stor10
                return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 0 / stor10
            require 100 * stor22[msg.sender] / stor22[msg.sender] == 100
            require stor10 > 0
            require stor10
            if 100 * stor22[msg.sender] / stor10:
                require not 0 / 100 * stor22[msg.sender] / stor10
            return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 100 * stor22[msg.sender] / stor10
        if 2 == stor8:
            if not stor23[msg.sender]:
                require stor11 > 0
                require stor11
                if 0 / stor11:
                    require not 0 / 0 / stor11
                return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 0 / stor11
            require 100 * stor23[msg.sender] / stor23[msg.sender] == 100
            require stor11 > 0
            require stor11
            if 100 * stor23[msg.sender] / stor11:
                require not 0 / 100 * stor23[msg.sender] / stor11
            return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 100 * stor23[msg.sender] / stor11
        if 3 == stor8:
            if not stor24[msg.sender]:
                require stor12 > 0
                require stor12
                if 0 / stor12:
                    require not 0 / 0 / stor12
                return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 0 / stor12
            require 100 * stor24[msg.sender] / stor24[msg.sender] == 100
            require stor12 > 0
            require stor12
            if 100 * stor24[msg.sender] / stor12:
                require not 0 / 100 * stor24[msg.sender] / stor12
            return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 100 * stor24[msg.sender] / stor12
        if 4 == stor8:
            if not stor25[msg.sender]:
                require stor13 > 0
                require stor13
                if 0 / stor13:
                    require not 0 / 0 / stor13
                return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 0 / stor13
            require 100 * stor25[msg.sender] / stor25[msg.sender] == 100
            require stor13 > 0
            require stor13
            if 100 * stor25[msg.sender] / stor13:
                require not 0 / 100 * stor25[msg.sender] / stor13
            return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 100 * stor25[msg.sender] / stor13
        if 5 == stor8:
            if not stor26[msg.sender]:
                require stor14 > 0
                require stor14
                if 0 / stor14:
                    require not 0 / 0 / stor14
                return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 0 / stor14
            require 100 * stor26[msg.sender] / stor26[msg.sender] == 100
            require stor14 > 0
            require stor14
            if 100 * stor26[msg.sender] / stor14:
                require not 0 / 100 * stor26[msg.sender] / stor14
            return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 100 * stor26[msg.sender] / stor14
        if stor8 != 6:
            return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 0
        if not stor27[msg.sender]:
            require stor15 > 0
            require stor15
            if 0 / stor15:
                require not 0 / 0 / stor15
            return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 0 / stor15
        require 100 * stor27[msg.sender] / stor27[msg.sender] == 100
        require stor15 > 0
        require stor15
        if 100 * stor27[msg.sender] / stor15:
            require not 0 / 100 * stor27[msg.sender] / stor15
        return 0, stor15 + stor14 + stor13 + stor12 + stor11 + stor10, 0, 100 * stor27[msg.sender] / stor15
    require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / stor15 + stor14 + stor13 + stor12 + stor11 + stor10 == 980
    if 1 == stor8:
        if not stor22[msg.sender]:
            require stor10 > 0
            require stor10
            if not 0 / stor10:
                return 0, 
                       stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                       (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                       0 / stor10
            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor10 / 0 / stor10 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
            return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor10 / 100, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   0 / stor10
        require 100 * stor22[msg.sender] / stor22[msg.sender] == 100
        require stor10 > 0
        require stor10
        if not 100 * stor22[msg.sender] / stor10:
            return 0, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   100 * stor22[msg.sender] / stor10
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor22[msg.sender] / stor10 / 100 * stor22[msg.sender] / stor10 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor22[msg.sender] / stor10 / 100, 
               stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
               (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
               100 * stor22[msg.sender] / stor10
    if 2 == stor8:
        if not stor23[msg.sender]:
            require stor11 > 0
            require stor11
            if not 0 / stor11:
                return 0, 
                       stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                       (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                       0 / stor11
            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor11 / 0 / stor11 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
            return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor11 / 100, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   0 / stor11
        require 100 * stor23[msg.sender] / stor23[msg.sender] == 100
        require stor11 > 0
        require stor11
        if not 100 * stor23[msg.sender] / stor11:
            return 0, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   100 * stor23[msg.sender] / stor11
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor23[msg.sender] / stor11 / 100 * stor23[msg.sender] / stor11 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor23[msg.sender] / stor11 / 100, 
               stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
               (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
               100 * stor23[msg.sender] / stor11
    if 3 == stor8:
        if not stor24[msg.sender]:
            require stor12 > 0
            require stor12
            if not 0 / stor12:
                return 0, 
                       stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                       (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                       0 / stor12
            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor12 / 0 / stor12 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
            return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor12 / 100, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   0 / stor12
        require 100 * stor24[msg.sender] / stor24[msg.sender] == 100
        require stor12 > 0
        require stor12
        if not 100 * stor24[msg.sender] / stor12:
            return 0, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   100 * stor24[msg.sender] / stor12
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor24[msg.sender] / stor12 / 100 * stor24[msg.sender] / stor12 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor24[msg.sender] / stor12 / 100, 
               stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
               (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
               100 * stor24[msg.sender] / stor12
    if 4 == stor8:
        if not stor25[msg.sender]:
            require stor13 > 0
            require stor13
            if not 0 / stor13:
                return 0, 
                       stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                       (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                       0 / stor13
            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor13 / 0 / stor13 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
            return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor13 / 100, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   0 / stor13
        require 100 * stor25[msg.sender] / stor25[msg.sender] == 100
        require stor13 > 0
        require stor13
        if not 100 * stor25[msg.sender] / stor13:
            return 0, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   100 * stor25[msg.sender] / stor13
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor25[msg.sender] / stor13 / 100 * stor25[msg.sender] / stor13 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor25[msg.sender] / stor13 / 100, 
               stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
               (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
               100 * stor25[msg.sender] / stor13
    if 5 == stor8:
        if not stor26[msg.sender]:
            require stor14 > 0
            require stor14
            if not 0 / stor14:
                return 0, 
                       stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                       (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                       0 / stor14
            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor14 / 0 / stor14 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
            return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor14 / 100, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   0 / stor14
        require 100 * stor26[msg.sender] / stor26[msg.sender] == 100
        require stor14 > 0
        require stor14
        if not 100 * stor26[msg.sender] / stor14:
            return 0, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   100 * stor26[msg.sender] / stor14
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor26[msg.sender] / stor14 / 100 * stor26[msg.sender] / stor14 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor26[msg.sender] / stor14 / 100, 
               stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
               (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
               100 * stor26[msg.sender] / stor14
    if stor8 != 6:
        return 0, 
               stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
               (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
               0
    if not stor27[msg.sender]:
        require stor15 > 0
        require stor15
        if not 0 / stor15:
            return 0, 
                   stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
                   (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
                   0 / stor15
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor15 / 0 / stor15 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
        return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor15 / 100, 
               stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
               (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
               0 / stor15
    require 100 * stor27[msg.sender] / stor27[msg.sender] == 100
    require stor15 > 0
    require stor15
    if not 100 * stor27[msg.sender] / stor15:
        return 0, 
               stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
               (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
               100 * stor27[msg.sender] / stor15
    require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor27[msg.sender] / stor15 / 100 * stor27[msg.sender] / stor15 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
    return (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor27[msg.sender] / stor15 / 100, 
           stor15 + stor14 + stor13 + stor12 + stor11 + stor10,
           (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000,
           100 * stor27[msg.sender] / stor15
}

function withdraw() {
    require stor8 != 0
    require stor11 + stor10 >= stor10
    require stor12 >= 0
    require stor13 >= 0
    require stor14 >= 0
    require stor15 >= 0
    if not stor15 + stor14 + stor13 + stor12 + stor11 + stor10:
        if 1 == stor8:
            if not stor22[msg.sender]:
                require stor10 > 0
                require stor10
                if 0 / stor10:
                    require not 0 / 0 / stor10
            else:
                require 100 * stor22[msg.sender] / stor22[msg.sender] == 100
                require stor10 > 0
                require stor10
                if 100 * stor22[msg.sender] / stor10:
                    require not 0 / 100 * stor22[msg.sender] / stor10
        else:
            if 2 == stor8:
                if not stor23[msg.sender]:
                    require stor11 > 0
                    require stor11
                    if 0 / stor11:
                        require not 0 / 0 / stor11
                else:
                    require 100 * stor23[msg.sender] / stor23[msg.sender] == 100
                    require stor11 > 0
                    require stor11
                    if 100 * stor23[msg.sender] / stor11:
                        require not 0 / 100 * stor23[msg.sender] / stor11
            else:
                if 3 == stor8:
                    if not stor24[msg.sender]:
                        require stor12 > 0
                        require stor12
                        if 0 / stor12:
                            require not 0 / 0 / stor12
                    else:
                        require 100 * stor24[msg.sender] / stor24[msg.sender] == 100
                        require stor12 > 0
                        require stor12
                        if 100 * stor24[msg.sender] / stor12:
                            require not 0 / 100 * stor24[msg.sender] / stor12
                else:
                    if 4 == stor8:
                        if not stor25[msg.sender]:
                            require stor13 > 0
                            require stor13
                            if 0 / stor13:
                                require not 0 / 0 / stor13
                        else:
                            require 100 * stor25[msg.sender] / stor25[msg.sender] == 100
                            require stor13 > 0
                            require stor13
                            if 100 * stor25[msg.sender] / stor13:
                                require not 0 / 100 * stor25[msg.sender] / stor13
                    else:
                        if 5 == stor8:
                            if not stor26[msg.sender]:
                                require stor14 > 0
                                require stor14
                                if 0 / stor14:
                                    require not 0 / 0 / stor14
                            else:
                                require 100 * stor26[msg.sender] / stor26[msg.sender] == 100
                                require stor14 > 0
                                require stor14
                                if 100 * stor26[msg.sender] / stor14:
                                    require not 0 / 100 * stor26[msg.sender] / stor14
                        else:
                            if 6 == stor8:
                                if not stor27[msg.sender]:
                                    require stor15 > 0
                                    require stor15
                                    if 0 / stor15:
                                        require not 0 / 0 / stor15
                                else:
                                    require 100 * stor27[msg.sender] / stor27[msg.sender] == 100
                                    require stor15 > 0
                                    require stor15
                                    if 100 * stor27[msg.sender] / stor15:
                                        require not 0 / 100 * stor27[msg.sender] / stor15
        if 1 == bool(uint8(stor3.field_160)):
            require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
            require stor24[msg.sender] >= 0
            require stor25[msg.sender] >= 0
            require stor26[msg.sender] >= 0
            require stor27[msg.sender] >= 0
            if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_92be2002Address, msg.sender, 0
            else:
                require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        stor22[msg.sender] = 0
        stor23[msg.sender] = 0
        stor24[msg.sender] = 0
        stor25[msg.sender] = 0
        stor26[msg.sender] = 0
        stor27[msg.sender] = 0
        if uint8(stor3.field_160):
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args sub_92be2002Address, msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / stor15 + stor14 + stor13 + stor12 + stor11 + stor10 == 980
        if 1 == stor8:
            if not stor22[msg.sender]:
                require stor10 > 0
                require stor10
                if not 0 / stor10:
                    if 1 == bool(uint8(stor3.field_160)):
                        require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                        require stor24[msg.sender] >= 0
                        require stor25[msg.sender] >= 0
                        require stor26[msg.sender] >= 0
                        require stor27[msg.sender] >= 0
                        if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args sub_92be2002Address, msg.sender, 0
                        else:
                            require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    stor22[msg.sender] = 0
                    stor23[msg.sender] = 0
                    stor24[msg.sender] = 0
                    stor25[msg.sender] = 0
                    stor26[msg.sender] = 0
                    stor27[msg.sender] = 0
                    if uint8(stor3.field_160):
                        call msg.sender with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_92be2002Address, msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor10 / 0 / stor10 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                    if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor10 / 100:
                        if 1 == bool(uint8(stor3.field_160)):
                            require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                            require stor24[msg.sender] >= 0
                            require stor25[msg.sender] >= 0
                            require stor26[msg.sender] >= 0
                            require stor27[msg.sender] >= 0
                            if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, 0
                            else:
                                require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    stor22[msg.sender] = 0
                    stor23[msg.sender] = 0
                    stor24[msg.sender] = 0
                    stor25[msg.sender] = 0
                    stor26[msg.sender] = 0
                    stor27[msg.sender] = 0
                    if uint8(stor3.field_160):
                        call msg.sender with:
                           value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor10 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor10 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                require 100 * stor22[msg.sender] / stor22[msg.sender] == 100
                require stor10 > 0
                require stor10
                if not 100 * stor22[msg.sender] / stor10:
                    if 1 == bool(uint8(stor3.field_160)):
                        require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                        require stor24[msg.sender] >= 0
                        require stor25[msg.sender] >= 0
                        require stor26[msg.sender] >= 0
                        require stor27[msg.sender] >= 0
                        if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args sub_92be2002Address, msg.sender, 0
                        else:
                            require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    stor22[msg.sender] = 0
                    stor23[msg.sender] = 0
                    stor24[msg.sender] = 0
                    stor25[msg.sender] = 0
                    stor26[msg.sender] = 0
                    stor27[msg.sender] = 0
                    if uint8(stor3.field_160):
                        call msg.sender with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_92be2002Address, msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor22[msg.sender] / stor10 / 100 * stor22[msg.sender] / stor10 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                    if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor22[msg.sender] / stor10 / 100:
                        if 1 == bool(uint8(stor3.field_160)):
                            require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                            require stor24[msg.sender] >= 0
                            require stor25[msg.sender] >= 0
                            require stor26[msg.sender] >= 0
                            require stor27[msg.sender] >= 0
                            if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, 0
                            else:
                                require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    stor22[msg.sender] = 0
                    stor23[msg.sender] = 0
                    stor24[msg.sender] = 0
                    stor25[msg.sender] = 0
                    stor26[msg.sender] = 0
                    stor27[msg.sender] = 0
                    if uint8(stor3.field_160):
                        call msg.sender with:
                           value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor22[msg.sender] / stor10 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor22[msg.sender] / stor10 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if 2 == stor8:
                if not stor23[msg.sender]:
                    require stor11 > 0
                    require stor11
                    if not 0 / stor11:
                        if 1 == bool(uint8(stor3.field_160)):
                            require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                            require stor24[msg.sender] >= 0
                            require stor25[msg.sender] >= 0
                            require stor26[msg.sender] >= 0
                            require stor27[msg.sender] >= 0
                            if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, 0
                            else:
                                require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        stor22[msg.sender] = 0
                        stor23[msg.sender] = 0
                        stor24[msg.sender] = 0
                        stor25[msg.sender] = 0
                        stor26[msg.sender] = 0
                        stor27[msg.sender] = 0
                        if uint8(stor3.field_160):
                            call msg.sender with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args sub_92be2002Address, msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor11 / 0 / stor11 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                        if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor11 / 100:
                            if 1 == bool(uint8(stor3.field_160)):
                                require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                require stor24[msg.sender] >= 0
                                require stor25[msg.sender] >= 0
                                require stor26[msg.sender] >= 0
                                require stor27[msg.sender] >= 0
                                if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, 0
                                else:
                                    require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        stor22[msg.sender] = 0
                        stor23[msg.sender] = 0
                        stor24[msg.sender] = 0
                        stor25[msg.sender] = 0
                        stor26[msg.sender] = 0
                        stor27[msg.sender] = 0
                        if uint8(stor3.field_160):
                            call msg.sender with:
                               value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor11 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor11 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require 100 * stor23[msg.sender] / stor23[msg.sender] == 100
                    require stor11 > 0
                    require stor11
                    if not 100 * stor23[msg.sender] / stor11:
                        if 1 == bool(uint8(stor3.field_160)):
                            require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                            require stor24[msg.sender] >= 0
                            require stor25[msg.sender] >= 0
                            require stor26[msg.sender] >= 0
                            require stor27[msg.sender] >= 0
                            if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, 0
                            else:
                                require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        stor22[msg.sender] = 0
                        stor23[msg.sender] = 0
                        stor24[msg.sender] = 0
                        stor25[msg.sender] = 0
                        stor26[msg.sender] = 0
                        stor27[msg.sender] = 0
                        if uint8(stor3.field_160):
                            call msg.sender with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args sub_92be2002Address, msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor23[msg.sender] / stor11 / 100 * stor23[msg.sender] / stor11 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                        if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor23[msg.sender] / stor11 / 100:
                            if 1 == bool(uint8(stor3.field_160)):
                                require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                require stor24[msg.sender] >= 0
                                require stor25[msg.sender] >= 0
                                require stor26[msg.sender] >= 0
                                require stor27[msg.sender] >= 0
                                if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, 0
                                else:
                                    require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        stor22[msg.sender] = 0
                        stor23[msg.sender] = 0
                        stor24[msg.sender] = 0
                        stor25[msg.sender] = 0
                        stor26[msg.sender] = 0
                        stor27[msg.sender] = 0
                        if uint8(stor3.field_160):
                            call msg.sender with:
                               value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor23[msg.sender] / stor11 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor23[msg.sender] / stor11 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if 3 == stor8:
                    if not stor24[msg.sender]:
                        require stor12 > 0
                        require stor12
                        if not 0 / stor12:
                            if 1 == bool(uint8(stor3.field_160)):
                                require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                require stor24[msg.sender] >= 0
                                require stor25[msg.sender] >= 0
                                require stor26[msg.sender] >= 0
                                require stor27[msg.sender] >= 0
                                if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, 0
                                else:
                                    require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            stor22[msg.sender] = 0
                            stor23[msg.sender] = 0
                            stor24[msg.sender] = 0
                            stor25[msg.sender] = 0
                            stor26[msg.sender] = 0
                            stor27[msg.sender] = 0
                            if uint8(stor3.field_160):
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor12 / 0 / stor12 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                            if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor12 / 100:
                                if 1 == bool(uint8(stor3.field_160)):
                                    require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                    require stor24[msg.sender] >= 0
                                    require stor25[msg.sender] >= 0
                                    require stor26[msg.sender] >= 0
                                    require stor27[msg.sender] >= 0
                                    if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, 0
                                    else:
                                        require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            stor22[msg.sender] = 0
                            stor23[msg.sender] = 0
                            stor24[msg.sender] = 0
                            stor25[msg.sender] = 0
                            stor26[msg.sender] = 0
                            stor27[msg.sender] = 0
                            if uint8(stor3.field_160):
                                call msg.sender with:
                                   value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor12 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor12 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require 100 * stor24[msg.sender] / stor24[msg.sender] == 100
                        require stor12 > 0
                        require stor12
                        if not 100 * stor24[msg.sender] / stor12:
                            if 1 == bool(uint8(stor3.field_160)):
                                require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                require stor24[msg.sender] >= 0
                                require stor25[msg.sender] >= 0
                                require stor26[msg.sender] >= 0
                                require stor27[msg.sender] >= 0
                                if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, 0
                                else:
                                    require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            stor22[msg.sender] = 0
                            stor23[msg.sender] = 0
                            stor24[msg.sender] = 0
                            stor25[msg.sender] = 0
                            stor26[msg.sender] = 0
                            stor27[msg.sender] = 0
                            if uint8(stor3.field_160):
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor24[msg.sender] / stor12 / 100 * stor24[msg.sender] / stor12 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                            if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor24[msg.sender] / stor12 / 100:
                                if 1 == bool(uint8(stor3.field_160)):
                                    require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                    require stor24[msg.sender] >= 0
                                    require stor25[msg.sender] >= 0
                                    require stor26[msg.sender] >= 0
                                    require stor27[msg.sender] >= 0
                                    if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, 0
                                    else:
                                        require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            stor22[msg.sender] = 0
                            stor23[msg.sender] = 0
                            stor24[msg.sender] = 0
                            stor25[msg.sender] = 0
                            stor26[msg.sender] = 0
                            stor27[msg.sender] = 0
                            if uint8(stor3.field_160):
                                call msg.sender with:
                                   value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor24[msg.sender] / stor12 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor24[msg.sender] / stor12 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if 4 == stor8:
                        if not stor25[msg.sender]:
                            require stor13 > 0
                            require stor13
                            if not 0 / stor13:
                                if 1 == bool(uint8(stor3.field_160)):
                                    require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                    require stor24[msg.sender] >= 0
                                    require stor25[msg.sender] >= 0
                                    require stor26[msg.sender] >= 0
                                    require stor27[msg.sender] >= 0
                                    if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, 0
                                    else:
                                        require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                stor22[msg.sender] = 0
                                stor23[msg.sender] = 0
                                stor24[msg.sender] = 0
                                stor25[msg.sender] = 0
                                stor26[msg.sender] = 0
                                stor27[msg.sender] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor13 / 0 / stor13 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                                if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor13 / 100:
                                    if 1 == bool(uint8(stor3.field_160)):
                                        require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                        require stor24[msg.sender] >= 0
                                        require stor25[msg.sender] >= 0
                                        require stor26[msg.sender] >= 0
                                        require stor27[msg.sender] >= 0
                                        if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, 0
                                        else:
                                            require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                stor22[msg.sender] = 0
                                stor23[msg.sender] = 0
                                stor24[msg.sender] = 0
                                stor25[msg.sender] = 0
                                stor26[msg.sender] = 0
                                stor27[msg.sender] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                       value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor13 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor13 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            require 100 * stor25[msg.sender] / stor25[msg.sender] == 100
                            require stor13 > 0
                            require stor13
                            if not 100 * stor25[msg.sender] / stor13:
                                if 1 == bool(uint8(stor3.field_160)):
                                    require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                    require stor24[msg.sender] >= 0
                                    require stor25[msg.sender] >= 0
                                    require stor26[msg.sender] >= 0
                                    require stor27[msg.sender] >= 0
                                    if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, 0
                                    else:
                                        require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                stor22[msg.sender] = 0
                                stor23[msg.sender] = 0
                                stor24[msg.sender] = 0
                                stor25[msg.sender] = 0
                                stor26[msg.sender] = 0
                                stor27[msg.sender] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor25[msg.sender] / stor13 / 100 * stor25[msg.sender] / stor13 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                                if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor25[msg.sender] / stor13 / 100:
                                    if 1 == bool(uint8(stor3.field_160)):
                                        require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                        require stor24[msg.sender] >= 0
                                        require stor25[msg.sender] >= 0
                                        require stor26[msg.sender] >= 0
                                        require stor27[msg.sender] >= 0
                                        if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, 0
                                        else:
                                            require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                stor22[msg.sender] = 0
                                stor23[msg.sender] = 0
                                stor24[msg.sender] = 0
                                stor25[msg.sender] = 0
                                stor26[msg.sender] = 0
                                stor27[msg.sender] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                       value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor25[msg.sender] / stor13 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor25[msg.sender] / stor13 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                    else:
                        if 5 == stor8:
                            if not stor26[msg.sender]:
                                require stor14 > 0
                                require stor14
                                if not 0 / stor14:
                                    if 1 == bool(uint8(stor3.field_160)):
                                        require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                        require stor24[msg.sender] >= 0
                                        require stor25[msg.sender] >= 0
                                        require stor26[msg.sender] >= 0
                                        require stor27[msg.sender] >= 0
                                        if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, 0
                                        else:
                                            require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    stor22[msg.sender] = 0
                                    stor23[msg.sender] = 0
                                    stor24[msg.sender] = 0
                                    stor25[msg.sender] = 0
                                    stor26[msg.sender] = 0
                                    stor27[msg.sender] = 0
                                    if uint8(stor3.field_160):
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                else:
                                    require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor14 / 0 / stor14 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                                    if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor14 / 100:
                                        if 1 == bool(uint8(stor3.field_160)):
                                            require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                            require stor24[msg.sender] >= 0
                                            require stor25[msg.sender] >= 0
                                            require stor26[msg.sender] >= 0
                                            require stor27[msg.sender] >= 0
                                            if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args sub_92be2002Address, msg.sender, 0
                                            else:
                                                require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    stor22[msg.sender] = 0
                                    stor23[msg.sender] = 0
                                    stor24[msg.sender] = 0
                                    stor25[msg.sender] = 0
                                    stor26[msg.sender] = 0
                                    stor27[msg.sender] = 0
                                    if uint8(stor3.field_160):
                                        call msg.sender with:
                                           value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor14 / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor14 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                            else:
                                require 100 * stor26[msg.sender] / stor26[msg.sender] == 100
                                require stor14 > 0
                                require stor14
                                if not 100 * stor26[msg.sender] / stor14:
                                    if 1 == bool(uint8(stor3.field_160)):
                                        require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                        require stor24[msg.sender] >= 0
                                        require stor25[msg.sender] >= 0
                                        require stor26[msg.sender] >= 0
                                        require stor27[msg.sender] >= 0
                                        if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, 0
                                        else:
                                            require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    stor22[msg.sender] = 0
                                    stor23[msg.sender] = 0
                                    stor24[msg.sender] = 0
                                    stor25[msg.sender] = 0
                                    stor26[msg.sender] = 0
                                    stor27[msg.sender] = 0
                                    if uint8(stor3.field_160):
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                else:
                                    require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor26[msg.sender] / stor14 / 100 * stor26[msg.sender] / stor14 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                                    if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor26[msg.sender] / stor14 / 100:
                                        if 1 == bool(uint8(stor3.field_160)):
                                            require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                            require stor24[msg.sender] >= 0
                                            require stor25[msg.sender] >= 0
                                            require stor26[msg.sender] >= 0
                                            require stor27[msg.sender] >= 0
                                            if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args sub_92be2002Address, msg.sender, 0
                                            else:
                                                require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    stor22[msg.sender] = 0
                                    stor23[msg.sender] = 0
                                    stor24[msg.sender] = 0
                                    stor25[msg.sender] = 0
                                    stor26[msg.sender] = 0
                                    stor27[msg.sender] = 0
                                    if uint8(stor3.field_160):
                                        call msg.sender with:
                                           value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor26[msg.sender] / stor14 / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor26[msg.sender] / stor14 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                        else:
                            if stor8 != 6:
                                if 1 == bool(uint8(stor3.field_160)):
                                    require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                    require stor24[msg.sender] >= 0
                                    require stor25[msg.sender] >= 0
                                    require stor26[msg.sender] >= 0
                                    require stor27[msg.sender] >= 0
                                    if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, 0
                                    else:
                                        require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                        require ext_code.size(stor2)
                                        call stor2.0x23b872dd with:
                                             gas gas_remaining wei
                                            args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                stor22[msg.sender] = 0
                                stor23[msg.sender] = 0
                                stor24[msg.sender] = 0
                                stor25[msg.sender] = 0
                                stor26[msg.sender] = 0
                                stor27[msg.sender] = 0
                                if uint8(stor3.field_160):
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_92be2002Address, msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                if not stor27[msg.sender]:
                                    require stor15 > 0
                                    require stor15
                                    if not 0 / stor15:
                                        if 1 == bool(uint8(stor3.field_160)):
                                            require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                            require stor24[msg.sender] >= 0
                                            require stor25[msg.sender] >= 0
                                            require stor26[msg.sender] >= 0
                                            require stor27[msg.sender] >= 0
                                            if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args sub_92be2002Address, msg.sender, 0
                                            else:
                                                require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        stor22[msg.sender] = 0
                                        stor23[msg.sender] = 0
                                        stor24[msg.sender] = 0
                                        stor25[msg.sender] = 0
                                        stor26[msg.sender] = 0
                                        stor27[msg.sender] = 0
                                        if uint8(stor3.field_160):
                                            call msg.sender with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    else:
                                        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor15 / 0 / stor15 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                                        if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor15 / 100:
                                            if 1 == bool(uint8(stor3.field_160)):
                                                require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                                require stor24[msg.sender] >= 0
                                                require stor25[msg.sender] >= 0
                                                require stor26[msg.sender] >= 0
                                                require stor27[msg.sender] >= 0
                                                if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args sub_92be2002Address, msg.sender, 0
                                                else:
                                                    require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                        stor22[msg.sender] = 0
                                        stor23[msg.sender] = 0
                                        stor24[msg.sender] = 0
                                        stor25[msg.sender] = 0
                                        stor26[msg.sender] = 0
                                        stor27[msg.sender] = 0
                                        if uint8(stor3.field_160):
                                            call msg.sender with:
                                               value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor15 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 0 / stor15 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                else:
                                    require 100 * stor27[msg.sender] / stor27[msg.sender] == 100
                                    require stor15 > 0
                                    require stor15
                                    if not 100 * stor27[msg.sender] / stor15:
                                        if 1 == bool(uint8(stor3.field_160)):
                                            require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                            require stor24[msg.sender] >= 0
                                            require stor25[msg.sender] >= 0
                                            require stor26[msg.sender] >= 0
                                            require stor27[msg.sender] >= 0
                                            if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args sub_92be2002Address, msg.sender, 0
                                            else:
                                                require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                                require ext_code.size(stor2)
                                                call stor2.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        stor22[msg.sender] = 0
                                        stor23[msg.sender] = 0
                                        stor24[msg.sender] = 0
                                        stor25[msg.sender] = 0
                                        stor26[msg.sender] = 0
                                        stor27[msg.sender] = 0
                                        if uint8(stor3.field_160):
                                            call msg.sender with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                    else:
                                        require (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor27[msg.sender] / stor15 / 100 * stor27[msg.sender] / stor15 == (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000
                                        if not (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor27[msg.sender] / stor15 / 100:
                                            if 1 == bool(uint8(stor3.field_160)):
                                                require stor23[msg.sender] + stor22[msg.sender] >= stor22[msg.sender]
                                                require stor24[msg.sender] >= 0
                                                require stor25[msg.sender] >= 0
                                                require stor26[msg.sender] >= 0
                                                require stor27[msg.sender] >= 0
                                                if not stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender]:
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args sub_92be2002Address, msg.sender, 0
                                                else:
                                                    require (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9) / stor27[msg.sender] + stor26[msg.sender] + stor25[msg.sender] + stor24[msg.sender] + stor23[msg.sender] + stor22[msg.sender] == stor9
                                                    require ext_code.size(stor2)
                                                    call stor2.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args sub_92be2002Address, msg.sender, (stor27[msg.sender] * stor9) + (stor26[msg.sender] * stor9) + (stor25[msg.sender] * stor9) + (stor24[msg.sender] * stor9) + (stor23[msg.sender] * stor9) + (stor22[msg.sender] * stor9)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                        stor22[msg.sender] = 0
                                        stor23[msg.sender] = 0
                                        stor24[msg.sender] = 0
                                        stor25[msg.sender] = 0
                                        stor26[msg.sender] = 0
                                        stor27[msg.sender] = 0
                                        if uint8(stor3.field_160):
                                            call msg.sender with:
                                               value (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor27[msg.sender] / stor15 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args sub_92be2002Address, msg.sender, (980 * stor15) + (980 * stor14) + (980 * stor13) + (980 * stor12) + (980 * stor11) + (980 * stor10) / 1000 * 100 * stor27[msg.sender] / stor15 / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
}



}
