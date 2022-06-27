contract main {




// =====================  Runtime code  =====================


#
#  - sub_0f922581(?)
#  - withDraw()
#  - sub_883c9fad(?)
#
uint256 sub_c86657d8;
uint8 stor1; offset 160
address owner;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 closeTime;
uint256 stor7;
uint256 stor8;
mapping of struct sub_4160b61b;
mapping of struct sub_90a4cb9b;
mapping of struct sub_1d64e373;
array of struct sub_5907a50a;
array of struct sub_e82b9fd7;
array of uint256 sub_da4f082e;
array of struct sub_23722084;
uint256 sub_13e155a2;
uint256 sub_64d1f16b;
uint256 sub_ccbd422e;
uint256 sub_bee0fe3f;
uint256 stor21;
uint256 sub_6dc0867d;
uint256 sub_c6a3acb3;
uint256 sub_49d676ef;
mapping of struct sub_d8c740eb;
array of struct sub_a1999a80;

function sub_13e155a2(?) {
    return sub_13e155a2
}

function sub_1d64e373(?) {
    return address(sub_1d64e373[arg1].field_0), sub_1d64e373[arg1].field_256
}

function sub_23722084(?) {
    require arg1 < sub_23722084.length
    return address(sub_23722084[arg1].field_0), 
           sub_23722084[arg1].field_256,
           sub_23722084[arg1].field_512,
           sub_23722084[arg1].field_768,
           bool(uint8(sub_23722084[arg1].field_1024)),
           sub_23722084[arg1].field_1280
}

function sub_4160b61b(?) {
    mem[0] = arg1
    mem[32] = 9
    idx = sub_4160b61b[sha3(mem[0 len 64])].field_0 + 1
    while idx <= arg2:
        mem[0] = idx
        mem[32] = 10
        if not uint8(sub_90a4cb9b[idx].field_1792):
            if sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                revert with 0, 'SafeMath add failed'
        else:
            s = 0
            t = sub_4160b61b[address(arg1)].field_768
            while s < sub_5907a50a[address(arg1)].field_0:
                require s < sub_5907a50a[address(arg1)].field_0
                if sub_5907a50a[address(arg1)][s].field_1280 <= idx:
                    mem[0] = arg1
                    mem[32] = 12
                    s = s + 1
                    t = t
                    continue 
                require s < sub_5907a50a[address(arg1)].field_0
                if sub_5907a50a[address(arg1)][s].field_256 > t:
                    revert with 0, 'SafeMath sub failed'
                mem[0] = arg1
                mem[32] = 12
                s = s + 1
                t = t - sub_5907a50a[address(arg1)][s].field_256
                continue 
            if not t:
                if 3 == sub_4160b61b[address(arg1)].field_512:
                    mem[0] = idx
                    mem[32] = 10
                    require sub_90a4cb9b[idx].field_2048
                    if not sub_90a4cb9b[idx].field_0 / 1000:
                        require stor8
                        if not sub_90a4cb9b[idx].field_0 / 1000:
                            require 0 / stor8 <= 0
                        else:
                            if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                revert with 0, 'SafeMath mul failed'
                            require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                        if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if 10 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 10:
                            revert with 0, 'SafeMath mul failed'
                        if not 10 * sub_90a4cb9b[idx].field_0 / 1000:
                            require stor8
                            if not sub_90a4cb9b[idx].field_0 / 1000:
                                require 0 / stor8 <= 0
                            else:
                                if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                            if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                revert with 0, 'SafeMath add failed'
                        else:
                            if 10 * 0 / sub_90a4cb9b[idx].field_2048 * sub_90a4cb9b[idx].field_0 / 1000 / 10 * sub_90a4cb9b[idx].field_0 / 1000 != 0 / sub_90a4cb9b[idx].field_2048:
                                revert with 0, 'SafeMath mul failed'
                            require stor8
                            if not sub_90a4cb9b[idx].field_0 / 1000:
                                require 10 * 0 / sub_90a4cb9b[idx].field_2048 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 0
                            else:
                                if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                require 10 * 0 / sub_90a4cb9b[idx].field_2048 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                            if (10 * 0 / sub_90a4cb9b[idx].field_2048 * sub_90a4cb9b[idx].field_0 / 1000 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                revert with 0, 'SafeMath add failed'
                else:
                    if 4 == sub_4160b61b[address(arg1)].field_512:
                        mem[0] = idx
                        mem[32] = 10
                        require sub_90a4cb9b[idx].field_2304
                        if not sub_90a4cb9b[idx].field_0 / 1000:
                            require stor8
                            if not sub_90a4cb9b[idx].field_0 / 1000:
                                require 0 / stor8 <= 0
                            else:
                                if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                            if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                revert with 0, 'SafeMath add failed'
                        else:
                            if 20 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 20:
                                revert with 0, 'SafeMath mul failed'
                            if not 20 * sub_90a4cb9b[idx].field_0 / 1000:
                                require stor8
                                if not sub_90a4cb9b[idx].field_0 / 1000:
                                    require 0 / stor8 <= 0
                                else:
                                    if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if 20 * 0 / sub_90a4cb9b[idx].field_2304 * sub_90a4cb9b[idx].field_0 / 1000 / 20 * sub_90a4cb9b[idx].field_0 / 1000 != 0 / sub_90a4cb9b[idx].field_2304:
                                    revert with 0, 'SafeMath mul failed'
                                require stor8
                                if not sub_90a4cb9b[idx].field_0 / 1000:
                                    require 20 * 0 / sub_90a4cb9b[idx].field_2304 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 0
                                else:
                                    if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    require 20 * 0 / sub_90a4cb9b[idx].field_2304 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                if (20 * 0 / sub_90a4cb9b[idx].field_2304 * sub_90a4cb9b[idx].field_0 / 1000 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                    revert with 0, 'SafeMath add failed'
                    else:
                        if 5 == sub_4160b61b[address(arg1)].field_512:
                            mem[0] = idx
                            mem[32] = 10
                            require sub_90a4cb9b[idx].field_2560
                            if not sub_90a4cb9b[idx].field_0 / 1000:
                                require stor8
                                if not sub_90a4cb9b[idx].field_0 / 1000:
                                    require 0 / stor8 <= 0
                                else:
                                    if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if 30 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 30:
                                    revert with 0, 'SafeMath mul failed'
                                if not 30 * sub_90a4cb9b[idx].field_0 / 1000:
                                    require stor8
                                    if not sub_90a4cb9b[idx].field_0 / 1000:
                                        require 0 / stor8 <= 0
                                    else:
                                        if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                    if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                        revert with 0, 'SafeMath add failed'
                                else:
                                    if 30 * 0 / sub_90a4cb9b[idx].field_2560 * sub_90a4cb9b[idx].field_0 / 1000 / 30 * sub_90a4cb9b[idx].field_0 / 1000 != 0 / sub_90a4cb9b[idx].field_2560:
                                        revert with 0, 'SafeMath mul failed'
                                    require stor8
                                    if not sub_90a4cb9b[idx].field_0 / 1000:
                                        require 30 * 0 / sub_90a4cb9b[idx].field_2560 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 0
                                    else:
                                        if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        require 30 * 0 / sub_90a4cb9b[idx].field_2560 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                    if (30 * 0 / sub_90a4cb9b[idx].field_2560 * sub_90a4cb9b[idx].field_0 / 1000 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                        revert with 0, 'SafeMath add failed'
                        else:
                            mem[0] = arg1
                            mem[32] = 9
                            if sub_4160b61b[address(arg1)].field_512 != 6:
                                require stor8
                                if not sub_90a4cb9b[idx].field_0 / 1000:
                                    require 0 / stor8 <= 0
                                else:
                                    if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                mem[0] = idx
                                mem[32] = 10
                                require sub_90a4cb9b[idx].field_2816
                                if not sub_90a4cb9b[idx].field_0 / 1000:
                                    require stor8
                                    if not sub_90a4cb9b[idx].field_0 / 1000:
                                        require 0 / stor8 <= 0
                                    else:
                                        if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                    if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                        revert with 0, 'SafeMath add failed'
                                else:
                                    if 40 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 40:
                                        revert with 0, 'SafeMath mul failed'
                                    if not 40 * sub_90a4cb9b[idx].field_0 / 1000:
                                        require stor8
                                        if not sub_90a4cb9b[idx].field_0 / 1000:
                                            require 0 / stor8 <= 0
                                        else:
                                            if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                                revert with 0, 'SafeMath mul failed'
                                            require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                        if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                            revert with 0, 'SafeMath add failed'
                                    else:
                                        if 40 * 0 / sub_90a4cb9b[idx].field_2816 * sub_90a4cb9b[idx].field_0 / 1000 / 40 * sub_90a4cb9b[idx].field_0 / 1000 != 0 / sub_90a4cb9b[idx].field_2816:
                                            revert with 0, 'SafeMath mul failed'
                                        require stor8
                                        if not sub_90a4cb9b[idx].field_0 / 1000:
                                            require 40 * 0 / sub_90a4cb9b[idx].field_2816 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 0
                                        else:
                                            if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                                revert with 0, 'SafeMath mul failed'
                                            require 40 * 0 / sub_90a4cb9b[idx].field_2816 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                        if (40 * 0 / sub_90a4cb9b[idx].field_2816 * sub_90a4cb9b[idx].field_0 / 1000 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                            revert with 0, 'SafeMath add failed'
            else:
                if stor8 * t / t != stor8:
                    revert with 0, 'SafeMath mul failed'
                if 3 == sub_4160b61b[address(arg1)].field_512:
                    mem[0] = idx
                    mem[32] = 10
                    require sub_90a4cb9b[idx].field_2048
                    if not sub_90a4cb9b[idx].field_0 / 1000:
                        require stor8
                        if not sub_90a4cb9b[idx].field_0 / 1000:
                            require 0 / stor8 <= 0
                        else:
                            if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                revert with 0, 'SafeMath mul failed'
                            require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                        if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if 10 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 10:
                            revert with 0, 'SafeMath mul failed'
                        if not 10 * sub_90a4cb9b[idx].field_0 / 1000:
                            require stor8
                            if not sub_90a4cb9b[idx].field_0 / 1000:
                                require 0 / stor8 <= 0
                            else:
                                if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                            if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                revert with 0, 'SafeMath add failed'
                        else:
                            if 10 * stor8 * t / sub_90a4cb9b[idx].field_2048 * sub_90a4cb9b[idx].field_0 / 1000 / 10 * sub_90a4cb9b[idx].field_0 / 1000 != stor8 * t / sub_90a4cb9b[idx].field_2048:
                                revert with 0, 'SafeMath mul failed'
                            require stor8
                            if not sub_90a4cb9b[idx].field_0 / 1000:
                                require 10 * stor8 * t / sub_90a4cb9b[idx].field_2048 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 0
                            else:
                                if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                require 10 * stor8 * t / sub_90a4cb9b[idx].field_2048 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                            if (10 * stor8 * t / sub_90a4cb9b[idx].field_2048 * sub_90a4cb9b[idx].field_0 / 1000 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                revert with 0, 'SafeMath add failed'
                else:
                    if 4 == sub_4160b61b[address(arg1)].field_512:
                        mem[0] = idx
                        mem[32] = 10
                        require sub_90a4cb9b[idx].field_2304
                        if not sub_90a4cb9b[idx].field_0 / 1000:
                            require stor8
                            if not sub_90a4cb9b[idx].field_0 / 1000:
                                require 0 / stor8 <= 0
                            else:
                                if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                            if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                revert with 0, 'SafeMath add failed'
                        else:
                            if 20 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 20:
                                revert with 0, 'SafeMath mul failed'
                            if not 20 * sub_90a4cb9b[idx].field_0 / 1000:
                                require stor8
                                if not sub_90a4cb9b[idx].field_0 / 1000:
                                    require 0 / stor8 <= 0
                                else:
                                    if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if 20 * stor8 * t / sub_90a4cb9b[idx].field_2304 * sub_90a4cb9b[idx].field_0 / 1000 / 20 * sub_90a4cb9b[idx].field_0 / 1000 != stor8 * t / sub_90a4cb9b[idx].field_2304:
                                    revert with 0, 'SafeMath mul failed'
                                require stor8
                                if not sub_90a4cb9b[idx].field_0 / 1000:
                                    require 20 * stor8 * t / sub_90a4cb9b[idx].field_2304 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 0
                                else:
                                    if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    require 20 * stor8 * t / sub_90a4cb9b[idx].field_2304 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                if (20 * stor8 * t / sub_90a4cb9b[idx].field_2304 * sub_90a4cb9b[idx].field_0 / 1000 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                    revert with 0, 'SafeMath add failed'
                    else:
                        if 5 == sub_4160b61b[address(arg1)].field_512:
                            mem[0] = idx
                            mem[32] = 10
                            require sub_90a4cb9b[idx].field_2560
                            if not sub_90a4cb9b[idx].field_0 / 1000:
                                require stor8
                                if not sub_90a4cb9b[idx].field_0 / 1000:
                                    require 0 / stor8 <= 0
                                else:
                                    if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if 30 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 30:
                                    revert with 0, 'SafeMath mul failed'
                                if not 30 * sub_90a4cb9b[idx].field_0 / 1000:
                                    require stor8
                                    if not sub_90a4cb9b[idx].field_0 / 1000:
                                        require 0 / stor8 <= 0
                                    else:
                                        if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                    if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                        revert with 0, 'SafeMath add failed'
                                else:
                                    if 30 * stor8 * t / sub_90a4cb9b[idx].field_2560 * sub_90a4cb9b[idx].field_0 / 1000 / 30 * sub_90a4cb9b[idx].field_0 / 1000 != stor8 * t / sub_90a4cb9b[idx].field_2560:
                                        revert with 0, 'SafeMath mul failed'
                                    require stor8
                                    if not sub_90a4cb9b[idx].field_0 / 1000:
                                        require 30 * stor8 * t / sub_90a4cb9b[idx].field_2560 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 0
                                    else:
                                        if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        require 30 * stor8 * t / sub_90a4cb9b[idx].field_2560 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                    if (30 * stor8 * t / sub_90a4cb9b[idx].field_2560 * sub_90a4cb9b[idx].field_0 / 1000 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                        revert with 0, 'SafeMath add failed'
                        else:
                            mem[0] = arg1
                            mem[32] = 9
                            if sub_4160b61b[address(arg1)].field_512 != 6:
                                require stor8
                                if not sub_90a4cb9b[idx].field_0 / 1000:
                                    require 0 / stor8 <= 0
                                else:
                                    if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                mem[0] = idx
                                mem[32] = 10
                                require sub_90a4cb9b[idx].field_2816
                                if not sub_90a4cb9b[idx].field_0 / 1000:
                                    require stor8
                                    if not sub_90a4cb9b[idx].field_0 / 1000:
                                        require 0 / stor8 <= 0
                                    else:
                                        if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                    if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                        revert with 0, 'SafeMath add failed'
                                else:
                                    if 40 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 40:
                                        revert with 0, 'SafeMath mul failed'
                                    if not 40 * sub_90a4cb9b[idx].field_0 / 1000:
                                        require stor8
                                        if not sub_90a4cb9b[idx].field_0 / 1000:
                                            require 0 / stor8 <= 0
                                        else:
                                            if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                                revert with 0, 'SafeMath mul failed'
                                            require 0 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                        if (0 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                            revert with 0, 'SafeMath add failed'
                                    else:
                                        if 40 * stor8 * t / sub_90a4cb9b[idx].field_2816 * sub_90a4cb9b[idx].field_0 / 1000 / 40 * sub_90a4cb9b[idx].field_0 / 1000 != stor8 * t / sub_90a4cb9b[idx].field_2816:
                                            revert with 0, 'SafeMath mul failed'
                                        require stor8
                                        if not sub_90a4cb9b[idx].field_0 / 1000:
                                            require 40 * stor8 * t / sub_90a4cb9b[idx].field_2816 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 0
                                        else:
                                            if 100 * sub_90a4cb9b[idx].field_0 / 1000 / sub_90a4cb9b[idx].field_0 / 1000 != 100:
                                                revert with 0, 'SafeMath mul failed'
                                            require 40 * stor8 * t / sub_90a4cb9b[idx].field_2816 * sub_90a4cb9b[idx].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[idx].field_0 / 1000
                                        if (40 * stor8 * t / sub_90a4cb9b[idx].field_2816 * sub_90a4cb9b[idx].field_0 / 1000 / stor8) + sub_4160b61b[address(arg1)].field_2048 < sub_4160b61b[address(arg1)].field_2048:
                                            revert with 0, 'SafeMath add failed'
        idx = idx + 1
        continue 
    return sub_4160b61b[address(arg1)].field_2048
}

function userInfos(address arg1) {
    return address(sub_4160b61b[arg1].field_0), 
           sub_4160b61b[arg1].field_256,
           sub_4160b61b[arg1].field_512,
           sub_4160b61b[arg1].field_768,
           bool(uint8(sub_4160b61b[arg1].field_1024)),
           bool(uint8(sub_4160b61b[arg1].field_1032)),
           sub_4160b61b[arg1].field_1280,
           sub_4160b61b[arg1].field_1536,
           sub_4160b61b[arg1].field_1792,
           sub_4160b61b[arg1].field_2048,
           sub_4160b61b[arg1].field_2304,
           sub_4160b61b[arg1].field_2560
}

function sub_49d676ef(?) {
    return sub_49d676ef
}

function sub_5907a50a(?) {
    require arg2 < sub_5907a50a[arg1].field_0
    return address(sub_5907a50a[arg1][arg2].field_0), 
           sub_5907a50a[arg1][arg2].field_256,
           sub_5907a50a[arg1][arg2].field_512,
           sub_5907a50a[arg1][arg2].field_768,
           bool(uint8(sub_5907a50a[arg1][arg2].field_1024)),
           sub_5907a50a[arg1][arg2].field_1280
}

function closeTime() {
    return closeTime
}

function sub_64d1f16b(?) {
    return sub_64d1f16b
}

function sub_6dc0867d(?) {
    return sub_6dc0867d
}

function sub_86b239f0(?) {
    return sub_1d64e373[address(arg1)].field_256
}

function owner() {
    return owner
}

function sub_90a4cb9b(?) {
    return sub_90a4cb9b[arg1].field_0, 
           sub_90a4cb9b[arg1].field_256,
           sub_90a4cb9b[arg1].field_512,
           sub_90a4cb9b[arg1].field_768,
           sub_90a4cb9b[arg1].field_1024,
           sub_90a4cb9b[arg1].field_1280,
           sub_90a4cb9b[arg1].field_1536,
           bool(uint8(sub_90a4cb9b[arg1].field_1792)),
           sub_90a4cb9b[arg1].field_2048,
           sub_90a4cb9b[arg1].field_2304,
           sub_90a4cb9b[arg1].field_2560,
           sub_90a4cb9b[arg1].field_2816,
           sub_90a4cb9b[arg1].field_3072
}

function sub_a1999a80(?) {
    require arg1 < sub_a1999a80.length
    return address(sub_a1999a80[arg1].field_0), 
           sub_a1999a80[arg1].field_256,
           sub_a1999a80[arg1].field_512,
           sub_a1999a80[arg1].field_768,
           sub_a1999a80[arg1].field_1024
}

function sub_bee0fe3f(?) {
    return sub_bee0fe3f
}

function sub_c6a3acb3(?) {
    return sub_c6a3acb3
}

function sub_c86657d8(?) {
    return sub_c86657d8
}

function sub_ccbd422e(?) {
    return sub_ccbd422e
}

function activated_() {
    return bool(stor1)
}

function sub_d8c740eb(?) {
    return address(sub_d8c740eb[arg1].field_0), 
           sub_d8c740eb[arg1].field_256,
           bool(uint8(sub_d8c740eb[arg1].field_512)),
           sub_d8c740eb[arg1].field_1280,
           sub_d8c740eb[arg1].field_1536
}

function sub_da4f082e(?) {
    require arg1 < sub_da4f082e.length
    return sub_da4f082e[arg1]
}

function sub_e82b9fd7(?) {
    require arg2 < sub_e82b9fd7[arg1].field_0
    return address(sub_e82b9fd7[arg1][arg2].field_0), 
           sub_e82b9fd7[arg1][arg2].field_256,
           sub_e82b9fd7[arg1][arg2].field_512,
           sub_e82b9fd7[arg1][arg2].field_768,
           bool(uint8(sub_e82b9fd7[arg1][arg2].field_1024)),
           sub_e82b9fd7[arg1][arg2].field_1280
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    stor1 = 1
}

function sub_32058e2f(?) {
    require msg.sender == owner
    stor2 = arg1
}

function sub_527e0e9e(?) {
    require msg.sender == owner
    stor3 = arg1
}

function sub_7be66d2a(?) {
    require msg.sender == owner
    stor4 = arg1
}

function sub_c5eb7e36(?) {
    require msg.sender == owner
    stor5 = arg1
}

function setCloseTime(uint256 arg1) {
    require msg.sender == owner
    closeTime = arg1
}

function pause() {
    require msg.sender == owner
    if bool(stor1) != 1:
        revert with 0, 'its not ready yet.'
    stor1 = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_40b6daba(?) {
    require msg.sender == stor5
    sub_49d676ef = 0
    call msg.sender with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_33068c88(?) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1688cbf4(?) {
    mem[0] = arg1
    s = 0
    idx = 0
    while idx < sub_d8c740eb[address(arg1)].field_768:
        require idx < sub_d8c740eb[address(arg1)].field_768
        mem[0] = sha3(address(arg1), 26) + 3
        s = stor[sha3(mem[0]) + idx]
        t = 1
        u = 0
        while s < sub_a1999a80.length:
            require s < sub_a1999a80.length
            if t:
                if sub_a1999a80[s].field_768:
                    if stor7 * sub_a1999a80[s].field_768 / sub_a1999a80[s].field_768 != stor7:
                        revert with 0, 'SafeMath mul failed'
                    if stor7 * sub_a1999a80[s].field_768 < 0:
                        revert with 0, 'SafeMath add failed'
                require s < sub_a1999a80.length
                mem[0] = arg1
                mem[32] = 26
                s = s + 1
                t = 0
                u = sub_a1999a80[s].field_256
                continue 
            if u:
                if sub_a1999a80[s].field_1024 * u / u != sub_a1999a80[s].field_1024:
                    revert with 0, 'SafeMath mul failed'
                if sub_a1999a80[s].field_1024 * u < 0:
                    revert with 0, 'SafeMath add failed'
            if s >= sub_a1999a80.length - 1:
                mem[0] = arg1
                mem[32] = 26
                s = s + 1
                t = t
                u = u
                continue 
            require s < sub_a1999a80.length
            if not u:
                require stor7
                mem[0] = arg1
                mem[32] = 26
                s = s + 1
                t = t
                u = 0 / stor7
                continue 
            if sub_a1999a80[s].field_512 * u / u != sub_a1999a80[s].field_512:
                revert with 0, 'SafeMath mul failed'
            require stor7
            mem[0] = arg1
            mem[32] = 26
            s = s + 1
            t = t
            u = sub_a1999a80[s].field_512 * u / stor7
            continue 
        mem[0] = arg1
        mem[32] = 26
        s = sub_a1999a80.length - 1
        idx = idx + 1
        continue 
    if stor7:
        return (0 / stor7)
    revert
}

function sub_c4b3e25d(?) {
    if not uint8(sub_90a4cb9b[arg2].field_1792):
        return 0
    idx = 0
    s = sub_4160b61b[address(arg1)].field_768
    while idx < sub_5907a50a[address(arg1)].field_0:
        require idx < sub_5907a50a[address(arg1)].field_0
        if sub_5907a50a[address(arg1)][idx].field_1280 <= arg2:
            mem[0] = arg1
            mem[32] = 12
            idx = idx + 1
            s = s
            continue 
        require idx < sub_5907a50a[address(arg1)].field_0
        if sub_5907a50a[address(arg1)][idx].field_256 > s:
            revert with 0, 'SafeMath sub failed'
        mem[0] = arg1
        mem[32] = 12
        idx = idx + 1
        s = s - sub_5907a50a[address(arg1)][idx].field_256
        continue 
    if not s:
        if 3 == sub_4160b61b[address(arg1)].field_512:
            if sub_90a4cb9b[arg2].field_2048:
                if not sub_90a4cb9b[arg2].field_0 / 1000:
                    if stor8:
                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                            if 0 / stor8 <= 0:
                                return (0 / stor8)
                        else:
                            if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                revert with 0, 'SafeMath mul failed'
                            if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                return (0 / stor8)
                else:
                    if 10 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 10:
                        revert with 0, 'SafeMath mul failed'
                    if not 10 * sub_90a4cb9b[arg2].field_0 / 1000:
                        if stor8:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                if 0 / stor8 <= 0:
                                    return (0 / stor8)
                            else:
                                if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    return (0 / stor8)
                    else:
                        if 10 * 0 / sub_90a4cb9b[arg2].field_2048 * sub_90a4cb9b[arg2].field_0 / 1000 / 10 * sub_90a4cb9b[arg2].field_0 / 1000 != 0 / sub_90a4cb9b[arg2].field_2048:
                            revert with 0, 'SafeMath mul failed'
                        if stor8:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                if 10 * 0 / sub_90a4cb9b[arg2].field_2048 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 0:
                                    return (10 * 0 / sub_90a4cb9b[arg2].field_2048 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
                            else:
                                if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                if 10 * 0 / sub_90a4cb9b[arg2].field_2048 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    return (10 * 0 / sub_90a4cb9b[arg2].field_2048 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
        else:
            if 4 == sub_4160b61b[address(arg1)].field_512:
                if sub_90a4cb9b[arg2].field_2304:
                    if not sub_90a4cb9b[arg2].field_0 / 1000:
                        if stor8:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                if 0 / stor8 <= 0:
                                    return (0 / stor8)
                            else:
                                if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    return (0 / stor8)
                    else:
                        if 20 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 20:
                            revert with 0, 'SafeMath mul failed'
                        if not 20 * sub_90a4cb9b[arg2].field_0 / 1000:
                            if stor8:
                                if not sub_90a4cb9b[arg2].field_0 / 1000:
                                    if 0 / stor8 <= 0:
                                        return (0 / stor8)
                                else:
                                    if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                        return (0 / stor8)
                        else:
                            if 20 * 0 / sub_90a4cb9b[arg2].field_2304 * sub_90a4cb9b[arg2].field_0 / 1000 / 20 * sub_90a4cb9b[arg2].field_0 / 1000 != 0 / sub_90a4cb9b[arg2].field_2304:
                                revert with 0, 'SafeMath mul failed'
                            if stor8:
                                if not sub_90a4cb9b[arg2].field_0 / 1000:
                                    if 20 * 0 / sub_90a4cb9b[arg2].field_2304 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 0:
                                        return (20 * 0 / sub_90a4cb9b[arg2].field_2304 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
                                else:
                                    if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    if 20 * 0 / sub_90a4cb9b[arg2].field_2304 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                        return (20 * 0 / sub_90a4cb9b[arg2].field_2304 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
            else:
                if 5 == sub_4160b61b[address(arg1)].field_512:
                    if sub_90a4cb9b[arg2].field_2560:
                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                            if stor8:
                                if not sub_90a4cb9b[arg2].field_0 / 1000:
                                    if 0 / stor8 <= 0:
                                        return (0 / stor8)
                                else:
                                    if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                        return (0 / stor8)
                        else:
                            if 30 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 30:
                                revert with 0, 'SafeMath mul failed'
                            if not 30 * sub_90a4cb9b[arg2].field_0 / 1000:
                                if stor8:
                                    if not sub_90a4cb9b[arg2].field_0 / 1000:
                                        if 0 / stor8 <= 0:
                                            return (0 / stor8)
                                    else:
                                        if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                            return (0 / stor8)
                            else:
                                if 30 * 0 / sub_90a4cb9b[arg2].field_2560 * sub_90a4cb9b[arg2].field_0 / 1000 / 30 * sub_90a4cb9b[arg2].field_0 / 1000 != 0 / sub_90a4cb9b[arg2].field_2560:
                                    revert with 0, 'SafeMath mul failed'
                                if stor8:
                                    if not sub_90a4cb9b[arg2].field_0 / 1000:
                                        if 30 * 0 / sub_90a4cb9b[arg2].field_2560 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 0:
                                            return (30 * 0 / sub_90a4cb9b[arg2].field_2560 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
                                    else:
                                        if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        if 30 * 0 / sub_90a4cb9b[arg2].field_2560 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                            return (30 * 0 / sub_90a4cb9b[arg2].field_2560 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
                else:
                    if sub_4160b61b[address(arg1)].field_512 != 6:
                        if stor8:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                if 0 / stor8 <= 0:
                                    return (0 / stor8)
                            else:
                                if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    return (0 / stor8)
                    else:
                        if sub_90a4cb9b[arg2].field_2816:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                if stor8:
                                    if not sub_90a4cb9b[arg2].field_0 / 1000:
                                        if 0 / stor8 <= 0:
                                            return (0 / stor8)
                                    else:
                                        if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                            return (0 / stor8)
                            else:
                                if 40 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 40:
                                    revert with 0, 'SafeMath mul failed'
                                if not 40 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    if stor8:
                                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                                            if 0 / stor8 <= 0:
                                                return (0 / stor8)
                                        else:
                                            if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                                return (0 / stor8)
                                else:
                                    if 40 * 0 / sub_90a4cb9b[arg2].field_2816 * sub_90a4cb9b[arg2].field_0 / 1000 / 40 * sub_90a4cb9b[arg2].field_0 / 1000 != 0 / sub_90a4cb9b[arg2].field_2816:
                                        revert with 0, 'SafeMath mul failed'
                                    if stor8:
                                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                                            if 40 * 0 / sub_90a4cb9b[arg2].field_2816 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 0:
                                                return (40 * 0 / sub_90a4cb9b[arg2].field_2816 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
                                        else:
                                            if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                                revert with 0, 'SafeMath mul failed'
                                            if 40 * 0 / sub_90a4cb9b[arg2].field_2816 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                                return (40 * 0 / sub_90a4cb9b[arg2].field_2816 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
    else:
        if stor8 * s / s != stor8:
            revert with 0, 'SafeMath mul failed'
        if 3 == sub_4160b61b[address(arg1)].field_512:
            if sub_90a4cb9b[arg2].field_2048:
                if not sub_90a4cb9b[arg2].field_0 / 1000:
                    if stor8:
                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                            if 0 / stor8 <= 0:
                                return (0 / stor8)
                        else:
                            if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                revert with 0, 'SafeMath mul failed'
                            if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                return (0 / stor8)
                else:
                    if 10 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 10:
                        revert with 0, 'SafeMath mul failed'
                    if not 10 * sub_90a4cb9b[arg2].field_0 / 1000:
                        if stor8:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                if 0 / stor8 <= 0:
                                    return (0 / stor8)
                            else:
                                if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    return (0 / stor8)
                    else:
                        if 10 * stor8 * s / sub_90a4cb9b[arg2].field_2048 * sub_90a4cb9b[arg2].field_0 / 1000 / 10 * sub_90a4cb9b[arg2].field_0 / 1000 != stor8 * s / sub_90a4cb9b[arg2].field_2048:
                            revert with 0, 'SafeMath mul failed'
                        if stor8:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                if 10 * stor8 * s / sub_90a4cb9b[arg2].field_2048 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 0:
                                    return (10 * stor8 * s / sub_90a4cb9b[arg2].field_2048 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
                            else:
                                if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                if 10 * stor8 * s / sub_90a4cb9b[arg2].field_2048 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    return (10 * stor8 * s / sub_90a4cb9b[arg2].field_2048 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
        else:
            if 4 == sub_4160b61b[address(arg1)].field_512:
                if sub_90a4cb9b[arg2].field_2304:
                    if not sub_90a4cb9b[arg2].field_0 / 1000:
                        if stor8:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                if 0 / stor8 <= 0:
                                    return (0 / stor8)
                            else:
                                if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    return (0 / stor8)
                    else:
                        if 20 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 20:
                            revert with 0, 'SafeMath mul failed'
                        if not 20 * sub_90a4cb9b[arg2].field_0 / 1000:
                            if stor8:
                                if not sub_90a4cb9b[arg2].field_0 / 1000:
                                    if 0 / stor8 <= 0:
                                        return (0 / stor8)
                                else:
                                    if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                        return (0 / stor8)
                        else:
                            if 20 * stor8 * s / sub_90a4cb9b[arg2].field_2304 * sub_90a4cb9b[arg2].field_0 / 1000 / 20 * sub_90a4cb9b[arg2].field_0 / 1000 != stor8 * s / sub_90a4cb9b[arg2].field_2304:
                                revert with 0, 'SafeMath mul failed'
                            if stor8:
                                if not sub_90a4cb9b[arg2].field_0 / 1000:
                                    if 20 * stor8 * s / sub_90a4cb9b[arg2].field_2304 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 0:
                                        return (20 * stor8 * s / sub_90a4cb9b[arg2].field_2304 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
                                else:
                                    if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    if 20 * stor8 * s / sub_90a4cb9b[arg2].field_2304 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                        return (20 * stor8 * s / sub_90a4cb9b[arg2].field_2304 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
            else:
                if 5 == sub_4160b61b[address(arg1)].field_512:
                    if sub_90a4cb9b[arg2].field_2560:
                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                            if stor8:
                                if not sub_90a4cb9b[arg2].field_0 / 1000:
                                    if 0 / stor8 <= 0:
                                        return (0 / stor8)
                                else:
                                    if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                        revert with 0, 'SafeMath mul failed'
                                    if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                        return (0 / stor8)
                        else:
                            if 30 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 30:
                                revert with 0, 'SafeMath mul failed'
                            if not 30 * sub_90a4cb9b[arg2].field_0 / 1000:
                                if stor8:
                                    if not sub_90a4cb9b[arg2].field_0 / 1000:
                                        if 0 / stor8 <= 0:
                                            return (0 / stor8)
                                    else:
                                        if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                            return (0 / stor8)
                            else:
                                if 30 * stor8 * s / sub_90a4cb9b[arg2].field_2560 * sub_90a4cb9b[arg2].field_0 / 1000 / 30 * sub_90a4cb9b[arg2].field_0 / 1000 != stor8 * s / sub_90a4cb9b[arg2].field_2560:
                                    revert with 0, 'SafeMath mul failed'
                                if stor8:
                                    if not sub_90a4cb9b[arg2].field_0 / 1000:
                                        if 30 * stor8 * s / sub_90a4cb9b[arg2].field_2560 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 0:
                                            return (30 * stor8 * s / sub_90a4cb9b[arg2].field_2560 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
                                    else:
                                        if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        if 30 * stor8 * s / sub_90a4cb9b[arg2].field_2560 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                            return (30 * stor8 * s / sub_90a4cb9b[arg2].field_2560 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
                else:
                    if sub_4160b61b[address(arg1)].field_512 != 6:
                        if stor8:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                if 0 / stor8 <= 0:
                                    return (0 / stor8)
                            else:
                                if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                    revert with 0, 'SafeMath mul failed'
                                if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    return (0 / stor8)
                    else:
                        if sub_90a4cb9b[arg2].field_2816:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                if stor8:
                                    if not sub_90a4cb9b[arg2].field_0 / 1000:
                                        if 0 / stor8 <= 0:
                                            return (0 / stor8)
                                    else:
                                        if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                            revert with 0, 'SafeMath mul failed'
                                        if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                            return (0 / stor8)
                            else:
                                if 40 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 40:
                                    revert with 0, 'SafeMath mul failed'
                                if not 40 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    if stor8:
                                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                                            if 0 / stor8 <= 0:
                                                return (0 / stor8)
                                        else:
                                            if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                                return (0 / stor8)
                                else:
                                    if 40 * stor8 * s / sub_90a4cb9b[arg2].field_2816 * sub_90a4cb9b[arg2].field_0 / 1000 / 40 * sub_90a4cb9b[arg2].field_0 / 1000 != stor8 * s / sub_90a4cb9b[arg2].field_2816:
                                        revert with 0, 'SafeMath mul failed'
                                    if stor8:
                                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                                            if 40 * stor8 * s / sub_90a4cb9b[arg2].field_2816 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 0:
                                                return (40 * stor8 * s / sub_90a4cb9b[arg2].field_2816 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
                                        else:
                                            if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                                revert with 0, 'SafeMath mul failed'
                                            if 40 * stor8 * s / sub_90a4cb9b[arg2].field_2816 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 <= 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                                return (40 * stor8 * s / sub_90a4cb9b[arg2].field_2816 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8)
    revert
}

function sub_621b3241(?) {
    if bool(stor1) != 1:
        revert with 0, 'its not ready yet.'
    require stor3
    require stor3 == msg.sender
    if uint8(sub_90a4cb9b[stor0].field_1792):
        revert with 0, 'Lucky Number has already issued.'
    mem[64] = (32 * arg1.length) + 128
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if idx >= 77:
            revert with 0, 'start/end must be less than 77'
        if idx < idx:
            revert with 0, 'end must be >= start'
        if not idx:
            if not idx:
                require mem[(32 * idx) + 128] < 10
                if mem[(32 * idx) + 128] <= 0:
                    if mem[(32 * idx) + 128] < 0:
                        revert with 0, 'SafeMath add failed'
                    if mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                        revert with 0, 'SafeMath add failed'
                else:
                    if mem[(32 * idx) + 128]:
                        if mem[(32 * idx) + 128] / mem[(32 * idx) + 128] != 1:
                            revert with 0, 'SafeMath mul failed'
                        if mem[(32 * idx) + 128] < 0:
                            revert with 0, 'SafeMath add failed'
                        if mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                            revert with 0, 'SafeMath add failed'
            else:
                s = 1
                t = 10
                while s < idx:
                    if not t:
                        s = s + 1
                        t = 0
                        continue 
                    if 10 * t / t != 10:
                        revert with 0, 'SafeMath mul failed'
                    s = s + 1
                    t = 10 * t
                    continue 
                require t
                require mem[(32 * idx) + 128] < 10 / t
                if mem[(32 * idx) + 128] <= 0:
                    require t
                    if not 0 / t:
                        if mem[(32 * idx) + 128] < 0:
                            revert with 0, 'SafeMath add failed'
                        if mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if t * 0 / t / 0 / t != t:
                            revert with 0, 'SafeMath mul failed'
                        if t * 0 / t > 0:
                            revert with 0, 'SafeMath sub failed'
                        if mem[(32 * idx) + 128] - (t * 0 / t) < -1 * t * 0 / t:
                            revert with 0, 'SafeMath add failed'
                else:
                    if not mem[(32 * idx) + 128]:
                        require t
                        if 0 / t:
                            if t * 0 / t / 0 / t != t:
                                revert with 0, 'SafeMath mul failed'
                            if t * 0 / t > 0:
                                revert with 0, 'SafeMath sub failed'
                            if -1 * t * 0 / t < -1 * t * 0 / t:
                                revert with 0, 'SafeMath add failed'
                    else:
                        if t * mem[(32 * idx) + 128] / mem[(32 * idx) + 128] != t:
                            revert with 0, 'SafeMath mul failed'
                        require t
                        if not 0 / t:
                            if t * mem[(32 * idx) + 128] < 0:
                                revert with 0, 'SafeMath add failed'
                            if t * mem[(32 * idx) + 128] < t * mem[(32 * idx) + 128]:
                                revert with 0, 'SafeMath add failed'
                        else:
                            if t * 0 / t / 0 / t != t:
                                revert with 0, 'SafeMath mul failed'
                            if t * 0 / t > 0:
                                revert with 0, 'SafeMath sub failed'
                            if (t * mem[(32 * idx) + 128]) - (t * 0 / t) < -1 * t * 0 / t:
                                revert with 0, 'SafeMath add failed'
        else:
            s = 1
            t = 10
            while s < idx:
                if not t:
                    s = s + 1
                    t = 0
                    continue 
                if 10 * t / t != 10:
                    revert with 0, 'SafeMath mul failed'
                s = s + 1
                t = 10 * t
                continue 
            if not t:
                if not idx:
                    require mem[(32 * idx) + 128] < 0
                    if mem[(32 * idx) + 128] > 0:
                        if mem[(32 * idx) + 128]:
                            if mem[(32 * idx) + 128] / mem[(32 * idx) + 128] != 1:
                                revert with 0, 'SafeMath mul failed'
                else:
                    s = 1
                    t = 10
                    while s < idx:
                        if not t:
                            s = s + 1
                            t = 0
                            continue 
                        if 10 * t / t != 10:
                            revert with 0, 'SafeMath mul failed'
                        s = s + 1
                        t = 10 * t
                        continue 
                    if t:
                        require mem[(32 * idx) + 128] < 0 / t
                        if mem[(32 * idx) + 128] > 0:
                            if mem[(32 * idx) + 128]:
                                if t * mem[(32 * idx) + 128] / mem[(32 * idx) + 128] != t:
                                    revert with 0, 'SafeMath mul failed'
                revert
            if 10 * t / t != 10:
                revert with 0, 'SafeMath mul failed'
            if not idx:
                require mem[(32 * idx) + 128] < 10 * t
                if mem[(32 * idx) + 128] <= 0:
                    require 10 * t
                    if not 0 / 10 * t:
                        if mem[(32 * idx) + 128] < 0:
                            revert with 0, 'SafeMath add failed'
                        if mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                            revert with 0, 'SafeMath add failed'
                    else:
                        if 10 * t * 0 / 10 * t / 0 / 10 * t != 10 * t:
                            revert with 0, 'SafeMath mul failed'
                        if mem[(32 * idx) + 128] < 0:
                            revert with 0, 'SafeMath add failed'
                        if (10 * t * 0 / 10 * t) + mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                            revert with 0, 'SafeMath add failed'
                else:
                    if not mem[(32 * idx) + 128]:
                        require 10 * t
                        if 0 / 10 * t:
                            if 10 * t * 0 / 10 * t / 0 / 10 * t != 10 * t:
                                revert with 0, 'SafeMath mul failed'
                            if 10 * t * 0 / 10 * t < 0:
                                revert with 0, 'SafeMath add failed'
                    else:
                        if mem[(32 * idx) + 128] / mem[(32 * idx) + 128] != 1:
                            revert with 0, 'SafeMath mul failed'
                        require 10 * t
                        if not 0 / 10 * t:
                            if mem[(32 * idx) + 128] < 0:
                                revert with 0, 'SafeMath add failed'
                            if mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                                revert with 0, 'SafeMath add failed'
                        else:
                            if 10 * t * 0 / 10 * t / 0 / 10 * t != 10 * t:
                                revert with 0, 'SafeMath mul failed'
                            if mem[(32 * idx) + 128] < 0:
                                revert with 0, 'SafeMath add failed'
                            if (10 * t * 0 / 10 * t) + mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                                revert with 0, 'SafeMath add failed'
            else:
                s = 1
                u = 10
                while s < idx:
                    if not u:
                        s = s + 1
                        u = 0
                        continue 
                    if 10 * u / u != 10:
                        revert with 0, 'SafeMath mul failed'
                    s = s + 1
                    u = 10 * u
                    continue 
                require u
                require mem[(32 * idx) + 128] < 10 * t / u
                if mem[(32 * idx) + 128] <= 0:
                    require 10 * t
                    if not 0 / 10 * t:
                        require u
                        if not 0 / u:
                            if mem[(32 * idx) + 128] < 0:
                                revert with 0, 'SafeMath add failed'
                            if mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                                revert with 0, 'SafeMath add failed'
                        else:
                            if u * 0 / u / 0 / u != u:
                                revert with 0, 'SafeMath mul failed'
                            if u * 0 / u > 0:
                                revert with 0, 'SafeMath sub failed'
                            if mem[(32 * idx) + 128] - (u * 0 / u) < -1 * u * 0 / u:
                                revert with 0, 'SafeMath add failed'
                    else:
                        if 10 * t * 0 / 10 * t / 0 / 10 * t != 10 * t:
                            revert with 0, 'SafeMath mul failed'
                        require u
                        if not 0 / u:
                            if mem[(32 * idx) + 128] < 0:
                                revert with 0, 'SafeMath add failed'
                            if (10 * t * 0 / 10 * t) + mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                                revert with 0, 'SafeMath add failed'
                        else:
                            if u * 0 / u / 0 / u != u:
                                revert with 0, 'SafeMath mul failed'
                            if u * 0 / u > 0:
                                revert with 0, 'SafeMath sub failed'
                            if mem[(32 * idx) + 128] - (u * 0 / u) < -1 * u * 0 / u:
                                revert with 0, 'SafeMath add failed'
                            if 10 * t * 0 / 10 * t < 0:
                                revert with 0, 'SafeMath add failed'
                else:
                    if not mem[(32 * idx) + 128]:
                        require 10 * t
                        if not 0 / 10 * t:
                            require u
                            if 0 / u:
                                if u * 0 / u / 0 / u != u:
                                    revert with 0, 'SafeMath mul failed'
                                if u * 0 / u > 0:
                                    revert with 0, 'SafeMath sub failed'
                                if -1 * u * 0 / u < -1 * u * 0 / u:
                                    revert with 0, 'SafeMath add failed'
                        else:
                            if 10 * t * 0 / 10 * t / 0 / 10 * t != 10 * t:
                                revert with 0, 'SafeMath mul failed'
                            require u
                            if not 0 / u:
                                if 10 * t * 0 / 10 * t < 0:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if u * 0 / u / 0 / u != u:
                                    revert with 0, 'SafeMath mul failed'
                                if u * 0 / u > 0:
                                    revert with 0, 'SafeMath sub failed'
                                if -1 * u * 0 / u < -1 * u * 0 / u:
                                    revert with 0, 'SafeMath add failed'
                                if (10 * t * 0 / 10 * t) - (u * 0 / u) < -1 * u * 0 / u:
                                    revert with 0, 'SafeMath add failed'
                    else:
                        if u * mem[(32 * idx) + 128] / mem[(32 * idx) + 128] != u:
                            revert with 0, 'SafeMath mul failed'
                        require 10 * t
                        if not 0 / 10 * t:
                            require u
                            if not 0 / u:
                                if u * mem[(32 * idx) + 128] < 0:
                                    revert with 0, 'SafeMath add failed'
                                if u * mem[(32 * idx) + 128] < u * mem[(32 * idx) + 128]:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if u * 0 / u / 0 / u != u:
                                    revert with 0, 'SafeMath mul failed'
                                if u * 0 / u > 0:
                                    revert with 0, 'SafeMath sub failed'
                                if (u * mem[(32 * idx) + 128]) - (u * 0 / u) < -1 * u * 0 / u:
                                    revert with 0, 'SafeMath add failed'
                        else:
                            if 10 * t * 0 / 10 * t / 0 / 10 * t != 10 * t:
                                revert with 0, 'SafeMath mul failed'
                            require u
                            if not 0 / u:
                                if u * mem[(32 * idx) + 128] < 0:
                                    revert with 0, 'SafeMath add failed'
                                if (10 * t * 0 / 10 * t) + (u * mem[(32 * idx) + 128]) < u * mem[(32 * idx) + 128]:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if u * 0 / u / 0 / u != u:
                                    revert with 0, 'SafeMath mul failed'
                                if u * 0 / u > 0:
                                    revert with 0, 'SafeMath sub failed'
                                if (u * mem[(32 * idx) + 128]) - (u * 0 / u) < -1 * u * 0 / u:
                                    revert with 0, 'SafeMath add failed'
                                if 10 * t * 0 / 10 * t < 0:
                                    revert with 0, 'SafeMath add failed'
        idx = idx + 1
        continue 
    sub_90a4cb9b[stor0].field_256 = 0
    s = 0
    idx = 0
    while idx < sub_da4f082e.length:
        mem[0] = sub_c86657d8
        mem[32] = 10
        s = 0
        t = 0
        while s < 5:
            if s >= 77:
                revert with 0, 'start/end must be less than 77'
            if s < s:
                revert with 0, 'end must be >= start'
            if not s:
                if not s:
                    if not sub_90a4cb9b[stor0].field_256 / 10:
                        if not sub_90a4cb9b[stor0].field_256:
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if sub_da4f082e[idx]:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx]:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            require v
                                            if 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if v * sub_da4f082e[idx] / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if -10 * sub_da4f082e[idx] / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if (v * sub_da4f082e[idx] / v) - (10 * sub_da4f082e[idx] / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                v = 10
                                while u < s:
                                    if not v:
                                        u = u + 1
                                        v = 0
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    v = 10 * v
                                    continue 
                                if not v:
                                    require s
                                    require var90001 < s
                                    if not var90002:
                                        var90001 = var90001 + 1
                                        var90002 = 0
                                        continue 
                                    if 10 * var90002 / var90002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var90001 = var90001 + 1
                                    var90002 = 10 * var90002
                                    continue 
                                if 10 * v / v != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        if sub_da4f082e[idx]:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx]:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * v * sub_da4f082e[idx] / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * v * sub_da4f082e[idx] / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * v * sub_da4f082e[idx] / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * v * sub_da4f082e[idx] / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                        else:
                            if sub_90a4cb9b[stor0].field_256 / sub_90a4cb9b[stor0].field_256 != 1:
                                revert with 0, 'SafeMath mul failed'
                            if 0 > sub_90a4cb9b[stor0].field_256:
                                revert with 0, 'SafeMath sub failed'
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if sub_90a4cb9b[stor0].field_256 != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            require v
                                            if 0 / v != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if v * sub_da4f082e[idx] / v / v != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if -10 * sub_da4f082e[idx] / 10 / v != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if (v * sub_da4f082e[idx] / v) - (10 * sub_da4f082e[idx] / 10) / v != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                v = 10
                                while u < s:
                                    if not v:
                                        u = u + 1
                                        v = 0
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    v = 10 * v
                                    continue 
                                if not v:
                                    require s
                                    require var91001 < s
                                    if not var91002:
                                        var91001 = var91001 + 1
                                        var91002 = 0
                                        continue 
                                    if 10 * var91002 / var91002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var91001 = var91001 + 1
                                    var91002 = 10 * var91002
                                    continue 
                                if 10 * v / v != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        if not sub_da4f082e[idx]:
                                            if sub_90a4cb9b[stor0].field_256 != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * v * sub_da4f082e[idx] / 10 * v != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * v * sub_da4f082e[idx] / 10 * v) != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * v * sub_da4f082e[idx] / 10 * v / w != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * v * sub_da4f082e[idx] / 10 * v) / w != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                    else:
                        if 10 * sub_90a4cb9b[stor0].field_256 / 10 / sub_90a4cb9b[stor0].field_256 / 10 != 10:
                            revert with 0, 'SafeMath mul failed'
                        if not sub_90a4cb9b[stor0].field_256:
                            if 10 * sub_90a4cb9b[stor0].field_256 / 10 > 0:
                                revert with 0, 'SafeMath sub failed'
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if -10 * sub_90a4cb9b[stor0].field_256 / 10 != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            require v
                                            if 0 / v != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if v * sub_da4f082e[idx] / v / v != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if -10 * sub_da4f082e[idx] / 10 / v != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if (v * sub_da4f082e[idx] / v) - (10 * sub_da4f082e[idx] / 10) / v != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                v = 10
                                while u < s:
                                    if not v:
                                        u = u + 1
                                        v = 0
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    v = 10 * v
                                    continue 
                                if not v:
                                    require s
                                    require var91001 < s
                                    if not var91002:
                                        var91001 = var91001 + 1
                                        var91002 = 0
                                        continue 
                                    if 10 * var91002 / var91002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var91001 = var91001 + 1
                                    var91002 = 10 * var91002
                                    continue 
                                if 10 * v / v != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        if not sub_da4f082e[idx]:
                                            if -10 * sub_90a4cb9b[stor0].field_256 / 10 != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * v * sub_da4f082e[idx] / 10 * v != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * v * sub_da4f082e[idx] / 10 * v) != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * v * sub_da4f082e[idx] / 10 * v / w != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * v * sub_da4f082e[idx] / 10 * v) / w != -10 * sub_90a4cb9b[stor0].field_256 / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                        else:
                            if sub_90a4cb9b[stor0].field_256 / sub_90a4cb9b[stor0].field_256 != 1:
                                revert with 0, 'SafeMath mul failed'
                            if 10 * sub_90a4cb9b[stor0].field_256 / 10 > sub_90a4cb9b[stor0].field_256:
                                revert with 0, 'SafeMath sub failed'
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10) != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            require v
                                            if 0 / v != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if v * sub_da4f082e[idx] / v / v != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if -10 * sub_da4f082e[idx] / 10 / v != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if (v * sub_da4f082e[idx] / v) - (10 * sub_da4f082e[idx] / 10) / v != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                v = 10
                                while u < s:
                                    if not v:
                                        u = u + 1
                                        v = 0
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    v = 10 * v
                                    continue 
                                if not v:
                                    require s
                                    require var92001 < s
                                    if not var92002:
                                        var92001 = var92001 + 1
                                        var92002 = 0
                                        continue 
                                    if 10 * var92002 / var92002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var92001 = var92001 + 1
                                    var92002 = 10 * var92002
                                    continue 
                                if 10 * v / v != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        if not sub_da4f082e[idx]:
                                            if sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10) != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * v * sub_da4f082e[idx] / 10 * v != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * v * sub_da4f082e[idx] / 10 * v) != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * v * sub_da4f082e[idx] / 10 * v / w != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * v * sub_da4f082e[idx] / 10 * v) / w != sub_90a4cb9b[stor0].field_256 - (10 * sub_90a4cb9b[stor0].field_256 / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                else:
                    u = 1
                    v = 10
                    while u < s:
                        if not v:
                            u = u + 1
                            v = 0
                            continue 
                        if 10 * v / v != 10:
                            revert with 0, 'SafeMath mul failed'
                        u = u + 1
                        v = 10 * v
                        continue 
                    if not sub_90a4cb9b[stor0].field_256 / 10:
                        require v
                        if not sub_90a4cb9b[stor0].field_256 / v:
                            require v
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if 0 / v != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * sub_da4f082e[idx] / 10 / w != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * sub_da4f082e[idx] / 10) / w != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                w = 10
                                while u < s:
                                    if not w:
                                        u = u + 1
                                        w = 0
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    w = 10 * w
                                    continue 
                                if not w:
                                    require s
                                    require var93001 < s
                                    if not var93002:
                                        var93001 = var93001 + 1
                                        var93002 = 0
                                        continue 
                                    if 10 * var93002 / var93002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var93001 = var93001 + 1
                                    var93002 = 10 * var93002
                                    continue 
                                if 10 * w / w != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        if not sub_da4f082e[idx]:
                                            if 0 / v != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * w * sub_da4f082e[idx] / 10 * w != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * w * sub_da4f082e[idx] / 10 * w) != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            require x
                                            if 0 / x != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if x * sub_da4f082e[idx] / x / x != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if -10 * w * sub_da4f082e[idx] / 10 * w / x != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if (x * sub_da4f082e[idx] / x) - (10 * w * sub_da4f082e[idx] / 10 * w) / x != 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                        else:
                            if v * sub_90a4cb9b[stor0].field_256 / v / sub_90a4cb9b[stor0].field_256 / v != v:
                                revert with 0, 'SafeMath mul failed'
                            if 0 > v * sub_90a4cb9b[stor0].field_256 / v:
                                revert with 0, 'SafeMath sub failed'
                            require v
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if v * sub_90a4cb9b[stor0].field_256 / v / v != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * sub_da4f082e[idx] / 10 / w != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * sub_da4f082e[idx] / 10) / w != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                w = 10
                                while u < s:
                                    if not w:
                                        u = u + 1
                                        w = 0
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    w = 10 * w
                                    continue 
                                if not w:
                                    require s
                                    require var94001 < s
                                    if not var94002:
                                        var94001 = var94001 + 1
                                        var94002 = 0
                                        continue 
                                    if 10 * var94002 / var94002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var94001 = var94001 + 1
                                    var94002 = 10 * var94002
                                    continue 
                                if 10 * w / w != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        if not sub_da4f082e[idx]:
                                            if v * sub_90a4cb9b[stor0].field_256 / v / v != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * w * sub_da4f082e[idx] / 10 * w != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * w * sub_da4f082e[idx] / 10 * w) != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            require x
                                            if 0 / x != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if x * sub_da4f082e[idx] / x / x != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if -10 * w * sub_da4f082e[idx] / 10 * w / x != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if (x * sub_da4f082e[idx] / x) - (10 * w * sub_da4f082e[idx] / 10 * w) / x != v * sub_90a4cb9b[stor0].field_256 / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                    else:
                        if 10 * sub_90a4cb9b[stor0].field_256 / 10 / sub_90a4cb9b[stor0].field_256 / 10 != 10:
                            revert with 0, 'SafeMath mul failed'
                        require v
                        if not sub_90a4cb9b[stor0].field_256 / v:
                            if 10 * sub_90a4cb9b[stor0].field_256 / 10 > 0:
                                revert with 0, 'SafeMath sub failed'
                            require v
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if -10 * sub_90a4cb9b[stor0].field_256 / 10 / v != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * sub_da4f082e[idx] / 10 / w != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * sub_da4f082e[idx] / 10) / w != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                w = 10
                                while u < s:
                                    if not w:
                                        u = u + 1
                                        w = 0
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    w = 10 * w
                                    continue 
                                if not w:
                                    require s
                                    require var94001 < s
                                    if not var94002:
                                        var94001 = var94001 + 1
                                        var94002 = 0
                                        continue 
                                    if 10 * var94002 / var94002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var94001 = var94001 + 1
                                    var94002 = 10 * var94002
                                    continue 
                                if 10 * w / w != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        if not sub_da4f082e[idx]:
                                            if -10 * sub_90a4cb9b[stor0].field_256 / 10 / v != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * w * sub_da4f082e[idx] / 10 * w != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * w * sub_da4f082e[idx] / 10 * w) != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            require x
                                            if 0 / x != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if x * sub_da4f082e[idx] / x / x != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if -10 * w * sub_da4f082e[idx] / 10 * w / x != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if (x * sub_da4f082e[idx] / x) - (10 * w * sub_da4f082e[idx] / 10 * w) / x != -10 * sub_90a4cb9b[stor0].field_256 / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                        else:
                            if v * sub_90a4cb9b[stor0].field_256 / v / sub_90a4cb9b[stor0].field_256 / v != v:
                                revert with 0, 'SafeMath mul failed'
                            if 10 * sub_90a4cb9b[stor0].field_256 / 10 > v * sub_90a4cb9b[stor0].field_256 / v:
                                revert with 0, 'SafeMath sub failed'
                            require v
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * sub_da4f082e[idx] / 10 / w != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * sub_da4f082e[idx] / 10) / w != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                w = 10
                                while u < s:
                                    if not w:
                                        u = u + 1
                                        w = 0
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    w = 10 * w
                                    continue 
                                if not w:
                                    require s
                                    require var95001 < s
                                    if not var95002:
                                        var95001 = var95001 + 1
                                        var95002 = 0
                                        continue 
                                    if 10 * var95002 / var95002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var95001 = var95001 + 1
                                    var95002 = 10 * var95002
                                    continue 
                                if 10 * w / w != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        if not sub_da4f082e[idx]:
                                            if (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * w * sub_da4f082e[idx] / 10 * w != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * w * sub_da4f082e[idx] / 10 * w) != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            require x
                                            if 0 / x != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if x * sub_da4f082e[idx] / x / x != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if -10 * w * sub_da4f082e[idx] / 10 * w / x != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if (x * sub_da4f082e[idx] / x) - (10 * w * sub_da4f082e[idx] / 10 * w) / x != (v * sub_90a4cb9b[stor0].field_256 / v) - (10 * sub_90a4cb9b[stor0].field_256 / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
            else:
                u = 1
                v = 10
                while u < s:
                    if not v:
                        u = u + 1
                        v = 0
                        continue 
                    if 10 * v / v != 10:
                        revert with 0, 'SafeMath mul failed'
                    u = u + 1
                    v = 10 * v
                    continue 
                if not v:
                    require s
                    require var51001 < s
                    if not var51002:
                        var51001 = var51001 + 1
                        var51002 = 0
                        continue 
                    if 10 * var51002 / var51002 != 10:
                        revert with 0, 'SafeMath mul failed'
                    var51001 = var51001 + 1
                    var51002 = 10 * var51002
                    continue 
                if 10 * v / v != 10:
                    revert with 0, 'SafeMath mul failed'
                if not s:
                    require 10 * v
                    if not sub_90a4cb9b[stor0].field_256 / 10 * v:
                        if not sub_90a4cb9b[stor0].field_256:
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if sub_da4f082e[idx]:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx]:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10):
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            require v
                                            if 0 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if v * sub_da4f082e[idx] / v / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if -10 * sub_da4f082e[idx] / 10 / v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if (v * sub_da4f082e[idx] / v) - (10 * sub_da4f082e[idx] / 10) / v:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                v = 10
                                while u < s:
                                    if not v:
                                        u = u + 1
                                        v = 0
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    v = 10 * v
                                    continue 
                                if not v:
                                    require s
                                    require var93001 < s
                                    if not var93002:
                                        var93001 = var93001 + 1
                                        var93002 = 0
                                        continue 
                                    if 10 * var93002 / var93002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var93001 = var93001 + 1
                                    var93002 = 10 * var93002
                                    continue 
                                if 10 * v / v != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        if sub_da4f082e[idx]:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx]:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * v * sub_da4f082e[idx] / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * v * sub_da4f082e[idx] / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * v * sub_da4f082e[idx] / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * v * sub_da4f082e[idx] / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                        else:
                            if sub_90a4cb9b[stor0].field_256 / sub_90a4cb9b[stor0].field_256 != 1:
                                revert with 0, 'SafeMath mul failed'
                            if 0 > sub_90a4cb9b[stor0].field_256:
                                revert with 0, 'SafeMath sub failed'
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if sub_90a4cb9b[stor0].field_256 != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            require v
                                            if 0 / v != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if v * sub_da4f082e[idx] / v / v != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if -10 * sub_da4f082e[idx] / 10 / v != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if (v * sub_da4f082e[idx] / v) - (10 * sub_da4f082e[idx] / 10) / v != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                v = 10
                                while u < s:
                                    if not v:
                                        u = u + 1
                                        v = 0
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    v = 10 * v
                                    continue 
                                if not v:
                                    require s
                                    require var94001 < s
                                    if not var94002:
                                        var94001 = var94001 + 1
                                        var94002 = 0
                                        continue 
                                    if 10 * var94002 / var94002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var94001 = var94001 + 1
                                    var94002 = 10 * var94002
                                    continue 
                                if 10 * v / v != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        if not sub_da4f082e[idx]:
                                            if sub_90a4cb9b[stor0].field_256 != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * v * sub_da4f082e[idx] / 10 * v != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * v * sub_da4f082e[idx] / 10 * v) != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * v * sub_da4f082e[idx] / 10 * v / w != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * v * sub_da4f082e[idx] / 10 * v) / w != sub_90a4cb9b[stor0].field_256:
                                                s = s + 1
                                                t = t
                                                continue 
                    else:
                        if 10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / sub_90a4cb9b[stor0].field_256 / 10 * v != 10 * v:
                            revert with 0, 'SafeMath mul failed'
                        if not sub_90a4cb9b[stor0].field_256:
                            if 10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v > 0:
                                revert with 0, 'SafeMath sub failed'
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * sub_da4f082e[idx] / 10 / w != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * sub_da4f082e[idx] / 10) / w != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                w = 10
                                while u < s:
                                    if not w:
                                        u = u + 1
                                        w = 0
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    w = 10 * w
                                    continue 
                                if not w:
                                    require s
                                    require var94001 < s
                                    if not var94002:
                                        var94001 = var94001 + 1
                                        var94002 = 0
                                        continue 
                                    if 10 * var94002 / var94002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var94001 = var94001 + 1
                                    var94002 = 10 * var94002
                                    continue 
                                if 10 * w / w != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        if not sub_da4f082e[idx]:
                                            if -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * w * sub_da4f082e[idx] / 10 * w != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * w * sub_da4f082e[idx] / 10 * w) != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            require x
                                            if 0 / x != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if x * sub_da4f082e[idx] / x / x != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if -10 * w * sub_da4f082e[idx] / 10 * w / x != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if (x * sub_da4f082e[idx] / x) - (10 * w * sub_da4f082e[idx] / 10 * w) / x != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v:
                                                s = s + 1
                                                t = t
                                                continue 
                        else:
                            if sub_90a4cb9b[stor0].field_256 / sub_90a4cb9b[stor0].field_256 != 1:
                                revert with 0, 'SafeMath mul failed'
                            if 10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v > sub_90a4cb9b[stor0].field_256:
                                revert with 0, 'SafeMath sub failed'
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            require w
                                            if 0 / w != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if w * sub_da4f082e[idx] / w / w != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require w
                                        if not sub_da4f082e[idx] / w:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if -10 * sub_da4f082e[idx] / 10 / w != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if w * sub_da4f082e[idx] / w / sub_da4f082e[idx] / w != w:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > w * sub_da4f082e[idx] / w:
                                                revert with 0, 'SafeMath sub failed'
                                            require w
                                            if (w * sub_da4f082e[idx] / w) - (10 * sub_da4f082e[idx] / 10) / w != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                w = 10
                                while u < s:
                                    if not w:
                                        u = u + 1
                                        w = 0
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    w = 10 * w
                                    continue 
                                if not w:
                                    require s
                                    require var95001 < s
                                    if not var95002:
                                        var95001 = var95001 + 1
                                        var95002 = 0
                                        continue 
                                    if 10 * var95002 / var95002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var95001 = var95001 + 1
                                    var95002 = 10 * var95002
                                    continue 
                                if 10 * w / w != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        if not sub_da4f082e[idx]:
                                            if sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * w * sub_da4f082e[idx] / 10 * w != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * w * sub_da4f082e[idx] / 10 * w) != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    require 10 * w
                                    if not sub_da4f082e[idx] / 10 * w:
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            require x
                                            if 0 / x != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if x * sub_da4f082e[idx] / x / x != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * w * sub_da4f082e[idx] / 10 * w / sub_da4f082e[idx] / 10 * w != 10 * w:
                                            revert with 0, 'SafeMath mul failed'
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if -10 * w * sub_da4f082e[idx] / 10 * w / x != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * w * sub_da4f082e[idx] / 10 * w > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if (x * sub_da4f082e[idx] / x) - (10 * w * sub_da4f082e[idx] / 10 * w) / x != sub_90a4cb9b[stor0].field_256 - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v):
                                                s = s + 1
                                                t = t
                                                continue 
                else:
                    u = 1
                    w = 10
                    while u < s:
                        if not w:
                            u = u + 1
                            w = 0
                            continue 
                        if 10 * w / w != 10:
                            revert with 0, 'SafeMath mul failed'
                        u = u + 1
                        w = 10 * w
                        continue 
                    require 10 * v
                    if not sub_90a4cb9b[stor0].field_256 / 10 * v:
                        require w
                        if not sub_90a4cb9b[stor0].field_256 / w:
                            require w
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if 0 / w != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            require v
                                            if 0 / v != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if v * sub_da4f082e[idx] / v / v != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if -10 * sub_da4f082e[idx] / 10 / v != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if (v * sub_da4f082e[idx] / v) - (10 * sub_da4f082e[idx] / 10) / v != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                v = 10
                                while u < s:
                                    if not v:
                                        u = u + 1
                                        v = 0
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    v = 10 * v
                                    continue 
                                if not v:
                                    require s
                                    require var96001 < s
                                    if not var96002:
                                        var96001 = var96001 + 1
                                        var96002 = 0
                                        continue 
                                    if 10 * var96002 / var96002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var96001 = var96001 + 1
                                    var96002 = 10 * var96002
                                    continue 
                                if 10 * v / v != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        if not sub_da4f082e[idx]:
                                            if 0 / w != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * v * sub_da4f082e[idx] / 10 * v != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * v * sub_da4f082e[idx] / 10 * v) != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            require x
                                            if 0 / x != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if x * sub_da4f082e[idx] / x / x != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if -10 * v * sub_da4f082e[idx] / 10 * v / x != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if (x * sub_da4f082e[idx] / x) - (10 * v * sub_da4f082e[idx] / 10 * v) / x != 0 / w:
                                                s = s + 1
                                                t = t
                                                continue 
                        else:
                            if w * sub_90a4cb9b[stor0].field_256 / w / sub_90a4cb9b[stor0].field_256 / w != w:
                                revert with 0, 'SafeMath mul failed'
                            if 0 > w * sub_90a4cb9b[stor0].field_256 / w:
                                revert with 0, 'SafeMath sub failed'
                            require w
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if w * sub_90a4cb9b[stor0].field_256 / w / w != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            require v
                                            if 0 / v != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if v * sub_da4f082e[idx] / v / v != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require v
                                        if not sub_da4f082e[idx] / v:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if -10 * sub_da4f082e[idx] / 10 / v != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if v * sub_da4f082e[idx] / v / sub_da4f082e[idx] / v != v:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > v * sub_da4f082e[idx] / v:
                                                revert with 0, 'SafeMath sub failed'
                                            require v
                                            if (v * sub_da4f082e[idx] / v) - (10 * sub_da4f082e[idx] / 10) / v != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                v = 10
                                while u < s:
                                    if not v:
                                        u = u + 1
                                        v = 0
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    v = 10 * v
                                    continue 
                                if not v:
                                    require s
                                    require var97001 < s
                                    if not var97002:
                                        var97001 = var97001 + 1
                                        var97002 = 0
                                        continue 
                                    if 10 * var97002 / var97002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var97001 = var97001 + 1
                                    var97002 = 10 * var97002
                                    continue 
                                if 10 * v / v != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        if not sub_da4f082e[idx]:
                                            if w * sub_90a4cb9b[stor0].field_256 / w / w != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * v * sub_da4f082e[idx] / 10 * v != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * v * sub_da4f082e[idx] / 10 * v) != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    require 10 * v
                                    if not sub_da4f082e[idx] / 10 * v:
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            require x
                                            if 0 / x != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if x * sub_da4f082e[idx] / x / x != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * v * sub_da4f082e[idx] / 10 * v / sub_da4f082e[idx] / 10 * v != 10 * v:
                                            revert with 0, 'SafeMath mul failed'
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if -10 * v * sub_da4f082e[idx] / 10 * v / x != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * v * sub_da4f082e[idx] / 10 * v > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if (x * sub_da4f082e[idx] / x) - (10 * v * sub_da4f082e[idx] / 10 * v) / x != w * sub_90a4cb9b[stor0].field_256 / w / w:
                                                s = s + 1
                                                t = t
                                                continue 
                    else:
                        if 10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / sub_90a4cb9b[stor0].field_256 / 10 * v != 10 * v:
                            revert with 0, 'SafeMath mul failed'
                        require w
                        if not sub_90a4cb9b[stor0].field_256 / w:
                            if 10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v > 0:
                                revert with 0, 'SafeMath sub failed'
                            require w
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            require x
                                            if 0 / x != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if x * sub_da4f082e[idx] / x / x != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if -10 * sub_da4f082e[idx] / 10 / x != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if (x * sub_da4f082e[idx] / x) - (10 * sub_da4f082e[idx] / 10) / x != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                x = 10
                                while u < s:
                                    if not x:
                                        u = u + 1
                                        x = 0
                                        continue 
                                    if 10 * x / x != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    x = 10 * x
                                    continue 
                                if not x:
                                    require s
                                    require var97001 < s
                                    if not var97002:
                                        var97001 = var97001 + 1
                                        var97002 = 0
                                        continue 
                                    if 10 * var97002 / var97002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var97001 = var97001 + 1
                                    var97002 = 10 * var97002
                                    continue 
                                if 10 * x / x != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * x
                                    if not sub_da4f082e[idx] / 10 * x:
                                        if not sub_da4f082e[idx]:
                                            if -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * x * sub_da4f082e[idx] / 10 * x / sub_da4f082e[idx] / 10 * x != 10 * x:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * x * sub_da4f082e[idx] / 10 * x > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * x * sub_da4f082e[idx] / 10 * x != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * x * sub_da4f082e[idx] / 10 * x > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * x * sub_da4f082e[idx] / 10 * x) != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    y = 10
                                    while u < s:
                                        if not y:
                                            u = u + 1
                                            y = 0
                                            continue 
                                        if 10 * y / y != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        y = 10 * y
                                        continue 
                                    require 10 * x
                                    if not sub_da4f082e[idx] / 10 * x:
                                        require y
                                        if not sub_da4f082e[idx] / y:
                                            require y
                                            if 0 / y != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if y * sub_da4f082e[idx] / y / sub_da4f082e[idx] / y != y:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > y * sub_da4f082e[idx] / y:
                                                revert with 0, 'SafeMath sub failed'
                                            require y
                                            if y * sub_da4f082e[idx] / y / y != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * x * sub_da4f082e[idx] / 10 * x / sub_da4f082e[idx] / 10 * x != 10 * x:
                                            revert with 0, 'SafeMath mul failed'
                                        require y
                                        if not sub_da4f082e[idx] / y:
                                            if 10 * x * sub_da4f082e[idx] / 10 * x > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require y
                                            if -10 * x * sub_da4f082e[idx] / 10 * x / y != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if y * sub_da4f082e[idx] / y / sub_da4f082e[idx] / y != y:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * x * sub_da4f082e[idx] / 10 * x > y * sub_da4f082e[idx] / y:
                                                revert with 0, 'SafeMath sub failed'
                                            require y
                                            if (y * sub_da4f082e[idx] / y) - (10 * x * sub_da4f082e[idx] / 10 * x) / y != -10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v / w:
                                                s = s + 1
                                                t = t
                                                continue 
                        else:
                            if w * sub_90a4cb9b[stor0].field_256 / w / sub_90a4cb9b[stor0].field_256 / w != w:
                                revert with 0, 'SafeMath mul failed'
                            if 10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v > w * sub_90a4cb9b[stor0].field_256 / w:
                                revert with 0, 'SafeMath sub failed'
                            require w
                            if s >= 77:
                                revert with 0, 'start/end must be less than 77'
                            if s < s:
                                revert with 0, 'end must be >= start'
                            if not s:
                                if not s:
                                    if not sub_da4f082e[idx] / 10:
                                        if not sub_da4f082e[idx]:
                                            if (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * sub_da4f082e[idx] / 10 != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * sub_da4f082e[idx] / 10) != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    if not sub_da4f082e[idx] / 10:
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            require x
                                            if 0 / x != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if x * sub_da4f082e[idx] / x / x != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * sub_da4f082e[idx] / 10 / sub_da4f082e[idx] / 10 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        require x
                                        if not sub_da4f082e[idx] / x:
                                            if 10 * sub_da4f082e[idx] / 10 > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if -10 * sub_da4f082e[idx] / 10 / x != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if x * sub_da4f082e[idx] / x / sub_da4f082e[idx] / x != x:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * sub_da4f082e[idx] / 10 > x * sub_da4f082e[idx] / x:
                                                revert with 0, 'SafeMath sub failed'
                                            require x
                                            if (x * sub_da4f082e[idx] / x) - (10 * sub_da4f082e[idx] / 10) / x != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                            else:
                                u = 1
                                x = 10
                                while u < s:
                                    if not x:
                                        u = u + 1
                                        x = 0
                                        continue 
                                    if 10 * x / x != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    u = u + 1
                                    x = 10 * x
                                    continue 
                                if not x:
                                    require s
                                    require var98001 < s
                                    if not var98002:
                                        var98001 = var98001 + 1
                                        var98002 = 0
                                        continue 
                                    if 10 * var98002 / var98002 != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    var98001 = var98001 + 1
                                    var98002 = 10 * var98002
                                    continue 
                                if 10 * x / x != 10:
                                    revert with 0, 'SafeMath mul failed'
                                if not s:
                                    require 10 * x
                                    if not sub_da4f082e[idx] / 10 * x:
                                        if not sub_da4f082e[idx]:
                                            if (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w != 0:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * x * sub_da4f082e[idx] / 10 * x / sub_da4f082e[idx] / 10 * x != 10 * x:
                                            revert with 0, 'SafeMath mul failed'
                                        if not sub_da4f082e[idx]:
                                            if 10 * x * sub_da4f082e[idx] / 10 * x > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            if -10 * x * sub_da4f082e[idx] / 10 * x != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if sub_da4f082e[idx] / sub_da4f082e[idx] != 1:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * x * sub_da4f082e[idx] / 10 * x > sub_da4f082e[idx]:
                                                revert with 0, 'SafeMath sub failed'
                                            if sub_da4f082e[idx] - (10 * x * sub_da4f082e[idx] / 10 * x) != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                else:
                                    u = 1
                                    y = 10
                                    while u < s:
                                        if not y:
                                            u = u + 1
                                            y = 0
                                            continue 
                                        if 10 * y / y != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        u = u + 1
                                        y = 10 * y
                                        continue 
                                    require 10 * x
                                    if not sub_da4f082e[idx] / 10 * x:
                                        require y
                                        if not sub_da4f082e[idx] / y:
                                            require y
                                            if 0 / y != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if y * sub_da4f082e[idx] / y / sub_da4f082e[idx] / y != y:
                                                revert with 0, 'SafeMath mul failed'
                                            if 0 > y * sub_da4f082e[idx] / y:
                                                revert with 0, 'SafeMath sub failed'
                                            require y
                                            if y * sub_da4f082e[idx] / y / y != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                    else:
                                        if 10 * x * sub_da4f082e[idx] / 10 * x / sub_da4f082e[idx] / 10 * x != 10 * x:
                                            revert with 0, 'SafeMath mul failed'
                                        require y
                                        if not sub_da4f082e[idx] / y:
                                            if 10 * x * sub_da4f082e[idx] / 10 * x > 0:
                                                revert with 0, 'SafeMath sub failed'
                                            require y
                                            if -10 * x * sub_da4f082e[idx] / 10 * x / y != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
                                        else:
                                            if y * sub_da4f082e[idx] / y / sub_da4f082e[idx] / y != y:
                                                revert with 0, 'SafeMath mul failed'
                                            if 10 * x * sub_da4f082e[idx] / 10 * x > y * sub_da4f082e[idx] / y:
                                                revert with 0, 'SafeMath sub failed'
                                            require y
                                            if (y * sub_da4f082e[idx] / y) - (10 * x * sub_da4f082e[idx] / 10 * x) / y != (w * sub_90a4cb9b[stor0].field_256 / w) - (10 * v * sub_90a4cb9b[stor0].field_256 / 10 * v) / w:
                                                s = s + 1
                                                t = t
                                                continue 
            s = s + 1
            t = t + 1
            continue 
        if t > 0:
            require idx < sub_da4f082e.length
            if uint8(sub_90a4cb9b[stor0].field_1792):
                revert with 0, 'Lucky Number has already issued.'
            mem[0] = sub_da4f082e[idx]
            mem[32] = 13
            s = 0
            while s < sub_e82b9fd7[stor14[idx]].field_0:
                if 1 == t:
                    require s < sub_e82b9fd7[stor14[idx]].field_0
                    mem[0] = sub_c86657d8
                    if sub_e82b9fd7[stor14[idx]][s].field_256 + sub_90a4cb9b[stor0].field_512 < sub_90a4cb9b[stor0].field_512:
                        revert with 0, 'SafeMath add failed'
                    sub_90a4cb9b[stor0].field_512 += sub_e82b9fd7[stor14[idx]][s].field_256
                else:
                    if 2 == t:
                        require s < sub_e82b9fd7[stor14[idx]].field_0
                        mem[0] = sub_c86657d8
                        if sub_e82b9fd7[stor14[idx]][s].field_256 + sub_90a4cb9b[stor0].field_768 < sub_90a4cb9b[stor0].field_768:
                            revert with 0, 'SafeMath add failed'
                        sub_90a4cb9b[stor0].field_768 += sub_e82b9fd7[stor14[idx]][s].field_256
                    else:
                        if 3 == t:
                            require s < sub_e82b9fd7[stor14[idx]].field_0
                            mem[0] = sub_c86657d8
                            if sub_e82b9fd7[stor14[idx]][s].field_256 + sub_90a4cb9b[stor0].field_1024 < sub_90a4cb9b[stor0].field_1024:
                                revert with 0, 'SafeMath add failed'
                            sub_90a4cb9b[stor0].field_1024 += sub_e82b9fd7[stor14[idx]][s].field_256
                        else:
                            if 4 == t:
                                require s < sub_e82b9fd7[stor14[idx]].field_0
                                mem[0] = sub_c86657d8
                                if sub_e82b9fd7[stor14[idx]][s].field_256 + sub_90a4cb9b[stor0].field_1280 < sub_90a4cb9b[stor0].field_1280:
                                    revert with 0, 'SafeMath add failed'
                                sub_90a4cb9b[stor0].field_1280 += sub_e82b9fd7[stor14[idx]][s].field_256
                            else:
                                if 5 == t:
                                    require s < sub_e82b9fd7[stor14[idx]].field_0
                                    mem[0] = sub_c86657d8
                                    if sub_e82b9fd7[stor14[idx]][s].field_256 + sub_90a4cb9b[stor0].field_1536 < sub_90a4cb9b[stor0].field_1536:
                                        revert with 0, 'SafeMath add failed'
                                    sub_90a4cb9b[stor0].field_1536 += sub_e82b9fd7[stor14[idx]][s].field_256
                require s < sub_e82b9fd7[stor14[idx]].field_0
                require s < sub_e82b9fd7[stor14[idx]].field_0
                require s < sub_e82b9fd7[stor14[idx]].field_0
                mem[32] = 13
                mem[mem[64]] = t
                mem[mem[64] + 32] = sub_e82b9fd7[stor14[idx]][s].field_256
                mem[mem[64] + 64] = sub_e82b9fd7[stor14[idx]][s].field_768
                mem[mem[64] + 96] = sub_da4f082e[idx]
                mem[mem[64] + 128] = sub_e82b9fd7[stor14[idx]].field_0
                emit 0xaaaf9e0e: t, sub_e82b9fd7[stor14[idx]][s].field_256, sub_e82b9fd7[stor14[idx]][s].field_768, sub_da4f082e[idx], sub_e82b9fd7[stor14[idx]].field_0, address(sub_e82b9fd7[stor14[idx]][s].field_0)
                mem[0] = sub_da4f082e[idx]
                mem[32] = 13
                s = s + 1
                continue 
        s = t
        idx = idx + 1
        continue 
    uint8(sub_90a4cb9b[stor0].field_1792) = 1
    emit 0x62fe2fe6: sub_c86657d8, sub_da4f082e.length, sub_90a4cb9b[stor0].field_256
    if not sub_90a4cb9b[stor0].field_0 / 1000:
        sub_90a4cb9b[stor0 + 1].field_0 = 0
    else:
        if 100 * sub_90a4cb9b[stor0].field_0 / 1000 / sub_90a4cb9b[stor0].field_0 / 1000 != 100:
            revert with 0, 'SafeMath mul failed'
        sub_90a4cb9b[stor0 + 1].field_0 = 100 * sub_90a4cb9b[stor0].field_0 / 1000
    sub_c86657d8++
    sub_90a4cb9b[stor0 + 1].field_2048 = sub_13e155a2
    sub_90a4cb9b[stor0].field_2304 = sub_64d1f16b
    sub_90a4cb9b[stor0].field_2560 = sub_ccbd422e
    sub_90a4cb9b[stor0].field_2816 = sub_bee0fe3f
    sub_90a4cb9b[stor0].field_3072 = stor21
    closeTime = arg2
}

function sub_8880184c(?) {
    if not uint8(sub_90a4cb9b[arg2].field_1792):
        return 0
    idx = 0
    while idx < sub_5907a50a[address(arg1)].field_0:
        require idx < sub_5907a50a[address(arg1)].field_0
        if sub_5907a50a[address(arg1)][idx].field_1280 <= arg2:
            require idx < sub_5907a50a[address(arg1)].field_0
            s = 0
            t = 0
            while s < 5:
                if s >= 77:
                    revert with 0, 'start/end must be less than 77'
                if s < s:
                    revert with 0, 'end must be >= start'
                if not s:
                    if not s:
                        if not sub_90a4cb9b[arg2].field_256 / 10:
                            if not sub_90a4cb9b[arg2].field_256:
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        v = 10
                                        while u < s:
                                            if not v:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                v = 0
                                                continue 
                                            if 10 * v / v != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 10 * v
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                require v
                                                if 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if (v * sub_5907a50a[address(arg1)][idx].field_512 / v) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not v:
                                        require s
                                        require var84001 < s
                                        if not var84002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var84001 = var84001 + 1
                                            var84002 = 0
                                            continue 
                                        if 10 * var84002 / var84002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var84001 = var84001 + 1
                                        var84002 = 10 * var84002
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            if sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                            else:
                                if sub_90a4cb9b[arg2].field_256 / sub_90a4cb9b[arg2].field_256 != 1:
                                    revert with 0, 'SafeMath mul failed'
                                if 0 > sub_90a4cb9b[arg2].field_256:
                                    revert with 0, 'SafeMath sub failed'
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_90a4cb9b[arg2].field_256 != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        v = 10
                                        while u < s:
                                            if not v:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                v = 0
                                                continue 
                                            if 10 * v / v != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 10 * v
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                require v
                                                if 0 / v != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / v != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / v != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if (v * sub_5907a50a[address(arg1)][idx].field_512 / v) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / v != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not v:
                                        require s
                                        require var85001 < s
                                        if not var85002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var85001 = var85001 + 1
                                            var85002 = 0
                                            continue 
                                        if 10 * var85002 / var85002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var85001 = var85001 + 1
                                        var85002 = 10 * var85002
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_90a4cb9b[arg2].field_256 != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / w != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) / w != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                        else:
                            if 10 * sub_90a4cb9b[arg2].field_256 / 10 / sub_90a4cb9b[arg2].field_256 / 10 != 10:
                                revert with 0, 'SafeMath mul failed'
                            if not sub_90a4cb9b[arg2].field_256:
                                if 10 * sub_90a4cb9b[arg2].field_256 / 10 > 0:
                                    revert with 0, 'SafeMath sub failed'
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if -10 * sub_90a4cb9b[arg2].field_256 / 10 != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        v = 10
                                        while u < s:
                                            if not v:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                v = 0
                                                continue 
                                            if 10 * v / v != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 10 * v
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                require v
                                                if 0 / v != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / v != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / v != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if (v * sub_5907a50a[address(arg1)][idx].field_512 / v) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / v != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not v:
                                        require s
                                        require var85001 < s
                                        if not var85002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var85001 = var85001 + 1
                                            var85002 = 0
                                            continue 
                                        if 10 * var85002 / var85002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var85001 = var85001 + 1
                                        var85002 = 10 * var85002
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if -10 * sub_90a4cb9b[arg2].field_256 / 10 != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / w != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) / w != -10 * sub_90a4cb9b[arg2].field_256 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                            else:
                                if sub_90a4cb9b[arg2].field_256 / sub_90a4cb9b[arg2].field_256 != 1:
                                    revert with 0, 'SafeMath mul failed'
                                if 10 * sub_90a4cb9b[arg2].field_256 / 10 > sub_90a4cb9b[arg2].field_256:
                                    revert with 0, 'SafeMath sub failed'
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10) != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        v = 10
                                        while u < s:
                                            if not v:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                v = 0
                                                continue 
                                            if 10 * v / v != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 10 * v
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                require v
                                                if 0 / v != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / v != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / v != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if (v * sub_5907a50a[address(arg1)][idx].field_512 / v) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / v != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not v:
                                        require s
                                        require var86001 < s
                                        if not var86002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var86001 = var86001 + 1
                                            var86002 = 0
                                            continue 
                                        if 10 * var86002 / var86002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var86001 = var86001 + 1
                                        var86002 = 10 * var86002
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10) != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / w != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) / w != sub_90a4cb9b[arg2].field_256 - (10 * sub_90a4cb9b[arg2].field_256 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                    else:
                        u = 1
                        v = 10
                        while u < s:
                            if not v:
                                mem[0] = arg1
                                mem[32] = 12
                                u = u + 1
                                v = 0
                                continue 
                            if 10 * v / v != 10:
                                revert with 0, 'SafeMath mul failed'
                            mem[0] = arg1
                            mem[32] = 12
                            u = u + 1
                            v = 10 * v
                            continue 
                        if not sub_90a4cb9b[arg2].field_256 / 10:
                            require v
                            if not sub_90a4cb9b[arg2].field_256 / v:
                                require v
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 0 / v != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / w != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / w != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not w:
                                        require s
                                        require var87001 < s
                                        if not var87002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var87001 = var87001 + 1
                                            var87002 = 0
                                            continue 
                                        if 10 * var87002 / var87002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var87001 = var87001 + 1
                                        var87002 = 10 * var87002
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 0 / v != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        x = 10
                                        while u < s:
                                            if not x:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                x = 0
                                                continue 
                                            if 10 * x / x != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 10 * x
                                            continue 
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                require x
                                                if 0 / x != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / x != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / x != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if (x * sub_5907a50a[address(arg1)][idx].field_512 / x) - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) / x != 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                            else:
                                if v * sub_90a4cb9b[arg2].field_256 / v / sub_90a4cb9b[arg2].field_256 / v != v:
                                    revert with 0, 'SafeMath mul failed'
                                if 0 > v * sub_90a4cb9b[arg2].field_256 / v:
                                    revert with 0, 'SafeMath sub failed'
                                require v
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if v * sub_90a4cb9b[arg2].field_256 / v / v != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / w != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / w != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not w:
                                        require s
                                        require var88001 < s
                                        if not var88002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var88001 = var88001 + 1
                                            var88002 = 0
                                            continue 
                                        if 10 * var88002 / var88002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var88001 = var88001 + 1
                                        var88002 = 10 * var88002
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if v * sub_90a4cb9b[arg2].field_256 / v / v != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        x = 10
                                        while u < s:
                                            if not x:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                x = 0
                                                continue 
                                            if 10 * x / x != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 10 * x
                                            continue 
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                require x
                                                if 0 / x != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / x != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / x != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if (x * sub_5907a50a[address(arg1)][idx].field_512 / x) - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) / x != v * sub_90a4cb9b[arg2].field_256 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                        else:
                            if 10 * sub_90a4cb9b[arg2].field_256 / 10 / sub_90a4cb9b[arg2].field_256 / 10 != 10:
                                revert with 0, 'SafeMath mul failed'
                            require v
                            if not sub_90a4cb9b[arg2].field_256 / v:
                                if 10 * sub_90a4cb9b[arg2].field_256 / 10 > 0:
                                    revert with 0, 'SafeMath sub failed'
                                require v
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if -10 * sub_90a4cb9b[arg2].field_256 / 10 / v != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / w != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / w != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not w:
                                        require s
                                        require var88001 < s
                                        if not var88002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var88001 = var88001 + 1
                                            var88002 = 0
                                            continue 
                                        if 10 * var88002 / var88002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var88001 = var88001 + 1
                                        var88002 = 10 * var88002
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if -10 * sub_90a4cb9b[arg2].field_256 / 10 / v != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        x = 10
                                        while u < s:
                                            if not x:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                x = 0
                                                continue 
                                            if 10 * x / x != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 10 * x
                                            continue 
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                require x
                                                if 0 / x != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / x != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / x != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if (x * sub_5907a50a[address(arg1)][idx].field_512 / x) - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) / x != -10 * sub_90a4cb9b[arg2].field_256 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                            else:
                                if v * sub_90a4cb9b[arg2].field_256 / v / sub_90a4cb9b[arg2].field_256 / v != v:
                                    revert with 0, 'SafeMath mul failed'
                                if 10 * sub_90a4cb9b[arg2].field_256 / 10 > v * sub_90a4cb9b[arg2].field_256 / v:
                                    revert with 0, 'SafeMath sub failed'
                                require v
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / w != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / w != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not w:
                                        require s
                                        require var89001 < s
                                        if not var89002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var89001 = var89001 + 1
                                            var89002 = 0
                                            continue 
                                        if 10 * var89002 / var89002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var89001 = var89001 + 1
                                        var89002 = 10 * var89002
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        x = 10
                                        while u < s:
                                            if not x:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                x = 0
                                                continue 
                                            if 10 * x / x != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 10 * x
                                            continue 
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                require x
                                                if 0 / x != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / x != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / x != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if (x * sub_5907a50a[address(arg1)][idx].field_512 / x) - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) / x != (v * sub_90a4cb9b[arg2].field_256 / v) - (10 * sub_90a4cb9b[arg2].field_256 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                else:
                    u = 1
                    v = 10
                    while u < s:
                        if not v:
                            mem[0] = arg1
                            mem[32] = 12
                            u = u + 1
                            v = 0
                            continue 
                        if 10 * v / v != 10:
                            revert with 0, 'SafeMath mul failed'
                        mem[0] = arg1
                        mem[32] = 12
                        u = u + 1
                        v = 10 * v
                        continue 
                    if not v:
                        require s
                        require var45001 < s
                        if not var45002:
                            mem[0] = arg1
                            mem[32] = 12
                            var45001 = var45001 + 1
                            var45002 = 0
                            continue 
                        if 10 * var45002 / var45002 != 10:
                            revert with 0, 'SafeMath mul failed'
                        mem[0] = arg1
                        mem[32] = 12
                        var45001 = var45001 + 1
                        var45002 = 10 * var45002
                        continue 
                    if 10 * v / v != 10:
                        revert with 0, 'SafeMath mul failed'
                    if not s:
                        require 10 * v
                        if not sub_90a4cb9b[arg2].field_256 / 10 * v:
                            if not sub_90a4cb9b[arg2].field_256:
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        v = 10
                                        while u < s:
                                            if not v:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                v = 0
                                                continue 
                                            if 10 * v / v != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 10 * v
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                require v
                                                if 0 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if (v * sub_5907a50a[address(arg1)][idx].field_512 / v) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not v:
                                        require s
                                        require var87001 < s
                                        if not var87002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var87001 = var87001 + 1
                                            var87002 = 0
                                            continue 
                                        if 10 * var87002 / var87002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var87001 = var87001 + 1
                                        var87002 = 10 * var87002
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            if sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                            else:
                                if sub_90a4cb9b[arg2].field_256 / sub_90a4cb9b[arg2].field_256 != 1:
                                    revert with 0, 'SafeMath mul failed'
                                if 0 > sub_90a4cb9b[arg2].field_256:
                                    revert with 0, 'SafeMath sub failed'
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_90a4cb9b[arg2].field_256 != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        v = 10
                                        while u < s:
                                            if not v:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                v = 0
                                                continue 
                                            if 10 * v / v != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 10 * v
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                require v
                                                if 0 / v != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / v != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / v != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if (v * sub_5907a50a[address(arg1)][idx].field_512 / v) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / v != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not v:
                                        require s
                                        require var88001 < s
                                        if not var88002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var88001 = var88001 + 1
                                            var88002 = 0
                                            continue 
                                        if 10 * var88002 / var88002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var88001 = var88001 + 1
                                        var88002 = 10 * var88002
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_90a4cb9b[arg2].field_256 != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / w != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) / w != sub_90a4cb9b[arg2].field_256:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                        else:
                            if 10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / sub_90a4cb9b[arg2].field_256 / 10 * v != 10 * v:
                                revert with 0, 'SafeMath mul failed'
                            if not sub_90a4cb9b[arg2].field_256:
                                if 10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v > 0:
                                    revert with 0, 'SafeMath sub failed'
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / w != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / w != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not w:
                                        require s
                                        require var88001 < s
                                        if not var88002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var88001 = var88001 + 1
                                            var88002 = 0
                                            continue 
                                        if 10 * var88002 / var88002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var88001 = var88001 + 1
                                        var88002 = 10 * var88002
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        x = 10
                                        while u < s:
                                            if not x:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                x = 0
                                                continue 
                                            if 10 * x / x != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 10 * x
                                            continue 
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                require x
                                                if 0 / x != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / x != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / x != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if (x * sub_5907a50a[address(arg1)][idx].field_512 / x) - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) / x != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                            else:
                                if sub_90a4cb9b[arg2].field_256 / sub_90a4cb9b[arg2].field_256 != 1:
                                    revert with 0, 'SafeMath mul failed'
                                if 10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v > sub_90a4cb9b[arg2].field_256:
                                    revert with 0, 'SafeMath sub failed'
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        w = 10
                                        while u < s:
                                            if not w:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                w = 0
                                                continue 
                                            if 10 * w / w != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 10 * w
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                require w
                                                if 0 / w != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / w != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require w
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / w != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if w * sub_5907a50a[address(arg1)][idx].field_512 / w / sub_5907a50a[address(arg1)][idx].field_512 / w != w:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > w * sub_5907a50a[address(arg1)][idx].field_512 / w:
                                                    revert with 0, 'SafeMath sub failed'
                                                require w
                                                if (w * sub_5907a50a[address(arg1)][idx].field_512 / w) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / w != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    w = 10
                                    while u < s:
                                        if not w:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            w = 0
                                            continue 
                                        if 10 * w / w != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        w = 10 * w
                                        continue 
                                    if not w:
                                        require s
                                        require var89001 < s
                                        if not var89002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var89001 = var89001 + 1
                                            var89002 = 0
                                            continue 
                                        if 10 * var89002 / var89002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var89001 = var89001 + 1
                                        var89002 = 10 * var89002
                                        continue 
                                    if 10 * w / w != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        x = 10
                                        while u < s:
                                            if not x:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                x = 0
                                                continue 
                                            if 10 * x / x != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 10 * x
                                            continue 
                                        require 10 * w
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * w:
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                require x
                                                if 0 / x != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / x != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / sub_5907a50a[address(arg1)][idx].field_512 / 10 * w != 10 * w:
                                                revert with 0, 'SafeMath mul failed'
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if -10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w / x != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if (x * sub_5907a50a[address(arg1)][idx].field_512 / x) - (10 * w * sub_5907a50a[address(arg1)][idx].field_512 / 10 * w) / x != sub_90a4cb9b[arg2].field_256 - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v):
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                    else:
                        u = 1
                        w = 10
                        while u < s:
                            if not w:
                                mem[0] = arg1
                                mem[32] = 12
                                u = u + 1
                                w = 0
                                continue 
                            if 10 * w / w != 10:
                                revert with 0, 'SafeMath mul failed'
                            mem[0] = arg1
                            mem[32] = 12
                            u = u + 1
                            w = 10 * w
                            continue 
                        require 10 * v
                        if not sub_90a4cb9b[arg2].field_256 / 10 * v:
                            require w
                            if not sub_90a4cb9b[arg2].field_256 / w:
                                require w
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 0 / w != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        v = 10
                                        while u < s:
                                            if not v:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                v = 0
                                                continue 
                                            if 10 * v / v != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 10 * v
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                require v
                                                if 0 / v != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / v != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / v != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if (v * sub_5907a50a[address(arg1)][idx].field_512 / v) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / v != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not v:
                                        require s
                                        require var90001 < s
                                        if not var90002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var90001 = var90001 + 1
                                            var90002 = 0
                                            continue 
                                        if 10 * var90002 / var90002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var90001 = var90001 + 1
                                        var90002 = 10 * var90002
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 0 / w != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        x = 10
                                        while u < s:
                                            if not x:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                x = 0
                                                continue 
                                            if 10 * x / x != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 10 * x
                                            continue 
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                require x
                                                if 0 / x != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / x != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / x != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if (x * sub_5907a50a[address(arg1)][idx].field_512 / x) - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) / x != 0 / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                            else:
                                if w * sub_90a4cb9b[arg2].field_256 / w / sub_90a4cb9b[arg2].field_256 / w != w:
                                    revert with 0, 'SafeMath mul failed'
                                if 0 > w * sub_90a4cb9b[arg2].field_256 / w:
                                    revert with 0, 'SafeMath sub failed'
                                require w
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if w * sub_90a4cb9b[arg2].field_256 / w / w != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        v = 10
                                        while u < s:
                                            if not v:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                v = 0
                                                continue 
                                            if 10 * v / v != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 10 * v
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                require v
                                                if 0 / v != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / v != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require v
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / v != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if v * sub_5907a50a[address(arg1)][idx].field_512 / v / sub_5907a50a[address(arg1)][idx].field_512 / v != v:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > v * sub_5907a50a[address(arg1)][idx].field_512 / v:
                                                    revert with 0, 'SafeMath sub failed'
                                                require v
                                                if (v * sub_5907a50a[address(arg1)][idx].field_512 / v) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / v != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    v = 10
                                    while u < s:
                                        if not v:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            v = 0
                                            continue 
                                        if 10 * v / v != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        v = 10 * v
                                        continue 
                                    if not v:
                                        require s
                                        require var91001 < s
                                        if not var91002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var91001 = var91001 + 1
                                            var91002 = 0
                                            continue 
                                        if 10 * var91002 / var91002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var91001 = var91001 + 1
                                        var91002 = 10 * var91002
                                        continue 
                                    if 10 * v / v != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if w * sub_90a4cb9b[arg2].field_256 / w / w != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        x = 10
                                        while u < s:
                                            if not x:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                x = 0
                                                continue 
                                            if 10 * x / x != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 10 * x
                                            continue 
                                        require 10 * v
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * v:
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                require x
                                                if 0 / x != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / x != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / sub_5907a50a[address(arg1)][idx].field_512 / 10 * v != 10 * v:
                                                revert with 0, 'SafeMath mul failed'
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if -10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v / x != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if (x * sub_5907a50a[address(arg1)][idx].field_512 / x) - (10 * v * sub_5907a50a[address(arg1)][idx].field_512 / 10 * v) / x != w * sub_90a4cb9b[arg2].field_256 / w / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                        else:
                            if 10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / sub_90a4cb9b[arg2].field_256 / 10 * v != 10 * v:
                                revert with 0, 'SafeMath mul failed'
                            require w
                            if not sub_90a4cb9b[arg2].field_256 / w:
                                if 10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v > 0:
                                    revert with 0, 'SafeMath sub failed'
                                require w
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        x = 10
                                        while u < s:
                                            if not x:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                x = 0
                                                continue 
                                            if 10 * x / x != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 10 * x
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                require x
                                                if 0 / x != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / x != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / x != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if (x * sub_5907a50a[address(arg1)][idx].field_512 / x) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / x != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    if not x:
                                        require s
                                        require var91001 < s
                                        if not var91002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var91001 = var91001 + 1
                                            var91002 = 0
                                            continue 
                                        if 10 * var91002 / var91002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var91001 = var91001 + 1
                                        var91002 = 10 * var91002
                                        continue 
                                    if 10 * x / x != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * x
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * x:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x / sub_5907a50a[address(arg1)][idx].field_512 / 10 * x != 10 * x:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x) != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        y = 10
                                        while u < s:
                                            if not y:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                y = 0
                                                continue 
                                            if 10 * y / y != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            y = 10 * y
                                            continue 
                                        require 10 * x
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * x:
                                            require y
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / y:
                                                require y
                                                if 0 / y != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if y * sub_5907a50a[address(arg1)][idx].field_512 / y / sub_5907a50a[address(arg1)][idx].field_512 / y != y:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > y * sub_5907a50a[address(arg1)][idx].field_512 / y:
                                                    revert with 0, 'SafeMath sub failed'
                                                require y
                                                if y * sub_5907a50a[address(arg1)][idx].field_512 / y / y != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x / sub_5907a50a[address(arg1)][idx].field_512 / 10 * x != 10 * x:
                                                revert with 0, 'SafeMath mul failed'
                                            require y
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / y:
                                                if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require y
                                                if -10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x / y != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if y * sub_5907a50a[address(arg1)][idx].field_512 / y / sub_5907a50a[address(arg1)][idx].field_512 / y != y:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x > y * sub_5907a50a[address(arg1)][idx].field_512 / y:
                                                    revert with 0, 'SafeMath sub failed'
                                                require y
                                                if (y * sub_5907a50a[address(arg1)][idx].field_512 / y) - (10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x) / y != -10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                            else:
                                if w * sub_90a4cb9b[arg2].field_256 / w / sub_90a4cb9b[arg2].field_256 / w != w:
                                    revert with 0, 'SafeMath mul failed'
                                if 10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v > w * sub_90a4cb9b[arg2].field_256 / w:
                                    revert with 0, 'SafeMath sub failed'
                                require w
                                if s >= 77:
                                    revert with 0, 'start/end must be less than 77'
                                if s < s:
                                    revert with 0, 'end must be >= start'
                                if not s:
                                    if not s:
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        x = 10
                                        while u < s:
                                            if not x:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                x = 0
                                                continue 
                                            if 10 * x / x != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 10 * x
                                            continue 
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10:
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                require x
                                                if 0 / x != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / x != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / sub_5907a50a[address(arg1)][idx].field_512 / 10 != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            require x
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if -10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 / x != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if x * sub_5907a50a[address(arg1)][idx].field_512 / x / sub_5907a50a[address(arg1)][idx].field_512 / x != x:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * sub_5907a50a[address(arg1)][idx].field_512 / 10 > x * sub_5907a50a[address(arg1)][idx].field_512 / x:
                                                    revert with 0, 'SafeMath sub failed'
                                                require x
                                                if (x * sub_5907a50a[address(arg1)][idx].field_512 / x) - (10 * sub_5907a50a[address(arg1)][idx].field_512 / 10) / x != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    u = 1
                                    x = 10
                                    while u < s:
                                        if not x:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            x = 0
                                            continue 
                                        if 10 * x / x != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        u = u + 1
                                        x = 10 * x
                                        continue 
                                    if not x:
                                        require s
                                        require var92001 < s
                                        if not var92002:
                                            mem[0] = arg1
                                            mem[32] = 12
                                            var92001 = var92001 + 1
                                            var92002 = 0
                                            continue 
                                        if 10 * var92002 / var92002 != 10:
                                            revert with 0, 'SafeMath mul failed'
                                        mem[0] = arg1
                                        mem[32] = 12
                                        var92001 = var92001 + 1
                                        var92002 = 10 * var92002
                                        continue 
                                    if 10 * x / x != 10:
                                        revert with 0, 'SafeMath mul failed'
                                    if not s:
                                        require 10 * x
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * x:
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w != 0:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x / sub_5907a50a[address(arg1)][idx].field_512 / 10 * x != 10 * x:
                                                revert with 0, 'SafeMath mul failed'
                                            if not sub_5907a50a[address(arg1)][idx].field_512:
                                                if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                if -10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if sub_5907a50a[address(arg1)][idx].field_512 / sub_5907a50a[address(arg1)][idx].field_512 != 1:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x > sub_5907a50a[address(arg1)][idx].field_512:
                                                    revert with 0, 'SafeMath sub failed'
                                                if sub_5907a50a[address(arg1)][idx].field_512 - (10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x) != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                    else:
                                        u = 1
                                        y = 10
                                        while u < s:
                                            if not y:
                                                mem[0] = arg1
                                                mem[32] = 12
                                                u = u + 1
                                                y = 0
                                                continue 
                                            if 10 * y / y != 10:
                                                revert with 0, 'SafeMath mul failed'
                                            mem[0] = arg1
                                            mem[32] = 12
                                            u = u + 1
                                            y = 10 * y
                                            continue 
                                        require 10 * x
                                        if not sub_5907a50a[address(arg1)][idx].field_512 / 10 * x:
                                            require y
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / y:
                                                require y
                                                if 0 / y != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if y * sub_5907a50a[address(arg1)][idx].field_512 / y / sub_5907a50a[address(arg1)][idx].field_512 / y != y:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 0 > y * sub_5907a50a[address(arg1)][idx].field_512 / y:
                                                    revert with 0, 'SafeMath sub failed'
                                                require y
                                                if y * sub_5907a50a[address(arg1)][idx].field_512 / y / y != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x / sub_5907a50a[address(arg1)][idx].field_512 / 10 * x != 10 * x:
                                                revert with 0, 'SafeMath mul failed'
                                            require y
                                            if not sub_5907a50a[address(arg1)][idx].field_512 / y:
                                                if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x > 0:
                                                    revert with 0, 'SafeMath sub failed'
                                                require y
                                                if -10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x / y != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            else:
                                                if y * sub_5907a50a[address(arg1)][idx].field_512 / y / sub_5907a50a[address(arg1)][idx].field_512 / y != y:
                                                    revert with 0, 'SafeMath mul failed'
                                                if 10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x > y * sub_5907a50a[address(arg1)][idx].field_512 / y:
                                                    revert with 0, 'SafeMath sub failed'
                                                require y
                                                if (y * sub_5907a50a[address(arg1)][idx].field_512 / y) - (10 * x * sub_5907a50a[address(arg1)][idx].field_512 / 10 * x) / y != (w * sub_90a4cb9b[arg2].field_256 / w) - (10 * v * sub_90a4cb9b[arg2].field_256 / 10 * v) / w:
                                                    mem[0] = arg1
                                                    mem[32] = 12
                                                    s = s + 1
                                                    t = t
                                                    continue 
                mem[0] = arg1
                mem[32] = 12
                s = s + 1
                t = t + 1
                continue 
            require idx < sub_5907a50a[address(arg1)].field_0
            if not sub_5907a50a[address(arg1)][idx].field_256:
                if 1 == t:
                    require sub_90a4cb9b[arg2].field_512
                    if t > 0:
                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                            require stor8
                            if 0 / stor8 < 0:
                                revert with 0, 'SafeMath add failed'
                        else:
                            if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                revert with 0, 'SafeMath mul failed'
                            if not 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                require stor8
                                if 0 / stor8 < 0:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if 100 * 0 / sub_90a4cb9b[arg2].field_512 * sub_90a4cb9b[arg2].field_0 / 1000 / 100 * sub_90a4cb9b[arg2].field_0 / 1000 != 0 / sub_90a4cb9b[arg2].field_512:
                                    revert with 0, 'SafeMath mul failed'
                                require stor8
                                if 100 * 0 / sub_90a4cb9b[arg2].field_512 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 < 0:
                                    revert with 0, 'SafeMath add failed'
                else:
                    if 2 == t:
                        require sub_90a4cb9b[arg2].field_768
                        if t > 0:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                require stor8
                                if 0 / stor8 < 0:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if 120 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 120:
                                    revert with 0, 'SafeMath mul failed'
                                if not 120 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    require stor8
                                    if 0 / stor8 < 0:
                                        revert with 0, 'SafeMath add failed'
                                else:
                                    if 120 * 0 / sub_90a4cb9b[arg2].field_768 * sub_90a4cb9b[arg2].field_0 / 1000 / 120 * sub_90a4cb9b[arg2].field_0 / 1000 != 0 / sub_90a4cb9b[arg2].field_768:
                                        revert with 0, 'SafeMath mul failed'
                                    require stor8
                                    if 120 * 0 / sub_90a4cb9b[arg2].field_768 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 < 0:
                                        revert with 0, 'SafeMath add failed'
                    else:
                        if 3 == t:
                            require sub_90a4cb9b[arg2].field_1024
                            if t > 0:
                                if not sub_90a4cb9b[arg2].field_0 / 1000:
                                    require stor8
                                    if 0 / stor8 < 0:
                                        revert with 0, 'SafeMath add failed'
                                else:
                                    if 130 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 130:
                                        revert with 0, 'SafeMath mul failed'
                                    if not 130 * sub_90a4cb9b[arg2].field_0 / 1000:
                                        require stor8
                                        if 0 / stor8 < 0:
                                            revert with 0, 'SafeMath add failed'
                                    else:
                                        if 130 * 0 / sub_90a4cb9b[arg2].field_1024 * sub_90a4cb9b[arg2].field_0 / 1000 / 130 * sub_90a4cb9b[arg2].field_0 / 1000 != 0 / sub_90a4cb9b[arg2].field_1024:
                                            revert with 0, 'SafeMath mul failed'
                                        require stor8
                                        if 130 * 0 / sub_90a4cb9b[arg2].field_1024 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 < 0:
                                            revert with 0, 'SafeMath add failed'
                        else:
                            if 4 == t:
                                require sub_90a4cb9b[arg2].field_1280
                                if t > 0:
                                    if not sub_90a4cb9b[arg2].field_0 / 1000:
                                        require stor8
                                        if 0 / stor8 < 0:
                                            revert with 0, 'SafeMath add failed'
                                    else:
                                        if 150 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 150:
                                            revert with 0, 'SafeMath mul failed'
                                        if not 150 * sub_90a4cb9b[arg2].field_0 / 1000:
                                            require stor8
                                            if 0 / stor8 < 0:
                                                revert with 0, 'SafeMath add failed'
                                        else:
                                            if 150 * 0 / sub_90a4cb9b[arg2].field_1280 * sub_90a4cb9b[arg2].field_0 / 1000 / 150 * sub_90a4cb9b[arg2].field_0 / 1000 != 0 / sub_90a4cb9b[arg2].field_1280:
                                                revert with 0, 'SafeMath mul failed'
                                            require stor8
                                            if 150 * 0 / sub_90a4cb9b[arg2].field_1280 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 < 0:
                                                revert with 0, 'SafeMath add failed'
                            else:
                                if t != 5:
                                    if t > 0:
                                        if sub_90a4cb9b[arg2].field_0 / 1000:
                                            if 0 / sub_90a4cb9b[arg2].field_0 / 1000:
                                                revert with 0, 'SafeMath mul failed'
                                        require stor8
                                        if 0 / stor8 < 0:
                                            revert with 0, 'SafeMath add failed'
                                else:
                                    require sub_90a4cb9b[arg2].field_1536
                                    if t > 0:
                                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                                            require stor8
                                            if 0 / stor8 < 0:
                                                revert with 0, 'SafeMath add failed'
                                        else:
                                            if 300 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 300:
                                                revert with 0, 'SafeMath mul failed'
                                            if not 300 * sub_90a4cb9b[arg2].field_0 / 1000:
                                                require stor8
                                                if 0 / stor8 < 0:
                                                    revert with 0, 'SafeMath add failed'
                                            else:
                                                if 300 * 0 / sub_90a4cb9b[arg2].field_1536 * sub_90a4cb9b[arg2].field_0 / 1000 / 300 * sub_90a4cb9b[arg2].field_0 / 1000 != 0 / sub_90a4cb9b[arg2].field_1536:
                                                    revert with 0, 'SafeMath mul failed'
                                                require stor8
                                                if 300 * 0 / sub_90a4cb9b[arg2].field_1536 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 < 0:
                                                    revert with 0, 'SafeMath add failed'
            else:
                if stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_5907a50a[address(arg1)][idx].field_256 != stor8:
                    revert with 0, 'SafeMath mul failed'
                if 1 == t:
                    require sub_90a4cb9b[arg2].field_512
                    if t > 0:
                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                            require stor8
                            if 0 / stor8 < 0:
                                revert with 0, 'SafeMath add failed'
                        else:
                            if 100 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 100:
                                revert with 0, 'SafeMath mul failed'
                            if not 100 * sub_90a4cb9b[arg2].field_0 / 1000:
                                require stor8
                                if 0 / stor8 < 0:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if 100 * stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_512 * sub_90a4cb9b[arg2].field_0 / 1000 / 100 * sub_90a4cb9b[arg2].field_0 / 1000 != stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_512:
                                    revert with 0, 'SafeMath mul failed'
                                require stor8
                                if 100 * stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_512 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 < 0:
                                    revert with 0, 'SafeMath add failed'
                else:
                    if 2 == t:
                        require sub_90a4cb9b[arg2].field_768
                        if t > 0:
                            if not sub_90a4cb9b[arg2].field_0 / 1000:
                                require stor8
                                if 0 / stor8 < 0:
                                    revert with 0, 'SafeMath add failed'
                            else:
                                if 120 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 120:
                                    revert with 0, 'SafeMath mul failed'
                                if not 120 * sub_90a4cb9b[arg2].field_0 / 1000:
                                    require stor8
                                    if 0 / stor8 < 0:
                                        revert with 0, 'SafeMath add failed'
                                else:
                                    if 120 * stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_768 * sub_90a4cb9b[arg2].field_0 / 1000 / 120 * sub_90a4cb9b[arg2].field_0 / 1000 != stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_768:
                                        revert with 0, 'SafeMath mul failed'
                                    require stor8
                                    if 120 * stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_768 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 < 0:
                                        revert with 0, 'SafeMath add failed'
                    else:
                        if 3 == t:
                            require sub_90a4cb9b[arg2].field_1024
                            if t > 0:
                                if not sub_90a4cb9b[arg2].field_0 / 1000:
                                    require stor8
                                    if 0 / stor8 < 0:
                                        revert with 0, 'SafeMath add failed'
                                else:
                                    if 130 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 130:
                                        revert with 0, 'SafeMath mul failed'
                                    if not 130 * sub_90a4cb9b[arg2].field_0 / 1000:
                                        require stor8
                                        if 0 / stor8 < 0:
                                            revert with 0, 'SafeMath add failed'
                                    else:
                                        if 130 * stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_1024 * sub_90a4cb9b[arg2].field_0 / 1000 / 130 * sub_90a4cb9b[arg2].field_0 / 1000 != stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_1024:
                                            revert with 0, 'SafeMath mul failed'
                                        require stor8
                                        if 130 * stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_1024 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 < 0:
                                            revert with 0, 'SafeMath add failed'
                        else:
                            if 4 == t:
                                require sub_90a4cb9b[arg2].field_1280
                                if t > 0:
                                    if not sub_90a4cb9b[arg2].field_0 / 1000:
                                        require stor8
                                        if 0 / stor8 < 0:
                                            revert with 0, 'SafeMath add failed'
                                    else:
                                        if 150 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 150:
                                            revert with 0, 'SafeMath mul failed'
                                        if not 150 * sub_90a4cb9b[arg2].field_0 / 1000:
                                            require stor8
                                            if 0 / stor8 < 0:
                                                revert with 0, 'SafeMath add failed'
                                        else:
                                            if 150 * stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_1280 * sub_90a4cb9b[arg2].field_0 / 1000 / 150 * sub_90a4cb9b[arg2].field_0 / 1000 != stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_1280:
                                                revert with 0, 'SafeMath mul failed'
                                            require stor8
                                            if 150 * stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_1280 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 < 0:
                                                revert with 0, 'SafeMath add failed'
                            else:
                                if t != 5:
                                    if t > 0:
                                        if sub_90a4cb9b[arg2].field_0 / 1000:
                                            if 0 / sub_90a4cb9b[arg2].field_0 / 1000:
                                                revert with 0, 'SafeMath mul failed'
                                        require stor8
                                        if 0 / stor8 < 0:
                                            revert with 0, 'SafeMath add failed'
                                else:
                                    require sub_90a4cb9b[arg2].field_1536
                                    if t > 0:
                                        if not sub_90a4cb9b[arg2].field_0 / 1000:
                                            require stor8
                                            if 0 / stor8 < 0:
                                                revert with 0, 'SafeMath add failed'
                                        else:
                                            if 300 * sub_90a4cb9b[arg2].field_0 / 1000 / sub_90a4cb9b[arg2].field_0 / 1000 != 300:
                                                revert with 0, 'SafeMath mul failed'
                                            if not 300 * sub_90a4cb9b[arg2].field_0 / 1000:
                                                require stor8
                                                if 0 / stor8 < 0:
                                                    revert with 0, 'SafeMath add failed'
                                            else:
                                                if 300 * stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_1536 * sub_90a4cb9b[arg2].field_0 / 1000 / 300 * sub_90a4cb9b[arg2].field_0 / 1000 != stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_1536:
                                                    revert with 0, 'SafeMath mul failed'
                                                require stor8
                                                if 300 * stor8 * sub_5907a50a[address(arg1)][idx].field_256 / sub_90a4cb9b[arg2].field_1536 * sub_90a4cb9b[arg2].field_0 / 1000 / stor8 < 0:
                                                    revert with 0, 'SafeMath add failed'
        mem[0] = arg1
        mem[32] = 12
        idx = idx + 1
        continue 
    if 0 <= sub_90a4cb9b[arg2].field_0:
        return 0
    revert
}



}
