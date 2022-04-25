contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
array of struct stor2;
array of struct stor3;
array of struct stor4;
uint8 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 stor10;
array of struct stor11;
mapping of struct stor12;
mapping of struct stor13;
mapping of uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
array of struct stor18;
address stor19;

function _fallback() payable {
    if calldata.size < 4:
        require bool(stor7) != 1
        require block.timestamp >= stor15
        require block.timestamp <= stor16
        require msg.value
        s = 0
        t = 0
        idx = 0
        t = msg.value
        u = stor17
        v = 0
        while idx < stor18.length:
            mem[0] = 18
            if stor18[idx].field_256 <= u:
                if t:
                    s = s
                    t = (2 * idx) + sha3(18)
                    idx = idx + 1
                    t = t
                    u = u
                    v = v
                    continue 
                require t <= 0
                require v
                if 0 == stor12[address(this.address)].field_0:
                    if 0 == stor12[address(msg.sender)].field_0:
                        require 0 >= v
                        require v >= 0
                        stor12[address(msg.sender)].field_0++
                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                            idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                stor[idx] = 0
                                uint256(stor1[idx]) = 0
                                idx = idx + 2
                                continue 
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                        stor9[address(msg.sender)] = v
                    else:
                        require 0 < stor12[address(msg.sender)].field_0
                        if stor12[address(msg.sender)].field_256 > block.number:
                            require 0 >= v
                            require v >= 0
                            stor12[address(msg.sender)].field_0++
                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                    stor[idx] = 0
                                    uint256(stor1[idx]) = 0
                                    idx = idx + 2
                                    continue 
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                            stor9[address(msg.sender)] = v
                        else:
                            require 1 <= stor12[address(msg.sender)].field_0
                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                            require 1 <= stor12[address(msg.sender)].field_0
                            if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                require 0 >= v
                                require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                        stor[idx] = 0
                                        uint256(stor1[idx]) = 0
                                        idx = idx + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                            else:
                                require stor12[address(msg.sender)].field_0 - 1 >= 0
                                require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                s = uint255(stor12[address(msg.sender)].field_1)
                                idx = 0
                                while stor12[address(msg.sender)].field_0 - 1 > idx:
                                    require s < stor12[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 12)
                                    if stor12[address(msg.sender)][s].field_256 <= block.number:
                                        if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                            s = stor12[address(msg.sender)].field_0 + s / 2
                                            idx = s
                                            continue 
                                    else:
                                        if 1 <= s:
                                            if s + idx - 1 >= idx:
                                                s = s + idx / 2
                                                idx = idx
                                                continue 
                                    revert
                                require idx < stor12[address(msg.sender)].field_0
                                require 0 >= v
                                require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                        stor[s] = 0
                                        uint256(stor1[s]) = 0
                                        s = s + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                    require v <= 0
                    stor12[address(this.address)].field_0++
                    if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                        idx = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                        while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > idx:
                            stor[idx] = 0
                            uint256(stor1[idx]) = 0
                            idx = idx + 2
                            continue 
                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v
                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                    stor9[address(this.address)] = -v
                else:
                    require 0 < stor12[address(this.address)].field_0
                    if stor12[address(this.address)].field_256 > block.number:
                        if 0 == stor12[address(msg.sender)].field_0:
                            require 0 >= v
                            require v >= 0
                            stor12[address(msg.sender)].field_0++
                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                    stor[idx] = 0
                                    uint256(stor1[idx]) = 0
                                    idx = idx + 2
                                    continue 
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                            stor9[address(msg.sender)] = v
                        else:
                            require 0 < stor12[address(msg.sender)].field_0
                            if stor12[address(msg.sender)].field_256 > block.number:
                                require 0 >= v
                                require v >= 0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                        stor[idx] = 0
                                        uint256(stor1[idx]) = 0
                                        idx = idx + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v
                            else:
                                require 1 <= stor12[address(msg.sender)].field_0
                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                require 1 <= stor12[address(msg.sender)].field_0
                                if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                    require 0 >= v
                                    require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                            stor[idx] = 0
                                            uint256(stor1[idx]) = 0
                                            idx = idx + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                else:
                                    require stor12[address(msg.sender)].field_0 - 1 >= 0
                                    require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                    s = uint255(stor12[address(msg.sender)].field_1)
                                    idx = 0
                                    while stor12[address(msg.sender)].field_0 - 1 > idx:
                                        require s < stor12[address(msg.sender)].field_0
                                        mem[0] = sha3(address(msg.sender), 12)
                                        if stor12[address(msg.sender)][s].field_256 <= block.number:
                                            if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                                s = stor12[address(msg.sender)].field_0 + s / 2
                                                idx = s
                                                continue 
                                        else:
                                            if 1 <= s:
                                                if s + idx - 1 >= idx:
                                                    s = s + idx / 2
                                                    idx = idx
                                                    continue 
                                        revert
                                    require idx < stor12[address(msg.sender)].field_0
                                    require 0 >= v
                                    require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                            stor[s] = 0
                                            uint256(stor1[s]) = 0
                                            s = s + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                        require v <= 0
                        stor12[address(this.address)].field_0++
                        if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                            idx = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                            while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > idx:
                                stor[idx] = 0
                                uint256(stor1[idx]) = 0
                                idx = idx + 2
                                continue 
                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v
                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                        stor9[address(this.address)] = -v
                    else:
                        require 1 <= stor12[address(this.address)].field_0
                        require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                        require 1 <= stor12[address(this.address)].field_0
                        if stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_256 <= block.number:
                            require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                            if 0 == stor12[address(msg.sender)].field_0:
                                require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                require v >= 0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                        stor[idx] = 0
                                        uint256(stor1[idx]) = 0
                                        idx = idx + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v
                            else:
                                require 0 < stor12[address(msg.sender)].field_0
                                if stor12[address(msg.sender)].field_256 > block.number:
                                    require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                    require v >= 0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                            stor[idx] = 0
                                            uint256(stor1[idx]) = 0
                                            idx = idx + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = v
                                else:
                                    require 1 <= stor12[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                    require 1 <= stor12[address(msg.sender)].field_0
                                    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                        require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                        require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                                stor[idx] = 0
                                                uint256(stor1[idx]) = 0
                                                idx = idx + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                    else:
                                        require stor12[address(msg.sender)].field_0 - 1 >= 0
                                        require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                        s = uint255(stor12[address(msg.sender)].field_1)
                                        idx = 0
                                        while stor12[address(msg.sender)].field_0 - 1 > idx:
                                            require s < stor12[address(msg.sender)].field_0
                                            mem[0] = sha3(address(msg.sender), 12)
                                            if stor12[address(msg.sender)][s].field_256 <= block.number:
                                                if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                                    s = stor12[address(msg.sender)].field_0 + s / 2
                                                    idx = s
                                                    continue 
                                            else:
                                                if 1 <= s:
                                                    if s + idx - 1 >= idx:
                                                        s = s + idx / 2
                                                        idx = idx
                                                        continue 
                                            revert
                                        require idx < stor12[address(msg.sender)].field_0
                                        require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                        require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                stor[s] = 0
                                                uint256(stor1[s]) = 0
                                                s = s + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                            require v <= stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0
                            stor12[address(this.address)].field_0++
                            if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                idx = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > idx:
                                    stor[idx] = 0
                                    uint256(stor1[idx]) = 0
                                    idx = idx + 2
                                    continue 
                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v
                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                            stor9[address(this.address)] = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v
                        else:
                            require stor12[address(this.address)].field_0 - 1 >= 0
                            require stor12[address(this.address)].field_0 >= stor12[address(this.address)].field_0 - 1
                            s = uint255(stor12[address(this.address)].field_1)
                            idx = 0
                            while stor12[address(this.address)].field_0 - 1 > idx:
                                require s < stor12[address(this.address)].field_0
                                mem[0] = sha3(address(this.address), 12)
                                if stor12[address(this.address)][s].field_256 <= block.number:
                                    if stor12[address(this.address)].field_0 + s - 1 >= s:
                                        s = stor12[address(this.address)].field_0 + s / 2
                                        idx = s
                                        continue 
                                else:
                                    if 1 <= s:
                                        if s + idx - 1 >= idx:
                                            s = s + idx / 2
                                            idx = idx
                                            continue 
                                revert
                            require idx < stor12[address(this.address)].field_0
                            if 0 == stor12[address(msg.sender)].field_0:
                                require stor12[address(this.address)][idx].field_0 >= v
                                require v >= 0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                        stor[s] = 0
                                        uint256(stor1[s]) = 0
                                        s = s + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v
                            else:
                                require 0 < stor12[address(msg.sender)].field_0
                                if stor12[address(msg.sender)].field_256 > block.number:
                                    require stor12[address(this.address)][idx].field_0 >= v
                                    require v >= 0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                            stor[s] = 0
                                            uint256(stor1[s]) = 0
                                            s = s + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = v
                                else:
                                    require 1 <= stor12[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                    require 1 <= stor12[address(msg.sender)].field_0
                                    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                        require stor12[address(this.address)][idx].field_0 >= v
                                        require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                stor[s] = 0
                                                uint256(stor1[s]) = 0
                                                s = s + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                    else:
                                        require stor12[address(msg.sender)].field_0 - 1 >= 0
                                        require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                        t = uint255(stor12[address(msg.sender)].field_1)
                                        s = 0
                                        while stor12[address(msg.sender)].field_0 - 1 > s:
                                            require t < stor12[address(msg.sender)].field_0
                                            mem[0] = sha3(address(msg.sender), 12)
                                            if stor12[address(msg.sender)][t].field_256 <= block.number:
                                                if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                                    t = stor12[address(msg.sender)].field_0 + t / 2
                                                    s = t
                                                    continue 
                                            else:
                                                if 1 <= t:
                                                    if t + s - 1 >= s:
                                                        t = t + s / 2
                                                        s = s
                                                        continue 
                                            revert
                                        require s < stor12[address(msg.sender)].field_0
                                        require stor12[address(this.address)][idx].field_0 >= v
                                        require v + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                stor[t] = 0
                                                uint256(stor1[t]) = 0
                                                t = t + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][s].field_0
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][s].field_0
                            require v <= stor12[address(this.address)][idx].field_0
                            stor12[address(this.address)].field_0++
                            if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                    stor[s] = 0
                                    uint256(stor1[s]) = 0
                                    s = s + 2
                                    continue 
                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][idx].field_0 - v
                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                            stor9[address(this.address)] = stor12[address(this.address)][idx].field_0 - v
                require msg.value + stor17 >= stor17
                stor17 += msg.value
                emit Transfer(v, this.address, msg.sender);
            else:
                require t + u >= u
                if t + u <= stor18[idx].field_256:
                    require stor18[idx].field_0
                    require v + (10^18 * t / stor18[idx].field_0)
                    if 0 == stor12[address(this.address)].field_0:
                        if 0 == stor12[address(msg.sender)].field_0:
                            require 0 >= v + (10^18 * t / stor18[idx].field_0)
                            require v + (10^18 * t / stor18[idx].field_0) >= 0
                            stor12[address(msg.sender)].field_0++
                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                    stor[s] = 0
                                    uint256(stor1[s]) = 0
                                    s = s + 2
                                    continue 
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                            stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                        else:
                            require 0 < stor12[address(msg.sender)].field_0
                            if stor12[address(msg.sender)].field_256 > block.number:
                                require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                require v + (10^18 * t / stor18[idx].field_0) >= 0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                        stor[s] = 0
                                        uint256(stor1[s]) = 0
                                        s = s + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                            else:
                                require 1 <= stor12[address(msg.sender)].field_0
                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                require 1 <= stor12[address(msg.sender)].field_0
                                if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                    require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                    require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                            stor[s] = 0
                                            uint256(stor1[s]) = 0
                                            s = s + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                else:
                                    require stor12[address(msg.sender)].field_0 - 1 >= 0
                                    require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                    u = uint255(stor12[address(msg.sender)].field_1)
                                    s = 0
                                    while stor12[address(msg.sender)].field_0 - 1 > s:
                                        require u < stor12[address(msg.sender)].field_0
                                        mem[0] = sha3(address(msg.sender), 12)
                                        if stor12[address(msg.sender)][u].field_256 <= block.number:
                                            if stor12[address(msg.sender)].field_0 + u - 1 >= u:
                                                u = stor12[address(msg.sender)].field_0 + u / 2
                                                s = u
                                                continue 
                                        else:
                                            if 1 <= u:
                                                if u + s - 1 >= s:
                                                    u = u + s / 2
                                                    s = s
                                                    continue 
                                        revert
                                    require s < stor12[address(msg.sender)].field_0
                                    require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                    require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                            stor[u] = 0
                                            uint256(stor1[u]) = 0
                                            u = u + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                        require v + (10^18 * t / stor18[idx].field_0) <= 0
                        stor12[address(this.address)].field_0++
                        if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                            s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                            while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                stor[s] = 0
                                uint256(stor1[s]) = 0
                                s = s + 2
                                continue 
                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v - (10^18 * t / stor18[idx].field_0)
                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                        stor9[address(this.address)] = -v - (10^18 * t / stor18[idx].field_0)
                    else:
                        require 0 < stor12[address(this.address)].field_0
                        if stor12[address(this.address)].field_256 > block.number:
                            if 0 == stor12[address(msg.sender)].field_0:
                                require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                require v + (10^18 * t / stor18[idx].field_0) >= 0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                        stor[s] = 0
                                        uint256(stor1[s]) = 0
                                        s = s + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                            else:
                                require 0 < stor12[address(msg.sender)].field_0
                                if stor12[address(msg.sender)].field_256 > block.number:
                                    require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                    require v + (10^18 * t / stor18[idx].field_0) >= 0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                            stor[s] = 0
                                            uint256(stor1[s]) = 0
                                            s = s + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                else:
                                    require 1 <= stor12[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                    require 1 <= stor12[address(msg.sender)].field_0
                                    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                        require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                        require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                stor[s] = 0
                                                uint256(stor1[s]) = 0
                                                s = s + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                    else:
                                        require stor12[address(msg.sender)].field_0 - 1 >= 0
                                        require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                        u = uint255(stor12[address(msg.sender)].field_1)
                                        s = 0
                                        while stor12[address(msg.sender)].field_0 - 1 > s:
                                            require u < stor12[address(msg.sender)].field_0
                                            mem[0] = sha3(address(msg.sender), 12)
                                            if stor12[address(msg.sender)][u].field_256 <= block.number:
                                                if stor12[address(msg.sender)].field_0 + u - 1 >= u:
                                                    u = stor12[address(msg.sender)].field_0 + u / 2
                                                    s = u
                                                    continue 
                                            else:
                                                if 1 <= u:
                                                    if u + s - 1 >= s:
                                                        u = u + s / 2
                                                        s = s
                                                        continue 
                                            revert
                                        require s < stor12[address(msg.sender)].field_0
                                        require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                        require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                                stor[u] = 0
                                                uint256(stor1[u]) = 0
                                                u = u + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                            require v + (10^18 * t / stor18[idx].field_0) <= 0
                            stor12[address(this.address)].field_0++
                            if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                    stor[s] = 0
                                    uint256(stor1[s]) = 0
                                    s = s + 2
                                    continue 
                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v - (10^18 * t / stor18[idx].field_0)
                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                            stor9[address(this.address)] = -v - (10^18 * t / stor18[idx].field_0)
                        else:
                            require 1 <= stor12[address(this.address)].field_0
                            require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                            require 1 <= stor12[address(this.address)].field_0
                            if stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_256 <= block.number:
                                require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                                if 0 == stor12[address(msg.sender)].field_0:
                                    require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                    require v + (10^18 * t / stor18[idx].field_0) >= 0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                            stor[s] = 0
                                            uint256(stor1[s]) = 0
                                            s = s + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                else:
                                    require 0 < stor12[address(msg.sender)].field_0
                                    if stor12[address(msg.sender)].field_256 > block.number:
                                        require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                        require v + (10^18 * t / stor18[idx].field_0) >= 0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                stor[s] = 0
                                                uint256(stor1[s]) = 0
                                                s = s + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                    else:
                                        require 1 <= stor12[address(msg.sender)].field_0
                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                        require 1 <= stor12[address(msg.sender)].field_0
                                        if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                            require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                            require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                            stor12[address(msg.sender)].field_0++
                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                    stor[s] = 0
                                                    uint256(stor1[s]) = 0
                                                    s = s + 2
                                                    continue 
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                            stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        else:
                                            require stor12[address(msg.sender)].field_0 - 1 >= 0
                                            require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                            u = uint255(stor12[address(msg.sender)].field_1)
                                            s = 0
                                            while stor12[address(msg.sender)].field_0 - 1 > s:
                                                require u < stor12[address(msg.sender)].field_0
                                                mem[0] = sha3(address(msg.sender), 12)
                                                if stor12[address(msg.sender)][u].field_256 <= block.number:
                                                    if stor12[address(msg.sender)].field_0 + u - 1 >= u:
                                                        u = stor12[address(msg.sender)].field_0 + u / 2
                                                        s = u
                                                        continue 
                                                else:
                                                    if 1 <= u:
                                                        if u + s - 1 >= s:
                                                            u = u + s / 2
                                                            s = s
                                                            continue 
                                                revert
                                            require s < stor12[address(msg.sender)].field_0
                                            require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                            require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                            stor12[address(msg.sender)].field_0++
                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                                    stor[u] = 0
                                                    uint256(stor1[u]) = 0
                                                    u = u + 2
                                                    continue 
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                            stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                                require v + (10^18 * t / stor18[idx].field_0) <= stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0
                                stor12[address(this.address)].field_0++
                                if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                    s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                    while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                        stor[s] = 0
                                        uint256(stor1[s]) = 0
                                        s = s + 2
                                        continue 
                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v - (10^18 * t / stor18[idx].field_0)
                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                stor9[address(this.address)] = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v - (10^18 * t / stor18[idx].field_0)
                            else:
                                require stor12[address(this.address)].field_0 - 1 >= 0
                                require stor12[address(this.address)].field_0 >= stor12[address(this.address)].field_0 - 1
                                u = uint255(stor12[address(this.address)].field_1)
                                s = 0
                                while stor12[address(this.address)].field_0 - 1 > s:
                                    require u < stor12[address(this.address)].field_0
                                    mem[0] = sha3(address(this.address), 12)
                                    if stor12[address(this.address)][u].field_256 <= block.number:
                                        if stor12[address(this.address)].field_0 + u - 1 >= u:
                                            u = stor12[address(this.address)].field_0 + u / 2
                                            s = u
                                            continue 
                                    else:
                                        if 1 <= u:
                                            if u + s - 1 >= s:
                                                u = u + s / 2
                                                s = s
                                                continue 
                                    revert
                                require s < stor12[address(this.address)].field_0
                                if 0 == stor12[address(msg.sender)].field_0:
                                    require stor12[address(this.address)][s].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                    require v + (10^18 * t / stor18[idx].field_0) >= 0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                            stor[u] = 0
                                            uint256(stor1[u]) = 0
                                            u = u + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                else:
                                    require 0 < stor12[address(msg.sender)].field_0
                                    if stor12[address(msg.sender)].field_256 > block.number:
                                        require stor12[address(this.address)][s].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                        require v + (10^18 * t / stor18[idx].field_0) >= 0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                                stor[u] = 0
                                                uint256(stor1[u]) = 0
                                                u = u + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                    else:
                                        require 1 <= stor12[address(msg.sender)].field_0
                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                        require 1 <= stor12[address(msg.sender)].field_0
                                        if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                            require stor12[address(this.address)][s].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                            require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                            stor12[address(msg.sender)].field_0++
                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                                    stor[u] = 0
                                                    uint256(stor1[u]) = 0
                                                    u = u + 2
                                                    continue 
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                            stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        else:
                                            require stor12[address(msg.sender)].field_0 - 1 >= 0
                                            require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                            w = uint255(stor12[address(msg.sender)].field_1)
                                            u = 0
                                            while stor12[address(msg.sender)].field_0 - 1 > u:
                                                require w < stor12[address(msg.sender)].field_0
                                                mem[0] = sha3(address(msg.sender), 12)
                                                if stor12[address(msg.sender)][w].field_256 <= block.number:
                                                    if stor12[address(msg.sender)].field_0 + w - 1 >= w:
                                                        w = stor12[address(msg.sender)].field_0 + w / 2
                                                        u = w
                                                        continue 
                                                else:
                                                    if 1 <= w:
                                                        if w + u - 1 >= u:
                                                            w = w + u / 2
                                                            u = u
                                                            continue 
                                                revert
                                            require u < stor12[address(msg.sender)].field_0
                                            require stor12[address(this.address)][s].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                            require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][u].field_0 >= stor12[address(msg.sender)][u].field_0
                                            stor12[address(msg.sender)].field_0++
                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                w = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > w:
                                                    stor[w] = 0
                                                    uint256(stor1[w]) = 0
                                                    w = w + 2
                                                    continue 
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][u].field_0
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                            stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][u].field_0
                                require v + (10^18 * t / stor18[idx].field_0) <= stor12[address(this.address)][s].field_0
                                stor12[address(this.address)].field_0++
                                if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                    u = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                    while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > u:
                                        stor[u] = 0
                                        uint256(stor1[u]) = 0
                                        u = u + 2
                                        continue 
                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][s].field_0 - v - (10^18 * t / stor18[idx].field_0)
                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                stor9[address(this.address)] = stor12[address(this.address)][s].field_0 - v - (10^18 * t / stor18[idx].field_0)
                    require msg.value + stor17 >= stor17
                    stor17 += msg.value
                    emit Transfer((v + (10^18 * t / stor18[idx].field_0)), this.address, msg.sender);
                else:
                    require u <= stor18[idx].field_256
                    if stor18[idx].field_256 - u:
                        require stor18[idx].field_256 - u
                        require (10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_256 - u == 10^18
                    require stor18[idx].field_0
                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= v
                    require stor18[idx].field_256 - u <= t
                    require stor18[idx].field_256 >= u
                    if t - stor18[idx].field_256 + u:
                        s = stor18[idx].field_256 - u
                        t = (2 * idx) + sha3(18)
                        idx = idx + 1
                        t = t - stor18[idx].field_256 + u
                        u = stor18[idx].field_256
                        v = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                        continue 
                    require t - stor18[idx].field_256 + u <= 0
                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                    if 0 == stor12[address(this.address)].field_0:
                        if 0 == stor12[address(msg.sender)].field_0:
                            require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                            stor12[address(msg.sender)].field_0++
                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                    stor[s] = 0
                                    uint256(stor1[s]) = 0
                                    s = s + 2
                                    continue 
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                            stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                        else:
                            require 0 < stor12[address(msg.sender)].field_0
                            if stor12[address(msg.sender)].field_256 > block.number:
                                require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                        stor[s] = 0
                                        uint256(stor1[s]) = 0
                                        s = s + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                            else:
                                require 1 <= stor12[address(msg.sender)].field_0
                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                require 1 <= stor12[address(msg.sender)].field_0
                                if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                    require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                            stor[s] = 0
                                            uint256(stor1[s]) = 0
                                            s = s + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                else:
                                    require stor12[address(msg.sender)].field_0 - 1 >= 0
                                    require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                    t = uint255(stor12[address(msg.sender)].field_1)
                                    s = 0
                                    while stor12[address(msg.sender)].field_0 - 1 > s:
                                        require t < stor12[address(msg.sender)].field_0
                                        mem[0] = sha3(address(msg.sender), 12)
                                        if stor12[address(msg.sender)][t].field_256 <= block.number:
                                            if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                                t = stor12[address(msg.sender)].field_0 + t / 2
                                                s = t
                                                continue 
                                        else:
                                            if 1 <= t:
                                                if t + s - 1 >= s:
                                                    t = t + s / 2
                                                    s = s
                                                    continue 
                                        revert
                                    require s < stor12[address(msg.sender)].field_0
                                    require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                            stor[t] = 0
                                            uint256(stor1[t]) = 0
                                            t = t + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                        require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v <= 0
                        stor12[address(this.address)].field_0++
                        if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                            s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                            while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                stor[s] = 0
                                uint256(stor1[s]) = 0
                                s = s + 2
                                continue 
                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                        stor9[address(this.address)] = -((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                    else:
                        require 0 < stor12[address(this.address)].field_0
                        if stor12[address(this.address)].field_256 > block.number:
                            if 0 == stor12[address(msg.sender)].field_0:
                                require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                        stor[s] = 0
                                        uint256(stor1[s]) = 0
                                        s = s + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                            else:
                                require 0 < stor12[address(msg.sender)].field_0
                                if stor12[address(msg.sender)].field_256 > block.number:
                                    require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                            stor[s] = 0
                                            uint256(stor1[s]) = 0
                                            s = s + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                else:
                                    require 1 <= stor12[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                    require 1 <= stor12[address(msg.sender)].field_0
                                    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                        require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                        require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                stor[s] = 0
                                                uint256(stor1[s]) = 0
                                                s = s + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                    else:
                                        require stor12[address(msg.sender)].field_0 - 1 >= 0
                                        require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                        t = uint255(stor12[address(msg.sender)].field_1)
                                        s = 0
                                        while stor12[address(msg.sender)].field_0 - 1 > s:
                                            require t < stor12[address(msg.sender)].field_0
                                            mem[0] = sha3(address(msg.sender), 12)
                                            if stor12[address(msg.sender)][t].field_256 <= block.number:
                                                if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                                    t = stor12[address(msg.sender)].field_0 + t / 2
                                                    s = t
                                                    continue 
                                            else:
                                                if 1 <= t:
                                                    if t + s - 1 >= s:
                                                        t = t + s / 2
                                                        s = s
                                                        continue 
                                            revert
                                        require s < stor12[address(msg.sender)].field_0
                                        require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                        require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                stor[t] = 0
                                                uint256(stor1[t]) = 0
                                                t = t + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v <= 0
                            stor12[address(this.address)].field_0++
                            if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                    stor[s] = 0
                                    uint256(stor1[s]) = 0
                                    s = s + 2
                                    continue 
                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                            stor9[address(this.address)] = -((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                        else:
                            require 1 <= stor12[address(this.address)].field_0
                            require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                            require 1 <= stor12[address(this.address)].field_0
                            if stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_256 <= block.number:
                                require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                                if 0 == stor12[address(msg.sender)].field_0:
                                    require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                            stor[s] = 0
                                            uint256(stor1[s]) = 0
                                            s = s + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                else:
                                    require 0 < stor12[address(msg.sender)].field_0
                                    if stor12[address(msg.sender)].field_256 > block.number:
                                        require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                        require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                stor[s] = 0
                                                uint256(stor1[s]) = 0
                                                s = s + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                    else:
                                        require 1 <= stor12[address(msg.sender)].field_0
                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                        require 1 <= stor12[address(msg.sender)].field_0
                                        if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                            require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                            stor12[address(msg.sender)].field_0++
                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                    stor[s] = 0
                                                    uint256(stor1[s]) = 0
                                                    s = s + 2
                                                    continue 
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                            stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        else:
                                            require stor12[address(msg.sender)].field_0 - 1 >= 0
                                            require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                            t = uint255(stor12[address(msg.sender)].field_1)
                                            s = 0
                                            while stor12[address(msg.sender)].field_0 - 1 > s:
                                                require t < stor12[address(msg.sender)].field_0
                                                mem[0] = sha3(address(msg.sender), 12)
                                                if stor12[address(msg.sender)][t].field_256 <= block.number:
                                                    if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                                        t = stor12[address(msg.sender)].field_0 + t / 2
                                                        s = t
                                                        continue 
                                                else:
                                                    if 1 <= t:
                                                        if t + s - 1 >= s:
                                                            t = t + s / 2
                                                            s = s
                                                            continue 
                                                revert
                                            require s < stor12[address(msg.sender)].field_0
                                            require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                            stor12[address(msg.sender)].field_0++
                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                    stor[t] = 0
                                                    uint256(stor1[t]) = 0
                                                    t = t + 2
                                                    continue 
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                            stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                                require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v <= stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0
                                stor12[address(this.address)].field_0++
                                if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                    s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                    while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                        stor[s] = 0
                                        uint256(stor1[s]) = 0
                                        s = s + 2
                                        continue 
                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                stor9[address(this.address)] = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                            else:
                                require stor12[address(this.address)].field_0 - 1 >= 0
                                require stor12[address(this.address)].field_0 >= stor12[address(this.address)].field_0 - 1
                                t = uint255(stor12[address(this.address)].field_1)
                                s = 0
                                while stor12[address(this.address)].field_0 - 1 > s:
                                    require t < stor12[address(this.address)].field_0
                                    mem[0] = sha3(address(this.address), 12)
                                    if stor12[address(this.address)][t].field_256 <= block.number:
                                        if stor12[address(this.address)].field_0 + t - 1 >= t:
                                            t = stor12[address(this.address)].field_0 + t / 2
                                            s = t
                                            continue 
                                    else:
                                        if 1 <= t:
                                            if t + s - 1 >= s:
                                                t = t + s / 2
                                                s = s
                                                continue 
                                    revert
                                require s < stor12[address(this.address)].field_0
                                if 0 == stor12[address(msg.sender)].field_0:
                                    require stor12[address(this.address)][s].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                            stor[t] = 0
                                            uint256(stor1[t]) = 0
                                            t = t + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                else:
                                    require 0 < stor12[address(msg.sender)].field_0
                                    if stor12[address(msg.sender)].field_256 > block.number:
                                        require stor12[address(this.address)][s].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                        require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                        stor12[address(msg.sender)].field_0++
                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                            t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                stor[t] = 0
                                                uint256(stor1[t]) = 0
                                                t = t + 2
                                                continue 
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                        stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                    else:
                                        require 1 <= stor12[address(msg.sender)].field_0
                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                        require 1 <= stor12[address(msg.sender)].field_0
                                        if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                            require stor12[address(this.address)][s].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                            stor12[address(msg.sender)].field_0++
                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                    stor[t] = 0
                                                    uint256(stor1[t]) = 0
                                                    t = t + 2
                                                    continue 
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                            stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        else:
                                            require stor12[address(msg.sender)].field_0 - 1 >= 0
                                            require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                            w = uint255(stor12[address(msg.sender)].field_1)
                                            t = 0
                                            while stor12[address(msg.sender)].field_0 - 1 > t:
                                                require w < stor12[address(msg.sender)].field_0
                                                mem[0] = sha3(address(msg.sender), 12)
                                                if stor12[address(msg.sender)][w].field_256 <= block.number:
                                                    if stor12[address(msg.sender)].field_0 + w - 1 >= w:
                                                        w = stor12[address(msg.sender)].field_0 + w / 2
                                                        t = w
                                                        continue 
                                                else:
                                                    if 1 <= w:
                                                        if w + t - 1 >= t:
                                                            w = w + t / 2
                                                            t = t
                                                            continue 
                                                revert
                                            require t < stor12[address(msg.sender)].field_0
                                            require stor12[address(this.address)][s].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][t].field_0 >= stor12[address(msg.sender)][t].field_0
                                            stor12[address(msg.sender)].field_0++
                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                w = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > w:
                                                    stor[w] = 0
                                                    uint256(stor1[w]) = 0
                                                    w = w + 2
                                                    continue 
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][t].field_0
                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                            stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][t].field_0
                                require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v <= stor12[address(this.address)][s].field_0
                                stor12[address(this.address)].field_0++
                                if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                    t = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                    while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > t:
                                        stor[t] = 0
                                        uint256(stor1[t]) = 0
                                        t = t + 2
                                        continue 
                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][s].field_0 - ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                stor9[address(this.address)] = stor12[address(this.address)][s].field_0 - ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                    require msg.value + stor17 >= stor17
                    stor17 += msg.value
                    emit Transfer((((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v), this.address, msg.sender);
        require t <= 0
        require v
        if 0 == stor12[address(this.address)].field_0:
            if 0 == stor12[address(msg.sender)].field_0:
                require 0 >= v
                require v >= 0
                stor12[address(msg.sender)].field_0++
                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                    idx = 2 * stor12[address(msg.sender)].field_0 + 1
                    while 2 * stor12[address(msg.sender)].field_0 > idx:
                        stor12[address(msg.sender)][idx].field_0 = 0
                        stor12[address(msg.sender)][idx].field_256 = 0
                        idx = idx + 2
                        continue 
                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                stor9[address(msg.sender)] = v
            else:
                require 0 < stor12[address(msg.sender)].field_0
                if stor12[address(msg.sender)].field_256 > block.number:
                    require 0 >= v
                    require v >= 0
                    stor12[address(msg.sender)].field_0++
                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                        idx = 2 * stor12[address(msg.sender)].field_0 + 1
                        while 2 * stor12[address(msg.sender)].field_0 > idx:
                            stor12[address(msg.sender)][idx].field_0 = 0
                            stor12[address(msg.sender)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                    stor9[address(msg.sender)] = v
                else:
                    require 1 <= stor12[address(msg.sender)].field_0
                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                    require 1 <= stor12[address(msg.sender)].field_0
                    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                        require 0 >= v
                        require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                        stor12[address(msg.sender)].field_0++
                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                            idx = 2 * stor12[address(msg.sender)].field_0 + 1
                            while 2 * stor12[address(msg.sender)].field_0 > idx:
                                stor12[address(msg.sender)][idx].field_0 = 0
                                stor12[address(msg.sender)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                    else:
                        require stor12[address(msg.sender)].field_0 - 1 >= 0
                        require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                        s = uint255(stor12[address(msg.sender)].field_1)
                        idx = 0
                        while stor12[address(msg.sender)].field_0 - 1 > idx:
                            require s < stor12[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 12)
                            if stor12[address(msg.sender)][s].field_256 <= block.number:
                                if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                    s = stor12[address(msg.sender)].field_0 + s / 2
                                    idx = s
                                    continue 
                            else:
                                if 1 <= s:
                                    if s + idx - 1 >= idx:
                                        s = s + idx / 2
                                        idx = idx
                                        continue 
                            revert
                        require idx < stor12[address(msg.sender)].field_0
                        require 0 >= v
                        require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                        stor12[address(msg.sender)].field_0++
                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                            s = 2 * stor12[address(msg.sender)].field_0 + 1
                            while 2 * stor12[address(msg.sender)].field_0 > s:
                                stor12[address(msg.sender)][s].field_0 = 0
                                stor12[address(msg.sender)][s].field_256 = 0
                                s = s + 2
                                continue 
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
            require v <= 0
            stor12[address(this.address)].field_0++
            if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                idx = 2 * stor12[address(this.address)].field_0 + 1
                while 2 * stor12[address(this.address)].field_0 > idx:
                    stor12[address(this.address)][idx].field_0 = 0
                    stor12[address(this.address)][idx].field_256 = 0
                    idx = idx + 2
                    continue 
            stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v
            stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
            stor9[address(this.address)] = -v
        else:
            require 0 < stor12[address(this.address)].field_0
            if stor12[address(this.address)].field_256 > block.number:
                if 0 == stor12[address(msg.sender)].field_0:
                    require 0 >= v
                    require v >= 0
                    stor12[address(msg.sender)].field_0++
                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                        idx = 2 * stor12[address(msg.sender)].field_0 + 1
                        while 2 * stor12[address(msg.sender)].field_0 > idx:
                            stor12[address(msg.sender)][idx].field_0 = 0
                            stor12[address(msg.sender)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                    stor9[address(msg.sender)] = v
                else:
                    require 0 < stor12[address(msg.sender)].field_0
                    if stor12[address(msg.sender)].field_256 > block.number:
                        require 0 >= v
                        require v >= 0
                        stor12[address(msg.sender)].field_0++
                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                            idx = 2 * stor12[address(msg.sender)].field_0 + 1
                            while 2 * stor12[address(msg.sender)].field_0 > idx:
                                stor12[address(msg.sender)][idx].field_0 = 0
                                stor12[address(msg.sender)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                        stor9[address(msg.sender)] = v
                    else:
                        require 1 <= stor12[address(msg.sender)].field_0
                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                        require 1 <= stor12[address(msg.sender)].field_0
                        if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                            require 0 >= v
                            require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                            stor12[address(msg.sender)].field_0++
                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                while 2 * stor12[address(msg.sender)].field_0 > idx:
                                    stor12[address(msg.sender)][idx].field_0 = 0
                                    stor12[address(msg.sender)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                            stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                        else:
                            require stor12[address(msg.sender)].field_0 - 1 >= 0
                            require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                            s = uint255(stor12[address(msg.sender)].field_1)
                            idx = 0
                            while stor12[address(msg.sender)].field_0 - 1 > idx:
                                require s < stor12[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 12)
                                if stor12[address(msg.sender)][s].field_256 <= block.number:
                                    if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                        s = stor12[address(msg.sender)].field_0 + s / 2
                                        idx = s
                                        continue 
                                else:
                                    if 1 <= s:
                                        if s + idx - 1 >= idx:
                                            s = s + idx / 2
                                            idx = idx
                                            continue 
                                revert
                            require idx < stor12[address(msg.sender)].field_0
                            require 0 >= v
                            require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                            stor12[address(msg.sender)].field_0++
                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                s = 2 * stor12[address(msg.sender)].field_0 + 1
                                while 2 * stor12[address(msg.sender)].field_0 > s:
                                    stor12[address(msg.sender)][s].field_0 = 0
                                    stor12[address(msg.sender)][s].field_256 = 0
                                    s = s + 2
                                    continue 
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                            stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                require v <= 0
                stor12[address(this.address)].field_0++
                if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                    idx = 2 * stor12[address(this.address)].field_0 + 1
                    while 2 * stor12[address(this.address)].field_0 > idx:
                        stor12[address(this.address)][idx].field_0 = 0
                        stor12[address(this.address)][idx].field_256 = 0
                        idx = idx + 2
                        continue 
                stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v
                stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                stor9[address(this.address)] = -v
            else:
                require 1 <= stor12[address(this.address)].field_0
                require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                require 1 <= stor12[address(this.address)].field_0
                if stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_256 <= block.number:
                    require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                    if 0 == stor12[address(msg.sender)].field_0:
                        require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                        require v >= 0
                        stor12[address(msg.sender)].field_0++
                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                            idx = 2 * stor12[address(msg.sender)].field_0 + 1
                            while 2 * stor12[address(msg.sender)].field_0 > idx:
                                stor12[address(msg.sender)][idx].field_0 = 0
                                stor12[address(msg.sender)][idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                        stor9[address(msg.sender)] = v
                    else:
                        require 0 < stor12[address(msg.sender)].field_0
                        if stor12[address(msg.sender)].field_256 > block.number:
                            require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                            require v >= 0
                            stor12[address(msg.sender)].field_0++
                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                while 2 * stor12[address(msg.sender)].field_0 > idx:
                                    stor12[address(msg.sender)][idx].field_0 = 0
                                    stor12[address(msg.sender)][idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                            stor9[address(msg.sender)] = v
                        else:
                            require 1 <= stor12[address(msg.sender)].field_0
                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                            require 1 <= stor12[address(msg.sender)].field_0
                            if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                    while 2 * stor12[address(msg.sender)].field_0 > idx:
                                        stor12[address(msg.sender)][idx].field_0 = 0
                                        stor12[address(msg.sender)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                            else:
                                require stor12[address(msg.sender)].field_0 - 1 >= 0
                                require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                s = uint255(stor12[address(msg.sender)].field_1)
                                idx = 0
                                while stor12[address(msg.sender)].field_0 - 1 > idx:
                                    require s < stor12[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 12)
                                    if stor12[address(msg.sender)][s].field_256 <= block.number:
                                        if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                            s = stor12[address(msg.sender)].field_0 + s / 2
                                            idx = s
                                            continue 
                                    else:
                                        if 1 <= s:
                                            if s + idx - 1 >= idx:
                                                s = s + idx / 2
                                                idx = idx
                                                continue 
                                    revert
                                require idx < stor12[address(msg.sender)].field_0
                                require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    s = 2 * stor12[address(msg.sender)].field_0 + 1
                                    while 2 * stor12[address(msg.sender)].field_0 > s:
                                        stor12[address(msg.sender)][s].field_0 = 0
                                        stor12[address(msg.sender)][s].field_256 = 0
                                        s = s + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                    require v <= stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0
                    stor12[address(this.address)].field_0++
                    if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                        idx = 2 * stor12[address(this.address)].field_0 + 1
                        while 2 * stor12[address(this.address)].field_0 > idx:
                            stor12[address(this.address)][idx].field_0 = 0
                            stor12[address(this.address)][idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v
                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                    stor9[address(this.address)] = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v
                else:
                    require stor12[address(this.address)].field_0 - 1 >= 0
                    require stor12[address(this.address)].field_0 >= stor12[address(this.address)].field_0 - 1
                    s = uint255(stor12[address(this.address)].field_1)
                    idx = 0
                    while stor12[address(this.address)].field_0 - 1 > idx:
                        require s < stor12[address(this.address)].field_0
                        mem[0] = sha3(address(this.address), 12)
                        if stor12[address(this.address)][s].field_256 <= block.number:
                            if stor12[address(this.address)].field_0 + s - 1 >= s:
                                s = stor12[address(this.address)].field_0 + s / 2
                                idx = s
                                continue 
                        else:
                            if 1 <= s:
                                if s + idx - 1 >= idx:
                                    s = s + idx / 2
                                    idx = idx
                                    continue 
                        revert
                    require idx < stor12[address(this.address)].field_0
                    if 0 == stor12[address(msg.sender)].field_0:
                        require stor12[address(this.address)][idx].field_0 >= v
                        require v >= 0
                        stor12[address(msg.sender)].field_0++
                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                            s = 2 * stor12[address(msg.sender)].field_0 + 1
                            while 2 * stor12[address(msg.sender)].field_0 > s:
                                stor12[address(msg.sender)][s].field_0 = 0
                                stor12[address(msg.sender)][s].field_256 = 0
                                s = s + 2
                                continue 
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                        stor9[address(msg.sender)] = v
                    else:
                        require 0 < stor12[address(msg.sender)].field_0
                        if stor12[address(msg.sender)].field_256 > block.number:
                            require stor12[address(this.address)][idx].field_0 >= v
                            require v >= 0
                            stor12[address(msg.sender)].field_0++
                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                s = 2 * stor12[address(msg.sender)].field_0 + 1
                                while 2 * stor12[address(msg.sender)].field_0 > s:
                                    stor12[address(msg.sender)][s].field_0 = 0
                                    stor12[address(msg.sender)][s].field_256 = 0
                                    s = s + 2
                                    continue 
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                            stor9[address(msg.sender)] = v
                        else:
                            require 1 <= stor12[address(msg.sender)].field_0
                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                            require 1 <= stor12[address(msg.sender)].field_0
                            if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                require stor12[address(this.address)][idx].field_0 >= v
                                require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    s = 2 * stor12[address(msg.sender)].field_0 + 1
                                    while 2 * stor12[address(msg.sender)].field_0 > s:
                                        stor12[address(msg.sender)][s].field_0 = 0
                                        stor12[address(msg.sender)][s].field_256 = 0
                                        s = s + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                            else:
                                require stor12[address(msg.sender)].field_0 - 1 >= 0
                                require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                t = uint255(stor12[address(msg.sender)].field_1)
                                s = 0
                                while stor12[address(msg.sender)].field_0 - 1 > s:
                                    require t < stor12[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 12)
                                    if stor12[address(msg.sender)][t].field_256 <= block.number:
                                        if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                            t = stor12[address(msg.sender)].field_0 + t / 2
                                            s = t
                                            continue 
                                    else:
                                        if 1 <= t:
                                            if t + s - 1 >= s:
                                                t = t + s / 2
                                                s = s
                                                continue 
                                    revert
                                require s < stor12[address(msg.sender)].field_0
                                require stor12[address(this.address)][idx].field_0 >= v
                                require v + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                stor12[address(msg.sender)].field_0++
                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                    t = 2 * stor12[address(msg.sender)].field_0 + 1
                                    while 2 * stor12[address(msg.sender)].field_0 > t:
                                        stor12[address(msg.sender)][t].field_0 = 0
                                        stor12[address(msg.sender)][t].field_256 = 0
                                        t = t + 2
                                        continue 
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][s].field_0
                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][s].field_0
                    require v <= stor12[address(this.address)][idx].field_0
                    stor12[address(this.address)].field_0++
                    if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                        s = 2 * stor12[address(this.address)].field_0 + 1
                        while 2 * stor12[address(this.address)].field_0 > s:
                            stor12[address(this.address)][s].field_0 = 0
                            stor12[address(this.address)][s].field_256 = 0
                            s = s + 2
                            continue 
                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][idx].field_0 - v
                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                    stor9[address(this.address)] = stor12[address(this.address)][idx].field_0 - v
        require msg.value + stor17 >= stor17
        stor17 += msg.value
        emit Transfer(v, this.address, msg.sender);
    else:
        if uint32(call.func_hash) == collectedEthers():
            require not msg.value
            return stor17
        if getIcoTokensAmount(uint256 rg1, uint256 rg2) == uint32(call.func_hash):
            require not msg.value
            s = 0
            t = 0
            idx = 0
            t = arg2
            u = arg1
            v = 0
            while idx < stor18.length:
                mem[0] = 18
                if stor18[idx].field_256 <= u:
                    if t:
                        s = s
                        t = (2 * idx) + sha3(18)
                        idx = idx + 1
                        t = t
                        u = u
                        v = v
                        continue 
                    if t <= 0:
                        return v
                else:
                    require t + u >= u
                    if t + u <= stor18[idx].field_256:
                        require stor18[idx].field_0
                        return (v + (10^18 * t / stor18[idx].field_0))
                    require u <= stor18[idx].field_256
                    if stor18[idx].field_256 - u:
                        require stor18[idx].field_256 - u
                        require (10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_256 - u == 10^18
                    require stor18[idx].field_0
                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= v
                    require stor18[idx].field_256 - u <= t
                    require stor18[idx].field_256 >= u
                    if t - stor18[idx].field_256 + u:
                        s = stor18[idx].field_256 - u
                        t = (2 * idx) + sha3(18)
                        idx = idx + 1
                        t = t - stor18[idx].field_256 + u
                        u = stor18[idx].field_256
                        v = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                        continue 
                    if t - stor18[idx].field_256 + u <= 0:
                        return (((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v)
                return 0
            if t <= 0:
                return v
            return 0
        if name() == uint32(call.func_hash):
            require not msg.value
            mem[128] = uint256(stor3.field_0)
            idx = 128
            s = 0
            while stor3.length + 96 > idx:
                mem[idx + 32] = stor3[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor3.length, data=mem[128 len stor3.length])
        if refundUnclaimedEthers(uint256 rg1) == uint32(call.func_hash):
            require not msg.value
            require stor0 == msg.sender
            require 1 <= stor13.length
            if stor13.length - 1 < arg1:
                return 0
            require arg1 < stor13.length
            if not uint8(stor13[arg1].field_2048):
                require stor13[arg1].field_1792 + stor13[arg1].field_512 >= stor13[arg1].field_512
                if block.timestamp < stor13[arg1].field_1792 + stor13[arg1].field_512:
                    return 0
            require stor13[arg1].field_1024 <= stor13[arg1].field_768
            stor13[arg1].field_1280 = stor13[arg1].field_768 - stor13[arg1].field_1024
            if stor13[arg1].field_768 - stor13[arg1].field_1024 <= 0:
                return 0
            call stor0 with:
               value stor13[arg1].field_768 - stor13[arg1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit UnclaimedDividendTransfer(arg1, stor13[arg1].field_768 - stor13[arg1].field_1024);
            return 1
        if approve(address rg1, uint256 rg2) == uint32(call.func_hash):
            require not msg.value
            if stor7:
                return 0
            stor10[address(msg.sender)][address(arg1)] = arg2
            return 1
        if creationBlock() == uint32(call.func_hash):
            require not msg.value
            return stor8
        if unknown_0x18160ddd(?????) == uint32(call.func_hash):
            require not msg.value
            return stor6
        if icoTill() == uint32(call.func_hash):
            require not msg.value
            return stor16
        if setLocked(bool rg1) == uint32(call.func_hash):
            require not msg.value
            require stor0 == msg.sender
            stor7 = uint8(bool(arg1))
        else:
            if recycleDividend(uint256 rg1) == uint32(call.func_hash):
                require not msg.value
                require stor0 == msg.sender
                require 1 <= stor13.length
                if stor13.length - 1 < arg1:
                    return 0
                require arg1 < stor13.length
                if uint8(stor13[arg1].field_2048):
                    return 0
                uint8(stor13[arg1].field_2048) = 1
                return 1
            if unknown_0x23b872dd(?????) == uint32(call.func_hash):
                require not msg.value
                if stor7:
                    return 0
                if stor10[address(arg1)][address(msg.sender)] < arg3:
                    return 0
                if not arg3:
                    return 0
                if stor9[address(arg1)] < arg3:
                    return 0
                require arg3 <= stor9[address(arg1)]
                stor12[address(arg1)].field_0++
                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                    idx = 2 * stor12[address(arg1)].field_0 + 1
                    while 2 * stor12[address(arg1)].field_0 > idx:
                        stor12[address(arg1)][idx].field_0 = 0
                        stor12[address(arg1)][idx].field_256 = 0
                        idx = idx + 2
                        continue 
                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = stor9[address(arg1)] - arg3
                stor12[address(arg1)][stor12[address(arg1)].field_0].field_256 = block.number
                stor9[address(arg1)] -= arg3
                require arg3 + stor9[address(arg2)] >= stor9[address(arg2)]
                stor12[address(arg2)].field_0++
                if not stor12[address(arg2)].field_0 <= stor12[address(arg2)].field_0 + 1:
                    idx = 2 * stor12[address(arg2)].field_0 + 1
                    while 2 * stor12[address(arg2)].field_0 > idx:
                        stor12[address(arg2)][idx].field_0 = 0
                        stor12[address(arg2)][idx].field_256 = 0
                        idx = idx + 2
                        continue 
                stor12[address(arg2)][stor12[address(arg2)].field_0].field_0 = arg3 + stor9[address(arg2)]
                stor12[address(arg2)][stor12[address(arg2)].field_0].field_256 = block.number
                stor9[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
                stor10[address(arg1)][address(msg.sender)] -= arg3
                return 1
            if phases(uint256 rg1) == uint32(call.func_hash):
                require not msg.value
                require arg1 < stor18.length
                return stor18[arg1].field_0, stor18[arg1].field_256
            if unknown_0x313ce567(?????) == uint32(call.func_hash):
                require not msg.value
                return stor5
            if loggedBalances(address rg1, uint256 rg2) == uint32(call.func_hash):
                require not msg.value
                require arg2 < stor12[address(arg1)].field_0
                return stor12[address(arg1)][arg2].field_0, stor12[address(arg1)][arg2].field_256
            if icoSince() == uint32(call.func_hash):
                require not msg.value
                return stor15
            if unknown_0x5a3b7e42(?????) == uint32(call.func_hash):
                require not msg.value
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length, data=mem[128 len stor2.length])
            if claimDividends() == uint32(call.func_hash):
                require not msg.value
                require stor14[address(msg.sender)] < stor13.length
                mem[0] = msg.sender
                mem[32] = 14
                idx = stor[sha3(mem[0 len 64])]
                while idx < stor13.length:
                    mem[0] = msg.sender
                    mem[32] = (10 * idx) + sha3(13) + 9
                    if not uint8(stor[(10 * idx) + ('name', 'stor13', 13) + 9][address(msg.sender)].field_0):
                        require idx < stor13.length
                        mem[0] = 13
                        if not uint8(stor13[idx].field_2048):
                            require idx + 1 >= idx
                            mem[0] = msg.sender
                            mem[32] = 14
                            stor14[address(msg.sender)] = idx + 1
                            require 1 <= stor13.length
                            if stor13.length - 1 >= idx:
                                require idx < stor13.length
                                mem[0] = msg.sender
                                mem[32] = (10 * idx) + sha3(13) + 9
                                if bool(uint8(stor[(10 * idx) + ('name', 'stor13', 13) + 9][address(msg.sender)].field_0)) != 1:
                                    if bool(uint8(stor13[idx].field_2048)) != 1:
                                        require stor13[idx].field_1792 + stor13[idx].field_512 >= stor13[idx].field_512
                                        if block.timestamp < stor13[idx].field_1792 + stor13[idx].field_512:
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            if stor12[address(msg.sender)].field_0 != 0:
                                                require 0 < stor12[address(msg.sender)].field_0
                                                mem[0] = sha3(address(msg.sender), 12)
                                                if stor12[address(msg.sender)].field_256 <= stor13[idx].field_256:
                                                    require 1 <= stor12[address(msg.sender)].field_0
                                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                    require 1 <= stor12[address(msg.sender)].field_0
                                                    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= stor13[idx].field_256:
                                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                        mem[0] = sha3(address(msg.sender), 12)
                                                        if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0:
                                                            require stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                            require stor13[idx].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 == stor13[idx].field_768
                                                            require stor13[idx].field_1536
                                                            mem[0] = msg.sender
                                                            mem[32] = (10 * idx) + sha3(13) + 9
                                                            uint8(stor[(10 * idx) + ('name', 'stor13', 13) + 9][address(msg.sender)].field_0) = 1
                                                            require (stor13[idx].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[idx].field_1536) + stor13[idx].field_1024 >= stor13[idx].field_1024
                                                            stor13[idx].field_1024 += stor13[idx].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[idx].field_1536
                                                            if stor13[idx].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[idx].field_1536 > 0:
                                                                call msg.sender with:
                                                                   value stor13[idx].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[idx].field_1536 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                mem[96] = idx
                                                                mem[128] = stor13[idx].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[idx].field_1536
                                                                emit DividendClaimed(idx, stor13[idx].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[idx].field_1536, msg.sender);
                                                    else:
                                                        require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                        require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                        t = uint255(stor12[address(msg.sender)].field_1)
                                                        s = 0
                                                        while stor12[address(msg.sender)].field_0 - 1 > s:
                                                            require t < stor12[address(msg.sender)].field_0
                                                            mem[0] = sha3(address(msg.sender), 12)
                                                            if stor12[address(msg.sender)][t].field_256 <= stor13[idx].field_256:
                                                                if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                                                    t = stor12[address(msg.sender)].field_0 + t / 2
                                                                    s = t
                                                                    continue 
                                                            else:
                                                                if 1 <= t:
                                                                    if t + s - 1 >= s:
                                                                        t = t + s / 2
                                                                        s = s
                                                                        continue 
                                                            revert
                                                        require s < stor12[address(msg.sender)].field_0
                                                        mem[0] = sha3(address(msg.sender), 12)
                                                        if stor12[address(msg.sender)][s].field_0:
                                                            require stor12[address(msg.sender)][s].field_0
                                                            require stor13[idx].field_768 * stor12[address(msg.sender)][s].field_0 / stor12[address(msg.sender)][s].field_0 == stor13[idx].field_768
                                                            require stor13[idx].field_1536
                                                            mem[0] = msg.sender
                                                            mem[32] = (10 * idx) + sha3(13) + 9
                                                            uint8(stor[(10 * idx) + ('name', 'stor13', 13) + 9][address(msg.sender)].field_0) = 1
                                                            require (stor13[idx].field_768 * stor12[address(msg.sender)][s].field_0 / stor13[idx].field_1536) + stor13[idx].field_1024 >= stor13[idx].field_1024
                                                            stor13[idx].field_1024 += stor13[idx].field_768 * stor12[address(msg.sender)][s].field_0 / stor13[idx].field_1536
                                                            if stor13[idx].field_768 * stor12[address(msg.sender)][s].field_0 / stor13[idx].field_1536 > 0:
                                                                call msg.sender with:
                                                                   value stor13[idx].field_768 * stor12[address(msg.sender)][s].field_0 / stor13[idx].field_1536 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                mem[96] = idx
                                                                mem[128] = stor13[idx].field_768 * stor12[address(msg.sender)][s].field_0 / stor13[idx].field_1536
                                                                emit DividendClaimed(idx, stor13[idx].field_768 * stor12[address(msg.sender)][s].field_0 / stor13[idx].field_1536, msg.sender);
                    idx = idx + 1
                    continue 
            else:
                if setMigrateAddress(address rg1) == uint32(call.func_hash):
                    require not msg.value
                    require stor0 == msg.sender
                    stor19 = address(arg1)
                else:
                    if unknown_0x70a08231(?????) == uint32(call.func_hash):
                        require not msg.value
                        return stor9[address(arg1)]
                    if addDividend(uint256 rg1) == uint32(call.func_hash):
                        require stor0 == msg.sender
                        require msg.value > 0
                        stor13.length++
                        if not stor13.length <= stor13.length + 1:
                            idx = (10 * stor13.length) + 10
                            while 10 * stor13.length > idx:
                                stor13[idx].field_0 = 0
                                stor13[idx].field_256 = 0
                                stor13[idx].field_512 = 0
                                stor13[idx].field_768 = 0
                                stor13[idx].field_1024 = 0
                                stor13[idx].field_1280 = 0
                                stor13[idx].field_1536 = 0
                                stor13[idx].field_1792 = 0
                                uint8(stor13[idx].field_2048) = 0
                                idx = idx + 10
                                continue 
                        stor13[stor13.length].field_0 = stor13.length
                        stor13[stor13.length].field_256 = block.number
                        stor13[stor13.length].field_512 = block.timestamp
                        stor13[stor13.length].field_768 = msg.value
                        stor13[stor13.length].field_1024 = 0
                        stor13[stor13.length].field_1280 = 0
                        stor13[stor13.length].field_1536 = stor6
                        stor13[stor13.length].field_1792 = arg1
                        uint8(stor13[stor13.length].field_2048) = 0
                        emit DividendTransfered(stor13.length, block.number, msg.value, stor6, msg.sender);
                    else:
                        if acceptOwnership() == uint32(call.func_hash):
                            require not msg.value
                            if address(stor1.length) == msg.sender:
                                stor0 = address(stor1.length)
                        else:
                            if setIcoDates(uint256 rg1, uint256 rg2) == uint32(call.func_hash):
                                require not msg.value
                                require stor0 == msg.sender
                                stor15 = arg1
                                stor16 = arg2
                            else:
                                if dividends(uint256 rg1) == uint32(call.func_hash):
                                    require not msg.value
                                    require arg1 < stor13.length
                                    return stor13[arg1].field_0, 
                                           stor13[arg1].field_256,
                                           stor13[arg1].field_512,
                                           stor13[arg1].field_768,
                                           stor13[arg1].field_1024,
                                           stor13[arg1].field_1280,
                                           stor13[arg1].field_1536,
                                           stor13[arg1].field_1792,
                                           bool(uint8(stor13[arg1].field_2048))
                                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return stor0
                                if unknown_0x95d89b41(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    mem[128] = uint256(stor4.field_0)
                                    idx = 128
                                    s = 0
                                    while stor4.length + 96 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor4.length, data=mem[128 len stor4.length])
                                if claimDividend(uint256 rg1) == uint32(call.func_hash):
                                    require not msg.value
                                    require 1 <= stor13.length
                                    if stor13.length - 1 < arg1:
                                        return 0
                                    require arg1 < stor13.length
                                    if 1 == bool(uint8(stor[(10 * arg1) + ('name', 'stor13', 13) + 9][address(msg.sender)].field_0)):
                                        return 0
                                    if 1 == bool(uint8(stor13[arg1].field_2048)):
                                        return 0
                                    require stor13[arg1].field_1792 + stor13[arg1].field_512 >= stor13[arg1].field_512
                                    if block.timestamp >= stor13[arg1].field_1792 + stor13[arg1].field_512:
                                        return 0
                                    if 0 == stor12[address(msg.sender)].field_0:
                                        return 0
                                    require 0 < stor12[address(msg.sender)].field_0
                                    if stor12[address(msg.sender)].field_256 > stor13[arg1].field_256:
                                        return 0
                                    require 1 <= stor12[address(msg.sender)].field_0
                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                    require 1 <= stor12[address(msg.sender)].field_0
                                    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= stor13[arg1].field_256:
                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                        if not stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0:
                                            return 0
                                        require stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                        require stor13[arg1].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 == stor13[arg1].field_768
                                        require stor13[arg1].field_1536
                                        uint8(stor[(10 * arg1) + ('name', 'stor13', 13) + 9][address(msg.sender)].field_0) = 1
                                        require (stor13[arg1].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[arg1].field_1536) + stor13[arg1].field_1024 >= stor13[arg1].field_1024
                                        stor13[arg1].field_1024 += stor13[arg1].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[arg1].field_1536
                                        if stor13[arg1].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[arg1].field_1536 <= 0:
                                            return 0
                                        call msg.sender with:
                                           value stor13[arg1].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[arg1].field_1536 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit DividendClaimed(arg1, stor13[arg1].field_768 * stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 / stor13[arg1].field_1536, msg.sender);
                                    else:
                                        require stor12[address(msg.sender)].field_0 - 1 >= 0
                                        require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                        s = uint255(stor12[address(msg.sender)].field_1)
                                        idx = 0
                                        while stor12[address(msg.sender)].field_0 - 1 > idx:
                                            require s < stor12[address(msg.sender)].field_0
                                            mem[0] = sha3(address(msg.sender), 12)
                                            if stor12[address(msg.sender)][s].field_256 <= stor13[arg1].field_256:
                                                if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                                    s = stor12[address(msg.sender)].field_0 + s / 2
                                                    idx = s
                                                    continue 
                                            else:
                                                if 1 <= s:
                                                    if s + idx - 1 >= idx:
                                                        s = s + idx / 2
                                                        idx = idx
                                                        continue 
                                            revert
                                        require idx < stor12[address(msg.sender)].field_0
                                        if not stor12[address(msg.sender)][idx].field_0:
                                            return 0
                                        require stor12[address(msg.sender)][idx].field_0
                                        require stor13[arg1].field_768 * stor12[address(msg.sender)][idx].field_0 / stor12[address(msg.sender)][idx].field_0 == stor13[arg1].field_768
                                        require stor13[arg1].field_1536
                                        uint8(stor[(10 * arg1) + ('name', 'stor13', 13) + 9][address(msg.sender)].field_0) = 1
                                        require (stor13[arg1].field_768 * stor12[address(msg.sender)][idx].field_0 / stor13[arg1].field_1536) + stor13[arg1].field_1024 >= stor13[arg1].field_1024
                                        stor13[arg1].field_1024 += stor13[arg1].field_768 * stor12[address(msg.sender)][idx].field_0 / stor13[arg1].field_1536
                                        if stor13[arg1].field_768 * stor12[address(msg.sender)][idx].field_0 / stor13[arg1].field_1536 <= 0:
                                            return 0
                                        call msg.sender with:
                                           value stor13[arg1].field_768 * stor12[address(msg.sender)][idx].field_0 / stor13[arg1].field_1536 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit DividendClaimed(arg1, stor13[arg1].field_768 * stor12[address(msg.sender)][idx].field_0 / stor13[arg1].field_1536, msg.sender);
                                    return 1
                                if loggedTotalSupply(uint256 rg1) == uint32(call.func_hash):
                                    require not msg.value
                                    require arg1 < stor11.length
                                    return stor11[arg1].field_0, stor11[arg1].field_256
                                if unknown_0xa9059cbb(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    require 68 == calldata.size
                                    require not stor7
                                    require arg2
                                    require stor9[address(msg.sender)] >= arg2
                                    require arg2 <= stor9[address(msg.sender)]
                                    stor12[address(msg.sender)].field_0++
                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                        idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                        while 2 * stor12[address(msg.sender)].field_0 > idx:
                                            stor12[address(msg.sender)][idx].field_0 = 0
                                            stor12[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = stor9[address(msg.sender)] - arg2
                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                    stor9[address(msg.sender)] -= arg2
                                    require arg2 + stor9[address(arg1)] >= stor9[address(arg1)]
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = 2 * stor12[address(arg1)].field_0 + 1
                                        while 2 * stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            stor12[address(arg1)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = arg2 + stor9[address(arg1)]
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_256 = block.number
                                    stor9[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if setMigratedBalance(address rg1, uint256 rg2) == uint32(call.func_hash):
                                        require not msg.value
                                        require stor19 == msg.sender
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = 2 * stor12[address(arg1)].field_0 + 1
                                            while 2 * stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                stor12[address(arg1)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = arg2
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_256 = block.number
                                        stor9[address(arg1)] = arg2
                                        require arg2 <= stor9[address(this.address)]
                                        require stor9[address(this.address)] - arg2 >= 0
                                        require arg2 <= stor9[address(this.address)]
                                        stor12[address(this.address)].field_0++
                                        if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                            idx = 2 * stor12[address(this.address)].field_0 + 1
                                            while 2 * stor12[address(this.address)].field_0 > idx:
                                                stor12[address(this.address)][idx].field_0 = 0
                                                stor12[address(this.address)][idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor9[address(this.address)] - arg2
                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                        stor9[address(this.address)] -= arg2
                                        emit Transfer(arg2, this.address, address(arg1));
                                    else:
                                        if locked() == uint32(call.func_hash):
                                            require not msg.value
                                            return bool(stor7)
                                        if transferEthers() == uint32(call.func_hash):
                                            require not msg.value
                                            require stor0 == msg.sender
                                            call stor0 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                        else:
                                            if unknown_0xd4ee1d90(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return address(stor1.length)
                                            if unknown_0xdd62ed3e(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return stor10[address(arg1)][address(arg2)]
                                            if unknown_0xf2fde38b(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                require stor0 == msg.sender
                                                require address(arg1)
                                                address(stor1.length) = address(arg1)
                                            else:
                                                require bool(stor7) != 1
                                                require block.timestamp >= stor15
                                                require block.timestamp <= stor16
                                                require msg.value
                                                s = 0
                                                t = 0
                                                idx = 0
                                                t = msg.value
                                                u = stor17
                                                v = 0
                                                while idx < stor18.length:
                                                    mem[0] = 18
                                                    if stor18[idx].field_256 <= u:
                                                        if t:
                                                            s = s
                                                            t = (2 * idx) + sha3(18)
                                                            idx = idx + 1
                                                            t = t
                                                            u = u
                                                            v = v
                                                            continue 
                                                        require t <= 0
                                                        require v
                                                        if 0 == stor12[address(this.address)].field_0:
                                                            if 0 == stor12[address(msg.sender)].field_0:
                                                                require 0 >= v
                                                                require v >= 0
                                                                stor12[address(msg.sender)].field_0++
                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                    idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                                                        stor[idx] = 0
                                                                        uint256(stor1[idx]) = 0
                                                                        idx = idx + 2
                                                                        continue 
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                stor9[address(msg.sender)] = v
                                                            else:
                                                                require 0 < stor12[address(msg.sender)].field_0
                                                                if stor12[address(msg.sender)].field_256 > block.number:
                                                                    require 0 >= v
                                                                    require v >= 0
                                                                    stor12[address(msg.sender)].field_0++
                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                        idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                                                            stor[idx] = 0
                                                                            uint256(stor1[idx]) = 0
                                                                            idx = idx + 2
                                                                            continue 
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                    stor9[address(msg.sender)] = v
                                                                else:
                                                                    require 1 <= stor12[address(msg.sender)].field_0
                                                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                    require 1 <= stor12[address(msg.sender)].field_0
                                                                    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                        require 0 >= v
                                                                        require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                                                                stor[idx] = 0
                                                                                uint256(stor1[idx]) = 0
                                                                                idx = idx + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                    else:
                                                                        require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                        require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                        s = uint255(stor12[address(msg.sender)].field_1)
                                                                        idx = 0
                                                                        while stor12[address(msg.sender)].field_0 - 1 > idx:
                                                                            require s < stor12[address(msg.sender)].field_0
                                                                            mem[0] = sha3(address(msg.sender), 12)
                                                                            if stor12[address(msg.sender)][s].field_256 <= block.number:
                                                                                if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                                                                    s = stor12[address(msg.sender)].field_0 + s / 2
                                                                                    idx = s
                                                                                    continue 
                                                                            else:
                                                                                if 1 <= s:
                                                                                    if s + idx - 1 >= idx:
                                                                                        s = s + idx / 2
                                                                                        idx = idx
                                                                                        continue 
                                                                            revert
                                                                        require idx < stor12[address(msg.sender)].field_0
                                                                        require 0 >= v
                                                                        require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                stor[s] = 0
                                                                                uint256(stor1[s]) = 0
                                                                                s = s + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                                                            require v <= 0
                                                            stor12[address(this.address)].field_0++
                                                            if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                idx = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > idx:
                                                                    stor[idx] = 0
                                                                    uint256(stor1[idx]) = 0
                                                                    idx = idx + 2
                                                                    continue 
                                                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v
                                                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                            stor9[address(this.address)] = -v
                                                        else:
                                                            require 0 < stor12[address(this.address)].field_0
                                                            if stor12[address(this.address)].field_256 > block.number:
                                                                if 0 == stor12[address(msg.sender)].field_0:
                                                                    require 0 >= v
                                                                    require v >= 0
                                                                    stor12[address(msg.sender)].field_0++
                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                        idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                                                            stor[idx] = 0
                                                                            uint256(stor1[idx]) = 0
                                                                            idx = idx + 2
                                                                            continue 
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                    stor9[address(msg.sender)] = v
                                                                else:
                                                                    require 0 < stor12[address(msg.sender)].field_0
                                                                    if stor12[address(msg.sender)].field_256 > block.number:
                                                                        require 0 >= v
                                                                        require v >= 0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                                                                stor[idx] = 0
                                                                                uint256(stor1[idx]) = 0
                                                                                idx = idx + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v
                                                                    else:
                                                                        require 1 <= stor12[address(msg.sender)].field_0
                                                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                        require 1 <= stor12[address(msg.sender)].field_0
                                                                        if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                            require 0 >= v
                                                                            require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                                                                    stor[idx] = 0
                                                                                    uint256(stor1[idx]) = 0
                                                                                    idx = idx + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                        else:
                                                                            require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                            require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                            s = uint255(stor12[address(msg.sender)].field_1)
                                                                            idx = 0
                                                                            while stor12[address(msg.sender)].field_0 - 1 > idx:
                                                                                require s < stor12[address(msg.sender)].field_0
                                                                                mem[0] = sha3(address(msg.sender), 12)
                                                                                if stor12[address(msg.sender)][s].field_256 <= block.number:
                                                                                    if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                                                                        s = stor12[address(msg.sender)].field_0 + s / 2
                                                                                        idx = s
                                                                                        continue 
                                                                                else:
                                                                                    if 1 <= s:
                                                                                        if s + idx - 1 >= idx:
                                                                                            s = s + idx / 2
                                                                                            idx = idx
                                                                                            continue 
                                                                                revert
                                                                            require idx < stor12[address(msg.sender)].field_0
                                                                            require 0 >= v
                                                                            require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                    stor[s] = 0
                                                                                    uint256(stor1[s]) = 0
                                                                                    s = s + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                                                                require v <= 0
                                                                stor12[address(this.address)].field_0++
                                                                if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                    idx = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                    while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > idx:
                                                                        stor[idx] = 0
                                                                        uint256(stor1[idx]) = 0
                                                                        idx = idx + 2
                                                                        continue 
                                                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v
                                                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                stor9[address(this.address)] = -v
                                                            else:
                                                                require 1 <= stor12[address(this.address)].field_0
                                                                require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                                                                require 1 <= stor12[address(this.address)].field_0
                                                                if stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_256 <= block.number:
                                                                    require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                                                                    if 0 == stor12[address(msg.sender)].field_0:
                                                                        require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                                                        require v >= 0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                                                                stor[idx] = 0
                                                                                uint256(stor1[idx]) = 0
                                                                                idx = idx + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v
                                                                    else:
                                                                        require 0 < stor12[address(msg.sender)].field_0
                                                                        if stor12[address(msg.sender)].field_256 > block.number:
                                                                            require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                                                            require v >= 0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                                                                    stor[idx] = 0
                                                                                    uint256(stor1[idx]) = 0
                                                                                    idx = idx + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = v
                                                                        else:
                                                                            require 1 <= stor12[address(msg.sender)].field_0
                                                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                            require 1 <= stor12[address(msg.sender)].field_0
                                                                            if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                                                                require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    idx = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > idx:
                                                                                        stor[idx] = 0
                                                                                        uint256(stor1[idx]) = 0
                                                                                        idx = idx + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                            else:
                                                                                require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                                require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                                s = uint255(stor12[address(msg.sender)].field_1)
                                                                                idx = 0
                                                                                while stor12[address(msg.sender)].field_0 - 1 > idx:
                                                                                    require s < stor12[address(msg.sender)].field_0
                                                                                    mem[0] = sha3(address(msg.sender), 12)
                                                                                    if stor12[address(msg.sender)][s].field_256 <= block.number:
                                                                                        if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                                                                            s = stor12[address(msg.sender)].field_0 + s / 2
                                                                                            idx = s
                                                                                            continue 
                                                                                    else:
                                                                                        if 1 <= s:
                                                                                            if s + idx - 1 >= idx:
                                                                                                s = s + idx / 2
                                                                                                idx = idx
                                                                                                continue 
                                                                                    revert
                                                                                require idx < stor12[address(msg.sender)].field_0
                                                                                require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                                                                require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                        stor[s] = 0
                                                                                        uint256(stor1[s]) = 0
                                                                                        s = s + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                                                                    require v <= stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0
                                                                    stor12[address(this.address)].field_0++
                                                                    if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                        idx = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                        while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > idx:
                                                                            stor[idx] = 0
                                                                            uint256(stor1[idx]) = 0
                                                                            idx = idx + 2
                                                                            continue 
                                                                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v
                                                                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                    stor9[address(this.address)] = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v
                                                                else:
                                                                    require stor12[address(this.address)].field_0 - 1 >= 0
                                                                    require stor12[address(this.address)].field_0 >= stor12[address(this.address)].field_0 - 1
                                                                    s = uint255(stor12[address(this.address)].field_1)
                                                                    idx = 0
                                                                    while stor12[address(this.address)].field_0 - 1 > idx:
                                                                        require s < stor12[address(this.address)].field_0
                                                                        mem[0] = sha3(address(this.address), 12)
                                                                        if stor12[address(this.address)][s].field_256 <= block.number:
                                                                            if stor12[address(this.address)].field_0 + s - 1 >= s:
                                                                                s = stor12[address(this.address)].field_0 + s / 2
                                                                                idx = s
                                                                                continue 
                                                                        else:
                                                                            if 1 <= s:
                                                                                if s + idx - 1 >= idx:
                                                                                    s = s + idx / 2
                                                                                    idx = idx
                                                                                    continue 
                                                                        revert
                                                                    require idx < stor12[address(this.address)].field_0
                                                                    if 0 == stor12[address(msg.sender)].field_0:
                                                                        require stor12[address(this.address)][idx].field_0 >= v
                                                                        require v >= 0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                stor[s] = 0
                                                                                uint256(stor1[s]) = 0
                                                                                s = s + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v
                                                                    else:
                                                                        require 0 < stor12[address(msg.sender)].field_0
                                                                        if stor12[address(msg.sender)].field_256 > block.number:
                                                                            require stor12[address(this.address)][idx].field_0 >= v
                                                                            require v >= 0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                    stor[s] = 0
                                                                                    uint256(stor1[s]) = 0
                                                                                    s = s + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = v
                                                                        else:
                                                                            require 1 <= stor12[address(msg.sender)].field_0
                                                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                            require 1 <= stor12[address(msg.sender)].field_0
                                                                            if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                require stor12[address(this.address)][idx].field_0 >= v
                                                                                require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                        stor[s] = 0
                                                                                        uint256(stor1[s]) = 0
                                                                                        s = s + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                            else:
                                                                                require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                                require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                                t = uint255(stor12[address(msg.sender)].field_1)
                                                                                s = 0
                                                                                while stor12[address(msg.sender)].field_0 - 1 > s:
                                                                                    require t < stor12[address(msg.sender)].field_0
                                                                                    mem[0] = sha3(address(msg.sender), 12)
                                                                                    if stor12[address(msg.sender)][t].field_256 <= block.number:
                                                                                        if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                                                                            t = stor12[address(msg.sender)].field_0 + t / 2
                                                                                            s = t
                                                                                            continue 
                                                                                    else:
                                                                                        if 1 <= t:
                                                                                            if t + s - 1 >= s:
                                                                                                t = t + s / 2
                                                                                                s = s
                                                                                                continue 
                                                                                    revert
                                                                                require s < stor12[address(msg.sender)].field_0
                                                                                require stor12[address(this.address)][idx].field_0 >= v
                                                                                require v + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                                                        stor[t] = 0
                                                                                        uint256(stor1[t]) = 0
                                                                                        t = t + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][s].field_0
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][s].field_0
                                                                    require v <= stor12[address(this.address)][idx].field_0
                                                                    stor12[address(this.address)].field_0++
                                                                    if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                        s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                        while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                                                            stor[s] = 0
                                                                            uint256(stor1[s]) = 0
                                                                            s = s + 2
                                                                            continue 
                                                                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][idx].field_0 - v
                                                                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                    stor9[address(this.address)] = stor12[address(this.address)][idx].field_0 - v
                                                        require msg.value + stor17 >= stor17
                                                        stor17 += msg.value
                                                        emit Transfer(v, this.address, msg.sender);
                                                    else:
                                                        require t + u >= u
                                                        if t + u <= stor18[idx].field_256:
                                                            require stor18[idx].field_0
                                                            require v + (10^18 * t / stor18[idx].field_0)
                                                            if 0 == stor12[address(this.address)].field_0:
                                                                if 0 == stor12[address(msg.sender)].field_0:
                                                                    require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                    require v + (10^18 * t / stor18[idx].field_0) >= 0
                                                                    stor12[address(msg.sender)].field_0++
                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                            stor[s] = 0
                                                                            uint256(stor1[s]) = 0
                                                                            s = s + 2
                                                                            continue 
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                    stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                                                else:
                                                                    require 0 < stor12[address(msg.sender)].field_0
                                                                    if stor12[address(msg.sender)].field_256 > block.number:
                                                                        require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                        require v + (10^18 * t / stor18[idx].field_0) >= 0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                stor[s] = 0
                                                                                uint256(stor1[s]) = 0
                                                                                s = s + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                                                    else:
                                                                        require 1 <= stor12[address(msg.sender)].field_0
                                                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                        require 1 <= stor12[address(msg.sender)].field_0
                                                                        if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                            require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                            require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                    stor[s] = 0
                                                                                    uint256(stor1[s]) = 0
                                                                                    s = s + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                        else:
                                                                            require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                            require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                            u = uint255(stor12[address(msg.sender)].field_1)
                                                                            s = 0
                                                                            while stor12[address(msg.sender)].field_0 - 1 > s:
                                                                                require u < stor12[address(msg.sender)].field_0
                                                                                mem[0] = sha3(address(msg.sender), 12)
                                                                                if stor12[address(msg.sender)][u].field_256 <= block.number:
                                                                                    if stor12[address(msg.sender)].field_0 + u - 1 >= u:
                                                                                        u = stor12[address(msg.sender)].field_0 + u / 2
                                                                                        s = u
                                                                                        continue 
                                                                                else:
                                                                                    if 1 <= u:
                                                                                        if u + s - 1 >= s:
                                                                                            u = u + s / 2
                                                                                            s = s
                                                                                            continue 
                                                                                revert
                                                                            require s < stor12[address(msg.sender)].field_0
                                                                            require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                            require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                                                                    stor[u] = 0
                                                                                    uint256(stor1[u]) = 0
                                                                                    u = u + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                                                                require v + (10^18 * t / stor18[idx].field_0) <= 0
                                                                stor12[address(this.address)].field_0++
                                                                if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                    s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                    while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                                                        stor[s] = 0
                                                                        uint256(stor1[s]) = 0
                                                                        s = s + 2
                                                                        continue 
                                                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v - (10^18 * t / stor18[idx].field_0)
                                                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                stor9[address(this.address)] = -v - (10^18 * t / stor18[idx].field_0)
                                                            else:
                                                                require 0 < stor12[address(this.address)].field_0
                                                                if stor12[address(this.address)].field_256 > block.number:
                                                                    if 0 == stor12[address(msg.sender)].field_0:
                                                                        require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                        require v + (10^18 * t / stor18[idx].field_0) >= 0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                stor[s] = 0
                                                                                uint256(stor1[s]) = 0
                                                                                s = s + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                                                    else:
                                                                        require 0 < stor12[address(msg.sender)].field_0
                                                                        if stor12[address(msg.sender)].field_256 > block.number:
                                                                            require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                            require v + (10^18 * t / stor18[idx].field_0) >= 0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                    stor[s] = 0
                                                                                    uint256(stor1[s]) = 0
                                                                                    s = s + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                                                        else:
                                                                            require 1 <= stor12[address(msg.sender)].field_0
                                                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                            require 1 <= stor12[address(msg.sender)].field_0
                                                                            if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                                require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                        stor[s] = 0
                                                                                        uint256(stor1[s]) = 0
                                                                                        s = s + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                            else:
                                                                                require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                                require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                                u = uint255(stor12[address(msg.sender)].field_1)
                                                                                s = 0
                                                                                while stor12[address(msg.sender)].field_0 - 1 > s:
                                                                                    require u < stor12[address(msg.sender)].field_0
                                                                                    mem[0] = sha3(address(msg.sender), 12)
                                                                                    if stor12[address(msg.sender)][u].field_256 <= block.number:
                                                                                        if stor12[address(msg.sender)].field_0 + u - 1 >= u:
                                                                                            u = stor12[address(msg.sender)].field_0 + u / 2
                                                                                            s = u
                                                                                            continue 
                                                                                    else:
                                                                                        if 1 <= u:
                                                                                            if u + s - 1 >= s:
                                                                                                u = u + s / 2
                                                                                                s = s
                                                                                                continue 
                                                                                    revert
                                                                                require s < stor12[address(msg.sender)].field_0
                                                                                require 0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                                require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                                                                        stor[u] = 0
                                                                                        uint256(stor1[u]) = 0
                                                                                        u = u + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                                                                    require v + (10^18 * t / stor18[idx].field_0) <= 0
                                                                    stor12[address(this.address)].field_0++
                                                                    if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                        s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                        while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                                                            stor[s] = 0
                                                                            uint256(stor1[s]) = 0
                                                                            s = s + 2
                                                                            continue 
                                                                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v - (10^18 * t / stor18[idx].field_0)
                                                                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                    stor9[address(this.address)] = -v - (10^18 * t / stor18[idx].field_0)
                                                                else:
                                                                    require 1 <= stor12[address(this.address)].field_0
                                                                    require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                                                                    require 1 <= stor12[address(this.address)].field_0
                                                                    if stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_256 <= block.number:
                                                                        require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                                                                        if 0 == stor12[address(msg.sender)].field_0:
                                                                            require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                            require v + (10^18 * t / stor18[idx].field_0) >= 0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                    stor[s] = 0
                                                                                    uint256(stor1[s]) = 0
                                                                                    s = s + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                                                        else:
                                                                            require 0 < stor12[address(msg.sender)].field_0
                                                                            if stor12[address(msg.sender)].field_256 > block.number:
                                                                                require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                                require v + (10^18 * t / stor18[idx].field_0) >= 0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                        stor[s] = 0
                                                                                        uint256(stor1[s]) = 0
                                                                                        s = s + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                                                            else:
                                                                                require 1 <= stor12[address(msg.sender)].field_0
                                                                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                require 1 <= stor12[address(msg.sender)].field_0
                                                                                if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                    require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                                    require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                    stor12[address(msg.sender)].field_0++
                                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                            stor[s] = 0
                                                                                            uint256(stor1[s]) = 0
                                                                                            s = s + 2
                                                                                            continue 
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                    stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                else:
                                                                                    require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                                    require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                                    u = uint255(stor12[address(msg.sender)].field_1)
                                                                                    s = 0
                                                                                    while stor12[address(msg.sender)].field_0 - 1 > s:
                                                                                        require u < stor12[address(msg.sender)].field_0
                                                                                        mem[0] = sha3(address(msg.sender), 12)
                                                                                        if stor12[address(msg.sender)][u].field_256 <= block.number:
                                                                                            if stor12[address(msg.sender)].field_0 + u - 1 >= u:
                                                                                                u = stor12[address(msg.sender)].field_0 + u / 2
                                                                                                s = u
                                                                                                continue 
                                                                                        else:
                                                                                            if 1 <= u:
                                                                                                if u + s - 1 >= s:
                                                                                                    u = u + s / 2
                                                                                                    s = s
                                                                                                    continue 
                                                                                        revert
                                                                                    require s < stor12[address(msg.sender)].field_0
                                                                                    require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                                    require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                                                                    stor12[address(msg.sender)].field_0++
                                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                        u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                                                                            stor[u] = 0
                                                                                            uint256(stor1[u]) = 0
                                                                                            u = u + 2
                                                                                            continue 
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                    stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][s].field_0
                                                                        require v + (10^18 * t / stor18[idx].field_0) <= stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0
                                                                        stor12[address(this.address)].field_0++
                                                                        if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                            s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                            while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                                                                stor[s] = 0
                                                                                uint256(stor1[s]) = 0
                                                                                s = s + 2
                                                                                continue 
                                                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v - (10^18 * t / stor18[idx].field_0)
                                                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                        stor9[address(this.address)] = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v - (10^18 * t / stor18[idx].field_0)
                                                                    else:
                                                                        require stor12[address(this.address)].field_0 - 1 >= 0
                                                                        require stor12[address(this.address)].field_0 >= stor12[address(this.address)].field_0 - 1
                                                                        u = uint255(stor12[address(this.address)].field_1)
                                                                        s = 0
                                                                        while stor12[address(this.address)].field_0 - 1 > s:
                                                                            require u < stor12[address(this.address)].field_0
                                                                            mem[0] = sha3(address(this.address), 12)
                                                                            if stor12[address(this.address)][u].field_256 <= block.number:
                                                                                if stor12[address(this.address)].field_0 + u - 1 >= u:
                                                                                    u = stor12[address(this.address)].field_0 + u / 2
                                                                                    s = u
                                                                                    continue 
                                                                            else:
                                                                                if 1 <= u:
                                                                                    if u + s - 1 >= s:
                                                                                        u = u + s / 2
                                                                                        s = s
                                                                                        continue 
                                                                            revert
                                                                        require s < stor12[address(this.address)].field_0
                                                                        if 0 == stor12[address(msg.sender)].field_0:
                                                                            require stor12[address(this.address)][s].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                            require v + (10^18 * t / stor18[idx].field_0) >= 0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                                                                    stor[u] = 0
                                                                                    uint256(stor1[u]) = 0
                                                                                    u = u + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                                                        else:
                                                                            require 0 < stor12[address(msg.sender)].field_0
                                                                            if stor12[address(msg.sender)].field_256 > block.number:
                                                                                require stor12[address(this.address)][s].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                                require v + (10^18 * t / stor18[idx].field_0) >= 0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                                                                        stor[u] = 0
                                                                                        uint256(stor1[u]) = 0
                                                                                        u = u + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0)
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0)
                                                                            else:
                                                                                require 1 <= stor12[address(msg.sender)].field_0
                                                                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                require 1 <= stor12[address(msg.sender)].field_0
                                                                                if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                    require stor12[address(this.address)][s].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                                    require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                    stor12[address(msg.sender)].field_0++
                                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                        u = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > u:
                                                                                            stor[u] = 0
                                                                                            uint256(stor1[u]) = 0
                                                                                            u = u + 2
                                                                                            continue 
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                    stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                else:
                                                                                    require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                                    require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                                    w = uint255(stor12[address(msg.sender)].field_1)
                                                                                    u = 0
                                                                                    while stor12[address(msg.sender)].field_0 - 1 > u:
                                                                                        require w < stor12[address(msg.sender)].field_0
                                                                                        mem[0] = sha3(address(msg.sender), 12)
                                                                                        if stor12[address(msg.sender)][w].field_256 <= block.number:
                                                                                            if stor12[address(msg.sender)].field_0 + w - 1 >= w:
                                                                                                w = stor12[address(msg.sender)].field_0 + w / 2
                                                                                                u = w
                                                                                                continue 
                                                                                        else:
                                                                                            if 1 <= w:
                                                                                                if w + u - 1 >= u:
                                                                                                    w = w + u / 2
                                                                                                    u = u
                                                                                                    continue 
                                                                                        revert
                                                                                    require u < stor12[address(msg.sender)].field_0
                                                                                    require stor12[address(this.address)][s].field_0 >= v + (10^18 * t / stor18[idx].field_0)
                                                                                    require v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][u].field_0 >= stor12[address(msg.sender)][u].field_0
                                                                                    stor12[address(msg.sender)].field_0++
                                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                        w = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > w:
                                                                                            stor[w] = 0
                                                                                            uint256(stor1[w]) = 0
                                                                                            w = w + 2
                                                                                            continue 
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][u].field_0
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                    stor9[address(msg.sender)] = v + (10^18 * t / stor18[idx].field_0) + stor12[address(msg.sender)][u].field_0
                                                                        require v + (10^18 * t / stor18[idx].field_0) <= stor12[address(this.address)][s].field_0
                                                                        stor12[address(this.address)].field_0++
                                                                        if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                            u = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                            while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > u:
                                                                                stor[u] = 0
                                                                                uint256(stor1[u]) = 0
                                                                                u = u + 2
                                                                                continue 
                                                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][s].field_0 - v - (10^18 * t / stor18[idx].field_0)
                                                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                        stor9[address(this.address)] = stor12[address(this.address)][s].field_0 - v - (10^18 * t / stor18[idx].field_0)
                                                            require msg.value + stor17 >= stor17
                                                            stor17 += msg.value
                                                            emit Transfer((v + (10^18 * t / stor18[idx].field_0)), this.address, msg.sender);
                                                        else:
                                                            require u <= stor18[idx].field_256
                                                            if stor18[idx].field_256 - u:
                                                                require stor18[idx].field_256 - u
                                                                require (10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_256 - u == 10^18
                                                            require stor18[idx].field_0
                                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= v
                                                            require stor18[idx].field_256 - u <= t
                                                            require stor18[idx].field_256 >= u
                                                            if t - stor18[idx].field_256 + u:
                                                                s = stor18[idx].field_256 - u
                                                                t = (2 * idx) + sha3(18)
                                                                idx = idx + 1
                                                                t = t - stor18[idx].field_256 + u
                                                                u = stor18[idx].field_256
                                                                v = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                continue 
                                                            require t - stor18[idx].field_256 + u <= 0
                                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                            if 0 == stor12[address(this.address)].field_0:
                                                                if 0 == stor12[address(msg.sender)].field_0:
                                                                    require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                                                    stor12[address(msg.sender)].field_0++
                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                            stor[s] = 0
                                                                            uint256(stor1[s]) = 0
                                                                            s = s + 2
                                                                            continue 
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                    stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                else:
                                                                    require 0 < stor12[address(msg.sender)].field_0
                                                                    if stor12[address(msg.sender)].field_256 > block.number:
                                                                        require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                        require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                stor[s] = 0
                                                                                uint256(stor1[s]) = 0
                                                                                s = s + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                    else:
                                                                        require 1 <= stor12[address(msg.sender)].field_0
                                                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                        require 1 <= stor12[address(msg.sender)].field_0
                                                                        if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                            require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                    stor[s] = 0
                                                                                    uint256(stor1[s]) = 0
                                                                                    s = s + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                        else:
                                                                            require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                            require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                            t = uint255(stor12[address(msg.sender)].field_1)
                                                                            s = 0
                                                                            while stor12[address(msg.sender)].field_0 - 1 > s:
                                                                                require t < stor12[address(msg.sender)].field_0
                                                                                mem[0] = sha3(address(msg.sender), 12)
                                                                                if stor12[address(msg.sender)][t].field_256 <= block.number:
                                                                                    if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                                                                        t = stor12[address(msg.sender)].field_0 + t / 2
                                                                                        s = t
                                                                                        continue 
                                                                                else:
                                                                                    if 1 <= t:
                                                                                        if t + s - 1 >= s:
                                                                                            t = t + s / 2
                                                                                            s = s
                                                                                            continue 
                                                                                revert
                                                                            require s < stor12[address(msg.sender)].field_0
                                                                            require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                                                    stor[t] = 0
                                                                                    uint256(stor1[t]) = 0
                                                                                    t = t + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                                                                require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v <= 0
                                                                stor12[address(this.address)].field_0++
                                                                if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                    s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                    while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                                                        stor[s] = 0
                                                                        uint256(stor1[s]) = 0
                                                                        s = s + 2
                                                                        continue 
                                                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                                                                stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                stor9[address(this.address)] = -((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                                                            else:
                                                                require 0 < stor12[address(this.address)].field_0
                                                                if stor12[address(this.address)].field_256 > block.number:
                                                                    if 0 == stor12[address(msg.sender)].field_0:
                                                                        require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                        require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                            while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                stor[s] = 0
                                                                                uint256(stor1[s]) = 0
                                                                                s = s + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                    else:
                                                                        require 0 < stor12[address(msg.sender)].field_0
                                                                        if stor12[address(msg.sender)].field_256 > block.number:
                                                                            require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                    stor[s] = 0
                                                                                    uint256(stor1[s]) = 0
                                                                                    s = s + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                        else:
                                                                            require 1 <= stor12[address(msg.sender)].field_0
                                                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                            require 1 <= stor12[address(msg.sender)].field_0
                                                                            if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                                require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                        stor[s] = 0
                                                                                        uint256(stor1[s]) = 0
                                                                                        s = s + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                            else:
                                                                                require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                                require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                                t = uint255(stor12[address(msg.sender)].field_1)
                                                                                s = 0
                                                                                while stor12[address(msg.sender)].field_0 - 1 > s:
                                                                                    require t < stor12[address(msg.sender)].field_0
                                                                                    mem[0] = sha3(address(msg.sender), 12)
                                                                                    if stor12[address(msg.sender)][t].field_256 <= block.number:
                                                                                        if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                                                                            t = stor12[address(msg.sender)].field_0 + t / 2
                                                                                            s = t
                                                                                            continue 
                                                                                    else:
                                                                                        if 1 <= t:
                                                                                            if t + s - 1 >= s:
                                                                                                t = t + s / 2
                                                                                                s = s
                                                                                                continue 
                                                                                    revert
                                                                                require s < stor12[address(msg.sender)].field_0
                                                                                require 0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                                require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                                                        stor[t] = 0
                                                                                        uint256(stor1[t]) = 0
                                                                                        t = t + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                                                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v <= 0
                                                                    stor12[address(this.address)].field_0++
                                                                    if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                        s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                        while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                                                            stor[s] = 0
                                                                            uint256(stor1[s]) = 0
                                                                            s = s + 2
                                                                            continue 
                                                                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                                                                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                    stor9[address(this.address)] = -((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                                                                else:
                                                                    require 1 <= stor12[address(this.address)].field_0
                                                                    require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                                                                    require 1 <= stor12[address(this.address)].field_0
                                                                    if stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_256 <= block.number:
                                                                        require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                                                                        if 0 == stor12[address(msg.sender)].field_0:
                                                                            require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                    stor[s] = 0
                                                                                    uint256(stor1[s]) = 0
                                                                                    s = s + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                        else:
                                                                            require 0 < stor12[address(msg.sender)].field_0
                                                                            if stor12[address(msg.sender)].field_256 > block.number:
                                                                                require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                                require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                        stor[s] = 0
                                                                                        uint256(stor1[s]) = 0
                                                                                        s = s + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                            else:
                                                                                require 1 <= stor12[address(msg.sender)].field_0
                                                                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                require 1 <= stor12[address(msg.sender)].field_0
                                                                                if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                    require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                    stor12[address(msg.sender)].field_0++
                                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                        s = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > s:
                                                                                            stor[s] = 0
                                                                                            uint256(stor1[s]) = 0
                                                                                            s = s + 2
                                                                                            continue 
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                    stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                else:
                                                                                    require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                                    require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                                    t = uint255(stor12[address(msg.sender)].field_1)
                                                                                    s = 0
                                                                                    while stor12[address(msg.sender)].field_0 - 1 > s:
                                                                                        require t < stor12[address(msg.sender)].field_0
                                                                                        mem[0] = sha3(address(msg.sender), 12)
                                                                                        if stor12[address(msg.sender)][t].field_256 <= block.number:
                                                                                            if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                                                                                t = stor12[address(msg.sender)].field_0 + t / 2
                                                                                                s = t
                                                                                                continue 
                                                                                        else:
                                                                                            if 1 <= t:
                                                                                                if t + s - 1 >= s:
                                                                                                    t = t + s / 2
                                                                                                    s = s
                                                                                                    continue 
                                                                                        revert
                                                                                    require s < stor12[address(msg.sender)].field_0
                                                                                    require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                                                                    stor12[address(msg.sender)].field_0++
                                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                        t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                                                            stor[t] = 0
                                                                                            uint256(stor1[t]) = 0
                                                                                            t = t + 2
                                                                                            continue 
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                    stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][s].field_0
                                                                        require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v <= stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0
                                                                        stor12[address(this.address)].field_0++
                                                                        if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                            s = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                            while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > s:
                                                                                stor[s] = 0
                                                                                uint256(stor1[s]) = 0
                                                                                s = s + 2
                                                                                continue 
                                                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                                                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                        stor9[address(this.address)] = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                                                                    else:
                                                                        require stor12[address(this.address)].field_0 - 1 >= 0
                                                                        require stor12[address(this.address)].field_0 >= stor12[address(this.address)].field_0 - 1
                                                                        t = uint255(stor12[address(this.address)].field_1)
                                                                        s = 0
                                                                        while stor12[address(this.address)].field_0 - 1 > s:
                                                                            require t < stor12[address(this.address)].field_0
                                                                            mem[0] = sha3(address(this.address), 12)
                                                                            if stor12[address(this.address)][t].field_256 <= block.number:
                                                                                if stor12[address(this.address)].field_0 + t - 1 >= t:
                                                                                    t = stor12[address(this.address)].field_0 + t / 2
                                                                                    s = t
                                                                                    continue 
                                                                            else:
                                                                                if 1 <= t:
                                                                                    if t + s - 1 >= s:
                                                                                        t = t + s / 2
                                                                                        s = s
                                                                                        continue 
                                                                            revert
                                                                        require s < stor12[address(this.address)].field_0
                                                                        if 0 == stor12[address(msg.sender)].field_0:
                                                                            require stor12[address(this.address)][s].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                            require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                                                            stor12[address(msg.sender)].field_0++
                                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                                                    stor[t] = 0
                                                                                    uint256(stor1[t]) = 0
                                                                                    t = t + 2
                                                                                    continue 
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                            stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                        else:
                                                                            require 0 < stor12[address(msg.sender)].field_0
                                                                            if stor12[address(msg.sender)].field_256 > block.number:
                                                                                require stor12[address(this.address)][s].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                                require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v >= 0
                                                                                stor12[address(msg.sender)].field_0++
                                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                    t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                    while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                                                        stor[t] = 0
                                                                                        uint256(stor1[t]) = 0
                                                                                        t = t + 2
                                                                                        continue 
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                            else:
                                                                                require 1 <= stor12[address(msg.sender)].field_0
                                                                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                require 1 <= stor12[address(msg.sender)].field_0
                                                                                if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                                    require stor12[address(this.address)][s].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                    stor12[address(msg.sender)].field_0++
                                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                        t = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > t:
                                                                                            stor[t] = 0
                                                                                            uint256(stor1[t]) = 0
                                                                                            t = t + 2
                                                                                            continue 
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                    stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                                else:
                                                                                    require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                                    require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                                    w = uint255(stor12[address(msg.sender)].field_1)
                                                                                    t = 0
                                                                                    while stor12[address(msg.sender)].field_0 - 1 > t:
                                                                                        require w < stor12[address(msg.sender)].field_0
                                                                                        mem[0] = sha3(address(msg.sender), 12)
                                                                                        if stor12[address(msg.sender)][w].field_256 <= block.number:
                                                                                            if stor12[address(msg.sender)].field_0 + w - 1 >= w:
                                                                                                w = stor12[address(msg.sender)].field_0 + w / 2
                                                                                                t = w
                                                                                                continue 
                                                                                        else:
                                                                                            if 1 <= w:
                                                                                                if w + t - 1 >= t:
                                                                                                    w = w + t / 2
                                                                                                    t = t
                                                                                                    continue 
                                                                                        revert
                                                                                    require t < stor12[address(msg.sender)].field_0
                                                                                    require stor12[address(this.address)][s].field_0 >= ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v
                                                                                    require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][t].field_0 >= stor12[address(msg.sender)][t].field_0
                                                                                    stor12[address(msg.sender)].field_0++
                                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                                        w = sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0 + 1)
                                                                                        while sha3(sha3(address(msg.sender), 12)) + (2 * stor12[address(msg.sender)].field_0) > w:
                                                                                            stor[w] = 0
                                                                                            uint256(stor1[w]) = 0
                                                                                            w = w + 2
                                                                                            continue 
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][t].field_0
                                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                                    stor9[address(msg.sender)] = ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v + stor12[address(msg.sender)][t].field_0
                                                                        require ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v <= stor12[address(this.address)][s].field_0
                                                                        stor12[address(this.address)].field_0++
                                                                        if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                            t = sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0 + 1)
                                                                            while sha3(sha3(address(this.address), 12)) + (2 * stor12[address(this.address)].field_0) > t:
                                                                                stor[t] = 0
                                                                                uint256(stor1[t]) = 0
                                                                                t = t + 2
                                                                                continue 
                                                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][s].field_0 - ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                                                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                                        stor9[address(this.address)] = stor12[address(this.address)][s].field_0 - ((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) - v
                                                            require msg.value + stor17 >= stor17
                                                            stor17 += msg.value
                                                            emit Transfer((((10^18 * stor18[idx].field_256) - (10^18 * u) / stor18[idx].field_0) + v), this.address, msg.sender);
                                                require t <= 0
                                                require v
                                                if 0 == stor12[address(this.address)].field_0:
                                                    if 0 == stor12[address(msg.sender)].field_0:
                                                        require 0 >= v
                                                        require v >= 0
                                                        stor12[address(msg.sender)].field_0++
                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                            idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                                            while 2 * stor12[address(msg.sender)].field_0 > idx:
                                                                stor12[address(msg.sender)][idx].field_0 = 0
                                                                stor12[address(msg.sender)][idx].field_256 = 0
                                                                idx = idx + 2
                                                                continue 
                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                        stor9[address(msg.sender)] = v
                                                    else:
                                                        require 0 < stor12[address(msg.sender)].field_0
                                                        if stor12[address(msg.sender)].field_256 > block.number:
                                                            require 0 >= v
                                                            require v >= 0
                                                            stor12[address(msg.sender)].field_0++
                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                while 2 * stor12[address(msg.sender)].field_0 > idx:
                                                                    stor12[address(msg.sender)][idx].field_0 = 0
                                                                    stor12[address(msg.sender)][idx].field_256 = 0
                                                                    idx = idx + 2
                                                                    continue 
                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                            stor9[address(msg.sender)] = v
                                                        else:
                                                            require 1 <= stor12[address(msg.sender)].field_0
                                                            require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                            require 1 <= stor12[address(msg.sender)].field_0
                                                            if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                require 0 >= v
                                                                require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                stor12[address(msg.sender)].field_0++
                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                    idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                    while 2 * stor12[address(msg.sender)].field_0 > idx:
                                                                        stor12[address(msg.sender)][idx].field_0 = 0
                                                                        stor12[address(msg.sender)][idx].field_256 = 0
                                                                        idx = idx + 2
                                                                        continue 
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                            else:
                                                                require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                s = uint255(stor12[address(msg.sender)].field_1)
                                                                idx = 0
                                                                while stor12[address(msg.sender)].field_0 - 1 > idx:
                                                                    require s < stor12[address(msg.sender)].field_0
                                                                    mem[0] = sha3(address(msg.sender), 12)
                                                                    if stor12[address(msg.sender)][s].field_256 <= block.number:
                                                                        if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                                                            s = stor12[address(msg.sender)].field_0 + s / 2
                                                                            idx = s
                                                                            continue 
                                                                    else:
                                                                        if 1 <= s:
                                                                            if s + idx - 1 >= idx:
                                                                                s = s + idx / 2
                                                                                idx = idx
                                                                                continue 
                                                                    revert
                                                                require idx < stor12[address(msg.sender)].field_0
                                                                require 0 >= v
                                                                require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                                                                stor12[address(msg.sender)].field_0++
                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                    s = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                    while 2 * stor12[address(msg.sender)].field_0 > s:
                                                                        stor12[address(msg.sender)][s].field_0 = 0
                                                                        stor12[address(msg.sender)][s].field_256 = 0
                                                                        s = s + 2
                                                                        continue 
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                                                    require v <= 0
                                                    stor12[address(this.address)].field_0++
                                                    if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                        idx = 2 * stor12[address(this.address)].field_0 + 1
                                                        while 2 * stor12[address(this.address)].field_0 > idx:
                                                            stor12[address(this.address)][idx].field_0 = 0
                                                            stor12[address(this.address)][idx].field_256 = 0
                                                            idx = idx + 2
                                                            continue 
                                                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v
                                                    stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                    stor9[address(this.address)] = -v
                                                else:
                                                    require 0 < stor12[address(this.address)].field_0
                                                    if stor12[address(this.address)].field_256 > block.number:
                                                        if 0 == stor12[address(msg.sender)].field_0:
                                                            require 0 >= v
                                                            require v >= 0
                                                            stor12[address(msg.sender)].field_0++
                                                            if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                while 2 * stor12[address(msg.sender)].field_0 > idx:
                                                                    stor12[address(msg.sender)][idx].field_0 = 0
                                                                    stor12[address(msg.sender)][idx].field_256 = 0
                                                                    idx = idx + 2
                                                                    continue 
                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                            stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                            stor9[address(msg.sender)] = v
                                                        else:
                                                            require 0 < stor12[address(msg.sender)].field_0
                                                            if stor12[address(msg.sender)].field_256 > block.number:
                                                                require 0 >= v
                                                                require v >= 0
                                                                stor12[address(msg.sender)].field_0++
                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                    idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                    while 2 * stor12[address(msg.sender)].field_0 > idx:
                                                                        stor12[address(msg.sender)][idx].field_0 = 0
                                                                        stor12[address(msg.sender)][idx].field_256 = 0
                                                                        idx = idx + 2
                                                                        continue 
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                stor9[address(msg.sender)] = v
                                                            else:
                                                                require 1 <= stor12[address(msg.sender)].field_0
                                                                require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                require 1 <= stor12[address(msg.sender)].field_0
                                                                if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                    require 0 >= v
                                                                    require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                    stor12[address(msg.sender)].field_0++
                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                        idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                        while 2 * stor12[address(msg.sender)].field_0 > idx:
                                                                            stor12[address(msg.sender)][idx].field_0 = 0
                                                                            stor12[address(msg.sender)][idx].field_256 = 0
                                                                            idx = idx + 2
                                                                            continue 
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                    stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                else:
                                                                    require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                    require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                    s = uint255(stor12[address(msg.sender)].field_1)
                                                                    idx = 0
                                                                    while stor12[address(msg.sender)].field_0 - 1 > idx:
                                                                        require s < stor12[address(msg.sender)].field_0
                                                                        mem[0] = sha3(address(msg.sender), 12)
                                                                        if stor12[address(msg.sender)][s].field_256 <= block.number:
                                                                            if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                                                                s = stor12[address(msg.sender)].field_0 + s / 2
                                                                                idx = s
                                                                                continue 
                                                                        else:
                                                                            if 1 <= s:
                                                                                if s + idx - 1 >= idx:
                                                                                    s = s + idx / 2
                                                                                    idx = idx
                                                                                    continue 
                                                                        revert
                                                                    require idx < stor12[address(msg.sender)].field_0
                                                                    require 0 >= v
                                                                    require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                                                                    stor12[address(msg.sender)].field_0++
                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                        s = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                        while 2 * stor12[address(msg.sender)].field_0 > s:
                                                                            stor12[address(msg.sender)][s].field_0 = 0
                                                                            stor12[address(msg.sender)][s].field_256 = 0
                                                                            s = s + 2
                                                                            continue 
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                    stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                                                        require v <= 0
                                                        stor12[address(this.address)].field_0++
                                                        if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                            idx = 2 * stor12[address(this.address)].field_0 + 1
                                                            while 2 * stor12[address(this.address)].field_0 > idx:
                                                                stor12[address(this.address)][idx].field_0 = 0
                                                                stor12[address(this.address)][idx].field_256 = 0
                                                                idx = idx + 2
                                                                continue 
                                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = -v
                                                        stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                        stor9[address(this.address)] = -v
                                                    else:
                                                        require 1 <= stor12[address(this.address)].field_0
                                                        require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                                                        require 1 <= stor12[address(this.address)].field_0
                                                        if stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_256 <= block.number:
                                                            require stor12[address(this.address)].field_0 - 1 < stor12[address(this.address)].field_0
                                                            if 0 == stor12[address(msg.sender)].field_0:
                                                                require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                                                require v >= 0
                                                                stor12[address(msg.sender)].field_0++
                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                    idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                    while 2 * stor12[address(msg.sender)].field_0 > idx:
                                                                        stor12[address(msg.sender)][idx].field_0 = 0
                                                                        stor12[address(msg.sender)][idx].field_256 = 0
                                                                        idx = idx + 2
                                                                        continue 
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                stor9[address(msg.sender)] = v
                                                            else:
                                                                require 0 < stor12[address(msg.sender)].field_0
                                                                if stor12[address(msg.sender)].field_256 > block.number:
                                                                    require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                                                    require v >= 0
                                                                    stor12[address(msg.sender)].field_0++
                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                        idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                        while 2 * stor12[address(msg.sender)].field_0 > idx:
                                                                            stor12[address(msg.sender)][idx].field_0 = 0
                                                                            stor12[address(msg.sender)][idx].field_256 = 0
                                                                            idx = idx + 2
                                                                            continue 
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                    stor9[address(msg.sender)] = v
                                                                else:
                                                                    require 1 <= stor12[address(msg.sender)].field_0
                                                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                    require 1 <= stor12[address(msg.sender)].field_0
                                                                    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                        require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                                                        require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            idx = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                            while 2 * stor12[address(msg.sender)].field_0 > idx:
                                                                                stor12[address(msg.sender)][idx].field_0 = 0
                                                                                stor12[address(msg.sender)][idx].field_256 = 0
                                                                                idx = idx + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                    else:
                                                                        require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                        require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                        s = uint255(stor12[address(msg.sender)].field_1)
                                                                        idx = 0
                                                                        while stor12[address(msg.sender)].field_0 - 1 > idx:
                                                                            require s < stor12[address(msg.sender)].field_0
                                                                            mem[0] = sha3(address(msg.sender), 12)
                                                                            if stor12[address(msg.sender)][s].field_256 <= block.number:
                                                                                if stor12[address(msg.sender)].field_0 + s - 1 >= s:
                                                                                    s = stor12[address(msg.sender)].field_0 + s / 2
                                                                                    idx = s
                                                                                    continue 
                                                                            else:
                                                                                if 1 <= s:
                                                                                    if s + idx - 1 >= idx:
                                                                                        s = s + idx / 2
                                                                                        idx = idx
                                                                                        continue 
                                                                            revert
                                                                        require idx < stor12[address(msg.sender)].field_0
                                                                        require stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 >= v
                                                                        require v + stor12[address(msg.sender)][idx].field_0 >= stor12[address(msg.sender)][idx].field_0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            s = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                            while 2 * stor12[address(msg.sender)].field_0 > s:
                                                                                stor12[address(msg.sender)][s].field_0 = 0
                                                                                stor12[address(msg.sender)][s].field_256 = 0
                                                                                s = s + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][idx].field_0
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][idx].field_0
                                                            require v <= stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0
                                                            stor12[address(this.address)].field_0++
                                                            if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                idx = 2 * stor12[address(this.address)].field_0 + 1
                                                                while 2 * stor12[address(this.address)].field_0 > idx:
                                                                    stor12[address(this.address)][idx].field_0 = 0
                                                                    stor12[address(this.address)][idx].field_256 = 0
                                                                    idx = idx + 2
                                                                    continue 
                                                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v
                                                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                            stor9[address(this.address)] = stor12[address(this.address)][stor12[address(this.address)].field_0 - 1].field_0 - v
                                                        else:
                                                            require stor12[address(this.address)].field_0 - 1 >= 0
                                                            require stor12[address(this.address)].field_0 >= stor12[address(this.address)].field_0 - 1
                                                            s = uint255(stor12[address(this.address)].field_1)
                                                            idx = 0
                                                            while stor12[address(this.address)].field_0 - 1 > idx:
                                                                require s < stor12[address(this.address)].field_0
                                                                mem[0] = sha3(address(this.address), 12)
                                                                if stor12[address(this.address)][s].field_256 <= block.number:
                                                                    if stor12[address(this.address)].field_0 + s - 1 >= s:
                                                                        s = stor12[address(this.address)].field_0 + s / 2
                                                                        idx = s
                                                                        continue 
                                                                else:
                                                                    if 1 <= s:
                                                                        if s + idx - 1 >= idx:
                                                                            s = s + idx / 2
                                                                            idx = idx
                                                                            continue 
                                                                revert
                                                            require idx < stor12[address(this.address)].field_0
                                                            if 0 == stor12[address(msg.sender)].field_0:
                                                                require stor12[address(this.address)][idx].field_0 >= v
                                                                require v >= 0
                                                                stor12[address(msg.sender)].field_0++
                                                                if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                    s = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                    while 2 * stor12[address(msg.sender)].field_0 > s:
                                                                        stor12[address(msg.sender)][s].field_0 = 0
                                                                        stor12[address(msg.sender)][s].field_256 = 0
                                                                        s = s + 2
                                                                        continue 
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                stor9[address(msg.sender)] = v
                                                            else:
                                                                require 0 < stor12[address(msg.sender)].field_0
                                                                if stor12[address(msg.sender)].field_256 > block.number:
                                                                    require stor12[address(this.address)][idx].field_0 >= v
                                                                    require v >= 0
                                                                    stor12[address(msg.sender)].field_0++
                                                                    if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                        s = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                        while 2 * stor12[address(msg.sender)].field_0 > s:
                                                                            stor12[address(msg.sender)][s].field_0 = 0
                                                                            stor12[address(msg.sender)][s].field_256 = 0
                                                                            s = s + 2
                                                                            continue 
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v
                                                                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                    stor9[address(msg.sender)] = v
                                                                else:
                                                                    require 1 <= stor12[address(msg.sender)].field_0
                                                                    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                    require 1 <= stor12[address(msg.sender)].field_0
                                                                    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_256 <= block.number:
                                                                        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
                                                                        require stor12[address(this.address)][idx].field_0 >= v
                                                                        require v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0 >= stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            s = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                            while 2 * stor12[address(msg.sender)].field_0 > s:
                                                                                stor12[address(msg.sender)][s].field_0 = 0
                                                                                stor12[address(msg.sender)][s].field_256 = 0
                                                                                s = s + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][stor12[address(msg.sender)].field_0 - 1].field_0
                                                                    else:
                                                                        require stor12[address(msg.sender)].field_0 - 1 >= 0
                                                                        require stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0 - 1
                                                                        t = uint255(stor12[address(msg.sender)].field_1)
                                                                        s = 0
                                                                        while stor12[address(msg.sender)].field_0 - 1 > s:
                                                                            require t < stor12[address(msg.sender)].field_0
                                                                            mem[0] = sha3(address(msg.sender), 12)
                                                                            if stor12[address(msg.sender)][t].field_256 <= block.number:
                                                                                if stor12[address(msg.sender)].field_0 + t - 1 >= t:
                                                                                    t = stor12[address(msg.sender)].field_0 + t / 2
                                                                                    s = t
                                                                                    continue 
                                                                            else:
                                                                                if 1 <= t:
                                                                                    if t + s - 1 >= s:
                                                                                        t = t + s / 2
                                                                                        s = s
                                                                                        continue 
                                                                            revert
                                                                        require s < stor12[address(msg.sender)].field_0
                                                                        require stor12[address(this.address)][idx].field_0 >= v
                                                                        require v + stor12[address(msg.sender)][s].field_0 >= stor12[address(msg.sender)][s].field_0
                                                                        stor12[address(msg.sender)].field_0++
                                                                        if not stor12[address(msg.sender)].field_0 <= stor12[address(msg.sender)].field_0 + 1:
                                                                            t = 2 * stor12[address(msg.sender)].field_0 + 1
                                                                            while 2 * stor12[address(msg.sender)].field_0 > t:
                                                                                stor12[address(msg.sender)][t].field_0 = 0
                                                                                stor12[address(msg.sender)][t].field_256 = 0
                                                                                t = t + 2
                                                                                continue 
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = v + stor12[address(msg.sender)][s].field_0
                                                                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_256 = block.number
                                                                        stor9[address(msg.sender)] = v + stor12[address(msg.sender)][s].field_0
                                                            require v <= stor12[address(this.address)][idx].field_0
                                                            stor12[address(this.address)].field_0++
                                                            if not stor12[address(this.address)].field_0 <= stor12[address(this.address)].field_0 + 1:
                                                                s = 2 * stor12[address(this.address)].field_0 + 1
                                                                while 2 * stor12[address(this.address)].field_0 > s:
                                                                    stor12[address(this.address)][s].field_0 = 0
                                                                    stor12[address(this.address)][s].field_256 = 0
                                                                    s = s + 2
                                                                    continue 
                                                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_0 = stor12[address(this.address)][idx].field_0 - v
                                                            stor12[address(this.address)][stor12[address(this.address)].field_0].field_256 = block.number
                                                            stor9[address(this.address)] = stor12[address(this.address)][idx].field_0 - v
                                                require msg.value + stor17 >= stor17
                                                stor17 += msg.value
                                                emit Transfer(v, this.address, msg.sender);
}



}
