contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint8 stor0; offset 160
address owner;
mapping of uint256 sub_af952028;
mapping of uint256 sub_b9e449fc;
mapping of uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint8 stor8;
mapping of uint256 winner;
mapping of uint256 stor10;
mapping of uint256 stor11;
uint256 sub_383100e8;
uint256 sub_cd4bb50a;
uint256 sub_598ab28e;
uint256 sub_cda2ad49;
uint256 prizePoolPercent;
uint256 seedAmount;
uint256 endTime;
uint256 sub_8d1d717d;
uint8 sub_f7708f5b;

function endTime() {
    return endTime
}

function sub_383100e8(?) {
    return sub_383100e8
}

function sub_598ab28e(?) {
    return sub_598ab28e
}

function paused() {
    return bool(stor0)
}

function sub_8d1d717d(?) {
    return sub_8d1d717d
}

function owner() {
    return owner
}

function getWinner() {
    require sub_f7708f5b
    return winner[0]
}

function sub_af952028(?) {
    return sub_af952028[arg1]
}

function sub_b8475950(?) {
    return bool(stor8[msg.sender])
}

function sub_b9e449fc(?) {
    return sub_b9e449fc[arg1]
}

function seedAmount() {
    return seedAmount
}

function sub_cd4bb50a(?) {
    return sub_cd4bb50a
}

function sub_cda2ad49(?) {
    return sub_cda2ad49
}

function prizePoolPercent() {
    return prizePoolPercent
}

function sub_f7708f5b(?) {
    return bool(sub_f7708f5b)
}

function _fallback() payable {
    revert
}

function sub_0d7395dc(?) {
    return stor10[arg1], stor11[arg1]
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
}

function sub_635f6ad5(?) {
    require msg.sender == owner
    stor4[arg1] = uint8(arg2)
}

function sub_ce40c770(?) payable {
    require msg.value + seedAmount >= seedAmount
    seedAmount += msg.value
}

function getTimeLeft() {
    if endTime <= block.timestamp:
        return 0
    return (endTime - block.timestamp)
}

function sub_5c8197d8(?) {
    require msg.sender == owner
    require arg1 > 5
    require arg1 < 101
    sub_cd4bb50a = arg1
}

function sub_2876554d(?) {
    require msg.sender == owner
    stor10[stor12] = arg1
    stor11[stor12] = arg2
    sub_383100e8++
}

function sub_4d7d041e(?) {
    require msg.sender == owner
    require arg1 >= 1
    require arg1 < 30
    prizePoolPercent = arg1
}

function sub_2f63b6b2(?) {
    require msg.sender == owner
    require arg1 < sub_383100e8
    stor10[arg1] = arg2
    stor11[arg1] = arg3
}

function sub_f621944c(?) {
    if sub_f7708f5b:
        return sub_8d1d717d
    require seedAmount <= eth.balance(this.address)
    return (eth.balance(this.address) - seedAmount)
}

function sub_512f455f(?) {
    require msg.sender == owner
    call msg.sender with:
       value seedAmount wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setWinner(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp > endTime
    winner[0] = arg1
    require seedAmount <= eth.balance(this.address)
    sub_8d1d717d = eth.balance(this.address) - seedAmount
    sub_f7708f5b = 1
    emit 0xdc5aeb2b: (eth.balance(this.address) - seedAmount), winner[0], arg1
}

function addItem(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require not sub_af952028[arg1]
    require arg2 > 0
    require arg3 > 0
    sub_af952028[arg1] = arg2
    sub_b9e449fc[arg1] = arg2
    require arg2 + sub_cda2ad49 >= sub_cda2ad49
    sub_cda2ad49 += arg2
    require sub_598ab28e + 1 >= sub_598ab28e
    sub_598ab28e++
    stor4[arg1] = 1
    stor3[arg1] = 10^18 * arg3
}

function sub_c49b1324(?) {
    if endTime < block.timestamp:
        return 0
    idx = 0
    while idx < sub_383100e8:
        mem[0] = idx
        mem[32] = 10
        if block.timestamp <= stor10[idx]:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 11
        if block.timestamp >= stor11[idx]:
            idx = idx + 1
            continue 
        else:
            return 0
    return bool(stor4[arg1])
}

function sub_ee52d03d(?) {
    require msg.sender == owner
    require arg1 > 0
    require arg2 > 0
    require arg3 > 0
    idx = sub_598ab28e
    while idx < sub_598ab28e + arg2:
        sub_af952028[idx] = arg1
        sub_b9e449fc[idx] = arg1
        require arg1 + sub_cda2ad49 >= sub_cda2ad49
        sub_cda2ad49 += arg1
        mem[0] = idx
        stor4[idx] = 1
        mem[32] = 3
        stor3[idx] = 10^18 * arg3
        idx = idx + 1
        continue 
    require arg2 + sub_598ab28e >= sub_598ab28e
    sub_598ab28e += arg2
}

function sub_308b4502(?) {
    if sub_598ab28e:
        mem[128 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    idx = 0
    while idx < sub_598ab28e:
        mem[0] = idx
        mem[32] = 1
        require idx < sub_598ab28e
        mem[(32 * idx) + 128] = sub_af952028[idx]
        idx = idx + 1
        continue 
    mem[(32 * sub_598ab28e) + 192 len floor32(sub_598ab28e)] = mem[128 len floor32(sub_598ab28e)]
    return Array(len=sub_598ab28e, data=mem[128 len floor32(sub_598ab28e)], mem[(32 * sub_598ab28e) + floor32(sub_598ab28e) + 192 len (32 * sub_598ab28e) - floor32(sub_598ab28e)]), 
}

function getPlayerBalance(address arg1) {
    if 1 == bool(stor8[msg.sender]):
        return 0
    require sub_af952028[stor9[0]] <= sub_b9e449fc[stor9[0]]
    if not sub_8d1d717d:
        if sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]]:
            return (0 / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]])
    else:
        if stor5[address(arg1)][stor9[0]] * sub_8d1d717d / sub_8d1d717d == stor5[address(arg1)][stor9[0]]:
            if sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]]:
                return (stor5[address(arg1)][stor9[0]] * sub_8d1d717d / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]])
    revert
}

function sub_750dcdc9(?) {
    if sub_598ab28e:
        mem[128 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    idx = 0
    while idx < sub_598ab28e:
        mem[0] = idx
        mem[32] = sha3(msg.sender, 5)
        require idx < sub_598ab28e
        mem[(32 * idx) + 128] = stor5[msg.sender][idx]
        idx = idx + 1
        continue 
    mem[(32 * sub_598ab28e) + 192 len floor32(sub_598ab28e)] = mem[128 len floor32(sub_598ab28e)]
    return Array(len=sub_598ab28e, data=mem[128 len floor32(sub_598ab28e)], mem[(32 * sub_598ab28e) + floor32(sub_598ab28e) + 192 len (32 * sub_598ab28e) - floor32(sub_598ab28e)]), 
}

function sub_7d9c0c5f(?) {
    if sub_b9e449fc[arg1] <= sub_af952028[arg1]:
        return 0
    require sub_af952028[arg1] <= sub_b9e449fc[arg1]
    if sub_f7708f5b:
        if not sub_8d1d717d:
            if sub_b9e449fc[arg1] - sub_af952028[arg1]:
                return (0 / sub_b9e449fc[arg1] - sub_af952028[arg1])
        else:
            if stor5[msg.sender][arg1] * sub_8d1d717d / sub_8d1d717d == stor5[msg.sender][arg1]:
                if sub_b9e449fc[arg1] - sub_af952028[arg1]:
                    return (stor5[msg.sender][arg1] * sub_8d1d717d / sub_b9e449fc[arg1] - sub_af952028[arg1])
    else:
        if seedAmount <= eth.balance(this.address):
            if not eth.balance(this.address) - seedAmount:
                if sub_b9e449fc[arg1] - sub_af952028[arg1]:
                    return (0 / sub_b9e449fc[arg1] - sub_af952028[arg1])
            else:
                if (eth.balance(this.address) * stor5[msg.sender][arg1]) - (seedAmount * stor5[msg.sender][arg1]) / eth.balance(this.address) - seedAmount == stor5[msg.sender][arg1]:
                    if sub_b9e449fc[arg1] - sub_af952028[arg1]:
                        return ((eth.balance(this.address) * stor5[msg.sender][arg1]) - (seedAmount * stor5[msg.sender][arg1]) / sub_b9e449fc[arg1] - sub_af952028[arg1])
    revert
}

function withdrawBalance() {
    require sub_f7708f5b
    require not stor8[msg.sender]
    require bool(stor8[msg.sender]) != 1
    require sub_af952028[stor9[0]] <= sub_b9e449fc[stor9[0]]
    if not sub_8d1d717d:
        require sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]]
        require 0 / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]] > 0
        stor5[msg.sender][stor9[0]] = 0
        require (0 / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]]) + stor6[msg.sender][stor9[0]] >= stor6[msg.sender][stor9[0]]
        stor6[msg.sender][stor9[0]] += 0 / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]]
        stor8[msg.sender] = 1
        call msg.sender with:
           value 0 / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xacefcccc: (0 / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]]), msg.sender, stor5[msg.sender][stor9[0]]
    else:
        require stor5[address(msg.sender)][stor9[0]] * sub_8d1d717d / sub_8d1d717d == stor5[address(msg.sender)][stor9[0]]
        require sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]]
        require stor5[address(msg.sender)][stor9[0]] * sub_8d1d717d / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]] > 0
        stor5[msg.sender][stor9[0]] = 0
        require (stor5[address(msg.sender)][stor9[0]] * sub_8d1d717d / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]]) + stor6[msg.sender][stor9[0]] >= stor6[msg.sender][stor9[0]]
        stor6[msg.sender][stor9[0]] += stor5[address(msg.sender)][stor9[0]] * sub_8d1d717d / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]]
        stor8[msg.sender] = 1
        call msg.sender with:
           value stor5[address(msg.sender)][stor9[0]] * sub_8d1d717d / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xacefcccc: (stor5[address(msg.sender)][stor9[0]] * sub_8d1d717d / sub_b9e449fc[stor9[0]] - sub_af952028[stor9[0]]), msg.sender, stor5[msg.sender][stor9[0]]
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not arg1:
        if not arg2:
            if arg1:
                if (0 / arg1) + 5 * 10^6 >= 0 / arg1:
                    if not arg3:
                        if (0 / arg1) + 5 * 10^6:
                            return (0 / (0 / arg1) + 5 * 10^6)
                    else:
                        if 10 * 10^6 * arg3 / arg3 == 10 * 10^6:
                            if (0 / arg1) + 5 * 10^6:
                                return (10 * 10^6 * arg3 / (0 / arg1) + 5 * 10^6)
        else:
            if 10 * 10^6 * arg2 / arg2 == 10 * 10^6:
                if 10 * 10^6 * arg2 >= 10 * 10^6 * arg2:
                    if arg1:
                        if (10 * 10^6 * arg2 / arg1) + 5 * 10^6 >= 10 * 10^6 * arg2 / arg1:
                            if not arg3:
                                if (10 * 10^6 * arg2 / arg1) + 5 * 10^6:
                                    return (0 / (10 * 10^6 * arg2 / arg1) + 5 * 10^6)
                            else:
                                if 10 * 10^6 * arg3 / arg3 == 10 * 10^6:
                                    if (10 * 10^6 * arg2 / arg1) + 5 * 10^6:
                                        return (10 * 10^6 * arg3 / (10 * 10^6 * arg2 / arg1) + 5 * 10^6)
    else:
        if 5 * 10^6 * arg1 / arg1 == 5 * 10^6:
            if not arg2:
                if 5 * 10^6 * arg1 >= 0:
                    if arg1:
                        if (5 * 10^6 * arg1 / arg1) + 5 * 10^6 >= 5 * 10^6 * arg1 / arg1:
                            if not arg3:
                                if (5 * 10^6 * arg1 / arg1) + 5 * 10^6:
                                    return (0 / (5 * 10^6 * arg1 / arg1) + 5 * 10^6)
                            else:
                                if 10 * 10^6 * arg3 / arg3 == 10 * 10^6:
                                    if (5 * 10^6 * arg1 / arg1) + 5 * 10^6:
                                        return (10 * 10^6 * arg3 / (5 * 10^6 * arg1 / arg1) + 5 * 10^6)
            else:
                if 10 * 10^6 * arg2 / arg2 == 10 * 10^6:
                    if (5 * 10^6 * arg1) + (10 * 10^6 * arg2) >= 10 * 10^6 * arg2:
                        if arg1:
                            if ((5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1) + 5 * 10^6 >= (5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1:
                                if not arg3:
                                    if ((5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1) + 5 * 10^6:
                                        return (0 / ((5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1) + 5 * 10^6)
                                else:
                                    if 10 * 10^6 * arg3 / arg3 == 10 * 10^6:
                                        if ((5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1) + 5 * 10^6:
                                            return (10 * 10^6 * arg3 / ((5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1) + 5 * 10^6)
    revert
}

function sub_af37121a(?) {
    if not arg1:
        if not arg2:
            if arg1:
                if (0 / arg1) + 5 * 10^6 >= 0 / arg1:
                    if not sub_af952028[arg3]:
                        if (0 / arg1) + 5 * 10^6:
                            return (0 / (0 / arg1) + 5 * 10^6)
                    else:
                        if 10 * 10^6 * sub_af952028[arg3] / sub_af952028[arg3] == 10 * 10^6:
                            if (0 / arg1) + 5 * 10^6:
                                return (10 * 10^6 * sub_af952028[arg3] / (0 / arg1) + 5 * 10^6)
        else:
            if 10 * 10^6 * arg2 / arg2 == 10 * 10^6:
                if 10 * 10^6 * arg2 >= 10 * 10^6 * arg2:
                    if arg1:
                        if (10 * 10^6 * arg2 / arg1) + 5 * 10^6 >= 10 * 10^6 * arg2 / arg1:
                            if not sub_af952028[arg3]:
                                if (10 * 10^6 * arg2 / arg1) + 5 * 10^6:
                                    return (0 / (10 * 10^6 * arg2 / arg1) + 5 * 10^6)
                            else:
                                if 10 * 10^6 * sub_af952028[arg3] / sub_af952028[arg3] == 10 * 10^6:
                                    if (10 * 10^6 * arg2 / arg1) + 5 * 10^6:
                                        return (10 * 10^6 * sub_af952028[arg3] / (10 * 10^6 * arg2 / arg1) + 5 * 10^6)
    else:
        if 5 * 10^6 * arg1 / arg1 == 5 * 10^6:
            if not arg2:
                if 5 * 10^6 * arg1 >= 0:
                    if arg1:
                        if (5 * 10^6 * arg1 / arg1) + 5 * 10^6 >= 5 * 10^6 * arg1 / arg1:
                            if not sub_af952028[arg3]:
                                if (5 * 10^6 * arg1 / arg1) + 5 * 10^6:
                                    return (0 / (5 * 10^6 * arg1 / arg1) + 5 * 10^6)
                            else:
                                if 10 * 10^6 * sub_af952028[arg3] / sub_af952028[arg3] == 10 * 10^6:
                                    if (5 * 10^6 * arg1 / arg1) + 5 * 10^6:
                                        return (10 * 10^6 * sub_af952028[arg3] / (5 * 10^6 * arg1 / arg1) + 5 * 10^6)
            else:
                if 10 * 10^6 * arg2 / arg2 == 10 * 10^6:
                    if (5 * 10^6 * arg1) + (10 * 10^6 * arg2) >= 10 * 10^6 * arg2:
                        if arg1:
                            if ((5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1) + 5 * 10^6 >= (5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1:
                                if not sub_af952028[arg3]:
                                    if ((5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1) + 5 * 10^6:
                                        return (0 / ((5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1) + 5 * 10^6)
                                else:
                                    if 10 * 10^6 * sub_af952028[arg3] / sub_af952028[arg3] == 10 * 10^6:
                                        if ((5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1) + 5 * 10^6:
                                            return (10 * 10^6 * sub_af952028[arg3] / ((5 * 10^6 * arg1) + (10 * 10^6 * arg2) / arg1) + 5 * 10^6)
    revert
}

function sub_6b860bfe(?) {
    if not arg1:
        if not stor3[arg2]:
            if arg1:
                if (0 / arg1) + 5 * 10^6 >= 0 / arg1:
                    if not sub_af952028[arg2]:
                        if (0 / arg1) + 5 * 10^6:
                            return (0 / (0 / arg1) + 5 * 10^6)
                    else:
                        if 10 * 10^6 * sub_af952028[arg2] / sub_af952028[arg2] == 10 * 10^6:
                            if (0 / arg1) + 5 * 10^6:
                                return (10 * 10^6 * sub_af952028[arg2] / (0 / arg1) + 5 * 10^6)
        else:
            if 10 * 10^6 * stor3[arg2] / stor3[arg2] == 10 * 10^6:
                if 10 * 10^6 * stor3[arg2] >= 10 * 10^6 * stor3[arg2]:
                    if arg1:
                        if (10 * 10^6 * stor3[arg2] / arg1) + 5 * 10^6 >= 10 * 10^6 * stor3[arg2] / arg1:
                            if not sub_af952028[arg2]:
                                if (10 * 10^6 * stor3[arg2] / arg1) + 5 * 10^6:
                                    return (0 / (10 * 10^6 * stor3[arg2] / arg1) + 5 * 10^6)
                            else:
                                if 10 * 10^6 * sub_af952028[arg2] / sub_af952028[arg2] == 10 * 10^6:
                                    if (10 * 10^6 * stor3[arg2] / arg1) + 5 * 10^6:
                                        return (10 * 10^6 * sub_af952028[arg2] / (10 * 10^6 * stor3[arg2] / arg1) + 5 * 10^6)
    else:
        if 5 * 10^6 * arg1 / arg1 == 5 * 10^6:
            if not stor3[arg2]:
                if 5 * 10^6 * arg1 >= 0:
                    if arg1:
                        if (5 * 10^6 * arg1 / arg1) + 5 * 10^6 >= 5 * 10^6 * arg1 / arg1:
                            if not sub_af952028[arg2]:
                                if (5 * 10^6 * arg1 / arg1) + 5 * 10^6:
                                    return (0 / (5 * 10^6 * arg1 / arg1) + 5 * 10^6)
                            else:
                                if 10 * 10^6 * sub_af952028[arg2] / sub_af952028[arg2] == 10 * 10^6:
                                    if (5 * 10^6 * arg1 / arg1) + 5 * 10^6:
                                        return (10 * 10^6 * sub_af952028[arg2] / (5 * 10^6 * arg1 / arg1) + 5 * 10^6)
            else:
                if 10 * 10^6 * stor3[arg2] / stor3[arg2] == 10 * 10^6:
                    if (5 * 10^6 * arg1) + (10 * 10^6 * stor3[arg2]) >= 10 * 10^6 * stor3[arg2]:
                        if arg1:
                            if ((5 * 10^6 * arg1) + (10 * 10^6 * stor3[arg2]) / arg1) + 5 * 10^6 >= (5 * 10^6 * arg1) + (10 * 10^6 * stor3[arg2]) / arg1:
                                if not sub_af952028[arg2]:
                                    if ((5 * 10^6 * arg1) + (10 * 10^6 * stor3[arg2]) / arg1) + 5 * 10^6:
                                        return (0 / ((5 * 10^6 * arg1) + (10 * 10^6 * stor3[arg2]) / arg1) + 5 * 10^6)
                                else:
                                    if 10 * 10^6 * sub_af952028[arg2] / sub_af952028[arg2] == 10 * 10^6:
                                        if ((5 * 10^6 * arg1) + (10 * 10^6 * stor3[arg2]) / arg1) + 5 * 10^6:
                                            return (10 * 10^6 * sub_af952028[arg2] / ((5 * 10^6 * arg1) + (10 * 10^6 * stor3[arg2]) / arg1) + 5 * 10^6)
    revert
}

function sub_ef23d0ee(?) {
    if not arg1:
        if not sub_af952028[arg2]:
            if arg1:
                if (0 / arg1) + 5 * 10^6 >= 0 / arg1:
                    if not stor3[arg2]:
                        if (0 / arg1) + 5 * 10^6:
                            return (0 / (0 / arg1) + 5 * 10^6)
                    else:
                        if 10 * 10^6 * stor3[arg2] / stor3[arg2] == 10 * 10^6:
                            if (0 / arg1) + 5 * 10^6:
                                return (10 * 10^6 * stor3[arg2] / (0 / arg1) + 5 * 10^6)
        else:
            if 10 * 10^6 * sub_af952028[arg2] / sub_af952028[arg2] == 10 * 10^6:
                if 10 * 10^6 * sub_af952028[arg2] >= 10 * 10^6 * sub_af952028[arg2]:
                    if arg1:
                        if (10 * 10^6 * sub_af952028[arg2] / arg1) + 5 * 10^6 >= 10 * 10^6 * sub_af952028[arg2] / arg1:
                            if not stor3[arg2]:
                                if (10 * 10^6 * sub_af952028[arg2] / arg1) + 5 * 10^6:
                                    return (0 / (10 * 10^6 * sub_af952028[arg2] / arg1) + 5 * 10^6)
                            else:
                                if 10 * 10^6 * stor3[arg2] / stor3[arg2] == 10 * 10^6:
                                    if (10 * 10^6 * sub_af952028[arg2] / arg1) + 5 * 10^6:
                                        return (10 * 10^6 * stor3[arg2] / (10 * 10^6 * sub_af952028[arg2] / arg1) + 5 * 10^6)
    else:
        if 5 * 10^6 * arg1 / arg1 == 5 * 10^6:
            if not sub_af952028[arg2]:
                if 5 * 10^6 * arg1 >= 0:
                    if arg1:
                        if (5 * 10^6 * arg1 / arg1) + 5 * 10^6 >= 5 * 10^6 * arg1 / arg1:
                            if not stor3[arg2]:
                                if (5 * 10^6 * arg1 / arg1) + 5 * 10^6:
                                    return (0 / (5 * 10^6 * arg1 / arg1) + 5 * 10^6)
                            else:
                                if 10 * 10^6 * stor3[arg2] / stor3[arg2] == 10 * 10^6:
                                    if (5 * 10^6 * arg1 / arg1) + 5 * 10^6:
                                        return (10 * 10^6 * stor3[arg2] / (5 * 10^6 * arg1 / arg1) + 5 * 10^6)
            else:
                if 10 * 10^6 * sub_af952028[arg2] / sub_af952028[arg2] == 10 * 10^6:
                    if (5 * 10^6 * arg1) + (10 * 10^6 * sub_af952028[arg2]) >= 10 * 10^6 * sub_af952028[arg2]:
                        if arg1:
                            if ((5 * 10^6 * arg1) + (10 * 10^6 * sub_af952028[arg2]) / arg1) + 5 * 10^6 >= (5 * 10^6 * arg1) + (10 * 10^6 * sub_af952028[arg2]) / arg1:
                                if not stor3[arg2]:
                                    if ((5 * 10^6 * arg1) + (10 * 10^6 * sub_af952028[arg2]) / arg1) + 5 * 10^6:
                                        return (0 / ((5 * 10^6 * arg1) + (10 * 10^6 * sub_af952028[arg2]) / arg1) + 5 * 10^6)
                                else:
                                    if 10 * 10^6 * stor3[arg2] / stor3[arg2] == 10 * 10^6:
                                        if ((5 * 10^6 * arg1) + (10 * 10^6 * sub_af952028[arg2]) / arg1) + 5 * 10^6:
                                            return (10 * 10^6 * stor3[arg2] / ((5 * 10^6 * arg1) + (10 * 10^6 * sub_af952028[arg2]) / arg1) + 5 * 10^6)
    revert
}

function sub_bd85d1f9(?) {
    if not sub_598ab28e:
        mem[(32 * sub_598ab28e) + 128] = sub_598ab28e
        mem[(64 * sub_598ab28e) + 160] = sub_598ab28e
        mem[(98 * sub_598ab28e) + 192] = sub_598ab28e
        idx = 0
        while idx < sub_598ab28e:
            require idx < sub_598ab28e
            mem[(32 * idx) + 128] = sub_af952028[idx]
            if not sub_af952028[idx]:
                if not stor3[idx]:
                    require idx < mem[(32 * sub_598ab28e) + 128]
                    mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0
                else:
                    require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                    require idx < mem[(32 * sub_598ab28e) + 128]
                    mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / 10 * 10^6
            else:
                require 10 * 10^6 * sub_af952028[idx] / sub_af952028[idx] == 10 * 10^6
                require (10 * 10^6 * sub_af952028[idx]) + 5 * 10^6 >= 10 * 10^6 * sub_af952028[idx]
                if not stor3[idx]:
                    require (10 * 10^6 * sub_af952028[idx]) + 10 * 10^6
                    require idx < mem[(32 * sub_598ab28e) + 128]
                    mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0 / (10 * 10^6 * sub_af952028[idx]) + 10 * 10^6
                else:
                    require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                    require (10 * 10^6 * sub_af952028[idx]) + 10 * 10^6
                    require idx < mem[(32 * sub_598ab28e) + 128]
                    mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / (10 * 10^6 * sub_af952028[idx]) + 10 * 10^6
            require idx < mem[(64 * sub_598ab28e) + 160]
            mem[(64 * sub_598ab28e) + (32 * idx) + 192] = stor3[idx]
            mem[0] = idx
            mem[32] = 4
            require idx < mem[(98 * sub_598ab28e) + 192]
            mem[(98 * sub_598ab28e) + (32 * idx) + 224] = bool(stor4[idx])
            idx = idx + 1
            continue 
        mem[(131 * sub_598ab28e) + 224] = 128
        mem[(131 * sub_598ab28e) + 352] = sub_598ab28e
        mem[(131 * sub_598ab28e) + 384 len floor32(sub_598ab28e)] = mem[128 len floor32(sub_598ab28e)]
        mem[(131 * sub_598ab28e) + 256] = (32 * sub_598ab28e) + 160
        mem[(164 * sub_598ab28e) + 384] = mem[(32 * sub_598ab28e) + 128]
        mem[(164 * sub_598ab28e) + 416 len floor32(mem[(32 * sub_598ab28e) + 128])] = mem[(32 * sub_598ab28e) + 160 len floor32(mem[(32 * sub_598ab28e) + 128])]
        mem[(131 * sub_598ab28e) + 288] = (32 * mem[(32 * sub_598ab28e) + 128]) + (32 * sub_598ab28e) + 192
        mem[(32 * mem[(32 * sub_598ab28e) + 128]) + (164 * sub_598ab28e) + 416] = mem[(64 * sub_598ab28e) + 160]
        _183 = mem[(64 * sub_598ab28e) + 160]
        mem[(32 * mem[(32 * sub_598ab28e) + 128]) + (164 * sub_598ab28e) + 448 len floor32(mem[(64 * sub_598ab28e) + 160])] = mem[(64 * sub_598ab28e) + 192 len floor32(mem[(64 * sub_598ab28e) + 160])]
        mem[(131 * sub_598ab28e) + 320] = (32 * _183) + (32 * mem[(32 * sub_598ab28e) + 128]) + (32 * sub_598ab28e) + 224
        mem[(32 * _183) + (32 * mem[(32 * sub_598ab28e) + 128]) + (164 * sub_598ab28e) + 448] = mem[(98 * sub_598ab28e) + 192]
        _199 = mem[(98 * sub_598ab28e) + 192]
        mem[(32 * _183) + (32 * mem[(32 * sub_598ab28e) + 128]) + (164 * sub_598ab28e) + 480 len floor32(mem[(98 * sub_598ab28e) + 192])] = mem[(98 * sub_598ab28e) + 224 len floor32(mem[(98 * sub_598ab28e) + 192])]
        return memory
          from (131 * sub_598ab28e) + 224
           len (32 * _199) + (32 * _183) + (32 * mem[(32 * sub_598ab28e) + 128]) + (33 * sub_598ab28e) + 256
    mem[128 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    mem[(32 * sub_598ab28e) + 128] = sub_598ab28e
    mem[(32 * sub_598ab28e) + 160 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    mem[(64 * sub_598ab28e) + 160] = sub_598ab28e
    mem[(64 * sub_598ab28e) + 192 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    mem[(98 * sub_598ab28e) + 192] = sub_598ab28e
    mem[(98 * sub_598ab28e) + 224 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    idx = 0
    while idx < sub_598ab28e:
        require idx < sub_598ab28e
        mem[(32 * idx) + 128] = sub_af952028[idx]
        if not sub_af952028[idx]:
            if not stor3[idx]:
                require idx < mem[(32 * sub_598ab28e) + 128]
                mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0
            else:
                require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                require idx < mem[(32 * sub_598ab28e) + 128]
                mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / 10 * 10^6
        else:
            require 10 * 10^6 * sub_af952028[idx] / sub_af952028[idx] == 10 * 10^6
            require (10 * 10^6 * sub_af952028[idx]) + 5 * 10^6 >= 10 * 10^6 * sub_af952028[idx]
            if not stor3[idx]:
                require (10 * 10^6 * sub_af952028[idx]) + 10 * 10^6
                require idx < mem[(32 * sub_598ab28e) + 128]
                mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0 / (10 * 10^6 * sub_af952028[idx]) + 10 * 10^6
            else:
                require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                require (10 * 10^6 * sub_af952028[idx]) + 10 * 10^6
                require idx < mem[(32 * sub_598ab28e) + 128]
                mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / (10 * 10^6 * sub_af952028[idx]) + 10 * 10^6
        require idx < mem[(64 * sub_598ab28e) + 160]
        mem[(64 * sub_598ab28e) + (32 * idx) + 192] = stor3[idx]
        mem[0] = idx
        mem[32] = 4
        require idx < mem[(98 * sub_598ab28e) + 192]
        mem[(98 * sub_598ab28e) + (32 * idx) + 224] = bool(stor4[idx])
        idx = idx + 1
        continue 
    mem[(131 * sub_598ab28e) + 224] = 128
    mem[(131 * sub_598ab28e) + 352] = sub_598ab28e
    mem[(131 * sub_598ab28e) + 384 len floor32(sub_598ab28e)] = mem[128 len floor32(sub_598ab28e)]
    mem[(131 * sub_598ab28e) + 256] = (32 * sub_598ab28e) + 160
    mem[(164 * sub_598ab28e) + 384] = mem[(32 * sub_598ab28e) + 128]
    mem[(164 * sub_598ab28e) + 416 len floor32(mem[(32 * sub_598ab28e) + 128])] = mem[(32 * sub_598ab28e) + 160 len floor32(mem[(32 * sub_598ab28e) + 128])]
    mem[(131 * sub_598ab28e) + 288] = (32 * mem[(32 * sub_598ab28e) + 128]) + (32 * sub_598ab28e) + 192
    mem[(32 * mem[(32 * sub_598ab28e) + 128]) + (164 * sub_598ab28e) + 416] = mem[(64 * sub_598ab28e) + 160]
    _186 = mem[(64 * sub_598ab28e) + 160]
    mem[(32 * mem[(32 * sub_598ab28e) + 128]) + (164 * sub_598ab28e) + 448 len floor32(mem[(64 * sub_598ab28e) + 160])] = mem[(64 * sub_598ab28e) + 192 len floor32(mem[(64 * sub_598ab28e) + 160])]
    mem[(131 * sub_598ab28e) + 320] = (32 * _186) + (32 * mem[(32 * sub_598ab28e) + 128]) + (32 * sub_598ab28e) + 224
    mem[(32 * _186) + (32 * mem[(32 * sub_598ab28e) + 128]) + (164 * sub_598ab28e) + 448] = mem[(98 * sub_598ab28e) + 192]
    _202 = mem[(98 * sub_598ab28e) + 192]
    mem[(32 * _186) + (32 * mem[(32 * sub_598ab28e) + 128]) + (164 * sub_598ab28e) + 480 len floor32(mem[(98 * sub_598ab28e) + 192])] = mem[(98 * sub_598ab28e) + 224 len floor32(mem[(98 * sub_598ab28e) + 192])]
    return memory
      from (131 * sub_598ab28e) + 224
       len (32 * _202) + (32 * _186) + (32 * mem[(32 * sub_598ab28e) + 128]) + (33 * sub_598ab28e) + 256
}

function sub_a7aebb02(?) {
    if not sub_598ab28e:
        mem[(32 * sub_598ab28e) + 128] = sub_598ab28e
        mem[(64 * sub_598ab28e) + 160] = sub_598ab28e
        mem[(98 * sub_598ab28e) + 192] = sub_598ab28e
        mem[(131 * sub_598ab28e) + 224] = sub_598ab28e
        idx = 0
        while idx < sub_598ab28e:
            if stor5[address(arg1)][idx] <= 0:
                require idx < mem[(64 * sub_598ab28e) + 160]
                mem[(64 * sub_598ab28e) + (32 * idx) + 192] = stor6[address(arg1)][idx]
                require idx < mem[(98 * sub_598ab28e) + 192]
                mem[(98 * sub_598ab28e) + (32 * idx) + 224] = stor7[address(arg1)][idx]
                mem[0] = idx
                mem[32] = 2
                if sub_b9e449fc[idx] > sub_af952028[idx]:
                    mem[0] = idx
                    mem[32] = 2
                    require sub_af952028[idx] <= sub_b9e449fc[idx]
                    require idx < sub_598ab28e
                    if sub_f7708f5b:
                        if not sub_8d1d717d:
                            require sub_b9e449fc[idx] - sub_af952028[idx]
                            require idx < mem[(131 * sub_598ab28e) + 224]
                            mem[(131 * sub_598ab28e) + (32 * idx) + 256] = 0 / sub_b9e449fc[idx] - sub_af952028[idx]
                        else:
                            require mem[(32 * idx) + 128] * sub_8d1d717d / sub_8d1d717d == mem[(32 * idx) + 128]
                            require sub_b9e449fc[idx] - sub_af952028[idx]
                            require idx < mem[(131 * sub_598ab28e) + 224]
                            mem[(131 * sub_598ab28e) + (32 * idx) + 256] = mem[(32 * idx) + 128] * sub_8d1d717d / sub_b9e449fc[idx] - sub_af952028[idx]
                    else:
                        require seedAmount <= eth.balance(this.address)
                        if not eth.balance(this.address) - seedAmount:
                            require sub_b9e449fc[idx] - sub_af952028[idx]
                            require idx < mem[(131 * sub_598ab28e) + 224]
                            mem[(131 * sub_598ab28e) + (32 * idx) + 256] = 0 / sub_b9e449fc[idx] - sub_af952028[idx]
                        else:
                            require (eth.balance(this.address) * mem[(32 * idx) + 128]) - (seedAmount * mem[(32 * idx) + 128]) / eth.balance(this.address) - seedAmount == mem[(32 * idx) + 128]
                            require sub_b9e449fc[idx] - sub_af952028[idx]
                            require idx < mem[(131 * sub_598ab28e) + 224]
                            mem[(131 * sub_598ab28e) + (32 * idx) + 256] = (eth.balance(this.address) * mem[(32 * idx) + 128]) - (seedAmount * mem[(32 * idx) + 128]) / sub_b9e449fc[idx] - sub_af952028[idx]
            else:
                require idx < sub_598ab28e
                mem[(32 * idx) + 128] = stor5[address(arg1)][idx]
                require idx < sub_598ab28e
                if not stor5[address(arg1)][idx]:
                    if not sub_af952028[idx]:
                        require stor5[address(arg1)][idx]
                        require (0 / stor5[address(arg1)][idx]) + 5 * 10^6 >= 0 / stor5[address(arg1)][idx]
                        if not stor3[idx]:
                            require (0 / stor5[address(arg1)][idx]) + 5 * 10^6
                            require idx < mem[(32 * sub_598ab28e) + 128]
                            mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0 / (0 / stor5[address(arg1)][idx]) + 5 * 10^6
                        else:
                            require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                            require (0 / stor5[address(arg1)][idx]) + 5 * 10^6
                            require idx < mem[(32 * sub_598ab28e) + 128]
                            mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / (0 / stor5[address(arg1)][idx]) + 5 * 10^6
                    else:
                        require 10 * 10^6 * sub_af952028[idx] / sub_af952028[idx] == 10 * 10^6
                        require 10 * 10^6 * sub_af952028[idx] >= 10 * 10^6 * sub_af952028[idx]
                        require stor5[address(arg1)][idx]
                        require (10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]) + 5 * 10^6 >= 10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]
                        if not stor3[idx]:
                            require (10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                            require idx < mem[(32 * sub_598ab28e) + 128]
                            mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0 / (10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                        else:
                            require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                            require (10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                            require idx < mem[(32 * sub_598ab28e) + 128]
                            mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / (10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                else:
                    require 5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx] == 5 * 10^6
                    if not sub_af952028[idx]:
                        require 5 * 10^6 * stor5[address(arg1)][idx] >= 0
                        require stor5[address(arg1)][idx]
                        require (5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]) + 5 * 10^6 >= 5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]
                        if not stor3[idx]:
                            require (5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                            require idx < mem[(32 * sub_598ab28e) + 128]
                            mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0 / (5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                        else:
                            require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                            require (5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                            require idx < mem[(32 * sub_598ab28e) + 128]
                            mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / (5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                    else:
                        require 10 * 10^6 * sub_af952028[idx] / sub_af952028[idx] == 10 * 10^6
                        require (5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) >= 10 * 10^6 * sub_af952028[idx]
                        require stor5[address(arg1)][idx]
                        require ((5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]) + 5 * 10^6 >= (5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]
                        if not stor3[idx]:
                            require ((5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]) + 5 * 10^6
                            require idx < mem[(32 * sub_598ab28e) + 128]
                            mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0 / ((5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]) + 5 * 10^6
                        else:
                            require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                            require ((5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]) + 5 * 10^6
                            require idx < mem[(32 * sub_598ab28e) + 128]
                            mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / ((5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]) + 5 * 10^6
                require idx < mem[(64 * sub_598ab28e) + 160]
                mem[(64 * sub_598ab28e) + (32 * idx) + 192] = stor6[address(arg1)][idx]
                require idx < mem[(98 * sub_598ab28e) + 192]
                mem[(98 * sub_598ab28e) + (32 * idx) + 224] = stor7[address(arg1)][idx]
                mem[0] = idx
                mem[32] = 2
                if sub_b9e449fc[idx] > sub_af952028[idx]:
                    mem[0] = idx
                    mem[32] = 2
                    require sub_af952028[idx] <= sub_b9e449fc[idx]
                    require idx < sub_598ab28e
                    if sub_f7708f5b:
                        if not sub_8d1d717d:
                            require sub_b9e449fc[idx] - sub_af952028[idx]
                            require idx < mem[(131 * sub_598ab28e) + 224]
                            mem[(131 * sub_598ab28e) + (32 * idx) + 256] = 0 / sub_b9e449fc[idx] - sub_af952028[idx]
                        else:
                            require stor5[address(arg1)][idx] * sub_8d1d717d / sub_8d1d717d == stor5[address(arg1)][idx]
                            require sub_b9e449fc[idx] - sub_af952028[idx]
                            require idx < mem[(131 * sub_598ab28e) + 224]
                            mem[(131 * sub_598ab28e) + (32 * idx) + 256] = stor5[address(arg1)][idx] * sub_8d1d717d / sub_b9e449fc[idx] - sub_af952028[idx]
                    else:
                        require seedAmount <= eth.balance(this.address)
                        if not eth.balance(this.address) - seedAmount:
                            require sub_b9e449fc[idx] - sub_af952028[idx]
                            require idx < mem[(131 * sub_598ab28e) + 224]
                            mem[(131 * sub_598ab28e) + (32 * idx) + 256] = 0 / sub_b9e449fc[idx] - sub_af952028[idx]
                        else:
                            require (eth.balance(this.address) * stor5[address(arg1)][idx]) - (seedAmount * stor5[address(arg1)][idx]) / eth.balance(this.address) - seedAmount == stor5[address(arg1)][idx]
                            require sub_b9e449fc[idx] - sub_af952028[idx]
                            require idx < mem[(131 * sub_598ab28e) + 224]
                            mem[(131 * sub_598ab28e) + (32 * idx) + 256] = (eth.balance(this.address) * stor5[address(arg1)][idx]) - (seedAmount * stor5[address(arg1)][idx]) / sub_b9e449fc[idx] - sub_af952028[idx]
            idx = idx + 1
            continue 
        mem[(164 * sub_598ab28e) + 256] = 160
        mem[(164 * sub_598ab28e) + 416] = sub_598ab28e
        mem[(164 * sub_598ab28e) + 448 len floor32(sub_598ab28e)] = mem[128 len floor32(sub_598ab28e)]
        mem[(164 * sub_598ab28e) + 288] = (32 * sub_598ab28e) + 192
        mem[(197 * sub_598ab28e) + 448] = mem[(32 * sub_598ab28e) + 128]
        mem[(197 * sub_598ab28e) + 480 len floor32(mem[(32 * sub_598ab28e) + 128])] = mem[(32 * sub_598ab28e) + 160 len floor32(mem[(32 * sub_598ab28e) + 128])]
        mem[(164 * sub_598ab28e) + 320] = (32 * mem[(32 * sub_598ab28e) + 128]) + (32 * sub_598ab28e) + 224
        mem[(32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 480] = mem[(64 * sub_598ab28e) + 160]
        _751 = mem[(64 * sub_598ab28e) + 160]
        mem[(32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 512 len floor32(mem[(64 * sub_598ab28e) + 160])] = mem[(64 * sub_598ab28e) + 192 len floor32(mem[(64 * sub_598ab28e) + 160])]
        mem[(164 * sub_598ab28e) + 352] = (32 * _751) + (32 * mem[(32 * sub_598ab28e) + 128]) + (32 * sub_598ab28e) + 256
        mem[(32 * _751) + (32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 512] = mem[(98 * sub_598ab28e) + 192]
        mem[(32 * _751) + (32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 544 len floor32(mem[(98 * sub_598ab28e) + 192])] = mem[(98 * sub_598ab28e) + 224 len floor32(mem[(98 * sub_598ab28e) + 192])]
        mem[(164 * sub_598ab28e) + 384] = (32 * mem[(98 * sub_598ab28e) + 192]) + (32 * _751) + (32 * mem[(32 * sub_598ab28e) + 128]) + (32 * sub_598ab28e) + 288
        mem[(32 * mem[(98 * sub_598ab28e) + 192]) + (32 * _751) + (32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 544] = mem[(131 * sub_598ab28e) + 224]
        _789 = mem[(131 * sub_598ab28e) + 224]
        mem[(32 * mem[(98 * sub_598ab28e) + 192]) + (32 * _751) + (32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 576 len floor32(mem[(131 * sub_598ab28e) + 224])] = mem[(131 * sub_598ab28e) + 256 len floor32(mem[(131 * sub_598ab28e) + 224])]
        return memory
          from (164 * sub_598ab28e) + 256
           len (32 * _789) + (32 * mem[(98 * sub_598ab28e) + 192]) + (32 * _751) + (32 * mem[(32 * sub_598ab28e) + 128]) + (33 * sub_598ab28e) + 320
    mem[128 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    mem[(32 * sub_598ab28e) + 128] = sub_598ab28e
    mem[(32 * sub_598ab28e) + 160 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    mem[(64 * sub_598ab28e) + 160] = sub_598ab28e
    mem[(64 * sub_598ab28e) + 192 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    mem[(98 * sub_598ab28e) + 192] = sub_598ab28e
    mem[(98 * sub_598ab28e) + 224 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    mem[(131 * sub_598ab28e) + 224] = sub_598ab28e
    mem[(131 * sub_598ab28e) + 256 len 32 * sub_598ab28e] = code.data[7691 len 32 * sub_598ab28e]
    idx = 0
    while idx < sub_598ab28e:
        if stor5[address(arg1)][idx] <= 0:
            require idx < mem[(64 * sub_598ab28e) + 160]
            mem[(64 * sub_598ab28e) + (32 * idx) + 192] = stor6[address(arg1)][idx]
            require idx < mem[(98 * sub_598ab28e) + 192]
            mem[(98 * sub_598ab28e) + (32 * idx) + 224] = stor7[address(arg1)][idx]
            mem[0] = idx
            mem[32] = 2
            if sub_b9e449fc[idx] > sub_af952028[idx]:
                mem[0] = idx
                mem[32] = 2
                require sub_af952028[idx] <= sub_b9e449fc[idx]
                require idx < sub_598ab28e
                if sub_f7708f5b:
                    if not sub_8d1d717d:
                        require sub_b9e449fc[idx] - sub_af952028[idx]
                        require idx < mem[(131 * sub_598ab28e) + 224]
                        mem[(131 * sub_598ab28e) + (32 * idx) + 256] = 0 / sub_b9e449fc[idx] - sub_af952028[idx]
                    else:
                        require mem[(32 * idx) + 128] * sub_8d1d717d / sub_8d1d717d == mem[(32 * idx) + 128]
                        require sub_b9e449fc[idx] - sub_af952028[idx]
                        require idx < mem[(131 * sub_598ab28e) + 224]
                        mem[(131 * sub_598ab28e) + (32 * idx) + 256] = mem[(32 * idx) + 128] * sub_8d1d717d / sub_b9e449fc[idx] - sub_af952028[idx]
                else:
                    require seedAmount <= eth.balance(this.address)
                    if not eth.balance(this.address) - seedAmount:
                        require sub_b9e449fc[idx] - sub_af952028[idx]
                        require idx < mem[(131 * sub_598ab28e) + 224]
                        mem[(131 * sub_598ab28e) + (32 * idx) + 256] = 0 / sub_b9e449fc[idx] - sub_af952028[idx]
                    else:
                        require (eth.balance(this.address) * mem[(32 * idx) + 128]) - (seedAmount * mem[(32 * idx) + 128]) / eth.balance(this.address) - seedAmount == mem[(32 * idx) + 128]
                        require sub_b9e449fc[idx] - sub_af952028[idx]
                        require idx < mem[(131 * sub_598ab28e) + 224]
                        mem[(131 * sub_598ab28e) + (32 * idx) + 256] = (eth.balance(this.address) * mem[(32 * idx) + 128]) - (seedAmount * mem[(32 * idx) + 128]) / sub_b9e449fc[idx] - sub_af952028[idx]
        else:
            require idx < sub_598ab28e
            mem[(32 * idx) + 128] = stor5[address(arg1)][idx]
            require idx < sub_598ab28e
            if not stor5[address(arg1)][idx]:
                if not sub_af952028[idx]:
                    require stor5[address(arg1)][idx]
                    require (0 / stor5[address(arg1)][idx]) + 5 * 10^6 >= 0 / stor5[address(arg1)][idx]
                    if not stor3[idx]:
                        require (0 / stor5[address(arg1)][idx]) + 5 * 10^6
                        require idx < mem[(32 * sub_598ab28e) + 128]
                        mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0 / (0 / stor5[address(arg1)][idx]) + 5 * 10^6
                    else:
                        require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                        require (0 / stor5[address(arg1)][idx]) + 5 * 10^6
                        require idx < mem[(32 * sub_598ab28e) + 128]
                        mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / (0 / stor5[address(arg1)][idx]) + 5 * 10^6
                else:
                    require 10 * 10^6 * sub_af952028[idx] / sub_af952028[idx] == 10 * 10^6
                    require 10 * 10^6 * sub_af952028[idx] >= 10 * 10^6 * sub_af952028[idx]
                    require stor5[address(arg1)][idx]
                    require (10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]) + 5 * 10^6 >= 10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]
                    if not stor3[idx]:
                        require (10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                        require idx < mem[(32 * sub_598ab28e) + 128]
                        mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0 / (10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                    else:
                        require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                        require (10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                        require idx < mem[(32 * sub_598ab28e) + 128]
                        mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / (10 * 10^6 * sub_af952028[idx] / stor5[address(arg1)][idx]) + 5 * 10^6
            else:
                require 5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx] == 5 * 10^6
                if not sub_af952028[idx]:
                    require 5 * 10^6 * stor5[address(arg1)][idx] >= 0
                    require stor5[address(arg1)][idx]
                    require (5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]) + 5 * 10^6 >= 5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]
                    if not stor3[idx]:
                        require (5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                        require idx < mem[(32 * sub_598ab28e) + 128]
                        mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0 / (5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                    else:
                        require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                        require (5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                        require idx < mem[(32 * sub_598ab28e) + 128]
                        mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / (5 * 10^6 * stor5[address(arg1)][idx] / stor5[address(arg1)][idx]) + 5 * 10^6
                else:
                    require 10 * 10^6 * sub_af952028[idx] / sub_af952028[idx] == 10 * 10^6
                    require (5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) >= 10 * 10^6 * sub_af952028[idx]
                    require stor5[address(arg1)][idx]
                    require ((5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]) + 5 * 10^6 >= (5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]
                    if not stor3[idx]:
                        require ((5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]) + 5 * 10^6
                        require idx < mem[(32 * sub_598ab28e) + 128]
                        mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 0 / ((5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]) + 5 * 10^6
                    else:
                        require 10 * 10^6 * stor3[idx] / stor3[idx] == 10 * 10^6
                        require ((5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]) + 5 * 10^6
                        require idx < mem[(32 * sub_598ab28e) + 128]
                        mem[(32 * sub_598ab28e) + (32 * idx) + 160] = 10 * 10^6 * stor3[idx] / ((5 * 10^6 * stor5[address(arg1)][idx]) + (10 * 10^6 * sub_af952028[idx]) / stor5[address(arg1)][idx]) + 5 * 10^6
            require idx < mem[(64 * sub_598ab28e) + 160]
            mem[(64 * sub_598ab28e) + (32 * idx) + 192] = stor6[address(arg1)][idx]
            require idx < mem[(98 * sub_598ab28e) + 192]
            mem[(98 * sub_598ab28e) + (32 * idx) + 224] = stor7[address(arg1)][idx]
            mem[0] = idx
            mem[32] = 2
            if sub_b9e449fc[idx] > sub_af952028[idx]:
                mem[0] = idx
                mem[32] = 2
                require sub_af952028[idx] <= sub_b9e449fc[idx]
                require idx < sub_598ab28e
                if sub_f7708f5b:
                    if not sub_8d1d717d:
                        require sub_b9e449fc[idx] - sub_af952028[idx]
                        require idx < mem[(131 * sub_598ab28e) + 224]
                        mem[(131 * sub_598ab28e) + (32 * idx) + 256] = 0 / sub_b9e449fc[idx] - sub_af952028[idx]
                    else:
                        require stor5[address(arg1)][idx] * sub_8d1d717d / sub_8d1d717d == stor5[address(arg1)][idx]
                        require sub_b9e449fc[idx] - sub_af952028[idx]
                        require idx < mem[(131 * sub_598ab28e) + 224]
                        mem[(131 * sub_598ab28e) + (32 * idx) + 256] = stor5[address(arg1)][idx] * sub_8d1d717d / sub_b9e449fc[idx] - sub_af952028[idx]
                else:
                    require seedAmount <= eth.balance(this.address)
                    if not eth.balance(this.address) - seedAmount:
                        require sub_b9e449fc[idx] - sub_af952028[idx]
                        require idx < mem[(131 * sub_598ab28e) + 224]
                        mem[(131 * sub_598ab28e) + (32 * idx) + 256] = 0 / sub_b9e449fc[idx] - sub_af952028[idx]
                    else:
                        require (eth.balance(this.address) * stor5[address(arg1)][idx]) - (seedAmount * stor5[address(arg1)][idx]) / eth.balance(this.address) - seedAmount == stor5[address(arg1)][idx]
                        require sub_b9e449fc[idx] - sub_af952028[idx]
                        require idx < mem[(131 * sub_598ab28e) + 224]
                        mem[(131 * sub_598ab28e) + (32 * idx) + 256] = (eth.balance(this.address) * stor5[address(arg1)][idx]) - (seedAmount * stor5[address(arg1)][idx]) / sub_b9e449fc[idx] - sub_af952028[idx]
        idx = idx + 1
        continue 
    mem[(164 * sub_598ab28e) + 256] = 160
    mem[(164 * sub_598ab28e) + 416] = sub_598ab28e
    mem[(164 * sub_598ab28e) + 448 len floor32(sub_598ab28e)] = mem[128 len floor32(sub_598ab28e)]
    mem[(164 * sub_598ab28e) + 288] = (32 * sub_598ab28e) + 192
    mem[(197 * sub_598ab28e) + 448] = mem[(32 * sub_598ab28e) + 128]
    mem[(197 * sub_598ab28e) + 480 len floor32(mem[(32 * sub_598ab28e) + 128])] = mem[(32 * sub_598ab28e) + 160 len floor32(mem[(32 * sub_598ab28e) + 128])]
    mem[(164 * sub_598ab28e) + 320] = (32 * mem[(32 * sub_598ab28e) + 128]) + (32 * sub_598ab28e) + 224
    mem[(32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 480] = mem[(64 * sub_598ab28e) + 160]
    _754 = mem[(64 * sub_598ab28e) + 160]
    mem[(32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 512 len floor32(mem[(64 * sub_598ab28e) + 160])] = mem[(64 * sub_598ab28e) + 192 len floor32(mem[(64 * sub_598ab28e) + 160])]
    mem[(164 * sub_598ab28e) + 352] = (32 * _754) + (32 * mem[(32 * sub_598ab28e) + 128]) + (32 * sub_598ab28e) + 256
    mem[(32 * _754) + (32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 512] = mem[(98 * sub_598ab28e) + 192]
    _776 = mem[(98 * sub_598ab28e) + 192]
    mem[(32 * _754) + (32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 544 len floor32(mem[(98 * sub_598ab28e) + 192])] = mem[(98 * sub_598ab28e) + 224 len floor32(mem[(98 * sub_598ab28e) + 192])]
    mem[(164 * sub_598ab28e) + 384] = (32 * _776) + (32 * _754) + (32 * mem[(32 * sub_598ab28e) + 128]) + (32 * sub_598ab28e) + 288
    mem[(32 * _776) + (32 * _754) + (32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 544] = mem[(131 * sub_598ab28e) + 224]
    _792 = mem[(131 * sub_598ab28e) + 224]
    mem[(32 * _776) + (32 * _754) + (32 * mem[(32 * sub_598ab28e) + 128]) + (197 * sub_598ab28e) + 576 len floor32(mem[(131 * sub_598ab28e) + 224])] = mem[(131 * sub_598ab28e) + 256 len floor32(mem[(131 * sub_598ab28e) + 224])]
    return 160, 
           (32 * sub_598ab28e) + 192,
           mem[(164 * sub_598ab28e) + 320 len 96],
           sub_598ab28e,
           mem[(164 * sub_598ab28e) + 448 len (33 * sub_598ab28e) + (32 * _792) + (32 * _776) + (32 * _754) + (32 * mem[(32 * sub_598ab28e) + 128]) + 128]
}

function sellShares(uint256 arg1, uint256 arg2) {
    require not stor0
    require 0 < sub_af952028[arg1]
    require endTime >= block.timestamp
    idx = 0
    while idx < sub_383100e8:
        mem[0] = idx
        mem[32] = 10
        if block.timestamp > stor10[idx]:
            mem[0] = idx
            mem[32] = 11
            require block.timestamp >= stor11[idx]
        idx = idx + 1
        continue 
    require stor4[arg1]
    require arg2 > 0
    if not sub_af952028[arg1]:
        require arg2 <= 0
    else:
        require sub_cd4bb50a * sub_af952028[arg1] / sub_af952028[arg1] == sub_cd4bb50a
        require arg2 <= sub_cd4bb50a * sub_af952028[arg1] / 100
        require arg2 <= stor5[msg.sender][arg1]
    require arg2 <= stor5[msg.sender][arg1]
    stor5[msg.sender][arg1] -= arg2
    if not arg2:
        if not sub_af952028[arg1]:
            require arg2
            require (0 / arg2) + 5 * 10^6 >= 0 / arg2
            if not stor3[arg1]:
                require (0 / arg2) + 5 * 10^6
                if not 0 / (0 / arg2) + 5 * 10^6:
                    require 0 <= 0 / (0 / arg2) + 5 * 10^6
                    require 0 / (0 / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 0 / (0 / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (0 / (0 / arg2) + 5 * 10^6) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] += 0 / (0 / arg2) + 5 * 10^6
                    call msg.sender with:
                       value 0 / (0 / arg2) + 5 * 10^6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, 0 / (0 / arg2) + 5 * 10^6, msg.sender, arg1, 0
                else:
                    require prizePoolPercent * 0 / (0 / arg2) + 5 * 10^6 / 0 / (0 / arg2) + 5 * 10^6 == prizePoolPercent
                    require prizePoolPercent * 0 / (0 / arg2) + 5 * 10^6 / 100 <= 0 / (0 / arg2) + 5 * 10^6
                    require 0 / (0 / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 0 / (0 / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (0 / (0 / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (0 / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] = (0 / (0 / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (0 / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1]
                    call msg.sender with:
                       value (0 / (0 / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (0 / arg2) + 5 * 10^6 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, (0 / (0 / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (0 / arg2) + 5 * 10^6 / 100), msg.sender, arg1, 0
            else:
                require 10 * 10^6 * stor3[arg1] / stor3[arg1] == 10 * 10^6
                require (0 / arg2) + 5 * 10^6
                if not 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6:
                    require 0 <= 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6
                    require 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] += 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6
                    call msg.sender with:
                       value 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6, msg.sender, arg1, 0
                else:
                    require prizePoolPercent * 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6 / 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6 == prizePoolPercent
                    require prizePoolPercent * 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6 / 100 <= 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6
                    require 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] = (10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1]
                    call msg.sender with:
                       value (10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, (10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (0 / arg2) + 5 * 10^6 / 100), msg.sender, arg1, 0
        else:
            require 10 * 10^6 * sub_af952028[arg1] / sub_af952028[arg1] == 10 * 10^6
            require 10 * 10^6 * sub_af952028[arg1] >= 10 * 10^6 * sub_af952028[arg1]
            require arg2
            require (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 >= 10 * 10^6 * sub_af952028[arg1] / arg2
            if not stor3[arg1]:
                require (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                if not 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6:
                    require 0 <= 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                    require 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] += 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                    call msg.sender with:
                       value 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6, msg.sender, arg1, 0
                else:
                    require prizePoolPercent * 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 == prizePoolPercent
                    require prizePoolPercent * 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 100 <= 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                    require 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] = (0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1]
                    call msg.sender with:
                       value (0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, (0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 100), msg.sender, arg1, 0
            else:
                require 10 * 10^6 * stor3[arg1] / stor3[arg1] == 10 * 10^6
                require (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                if not 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6:
                    require 0 <= 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                    require 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] += 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                    call msg.sender with:
                       value 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6, msg.sender, arg1, 0
                else:
                    require prizePoolPercent * 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 == prizePoolPercent
                    require prizePoolPercent * 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 100 <= 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                    require 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] = (10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1]
                    call msg.sender with:
                       value (10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, (10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (10 * 10^6 * sub_af952028[arg1] / arg2) + 5 * 10^6 / 100), msg.sender, arg1, 0
    else:
        require 5 * 10^6 * arg2 / arg2 == 5 * 10^6
        if not sub_af952028[arg1]:
            require 5 * 10^6 * arg2 >= 0
            require arg2
            require (5 * 10^6 * arg2 / arg2) + 5 * 10^6 >= 5 * 10^6 * arg2 / arg2
            if not stor3[arg1]:
                require (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                if not 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6:
                    require 0 <= 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                    require 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] += 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                    call msg.sender with:
                       value 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6, msg.sender, arg1, 0
                else:
                    require prizePoolPercent * 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 == prizePoolPercent
                    require prizePoolPercent * 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 100 <= 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                    require 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] = (0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1]
                    call msg.sender with:
                       value (0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, (0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 100), msg.sender, arg1, 0
            else:
                require 10 * 10^6 * stor3[arg1] / stor3[arg1] == 10 * 10^6
                require (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                if not 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6:
                    require 0 <= 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                    require 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] += 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                    call msg.sender with:
                       value 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6, msg.sender, arg1, 0
                else:
                    require prizePoolPercent * 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 == prizePoolPercent
                    require prizePoolPercent * 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 100 <= 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                    require 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] = (10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1]
                    call msg.sender with:
                       value (10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, (10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / (5 * 10^6 * arg2 / arg2) + 5 * 10^6 / 100), msg.sender, arg1, 0
        else:
            require 10 * 10^6 * sub_af952028[arg1] / sub_af952028[arg1] == 10 * 10^6
            require (5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) >= 10 * 10^6 * sub_af952028[arg1]
            require arg2
            require ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 >= (5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2
            if not stor3[arg1]:
                require ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                if not 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6:
                    require 0 <= 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                    require 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] += 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                    call msg.sender with:
                       value 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6, msg.sender, arg1, 0
                else:
                    require prizePoolPercent * 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 == prizePoolPercent
                    require prizePoolPercent * 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 100 <= 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                    require 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] = (0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1]
                    call msg.sender with:
                       value (0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, (0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6) - (prizePoolPercent * 0 / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 100), msg.sender, arg1, 0
            else:
                require 10 * 10^6 * stor3[arg1] / stor3[arg1] == 10 * 10^6
                require ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                if not 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6:
                    require 0 <= 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                    require 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] += 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                    call msg.sender with:
                       value 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6, msg.sender, arg1, 0
                else:
                    require prizePoolPercent * 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 == prizePoolPercent
                    require prizePoolPercent * 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 100 <= 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                    require 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 <= stor3[arg1]
                    stor3[arg1] -= 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6
                    require arg2 + sub_af952028[arg1] >= sub_af952028[arg1]
                    sub_af952028[arg1] += arg2
                    require arg2 + sub_cda2ad49 >= sub_cda2ad49
                    sub_cda2ad49 += arg2
                    require (10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1] >= stor6[msg.sender][arg1]
                    stor6[msg.sender][arg1] = (10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 100) + stor6[msg.sender][arg1]
                    call msg.sender with:
                       value (10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7d398012: arg2, (10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6) - (prizePoolPercent * 10 * 10^6 * stor3[arg1] / ((5 * 10^6 * arg2) + (10 * 10^6 * sub_af952028[arg1]) / arg2) + 5 * 10^6 / 100), msg.sender, arg1, 0
}

function sub_bb24da0b(?) payable {
    require not stor0
    require sub_af952028[arg1 << 240] > 0
    require endTime >= block.timestamp
    idx = 0
    while idx < sub_383100e8:
        mem[0] = idx
        mem[32] = 10
        if block.timestamp > stor10[idx]:
            mem[0] = idx
            mem[32] = 11
            require block.timestamp >= stor11[idx]
        idx = idx + 1
        continue 
    require stor4[arg1 << 240]
    require msg.value <= stor3[arg1 << 240]
    if not stor3[arg1 << 240] - msg.value:
        require msg.value <= 0
    else:
        require (stor3[arg1 << 240] * sub_cd4bb50a) - (msg.value * sub_cd4bb50a) / stor3[arg1 << 240] - msg.value == sub_cd4bb50a
        require msg.value <= (stor3[arg1 << 240] * sub_cd4bb50a) - (msg.value * sub_cd4bb50a) / 100
    if not msg.value:
        require 0 <= msg.value
        if not msg.value:
            if not stor3[arg1 << 240]:
                require msg.value
                require (0 / msg.value) + 5 * 10^6 >= 0 / msg.value
                if not sub_af952028[arg1 << 240]:
                    require (0 / msg.value) + 5 * 10^6
                    require 0 / (0 / msg.value) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 0 / (0 / msg.value) + 5 * 10^6
                    require 0 / (0 / msg.value) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 0 / (0 / msg.value) + 5 * 10^6
                    require msg.value + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] += msg.value
                    require (0 / (0 / msg.value) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 0 / (0 / msg.value) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 0 / (0 / msg.value) + 5 * 10^6, msg.value, msg.sender, arg1, 1
                else:
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / sub_af952028[arg1 << 240] == 10 * 10^6
                    require (0 / msg.value) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value) + 5 * 10^6
                    require msg.value + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] += msg.value
                    require (10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value) + 5 * 10^6, msg.value, msg.sender, arg1, 1
            else:
                require 10 * 10^6 * stor3[arg1 << 240] / stor3[arg1 << 240] == 10 * 10^6
                require 10 * 10^6 * stor3[arg1 << 240] >= 10 * 10^6 * stor3[arg1 << 240]
                require msg.value
                require (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6 >= 10 * 10^6 * stor3[arg1 << 240] / msg.value
                if not sub_af952028[arg1 << 240]:
                    require (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6
                    require 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6
                    require 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6
                    require msg.value + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] += msg.value
                    require (0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6, msg.value, msg.sender, arg1, 1
                else:
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / sub_af952028[arg1 << 240] == 10 * 10^6
                    require (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6
                    require msg.value + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] += msg.value
                    require (10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value) + 5 * 10^6, msg.value, msg.sender, arg1, 1
        else:
            require 5 * 10^6 * msg.value / msg.value == 5 * 10^6
            if not stor3[arg1 << 240]:
                require 5 * 10^6 * msg.value >= 0
                require msg.value
                require (5 * 10^6 * msg.value / msg.value) + 5 * 10^6 >= 5 * 10^6 * msg.value / msg.value
                if not sub_af952028[arg1 << 240]:
                    require (5 * 10^6 * msg.value / msg.value) + 5 * 10^6
                    require 0 / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 0 / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6
                    require 0 / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 0 / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6
                    require msg.value + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] += msg.value
                    require (0 / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 0 / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 0 / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6, msg.value, msg.sender, arg1, 1
                else:
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / sub_af952028[arg1 << 240] == 10 * 10^6
                    require (5 * 10^6 * msg.value / msg.value) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 10 * 10^6 * sub_af952028[arg1 << 240] / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 10 * 10^6 * sub_af952028[arg1 << 240] / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6
                    require msg.value + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] += msg.value
                    require (10 * 10^6 * sub_af952028[arg1 << 240] / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 10 * 10^6 * sub_af952028[arg1 << 240] / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 10 * 10^6 * sub_af952028[arg1 << 240] / (5 * 10^6 * msg.value / msg.value) + 5 * 10^6, msg.value, msg.sender, arg1, 1
            else:
                require 10 * 10^6 * stor3[arg1 << 240] / stor3[arg1 << 240] == 10 * 10^6
                require (5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) >= 10 * 10^6 * stor3[arg1 << 240]
                require msg.value
                require ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6 >= (5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value
                if not sub_af952028[arg1 << 240]:
                    require ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6
                    require 0 / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 0 / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6
                    require 0 / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 0 / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6
                    require msg.value + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] += msg.value
                    require (0 / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 0 / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 0 / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6, msg.value, msg.sender, arg1, 1
                else:
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / sub_af952028[arg1 << 240] == 10 * 10^6
                    require ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6
                    require msg.value + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] += msg.value
                    require (10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value) + 5 * 10^6, msg.value, msg.sender, arg1, 1
    else:
        require prizePoolPercent * msg.value / msg.value == prizePoolPercent
        require prizePoolPercent * msg.value / 100 <= msg.value
        if not msg.value - (prizePoolPercent * msg.value / 100):
            if not stor3[arg1 << 240]:
                require msg.value - (prizePoolPercent * msg.value / 100)
                require (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 >= 0 / msg.value - (prizePoolPercent * msg.value / 100)
                if not sub_af952028[arg1 << 240]:
                    require (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 0 / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 0 / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 0 / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 0 / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] = msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240]
                    require (0 / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 0 / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 0 / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6, msg.value, msg.sender, arg1, 1
                else:
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / sub_af952028[arg1 << 240] == 10 * 10^6
                    require (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] = msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240]
                    require (10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 10 * 10^6 * sub_af952028[arg1 << 240] / (0 / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6, msg.value, msg.sender, arg1, 1
            else:
                require 10 * 10^6 * stor3[arg1 << 240] / stor3[arg1 << 240] == 10 * 10^6
                require 10 * 10^6 * stor3[arg1 << 240] >= 10 * 10^6 * stor3[arg1 << 240]
                require msg.value - (prizePoolPercent * msg.value / 100)
                require (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 >= 10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)
                if not sub_af952028[arg1 << 240]:
                    require (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] = msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240]
                    require (0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 0 / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6, msg.value, msg.sender, arg1, 1
                else:
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / sub_af952028[arg1 << 240] == 10 * 10^6
                    require (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] = msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240]
                    require (10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 10 * 10^6 * sub_af952028[arg1 << 240] / (10 * 10^6 * stor3[arg1 << 240] / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6, msg.value, msg.sender, arg1, 1
        else:
            require (5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100) == 5 * 10^6
            if not stor3[arg1 << 240]:
                require (5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) >= 0
                require msg.value - (prizePoolPercent * msg.value / 100)
                require ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 >= (5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)
                if not sub_af952028[arg1 << 240]:
                    require ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] = msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240]
                    require (0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6, msg.value, msg.sender, arg1, 1
                else:
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / sub_af952028[arg1 << 240] == 10 * 10^6
                    require ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] = msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240]
                    require (10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6, msg.value, msg.sender, arg1, 1
            else:
                require 10 * 10^6 * stor3[arg1 << 240] / stor3[arg1 << 240] == 10 * 10^6
                require (5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) >= 10 * 10^6 * stor3[arg1 << 240]
                require msg.value - (prizePoolPercent * msg.value / 100)
                require ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 >= (5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)
                if not sub_af952028[arg1 << 240]:
                    require ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] = msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240]
                    require (0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 0 / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6, msg.value, msg.sender, arg1, 1
                else:
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / sub_af952028[arg1 << 240] == 10 * 10^6
                    require ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_af952028[arg1 << 240]
                    sub_af952028[arg1 << 240] -= 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6 <= sub_cda2ad49
                    sub_cda2ad49 -= 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240] >= stor3[arg1 << 240]
                    stor3[arg1 << 240] = msg.value - (prizePoolPercent * msg.value / 100) + stor3[arg1 << 240]
                    require (10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6) + stor5[msg.sender][arg1 << 240] >= stor5[msg.sender][arg1 << 240]
                    stor5[msg.sender][arg1 << 240] += 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6
                    require msg.value + stor7[msg.sender][arg1 << 240] >= stor7[msg.sender][arg1 << 240]
                    stor7[msg.sender][arg1 << 240] += msg.value
                    emit 0x7d398012: 10 * 10^6 * sub_af952028[arg1 << 240] / ((5 * 10^6 * msg.value) - (5 * 10^6 * prizePoolPercent * msg.value / 100) + (10 * 10^6 * stor3[arg1 << 240]) / msg.value - (prizePoolPercent * msg.value / 100)) + 5 * 10^6, msg.value, msg.sender, arg1, 1
}



}
