contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
array of address stor3;
array of address stor4;
array of address stor5;
array of struct stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 50
    mem[128] = stor[sha3((8 * arg1) + 2)]
    idx = 128
    s = 0
    while stor[(8 * arg1) + 2].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((8 * arg1) + 2) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(8 * arg1) + 2].length, data=mem[128 len stor[(8 * arg1) + 2].length]), 
           stor3[arg1],
           stor4[arg1],
           stor5[arg1],
           stor6[arg1].field_0,
           stor7[arg1],
           stor8[arg1],
           stor9[arg1]
}

function sub_35103111(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 50
    require block.timestamp >= stor7[arg1] + (24 * 3600)
    require stor4[arg1]
    if not uint255(stor6[arg1].field_1):
        if uint255(stor6[arg1].field_1) < uint255(stor6[arg1].field_1):
            revert with 0, 'SafeMath: addition overflow'
        if uint255(stor6[arg1].field_1) > stor9[arg1]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor5[arg1] = 0
        stor4[arg1] = 0
        stor3[arg1] = 0
        stor6[arg1].field_0 = stor1
        stor7[arg1] = 0
        stor9[arg1] = 0
        call owner with:
           value stor9[arg1] - uint255(stor6[arg1].field_1) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor3[arg1] with:
           value uint255(stor6[arg1].field_1) wei
             gas 2300 * is_zero(value) wei
    else:
        require uint255(stor6[arg1].field_1)
        if 125 * uint255(stor6[arg1].field_1) / uint255(stor6[arg1].field_1) != 125:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint255(stor6[arg1].field_1) + (125 * uint255(stor6[arg1].field_1) / 1000) < uint255(stor6[arg1].field_1):
            revert with 0, 'SafeMath: addition overflow'
        if uint255(stor6[arg1].field_1) + (125 * uint255(stor6[arg1].field_1) / 1000) > stor9[arg1]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor5[arg1] = 0
        stor4[arg1] = 0
        stor3[arg1] = 0
        stor6[arg1].field_0 = stor1
        stor7[arg1] = 0
        stor9[arg1] = 0
        call owner with:
           value stor9[arg1] - uint255(stor6[arg1].field_1) - (125 * uint255(stor6[arg1].field_1) / 1000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor3[arg1] with:
           value uint255(stor6[arg1].field_1) + (125 * uint255(stor6[arg1].field_1) / 1000) wei
             gas 2300 * is_zero(value) wei
}

function purchase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 50
    require msg.value >= stor6[arg1].field_0
    if block.timestamp >= stor7[arg1] + (24 * 3600):
        require not stor7[arg1]
    stor5[arg1] = stor4[arg1]
    stor4[arg1] = stor3[arg1]
    stor3[arg1] = msg.sender
    if not stor6[arg1].field_0:
        stor6[arg1].field_0 = 0
    else:
        require stor6[arg1].field_0
        if 2 * stor6[arg1].field_0 / stor6[arg1].field_0 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        bool(stor6[arg1].field_0) = 0
        uint255(stor6[arg1].field_1) = uint255(stor6[arg1].field_0)
    if stor4[arg1]:
        stor7[arg1] = block.timestamp
    else:
        stor7[arg1] = 0
    if not Mask(253, 0, stor6[arg1].field_3):
        if Mask(253, 0, stor6[arg1].field_3) < Mask(253, 0, stor6[arg1].field_3):
            revert with 0, 'SafeMath: addition overflow'
        if not stor5[arg1]:
            if stor9[arg1] + msg.value < stor9[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            stor9[arg1] += msg.value
        else:
            if Mask(253, 0, stor6[arg1].field_3) > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor9[arg1] + msg.value - Mask(253, 0, stor6[arg1].field_3) < stor9[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            stor9[arg1] = stor9[arg1] + msg.value - Mask(253, 0, stor6[arg1].field_3)
            call stor5[arg1] with:
               value Mask(253, 0, stor6[arg1].field_3) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require Mask(253, 0, stor6[arg1].field_3)
        if 25 * Mask(253, 0, stor6[arg1].field_3) / Mask(253, 0, stor6[arg1].field_3) != 25:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if Mask(253, 0, stor6[arg1].field_3) + (25 * Mask(253, 0, stor6[arg1].field_3) / 100) < Mask(253, 0, stor6[arg1].field_3):
            revert with 0, 'SafeMath: addition overflow'
        if not stor5[arg1]:
            if stor9[arg1] + msg.value < stor9[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            stor9[arg1] += msg.value
        else:
            if Mask(253, 0, stor6[arg1].field_3) + (25 * Mask(253, 0, stor6[arg1].field_3) / 100) > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor9[arg1] + msg.value - Mask(253, 0, stor6[arg1].field_3) - (25 * Mask(253, 0, stor6[arg1].field_3) / 100) < stor9[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            stor9[arg1] = stor9[arg1] + msg.value - Mask(253, 0, stor6[arg1].field_3) - (25 * Mask(253, 0, stor6[arg1].field_3) / 100)
            call stor5[arg1] with:
               value Mask(253, 0, stor6[arg1].field_3) + (25 * Mask(253, 0, stor6[arg1].field_3) / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
