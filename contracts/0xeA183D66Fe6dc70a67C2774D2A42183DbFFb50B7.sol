contract main {




// =====================  Runtime code  =====================


array of uint256 sub_d5030f70;
array of uint256 sub_74a29be8;
mapping of uint256 sub_bb25ad25;
array of uint256 sub_bb2adb71;
array of uint256 sub_0ffd3d0a;
mapping of uint256 sub_213d0143;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 sub_114baf91;
uint256 investors;
uint256 stor10;
address stor11;
uint256 stor12;

function sub_0ffd3d0a(?) {
    require arg2 < 64
    return sub_0ffd3d0a[arg1][arg2]
}

function sub_114baf91(?) {
    return sub_114baf91[arg1]
}

function sub_213d0143(?) {
    return sub_213d0143[arg1]
}

function sub_74a29be8(?) {
    require arg2 < 64
    return sub_74a29be8[arg1][arg2]
}

function investors() {
    return investors
}

function sub_bb25ad25(?) {
    return sub_bb25ad25[arg1]
}

function sub_bb2adb71(?) {
    require arg2 < 64
    return sub_bb2adb71[arg1][arg2]
}

function sub_d5030f70(?) {
    require arg2 < 64
    return sub_d5030f70[arg1][arg2]
}

function _fallback() payable {
    if msg.value > 0:
        if not sub_114baf91[msg.sender]:
            sub_114baf91[msg.sender] = block.timestamp
        if not stor6[msg.sender]:
            sub_bb25ad25[msg.sender] = 0
            sub_213d0143[msg.sender] = 0
            stor7[msg.sender] = 0
            investors++
        require sub_bb25ad25[msg.sender] < 64
        sub_d5030f70[msg.sender][stor2[msg.sender]] = msg.value
        require sub_bb25ad25[msg.sender] < 64
        sub_74a29be8[msg.sender][stor2[msg.sender]] = block.timestamp
        sub_bb25ad25[msg.sender]++
        require msg.value + stor6[msg.sender] >= stor6[msg.sender]
        stor6[msg.sender] += msg.value
        if not msg.value:
            call stor11 with:
                 gas 2300 wei
        else:
            require stor12 * msg.value / msg.value == stor12
            call stor11 with:
               value stor12 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require stor10 + sub_114baf91[msg.sender] >= sub_114baf91[msg.sender]
        if block.timestamp < stor10 + sub_114baf91[msg.sender]:
            revert with 0, 'Too fast payout request'
        if stor6[msg.sender] <= 0:
            revert with 0, 'Address not found'
        if eth.balance(this.address) < 0:
            idx = 0
            s = 0
            while uint16(idx) < sub_bb25ad25[msg.sender]:
                require uint16(idx) < 64
                if sub_114baf91[msg.sender] > sub_74a29be8[msg.sender][uint16(idx)]:
                    require sub_114baf91[msg.sender] <= block.timestamp
                    require stor10
                    if block.timestamp - sub_114baf91[msg.sender] / stor10 <= 30:
                        require uint16(idx) < 64
                        if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                            require block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_114baf91[msg.sender] / stor10
                            if block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                require not 0 / block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]
                        mem[0] = msg.sender
                        mem[32] = 2
                        idx = idx + 1
                        s = block.timestamp - sub_114baf91[msg.sender] / stor10
                        continue 
                else:
                    require uint16(idx) < 64
                    require sub_74a29be8[msg.sender][uint16(idx)] <= block.timestamp
                    require stor10
                    if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 <= 30:
                        require uint16(idx) < 64
                        if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                            require block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                            if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                require not 0 / block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]
                        mem[0] = msg.sender
                        mem[32] = 2
                        idx = idx + 1
                        s = block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                        continue 
                require uint16(idx) < 64
                if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                    require 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == 30
                    if 30 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                        require not 0 / 30 * sub_d5030f70[address(msg.sender)][uint16(idx)]
                mem[0] = msg.sender
                mem[32] = 2
                idx = idx + 1
                s = 30
                continue 
        else:
            if eth.balance(this.address) < 100 * 10^18:
                idx = 0
                s = 0
                while uint16(idx) < sub_bb25ad25[msg.sender]:
                    require uint16(idx) < 64
                    if sub_114baf91[msg.sender] > sub_74a29be8[msg.sender][uint16(idx)]:
                        require sub_114baf91[msg.sender] <= block.timestamp
                        require stor10
                        if block.timestamp - sub_114baf91[msg.sender] / stor10 <= 30:
                            require uint16(idx) < 64
                            if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                require block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_114baf91[msg.sender] / stor10
                                if block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                    require 3 * block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 3
                                    require 3 * block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                            mem[0] = msg.sender
                            mem[32] = 2
                            idx = idx + 1
                            s = block.timestamp - sub_114baf91[msg.sender] / stor10
                            continue 
                    else:
                        require uint16(idx) < 64
                        require sub_74a29be8[msg.sender][uint16(idx)] <= block.timestamp
                        require stor10
                        if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 <= 30:
                            require uint16(idx) < 64
                            if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                require block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                                if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                    require 3 * block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 3
                                    require 3 * block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                            mem[0] = msg.sender
                            mem[32] = 2
                            idx = idx + 1
                            s = block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                            continue 
                    require uint16(idx) < 64
                    if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                        require 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == 30
                        if 30 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                            require 90 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 3
                            require 90 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                    mem[0] = msg.sender
                    mem[32] = 2
                    idx = idx + 1
                    s = 30
                    continue 
            else:
                if eth.balance(this.address) < 200 * 10^18:
                    idx = 0
                    s = 0
                    while uint16(idx) < sub_bb25ad25[msg.sender]:
                        require uint16(idx) < 64
                        if sub_114baf91[msg.sender] > sub_74a29be8[msg.sender][uint16(idx)]:
                            require sub_114baf91[msg.sender] <= block.timestamp
                            require stor10
                            if block.timestamp - sub_114baf91[msg.sender] / stor10 <= 30:
                                require uint16(idx) < 64
                                if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                    require block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_114baf91[msg.sender] / stor10
                                    if block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                        require 4 * block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 4
                                        require 4 * block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                idx = idx + 1
                                s = block.timestamp - sub_114baf91[msg.sender] / stor10
                                continue 
                        else:
                            require uint16(idx) < 64
                            require sub_74a29be8[msg.sender][uint16(idx)] <= block.timestamp
                            require stor10
                            if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 <= 30:
                                require uint16(idx) < 64
                                if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                    require block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                                    if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                        require 4 * block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 4
                                        require 4 * block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                idx = idx + 1
                                s = block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                                continue 
                        require uint16(idx) < 64
                        if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                            require 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == 30
                            if 30 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                require 4 * 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 4
                                require 4 * 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                        mem[0] = msg.sender
                        mem[32] = 2
                        idx = idx + 1
                        s = 30
                        continue 
                else:
                    if eth.balance(this.address) < 500 * 10^18:
                        idx = 0
                        s = 0
                        while uint16(idx) < sub_bb25ad25[msg.sender]:
                            require uint16(idx) < 64
                            if sub_114baf91[msg.sender] > sub_74a29be8[msg.sender][uint16(idx)]:
                                require sub_114baf91[msg.sender] <= block.timestamp
                                require stor10
                                if block.timestamp - sub_114baf91[msg.sender] / stor10 <= 30:
                                    require uint16(idx) < 64
                                    if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                        require block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_114baf91[msg.sender] / stor10
                                        if block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                            require 5 * block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 5
                                            require 5 * block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    idx = idx + 1
                                    s = block.timestamp - sub_114baf91[msg.sender] / stor10
                                    continue 
                            else:
                                require uint16(idx) < 64
                                require sub_74a29be8[msg.sender][uint16(idx)] <= block.timestamp
                                require stor10
                                if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 <= 30:
                                    require uint16(idx) < 64
                                    if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                        require block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                                        if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                            require 5 * block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 5
                                            require 5 * block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    idx = idx + 1
                                    s = block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                                    continue 
                            require uint16(idx) < 64
                            if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                require 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == 30
                                if 30 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                    require 150 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 5
                                    require 150 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                            mem[0] = msg.sender
                            mem[32] = 2
                            idx = idx + 1
                            s = 30
                            continue 
                    else:
                        if eth.balance(this.address) >= 1000 * 10^18:
                            idx = 0
                            s = 0
                            while uint16(idx) < sub_bb25ad25[msg.sender]:
                                require uint16(idx) < 64
                                if sub_114baf91[msg.sender] > sub_74a29be8[msg.sender][uint16(idx)]:
                                    require sub_114baf91[msg.sender] <= block.timestamp
                                    require stor10
                                    if block.timestamp - sub_114baf91[msg.sender] / stor10 <= 30:
                                        require uint16(idx) < 64
                                        if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                            require block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_114baf91[msg.sender] / stor10
                                            if block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                                require 7 * block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 7
                                                require 7 * block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                                        mem[0] = msg.sender
                                        mem[32] = 2
                                        idx = idx + 1
                                        s = block.timestamp - sub_114baf91[msg.sender] / stor10
                                        continue 
                                else:
                                    require uint16(idx) < 64
                                    require sub_74a29be8[msg.sender][uint16(idx)] <= block.timestamp
                                    require stor10
                                    if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 <= 30:
                                        require uint16(idx) < 64
                                        if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                            require block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                                            if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                                require 7 * block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 7
                                                require 7 * block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                                        mem[0] = msg.sender
                                        mem[32] = 2
                                        idx = idx + 1
                                        s = block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                                        continue 
                                require uint16(idx) < 64
                                if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                    require 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == 30
                                    if 30 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                        require 210 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 7
                                        require 210 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                idx = idx + 1
                                s = 30
                                continue 
                        else:
                            idx = 0
                            s = 0
                            while uint16(idx) < sub_bb25ad25[msg.sender]:
                                require uint16(idx) < 64
                                if sub_114baf91[msg.sender] > sub_74a29be8[msg.sender][uint16(idx)]:
                                    require sub_114baf91[msg.sender] <= block.timestamp
                                    require stor10
                                    if block.timestamp - sub_114baf91[msg.sender] / stor10 <= 30:
                                        require uint16(idx) < 64
                                        if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                            require block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_114baf91[msg.sender] / stor10
                                            if block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                                require 6 * block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 6
                                                require 6 * block.timestamp - sub_114baf91[msg.sender] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                                        mem[0] = msg.sender
                                        mem[32] = 2
                                        idx = idx + 1
                                        s = block.timestamp - sub_114baf91[msg.sender] / stor10
                                        continue 
                                else:
                                    require uint16(idx) < 64
                                    require sub_74a29be8[msg.sender][uint16(idx)] <= block.timestamp
                                    require stor10
                                    if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 <= 30:
                                        require uint16(idx) < 64
                                        if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                            require block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                                            if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                                require 6 * block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 6
                                                require 6 * block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                                        mem[0] = msg.sender
                                        mem[32] = 2
                                        idx = idx + 1
                                        s = block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / stor10
                                        continue 
                                require uint16(idx) < 64
                                if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                    require 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == 30
                                    if 30 * sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                        require 180 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 30 * sub_d5030f70[address(msg.sender)][uint16(idx)] == 6
                                        require 180 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100 >= 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                idx = idx + 1
                                s = 30
                                continue 
        s = 0
        t = 0
        idx = 0
        u = 0
        while uint16(idx) < sub_bb25ad25[msg.sender]:
            require uint16(idx) < 64
            if sub_114baf91[msg.sender] <= sub_74a29be8[msg.sender][uint16(idx)]:
                if stor10:
                    require 24 * stor10 / stor10 == 24
                    require uint16(idx) < 64
                    require sub_74a29be8[msg.sender][uint16(idx)] <= block.timestamp
                    require 24 * stor10
                    if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10 <= 30:
                        if block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10 <= 0:
                            mem[0] = msg.sender
                            mem[32] = 2
                            s = s
                            t = t
                            idx = idx + 1
                            u = block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10
                            continue 
                        else:
                            require uint16(idx) < 64
                            if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                require 117^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10) * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == 117^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10)
                                require 100^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10)
                                require 117^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10) * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10) / 100 >= 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                s = 100^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10)
                                t = 117^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10)
                                idx = idx + 1
                                u = block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10
                                continue 
                            else:
                                require 100^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10)
                                require 0 / 100^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10) / 100 >= 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                s = 100^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10)
                                t = 117^(block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10)
                                idx = idx + 1
                                u = block.timestamp - sub_74a29be8[msg.sender][uint16(idx)] / 24 * stor10
                                continue 
                    else:
                        require uint16(idx) < 64
                        if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                            require 0x451d9e9b1e61ddb32d1988998a76545b8b97f8dd80cd64a78649 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == 0x451d9e9b1e61ddb32d1988998a76545b8b97f8dd80cd64a78649
                            require 0x451d9e9b1e61ddb32d1988998a76545b8b97f8dd80cd64a78649 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 0x9f4f2726179a224501d762422c946590d91000000000000000 / 100 >= 0
                            mem[0] = msg.sender
                            mem[32] = 2
                            s = 0x9f4f2726179a224501d762422c946590d91000000000000000
                            t = 0x451d9e9b1e61ddb32d1988998a76545b8b97f8dd80cd64a78649
                            idx = idx + 1
                            u = 30
                            continue 
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            s = 0x9f4f2726179a224501d762422c946590d91000000000000000
                            t = 0x451d9e9b1e61ddb32d1988998a76545b8b97f8dd80cd64a78649
                            idx = idx + 1
                            u = 30
                            continue 
                else:
                    require uint16(idx) < 64
                    require sub_74a29be8[msg.sender][uint16(idx)] <= block.timestamp
                    revert
            else:
                if stor10:
                    require 24 * stor10 / stor10 == 24
                    require sub_114baf91[msg.sender] <= block.timestamp
                    require 24 * stor10
                    if block.timestamp - sub_114baf91[msg.sender] / 24 * stor10 <= 30:
                        if block.timestamp - sub_114baf91[msg.sender] / 24 * stor10 <= 0:
                            mem[0] = msg.sender
                            mem[32] = 2
                            s = s
                            t = t
                            idx = idx + 1
                            u = block.timestamp - sub_114baf91[msg.sender] / 24 * stor10
                            continue 
                        else:
                            require uint16(idx) < 64
                            if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                                require 117^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10) * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == 117^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10)
                                require 100^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10)
                                require 117^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10) * sub_d5030f70[address(msg.sender)][uint16(idx)] / 100^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10) / 100 >= 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                s = 100^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10)
                                t = 117^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10)
                                idx = idx + 1
                                u = block.timestamp - sub_114baf91[msg.sender] / 24 * stor10
                                continue 
                            else:
                                require 100^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10)
                                require 0 / 100^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10) / 100 >= 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                s = 100^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10)
                                t = 117^(block.timestamp - sub_114baf91[msg.sender] / 24 * stor10)
                                idx = idx + 1
                                u = block.timestamp - sub_114baf91[msg.sender] / 24 * stor10
                                continue 
                    else:
                        require uint16(idx) < 64
                        if sub_d5030f70[address(msg.sender)][uint16(idx)]:
                            require 0x451d9e9b1e61ddb32d1988998a76545b8b97f8dd80cd64a78649 * sub_d5030f70[address(msg.sender)][uint16(idx)] / sub_d5030f70[address(msg.sender)][uint16(idx)] == 0x451d9e9b1e61ddb32d1988998a76545b8b97f8dd80cd64a78649
                            require 0x451d9e9b1e61ddb32d1988998a76545b8b97f8dd80cd64a78649 * sub_d5030f70[address(msg.sender)][uint16(idx)] / 0x9f4f2726179a224501d762422c946590d91000000000000000 / 100 >= 0
                            mem[0] = msg.sender
                            mem[32] = 2
                            s = 0x9f4f2726179a224501d762422c946590d91000000000000000
                            t = 0x451d9e9b1e61ddb32d1988998a76545b8b97f8dd80cd64a78649
                            idx = idx + 1
                            u = 30
                            continue 
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            s = 0x9f4f2726179a224501d762422c946590d91000000000000000
                            t = 0x451d9e9b1e61ddb32d1988998a76545b8b97f8dd80cd64a78649
                            idx = idx + 1
                            u = 30
                            continue 
                else:
                    require sub_114baf91[msg.sender] <= block.timestamp
                    revert
        if 0 > eth.balance(this.address):
            if eth.balance(this.address) <= eth.balance(this.address):
                if eth.balance(this.address) > 0:
                    if not stor6[msg.sender]:
                        require stor7[msg.sender] + eth.balance(this.address) >= eth.balance(this.address)
                        if stor7[msg.sender] + eth.balance(this.address) <= 0:
                            require eth.balance(this.address) + stor7[msg.sender] >= stor7[msg.sender]
                            stor7[msg.sender] += eth.balance(this.address)
                            sub_114baf91[msg.sender] = block.timestamp
                            require sub_213d0143[msg.sender] < 64
                            sub_bb2adb71[msg.sender][stor5[msg.sender]] = eth.balance(this.address)
                            require sub_213d0143[msg.sender] < 64
                            sub_0ffd3d0a[msg.sender][stor5[msg.sender]] = block.timestamp
                            sub_213d0143[msg.sender]++
                            call msg.sender with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if not stor6[msg.sender]:
                                require stor7[msg.sender] <= 0
                                idx = 0
                                while uint16(idx) < sub_bb25ad25[msg.sender]:
                                    require uint16(idx) < 64
                                    sub_d5030f70[msg.sender][uint16(idx)] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    idx = idx + 1
                                    continue 
                                sub_bb25ad25[msg.sender] = 0
                                stor6[msg.sender] = 0
                                stor7[msg.sender] = 0
                                sub_114baf91[msg.sender] = 0
                                require sub_213d0143[msg.sender] < 64
                                sub_bb2adb71[msg.sender][stor5[msg.sender]] = -stor7[msg.sender]
                                require sub_213d0143[msg.sender] < 64
                                sub_0ffd3d0a[msg.sender][stor5[msg.sender]] = block.timestamp
                                sub_213d0143[msg.sender]++
                                call msg.sender with:
                                   value -stor7[msg.sender] wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * stor6[msg.sender] / stor6[msg.sender] == 3
                                require stor7[msg.sender] <= 3 * stor6[msg.sender]
                                idx = 0
                                while uint16(idx) < sub_bb25ad25[msg.sender]:
                                    require uint16(idx) < 64
                                    sub_d5030f70[msg.sender][uint16(idx)] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    idx = idx + 1
                                    continue 
                                sub_bb25ad25[msg.sender] = 0
                                stor6[msg.sender] = 0
                                stor7[msg.sender] = 0
                                sub_114baf91[msg.sender] = 0
                                require sub_213d0143[msg.sender] < 64
                                sub_bb2adb71[msg.sender][stor5[msg.sender]] = (3 * stor6[msg.sender]) - stor7[msg.sender]
                                require sub_213d0143[msg.sender] < 64
                                sub_0ffd3d0a[msg.sender][stor5[msg.sender]] = block.timestamp
                                sub_213d0143[msg.sender]++
                                call msg.sender with:
                                   value (3 * stor6[msg.sender]) - stor7[msg.sender] wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        require 3 * stor6[msg.sender] / stor6[msg.sender] == 3
                        require stor7[msg.sender] + eth.balance(this.address) >= eth.balance(this.address)
                        if stor7[msg.sender] + eth.balance(this.address) <= 3 * stor6[msg.sender]:
                            require eth.balance(this.address) + stor7[msg.sender] >= stor7[msg.sender]
                            stor7[msg.sender] += eth.balance(this.address)
                            sub_114baf91[msg.sender] = block.timestamp
                            require sub_213d0143[msg.sender] < 64
                            sub_bb2adb71[msg.sender][stor5[msg.sender]] = eth.balance(this.address)
                            require sub_213d0143[msg.sender] < 64
                            sub_0ffd3d0a[msg.sender][stor5[msg.sender]] = block.timestamp
                            sub_213d0143[msg.sender]++
                            call msg.sender with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if not stor6[msg.sender]:
                                require stor7[msg.sender] <= 0
                                idx = 0
                                while uint16(idx) < sub_bb25ad25[msg.sender]:
                                    require uint16(idx) < 64
                                    sub_d5030f70[msg.sender][uint16(idx)] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    idx = idx + 1
                                    continue 
                                sub_bb25ad25[msg.sender] = 0
                                stor6[msg.sender] = 0
                                stor7[msg.sender] = 0
                                sub_114baf91[msg.sender] = 0
                                require sub_213d0143[msg.sender] < 64
                                sub_bb2adb71[msg.sender][stor5[msg.sender]] = -stor7[msg.sender]
                                require sub_213d0143[msg.sender] < 64
                                sub_0ffd3d0a[msg.sender][stor5[msg.sender]] = block.timestamp
                                sub_213d0143[msg.sender]++
                                call msg.sender with:
                                   value -stor7[msg.sender] wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * stor6[msg.sender] / stor6[msg.sender] == 3
                                require stor7[msg.sender] <= 3 * stor6[msg.sender]
                                idx = 0
                                while uint16(idx) < sub_bb25ad25[msg.sender]:
                                    require uint16(idx) < 64
                                    sub_d5030f70[msg.sender][uint16(idx)] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    idx = idx + 1
                                    continue 
                                sub_bb25ad25[msg.sender] = 0
                                stor6[msg.sender] = 0
                                stor7[msg.sender] = 0
                                sub_114baf91[msg.sender] = 0
                                require sub_213d0143[msg.sender] < 64
                                sub_bb2adb71[msg.sender][stor5[msg.sender]] = (3 * stor6[msg.sender]) - stor7[msg.sender]
                                require sub_213d0143[msg.sender] < 64
                                sub_0ffd3d0a[msg.sender][stor5[msg.sender]] = block.timestamp
                                sub_213d0143[msg.sender]++
                                call msg.sender with:
                                   value (3 * stor6[msg.sender]) - stor7[msg.sender] wei
                                     gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
