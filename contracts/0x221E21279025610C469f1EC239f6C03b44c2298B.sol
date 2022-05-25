contract main {




// =====================  Runtime code  =====================


#
#  - sub_9b6898d7(?)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'StoneTicket'

const sub_0c6ffc29(?) = 5000000000 * 10^18

const decimals = 18

const version = 'v0.2'

const symbol = 'STNT'


uint256 totalSupply;
array of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
uint8 stage;
uint256 publicSupply;
uint32 stor6;
uint256 stor6; offset 32
uint256 stor6;
address stor7;
uint256 nextReleaseTime;
uint256 sub_66494429;
array of uint256 sub_0f18d5ad;
mapping of struct sub_7f21cfb9;
array of struct stor13;
uint256 sub_eb9fea3b;
uint256 releasedCount;
mapping of struct sub_3555fbb6;

function sub_0f18d5ad(?) {
    require arg1 < sub_0f18d5ad.length
    return sub_0f18d5ad[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_294c83a6(?) {
    require arg2 < lockedBalance[arg1].field_256
    return stor[(2 * arg2) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'lockedBalance', 10)))].field_0
}

function lockedBalance(address arg1, uint256 arg2) {
    return lockedBalance[arg2][address(arg1)].field_256
}

function sub_3555fbb6(?) {
    return sub_3555fbb6[address(arg1)].field_0, sub_3555fbb6[address(arg1)].field_0, sub_3555fbb6[address(arg1)].field_240
}

function releasedCount() {
    return releasedCount
}

function transferEnabled() {
    return bool(stor1.length.field_160)
}

function publicSupply() {
    return publicSupply
}

function sub_66494429(?) {
    return sub_66494429
}

function nextReleaseTime() {
    return nextReleaseTime
}

function sub_7f21cfb9(?) {
    return sub_7f21cfb9[arg1].field_256
}

function owner() {
    return address(stor1.length)
}

function stage() {
    require stage <= 6
    return stage
}

function sub_d72614b4(?) {
    return sub_0f18d5ad.length
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_eb9fea3b(?) {
    return sub_eb9fea3b
}

function sub_ec1dceb8(?) {
    return lockedBalance[arg1].field_512
}

function destroy() {
    require msg.sender == address(stor1.length)
    selfdestruct(address(stor1.length))
}

function sub_b5768887(?) {
    if sub_3555fbb6[address(arg1)].field_248 == 1:
        return 1
    else:
        return 0
}

function enableTransfer(bool arg1) {
    require msg.sender == address(stor1.length)
    stor1.length.field_160 = Mask(96, 0, arg1)
}

function sub_d7b143c0(?) {
    require msg.sender == address(stor1.length)
    require stage <= 6
    require stage == 2
    stage = 3
}

function sub_ab657dee(?) {
    require arg1 < stor13.length
    return stor13[arg1].field_0, sub_7f21cfb9[stor13[arg1].field_0].field_256
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_521d5ba8(?) {
    require msg.sender == address(stor1.length)
    require stage <= 6
    require stage == 4
    require publicSupply >= 0
    stage = 5
}

function setOwner(address arg1) {
    require msg.sender == address(stor1.length)
    emit onOwnershipTransferred(address(stor1.length), arg1);
    address(stor1.length) = arg1
}

function sub_260cf919(?) {
    require msg.sender == address(stor1.length)
    require stage <= 6
    if stage != 1:
        require stage <= 6
        require stage == 3
    stage = 2
}

function release(uint256 arg1, uint256 arg2) {
    require msg.sender == address(stor1.length)
    require stage <= 6
    require stage == 5
    if arg1:
        nextReleaseTime = arg1
    else:
        nextReleaseTime = block.timestamp
    require publicSupply >= 0
    if sub_7f21cfb9[arg2].field_0 > 0:
        sub_7f21cfb9[arg2].field_256 += publicSupply
    publicSupply = 0
    sub_66494429 = 0
    releasedCount = 0
    stage = 6
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor1.length.field_160
    if stor2[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    stor2[address(arg2)] += arg3
    stor2[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_340e024b(?) {
    idx = 0
    s = 0
    while idx < sub_0f18d5ad.length:
        mem[0] = sub_0f18d5ad[idx]
        mem[32] = 10
        if s >= lockedBalance[stor11[idx]].field_512:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_0f18d5ad.length
        mem[0] = sub_0f18d5ad[idx]
        mem[32] = 10
        idx = idx + 1
        s = lockedBalance[stor11[idx]].field_512
        continue 
    return (s - sub_66494429)
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_6ed7697c(?) {
    require msg.sender == address(stor1.length)
    require sub_3555fbb6[address(arg1)].field_248 == 1
    require sub_3555fbb6[address(arg1)].field_0 >= 0
    sub_7f21cfb9[stor16[address(arg1)].field_0].field_256 += sub_3555fbb6[address(arg1)].field_0
    sub_3555fbb6[address(arg1)].field_0 = 0
    sub_3555fbb6[address(arg1)].field_232 = 0
    sub_3555fbb6[address(arg1)].field_240 = 0
    sub_3555fbb6[address(arg1)].field_0 = sub_3555fbb6[address(arg1)].field_0
    emit 0x18a118ea: arg1
}

function sub_c37845b2(?) {
    require msg.sender == address(stor1.length)
    sub_7f21cfb9[arg1].field_256 = arg2
    if sub_7f21cfb9[arg1].field_0 <= 0:
        stor13.length++
        if stor13.length > stor13.length + 1:
            idx = 2 * stor13.length + 1
            while 2 * stor13.length > idx:
                stor13[idx].field_0 = 0
                stor13[idx].field_256 = 0
                idx = idx + 2
                continue 
        sub_7f21cfb9[arg1].field_0 = stor13.length + 1
        require stor13.length < stor13.length
        stor13[stor13.length].field_0 = arg1
        sub_eb9fea3b++
}

function sub_63e9b18c(?) {
    require msg.sender == address(stor1.length)
    require sub_7f21cfb9[arg3].field_0 > 0
    require sub_7f21cfb9[arg3].field_256 >= arg2
    require arg2 >= 0
    if sub_3555fbb6[address(arg1)].field_248 == 1:
        require sub_3555fbb6[address(arg1)].field_232 == arg3
        require sub_3555fbb6[address(arg1)].field_240 == arg4
    sub_7f21cfb9[arg3].field_256 -= arg2
    sub_3555fbb6[address(arg1)].field_0 = Mask(232, 0, sub_3555fbb6[address(arg1)].field_0 + arg2)
    sub_3555fbb6[address(arg1)].field_232 = uint8(arg3)
    sub_3555fbb6[address(arg1)].field_240 = uint8(arg4)
    sub_3555fbb6[address(arg1)].field_248 = 1
    emit 0x1e8506ac: arg2, arg3, arg4, arg1
}

function sub_935955bc(?) {
    idx = 0
    s = 0
    while idx < sub_0f18d5ad.length:
        mem[0] = arg1
        mem[32] = sha3(sub_0f18d5ad[idx], 10)
        idx = idx + 1
        s = s + lockedBalance[stor11[idx]][address(arg1)].field_256
        continue 
    return ((s * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length) + sub_3555fbb6[address(arg1)].field_0)
}

function balanceOf(address arg1) {
    idx = 0
    s = 0
    while idx < sub_0f18d5ad.length:
        mem[0] = arg1
        mem[32] = sha3(sub_0f18d5ad[idx], 10)
        idx = idx + 1
        s = s + lockedBalance[stor11[idx]][address(arg1)].field_256
        continue 
    return (stor2[address(arg1)] + (s * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length * sub_0f18d5ad.length) + sub_3555fbb6[address(arg1)].field_0)
}

function initialize() {
    require msg.sender == address(stor1.length)
    uint256(stor6.field_0) = 3900
    require msg.sender == address(stor1.length)
    sub_7f21cfb9[2].field_256 = 330000000 * 10^18
    if sub_7f21cfb9[2].field_0 <= 0:
        stor13.length++
        if stor13.length > stor13.length + 1:
            idx = 2 * stor13.length + 1
            while 2 * stor13.length > idx:
                stor13[idx].field_0 = 0
                stor13[idx].field_256 = 0
                idx = idx + 2
                continue 
        sub_7f21cfb9[2].field_0 = stor13.length + 1
        require stor13.length < stor13.length
        stor13[stor13.length].field_0 = 2
        sub_eb9fea3b++
    require msg.sender == address(stor1.length)
    sub_7f21cfb9[3].field_256 = 510500000 * 10^18
    if sub_7f21cfb9[3].field_0 <= 0:
        stor13.length++
        if stor13.length > stor13.length + 1:
            idx = 2 * stor13.length + 1
            while 2 * stor13.length > idx:
                stor13[idx].field_0 = 0
                stor13[idx].field_256 = 0
                idx = idx + 2
                continue 
        sub_7f21cfb9[3].field_0 = stor13.length + 1
        require stor13.length < stor13.length
        stor13[stor13.length].field_0 = 3
        sub_eb9fea3b++
    require msg.sender == address(stor1.length)
    sub_7f21cfb9[4].field_256 = 659500000 * 10^18
    if sub_7f21cfb9[4].field_0 <= 0:
        stor13.length++
        if stor13.length > stor13.length + 1:
            idx = 2 * stor13.length + 1
            while 2 * stor13.length > idx:
                stor13[idx].field_0 = 0
                stor13[idx].field_256 = 0
                idx = idx + 2
                continue 
        sub_7f21cfb9[4].field_0 = stor13.length + 1
        require stor13.length < stor13.length
        stor13[stor13.length].field_0 = 4
        sub_eb9fea3b++
    require msg.sender == address(stor1.length)
    sub_7f21cfb9[5].field_256 = 1000000000 * 10^18
    if sub_7f21cfb9[5].field_0 <= 0:
        stor13.length++
        if stor13.length > stor13.length + 1:
            idx = 2 * stor13.length + 1
            while 2 * stor13.length > idx:
                stor13[idx].field_0 = 0
                stor13[idx].field_256 = 0
                idx = idx + 2
                continue 
        sub_7f21cfb9[5].field_0 = stor13.length + 1
        require stor13.length < stor13.length
        stor13[stor13.length].field_0 = 5
        sub_eb9fea3b++
    require msg.sender == address(stor1.length)
    sub_7f21cfb9[6].field_256 = 1000000000 * 10^18
    if sub_7f21cfb9[6].field_0 <= 0:
        stor13.length++
        if stor13.length > stor13.length + 1:
            idx = 2 * stor13.length + 1
            while 2 * stor13.length > idx:
                stor13[idx].field_0 = 0
                stor13[idx].field_256 = 0
                idx = idx + 2
                continue 
        sub_7f21cfb9[6].field_0 = stor13.length + 1
        require stor13.length < stor13.length
        stor13[stor13.length].field_0 = 6
        sub_eb9fea3b++
    require msg.sender == address(stor1.length)
    sub_7f21cfb9[7].field_256 = 1500000000 * 10^18
    if sub_7f21cfb9[7].field_0 <= 0:
        stor13.length++
        if stor13.length > stor13.length + 1:
            idx = 2 * stor13.length + 1
            while 2 * stor13.length > idx:
                stor13[idx].field_0 = 0
                stor13[idx].field_256 = 0
                idx = idx + 2
                continue 
        sub_7f21cfb9[7].field_0 = stor13.length + 1
        require stor13.length < stor13.length
        stor13[stor13.length].field_0 = 7
        sub_eb9fea3b++
    stage = 1
}

function sub_cb506084(?) {
    require msg.sender == address(stor1.length)
    require stage <= 6
    require stage == 6
    require block.timestamp >= nextReleaseTime
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < sub_0f18d5ad.length:
        require idx < sub_0f18d5ad.length
        if sub_0f18d5ad[idx] - releasedCount <= 0:
            mem[0] = sub_0f18d5ad[idx]
            mem[32] = 10
            if sub_66494429 <= 0:
                if s >= lockedBalance[stor11[idx]].field_512:
                    s = sub_66494429
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_0f18d5ad.length
                mem[0] = sub_0f18d5ad[idx]
                mem[32] = 10
                s = sub_66494429
                idx = idx + 1
                s = lockedBalance[stor11[idx]].field_512
                t = t
                continue 
            if t >= sub_66494429 - 1:
                if s >= lockedBalance[stor11[idx]].field_512:
                    s = sub_66494429
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_0f18d5ad.length
                mem[0] = sub_0f18d5ad[idx]
                mem[32] = 10
                s = sub_66494429
                idx = idx + 1
                s = lockedBalance[stor11[idx]].field_512
                t = t
                continue 
            if s >= lockedBalance[stor11[idx]].field_512:
                s = sub_66494429
                idx = idx + 1
                s = s
                t = sub_66494429 - 1
                continue 
            require idx < sub_0f18d5ad.length
            mem[0] = sub_0f18d5ad[idx]
            mem[32] = 10
            s = sub_66494429
            idx = idx + 1
            s = lockedBalance[stor11[idx]].field_512
            t = sub_66494429 - 1
            continue 
        u = var52001 < stor1[var52002].field_0
        v = var52004
        v = var52005
        v = var52006
        v = var52007
        w = var52008
        while u:
            require idx < sub_0f18d5ad.length
            if v >= arg1:
                mem[0] = sub_0f18d5ad[idx]
                mem[32] = 10
                if w <= 0:
                    if s >= lockedBalance[stor11[idx]].field_512:
                        s = w
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_0f18d5ad.length
                    mem[0] = sub_0f18d5ad[idx]
                    mem[32] = 10
                    s = w
                    idx = idx + 1
                    s = lockedBalance[stor11[idx]].field_512
                    t = t
                    continue 
                if t >= w - 1:
                    if s >= lockedBalance[stor11[idx]].field_512:
                        s = w
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_0f18d5ad.length
                    mem[0] = sub_0f18d5ad[idx]
                    mem[32] = 10
                    s = w
                    idx = idx + 1
                    s = lockedBalance[stor11[idx]].field_512
                    t = t
                    continue 
                if s >= lockedBalance[stor11[idx]].field_512:
                    s = w
                    idx = idx + 1
                    s = s
                    t = w - 1
                    continue 
                require idx < sub_0f18d5ad.length
                mem[0] = sub_0f18d5ad[idx]
                mem[32] = 10
                s = w
                idx = idx + 1
                s = lockedBalance[stor11[idx]].field_512
                t = w - 1
                continue 
            require w < lockedBalance[stor11[idx]].field_256
            require idx < sub_0f18d5ad.length
            require sub_0f18d5ad[idx] - releasedCount
            require idx < sub_0f18d5ad.length
            lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 -= lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount
            require lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount >= 0
            require stor2[stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'stor10', 10)))].field_0] + (lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount) >= stor2[stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'stor10', 10)))].field_0]
            stor2[stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'stor10', 10)))].field_0] += lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount
            require totalSupply + (lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount) >= totalSupply
            totalSupply += lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount
            mem[96] = lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount
            emit Transfer((lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount), 0, stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0);
            require idx < sub_0f18d5ad.length
            if var51001 >= lockedBalance[stor11[idx]].field_256:
                require idx < sub_0f18d5ad.length
                mem[0] = sub_0f18d5ad[idx]
                mem[32] = 10
                u = var51001 < lockedBalance[stor11[idx]].field_256
                v = lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount
                v = lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256
                v = stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0
                v = v + 1
                w = var51001
                continue 
            require var53002 < lockedBalance[stor11[idx]].field_256
            if not var57001:
                require idx < sub_0f18d5ad.length
                mem[0] = sub_0f18d5ad[idx]
                mem[32] = 10
                u = var57002 < lockedBalance[stor11[idx]].field_256
                v = lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount
                v = lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256
                v = stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0
                v = v + 1
                w = var57002
                continue 
            s = var57002
            while s + 1 < lockedBalance[stor11[idx]].field_256:
                mem[0] = sha3(sub_0f18d5ad[idx], 10) + 1
                if stor[(2 * s + 1) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_256:
                    s = s + 1
                    continue 
                require idx < sub_0f18d5ad.length
                mem[0] = sub_0f18d5ad[idx]
                mem[32] = 10
                u = s + 1 < lockedBalance[stor11[idx]].field_256
                v = lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount
                v = lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256
                v = stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0
                v = v + 1
                w = s + 1
                continue 
            require idx < sub_0f18d5ad.length
            mem[0] = sub_0f18d5ad[idx]
            mem[32] = 10
            u = s + 1 < lockedBalance[stor11[idx]].field_256
            v = lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256 / sub_0f18d5ad[idx] - releasedCount
            v = lockedBalance[stor11[idx]][stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0].field_256
            v = stor[(2 * w) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor11', 11))), ('name', 'lockedBalance', 10)))].field_0
            v = v + 1
            w = s + 1
            continue 
        require idx < sub_0f18d5ad.length
        mem[0] = sub_0f18d5ad[idx]
        mem[32] = 10
        if w <= 0:
            if s >= lockedBalance[stor11[idx]].field_512:
                s = w
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < sub_0f18d5ad.length
            mem[0] = sub_0f18d5ad[idx]
            mem[32] = 10
            s = w
            idx = idx + 1
            s = lockedBalance[stor11[idx]].field_512
            t = t
            continue 
        if t >= w - 1:
            if s >= lockedBalance[stor11[idx]].field_512:
                s = w
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < sub_0f18d5ad.length
            mem[0] = sub_0f18d5ad[idx]
            mem[32] = 10
            s = w
            idx = idx + 1
            s = lockedBalance[stor11[idx]].field_512
            t = t
            continue 
        if s >= lockedBalance[stor11[idx]].field_512:
            s = w
            idx = idx + 1
            s = s
            t = w - 1
            continue 
        require idx < sub_0f18d5ad.length
        mem[0] = sub_0f18d5ad[idx]
        mem[32] = 10
        s = w
        idx = idx + 1
        s = lockedBalance[stor11[idx]].field_512
        t = w - 1
        continue 
    if s > 0:
        require t < s
    if not s:
        releasedCount++
        sub_66494429 = 0
    else:
        if t != s - 1:
            sub_66494429 = t + 1
        else:
            releasedCount++
            sub_66494429 = 0
}

function sub_db69ffe4(?) {
    require msg.sender == address(stor1.length)
    require stage <= 6
    require stage <= 6
    if stage == 5:
        if stage == 3:
            publicSupply = 0
            if var21001 >= stor13.length:
                stage = 4
                if publicSupply > 0:
                    uint32(stor6.field_0) = arg2
                    Mask(224, 0, stor6.field_32) = 0
                    stor7 = arg1
            require var23002 < stor13.length
            if var27001:
                idx = var27002
                while idx + 1 < stor13.length:
                    mem[0] = 13
                    if stor13[idx + 1].field_256:
                        idx = idx + 1
                        continue 
                    if not var55001:
                        stage = 4
                        if publicSupply > 0:
                            uint32(stor6.field_0) = arg2
                            Mask(224, 0, stor6.field_32) = 0
                            stor7 = arg1
                    require var59001 < stor13.length
                    require var63001 >= 0
                    require publicSupply + var67001 >= publicSupply
                    publicSupply = var71001
                    if var62001 < stor13.length:
                        require var64002 < stor13.length
                        # nil
                    else:
                        stage = 4
                        if publicSupply > 0:
                            uint32(stor6.field_0) = arg2
                            Mask(224, 0, stor6.field_32) = 0
                            stor7 = arg1
                stage = 4
                if publicSupply > 0:
                    uint32(stor6.field_0) = arg2
                    Mask(224, 0, stor6.field_32) = 0
                    stor7 = arg1
            if not var49001:
                stage = 4
                if publicSupply > 0:
                    uint32(stor6.field_0) = arg2
                    Mask(224, 0, stor6.field_32) = 0
                    stor7 = arg1
            require var53001 < stor13.length
            require var57001 >= 0
            require publicSupply + var61001 >= publicSupply
            publicSupply = var65001
            if var56001 < stor13.length:
                require var58002 < stor13.length
                # nil
            else:
                stage = 4
                if publicSupply > 0:
                    uint32(stor6.field_0) = arg2
                    Mask(224, 0, stor6.field_32) = 0
                    stor7 = arg1
        else:
            require stage <= 6
            if stage != 1:
                stage = 4
                if publicSupply > 0:
                    uint32(stor6.field_0) = arg2
                    Mask(224, 0, stor6.field_32) = 0
                    stor7 = arg1
            publicSupply = 0
            if var24001 >= stor13.length:
                stage = 4
                if publicSupply > 0:
                    uint32(stor6.field_0) = arg2
                    Mask(224, 0, stor6.field_32) = 0
                    stor7 = arg1
            require var26002 < stor13.length
            if var30001:
                idx = var30002
                while idx + 1 < stor13.length:
                    mem[0] = 13
                    if stor13[idx + 1].field_256:
                        idx = idx + 1
                        continue 
                    if not var58001:
                        stage = 4
                        if publicSupply > 0:
                            uint32(stor6.field_0) = arg2
                            Mask(224, 0, stor6.field_32) = 0
                            stor7 = arg1
                    require var62001 < stor13.length
                    require var66001 >= 0
                    require publicSupply + var70001 >= publicSupply
                    publicSupply = var74001
                    if var65001 < stor13.length:
                        require var67002 < stor13.length
                        # nil
                    else:
                        stage = 4
                        if publicSupply > 0:
                            uint32(stor6.field_0) = arg2
                            Mask(224, 0, stor6.field_32) = 0
                            stor7 = arg1
                stage = 4
                if publicSupply > 0:
                    uint32(stor6.field_0) = arg2
                    Mask(224, 0, stor6.field_32) = 0
                    stor7 = arg1
            if not var52001:
                stage = 4
                if publicSupply > 0:
                    uint32(stor6.field_0) = arg2
                    Mask(224, 0, stor6.field_32) = 0
                    stor7 = arg1
            require var56001 < stor13.length
            require var60001 >= 0
            require publicSupply + var64001 >= publicSupply
            publicSupply = var68001
            if var59001 < stor13.length:
                require var61002 < stor13.length
                # nil
            else:
                stage = 4
                if publicSupply > 0:
                    uint32(stor6.field_0) = arg2
                    Mask(224, 0, stor6.field_32) = 0
                    stor7 = arg1
    else:
        require stage <= 6
        if stage == 1:
            if stage == 3:
                publicSupply = 0
                if var24001 >= stor13.length:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                require var26002 < stor13.length
                if var30001:
                    idx = var30002
                    while idx + 1 < stor13.length:
                        mem[0] = 13
                        if stor13[idx + 1].field_256:
                            idx = idx + 1
                            continue 
                        if not var58001:
                            stage = 4
                            if publicSupply > 0:
                                uint32(stor6.field_0) = arg2
                                Mask(224, 0, stor6.field_32) = 0
                                stor7 = arg1
                        require var62001 < stor13.length
                        require var66001 >= 0
                        require publicSupply + var70001 >= publicSupply
                        publicSupply = var74001
                        if var65001 < stor13.length:
                            require var67002 < stor13.length
                            # nil
                        else:
                            stage = 4
                            if publicSupply > 0:
                                uint32(stor6.field_0) = arg2
                                Mask(224, 0, stor6.field_32) = 0
                                stor7 = arg1
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                if not var52001:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                require var56001 < stor13.length
                require var60001 >= 0
                require publicSupply + var64001 >= publicSupply
                publicSupply = var68001
                if var59001 < stor13.length:
                    require var61002 < stor13.length
                    # nil
                else:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
            else:
                require stage <= 6
                if stage != 1:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                publicSupply = 0
                if var27001 >= stor13.length:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                require var29002 < stor13.length
                if var33001:
                    idx = var33002
                    while idx + 1 < stor13.length:
                        mem[0] = 13
                        if stor13[idx + 1].field_256:
                            idx = idx + 1
                            continue 
                        if not var61001:
                            stage = 4
                            if publicSupply > 0:
                                uint32(stor6.field_0) = arg2
                                Mask(224, 0, stor6.field_32) = 0
                                stor7 = arg1
                        require var65001 < stor13.length
                        require var69001 >= 0
                        require publicSupply + var73001 >= publicSupply
                        publicSupply = var77001
                        if var68001 < stor13.length:
                            require var70002 < stor13.length
                            # nil
                        else:
                            stage = 4
                            if publicSupply > 0:
                                uint32(stor6.field_0) = arg2
                                Mask(224, 0, stor6.field_32) = 0
                                stor7 = arg1
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                if not var55001:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                require var59001 < stor13.length
                require var63001 >= 0
                require publicSupply + var67001 >= publicSupply
                publicSupply = var71001
                if var62001 < stor13.length:
                    require var64002 < stor13.length
                    # nil
                else:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
        else:
            require stage == 3
            require stage <= 6
            if stage == 3:
                publicSupply = 0
                if var27001 >= stor13.length:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                require var29002 < stor13.length
                if var33001:
                    idx = var33002
                    while idx + 1 < stor13.length:
                        mem[0] = 13
                        if stor13[idx + 1].field_256:
                            idx = idx + 1
                            continue 
                        if not var61001:
                            stage = 4
                            if publicSupply > 0:
                                uint32(stor6.field_0) = arg2
                                Mask(224, 0, stor6.field_32) = 0
                                stor7 = arg1
                        require var65001 < stor13.length
                        require var69001 >= 0
                        require publicSupply + var73001 >= publicSupply
                        publicSupply = var77001
                        if var68001 < stor13.length:
                            require var70002 < stor13.length
                            # nil
                        else:
                            stage = 4
                            if publicSupply > 0:
                                uint32(stor6.field_0) = arg2
                                Mask(224, 0, stor6.field_32) = 0
                                stor7 = arg1
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                if not var55001:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                require var59001 < stor13.length
                require var63001 >= 0
                require publicSupply + var67001 >= publicSupply
                publicSupply = var71001
                if var62001 < stor13.length:
                    require var64002 < stor13.length
                    # nil
                else:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
            else:
                require stage <= 6
                if stage != 1:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                publicSupply = 0
                if var30001 >= stor13.length:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                require var32002 < stor13.length
                if var36001:
                    idx = var36002
                    while idx + 1 < stor13.length:
                        mem[0] = 13
                        if stor13[idx + 1].field_256:
                            idx = idx + 1
                            continue 
                        if not var64001:
                            stage = 4
                            if publicSupply > 0:
                                uint32(stor6.field_0) = arg2
                                Mask(224, 0, stor6.field_32) = 0
                                stor7 = arg1
                        require var68001 < stor13.length
                        require var72001 >= 0
                        require publicSupply + var76001 >= publicSupply
                        publicSupply = var80001
                        if var71001 < stor13.length:
                            require var73002 < stor13.length
                            # nil
                        else:
                            stage = 4
                            if publicSupply > 0:
                                uint32(stor6.field_0) = arg2
                                Mask(224, 0, stor6.field_32) = 0
                                stor7 = arg1
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                if not var58001:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
                require var62001 < stor13.length
                require var66001 >= 0
                require publicSupply + var70001 >= publicSupply
                publicSupply = var74001
                if var65001 < stor13.length:
                    require var67002 < stor13.length
                    # nil
                else:
                    stage = 4
                    if publicSupply > 0:
                        uint32(stor6.field_0) = arg2
                        Mask(224, 0, stor6.field_32) = 0
                        stor7 = arg1
}

function _fallback() payable {
    require ext_code.size(msg.sender) <= 0
    require msg.value >= 10^16
    require publicSupply > 0
    require stage <= 6
    require stage == 4
    require uint256(stor6.field_0) > 0
    if msg.value > 30 * 10^18:
        if 30 * 10^18 * uint256(stor6.field_0) / 30 * 10^18 == uint256(stor6.field_0):
            if 30 * 10^18 * uint256(stor6.field_0) <= publicSupply:
                if uint256(stor6.field_0):
                    if 30 * 10^18 * uint256(stor6.field_0) <= 0:
                        if 30 * 10^18 * uint256(stor6.field_0) / uint256(stor6.field_0) <= msg.value:
                            if msg.value - (30 * 10^18 * uint256(stor6.field_0) / uint256(stor6.field_0)) > 0:
                                call msg.sender with:
                                   value msg.value - (30 * 10^18 * uint256(stor6.field_0) / uint256(stor6.field_0)) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if publicSupply >= 0:
                    else:
                        require 30 * 10^18 * uint256(stor6.field_0) >= 0
                        if stor2[address(msg.sender)] + (30 * 10^18 * uint256(stor6.field_0)) >= stor2[address(msg.sender)]:
                            stor2[address(msg.sender)] += 30 * 10^18 * uint256(stor6.field_0)
                            if totalSupply + (30 * 10^18 * uint256(stor6.field_0)) >= totalSupply:
                                totalSupply += 30 * 10^18 * uint256(stor6.field_0)
                                emit Transfer((30 * 10^18 * uint256(stor6.field_0)), 0, msg.sender);
                                call stor7 with:
                                   value 30 * 10^18 * uint256(stor6.field_0) / uint256(stor6.field_0) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 30 * 10^18 * uint256(stor6.field_0) <= publicSupply:
                                    publicSupply += -30 * 10^18 * uint256(stor6.field_0)
                                    emit 0x3877bdd8: 30 * 10^18 * uint256(stor6.field_0), 30 * 10^18 * uint256(stor6.field_0) / uint256(stor6.field_0), msg.sender
                                    if 30 * 10^18 * uint256(stor6.field_0) / uint256(stor6.field_0) <= msg.value:
                                        if msg.value - (30 * 10^18 * uint256(stor6.field_0) / uint256(stor6.field_0)) > 0:
                                            call msg.sender with:
                                               value msg.value - (30 * 10^18 * uint256(stor6.field_0) / uint256(stor6.field_0)) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if publicSupply >= 0:
            else:
                if uint256(stor6.field_0):
                    if publicSupply <= 0:
                        if publicSupply / uint256(stor6.field_0) <= msg.value:
                            if msg.value - (publicSupply / uint256(stor6.field_0)) > 0:
                                call msg.sender with:
                                   value msg.value - (publicSupply / uint256(stor6.field_0)) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if publicSupply >= 0:
                    else:
                        require publicSupply >= 0
                        if stor2[address(msg.sender)] + publicSupply >= stor2[address(msg.sender)]:
                            stor2[address(msg.sender)] += publicSupply
                            if totalSupply + publicSupply >= totalSupply:
                                totalSupply += publicSupply
                                emit Transfer(publicSupply, 0, msg.sender);
                                call stor7 with:
                                   value publicSupply / uint256(stor6.field_0) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if publicSupply <= publicSupply:
                                    publicSupply = 0
                                    emit 0x3877bdd8: publicSupply, publicSupply / uint256(stor6.field_0), msg.sender
                                    if publicSupply / uint256(stor6.field_0) <= msg.value:
                                        if msg.value - (publicSupply / uint256(stor6.field_0)) > 0:
                                            call msg.sender with:
                                               value msg.value - (publicSupply / uint256(stor6.field_0)) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if publicSupply >= 0:
    else:
        if not msg.value:
            if msg.value * uint256(stor6.field_0) <= publicSupply:
                if uint256(stor6.field_0):
                    if msg.value * uint256(stor6.field_0) <= 0:
                        if msg.value * uint256(stor6.field_0) / uint256(stor6.field_0) <= msg.value:
                            if msg.value - (msg.value * uint256(stor6.field_0) / uint256(stor6.field_0)) > 0:
                                call msg.sender with:
                                   value msg.value - (msg.value * uint256(stor6.field_0) / uint256(stor6.field_0)) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if publicSupply >= 0:
                    else:
                        require msg.value * uint256(stor6.field_0) >= 0
                        if stor2[address(msg.sender)] + (msg.value * uint256(stor6.field_0)) >= stor2[address(msg.sender)]:
                            stor2[address(msg.sender)] += msg.value * uint256(stor6.field_0)
                            if totalSupply + (msg.value * uint256(stor6.field_0)) >= totalSupply:
                                totalSupply += msg.value * uint256(stor6.field_0)
                                emit Transfer((msg.value * uint256(stor6.field_0)), 0, msg.sender);
                                call stor7 with:
                                   value msg.value * uint256(stor6.field_0) / uint256(stor6.field_0) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if msg.value * uint256(stor6.field_0) <= publicSupply:
                                    publicSupply += -1 * msg.value * uint256(stor6.field_0)
                                    emit 0x3877bdd8: msg.value * uint256(stor6.field_0), msg.value * uint256(stor6.field_0) / uint256(stor6.field_0), msg.sender
                                    if msg.value * uint256(stor6.field_0) / uint256(stor6.field_0) <= msg.value:
                                        if msg.value - (msg.value * uint256(stor6.field_0) / uint256(stor6.field_0)) > 0:
                                            call msg.sender with:
                                               value msg.value - (msg.value * uint256(stor6.field_0) / uint256(stor6.field_0)) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if publicSupply >= 0:
            else:
                if uint256(stor6.field_0):
                    if publicSupply <= 0:
                        if publicSupply / uint256(stor6.field_0) <= msg.value:
                            if msg.value - (publicSupply / uint256(stor6.field_0)) > 0:
                                call msg.sender with:
                                   value msg.value - (publicSupply / uint256(stor6.field_0)) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if publicSupply >= 0:
                    else:
                        require publicSupply >= 0
                        if stor2[address(msg.sender)] + publicSupply >= stor2[address(msg.sender)]:
                            stor2[address(msg.sender)] += publicSupply
                            if totalSupply + publicSupply >= totalSupply:
                                totalSupply += publicSupply
                                emit Transfer(publicSupply, 0, msg.sender);
                                call stor7 with:
                                   value publicSupply / uint256(stor6.field_0) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if publicSupply <= publicSupply:
                                    publicSupply = 0
                                    emit 0x3877bdd8: publicSupply, publicSupply / uint256(stor6.field_0), msg.sender
                                    if publicSupply / uint256(stor6.field_0) <= msg.value:
                                        if msg.value - (publicSupply / uint256(stor6.field_0)) > 0:
                                            call msg.sender with:
                                               value msg.value - (publicSupply / uint256(stor6.field_0)) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if publicSupply >= 0:
        else:
            if msg.value:
                if msg.value * uint256(stor6.field_0) / msg.value == uint256(stor6.field_0):
                    if msg.value * uint256(stor6.field_0) <= publicSupply:
                        if uint256(stor6.field_0):
                            if msg.value * uint256(stor6.field_0) <= 0:
                                if msg.value * uint256(stor6.field_0) / uint256(stor6.field_0) <= msg.value:
                                    if msg.value - (msg.value * uint256(stor6.field_0) / uint256(stor6.field_0)) > 0:
                                        call msg.sender with:
                                           value msg.value - (msg.value * uint256(stor6.field_0) / uint256(stor6.field_0)) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if publicSupply >= 0:
                            else:
                                require msg.value * uint256(stor6.field_0) >= 0
                                if stor2[address(msg.sender)] + (msg.value * uint256(stor6.field_0)) >= stor2[address(msg.sender)]:
                                    stor2[address(msg.sender)] += msg.value * uint256(stor6.field_0)
                                    if totalSupply + (msg.value * uint256(stor6.field_0)) >= totalSupply:
                                        totalSupply += msg.value * uint256(stor6.field_0)
                                        emit Transfer((msg.value * uint256(stor6.field_0)), 0, msg.sender);
                                        call stor7 with:
                                           value msg.value * uint256(stor6.field_0) / uint256(stor6.field_0) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if msg.value * uint256(stor6.field_0) <= publicSupply:
                                            publicSupply += -1 * msg.value * uint256(stor6.field_0)
                                            emit 0x3877bdd8: msg.value * uint256(stor6.field_0), msg.value * uint256(stor6.field_0) / uint256(stor6.field_0), msg.sender
                                            if msg.value * uint256(stor6.field_0) / uint256(stor6.field_0) <= msg.value:
                                                if msg.value - (msg.value * uint256(stor6.field_0) / uint256(stor6.field_0)) > 0:
                                                    call msg.sender with:
                                                       value msg.value - (msg.value * uint256(stor6.field_0) / uint256(stor6.field_0)) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if publicSupply >= 0:
                    else:
                        if uint256(stor6.field_0):
                            if publicSupply <= 0:
                                if publicSupply / uint256(stor6.field_0) <= msg.value:
                                    if msg.value - (publicSupply / uint256(stor6.field_0)) > 0:
                                        call msg.sender with:
                                           value msg.value - (publicSupply / uint256(stor6.field_0)) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if publicSupply >= 0:
                            else:
                                require publicSupply >= 0
                                if stor2[address(msg.sender)] + publicSupply >= stor2[address(msg.sender)]:
                                    stor2[address(msg.sender)] += publicSupply
                                    if totalSupply + publicSupply >= totalSupply:
                                        totalSupply += publicSupply
                                        emit Transfer(publicSupply, 0, msg.sender);
                                        call stor7 with:
                                           value publicSupply / uint256(stor6.field_0) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if publicSupply <= publicSupply:
                                            publicSupply = 0
                                            emit 0x3877bdd8: publicSupply, publicSupply / uint256(stor6.field_0), msg.sender
                                            if publicSupply / uint256(stor6.field_0) <= msg.value:
                                                if msg.value - (publicSupply / uint256(stor6.field_0)) > 0:
                                                    call msg.sender with:
                                                       value msg.value - (publicSupply / uint256(stor6.field_0)) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if publicSupply >= 0:
    revert
}



}
