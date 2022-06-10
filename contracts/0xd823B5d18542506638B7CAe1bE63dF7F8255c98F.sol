contract main {




// =====================  Runtime code  =====================


#
#  - sub_5418d4d2(?)
#
const getBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 stor1;
array of address sub_bead7b21;
uint256 stor12;
uint256 stor22;
array of struct stor27;
address stor28;
array of address sub_a4cb2dda;
address stor30;
address stor31;
address stor32;
address sub_34ffb160Address;
address rootAddress;
uint8 sub_9857be5c; offset 160
uint128 stor35; offset 160
address sub_fa421fbfAddress;
uint256 sub_b4a02051;
uint256 sub_d8d5ba15;
uint256 sub_cefba841;
uint256 rndInc_;
uint256 rndMax_;
uint256 registrationFee_;
uint256 round;
uint256 createTime;
uint256 sub_baa120da;
mapping of uint256 pIDxAddr_;
mapping of struct sub_4569905f;
array of struct sub_0c321611;
uint256 stor48;
uint256 totalPot;
mapping of uint256 sub_45d4f177;
uint256 sub_db6d923b;
uint256 sub_26e93add;
uint256 sub_bb81844e;
uint256 sub_717a2ed1;
mapping of uint8 stor55;

function creator() {
    return address(stor1.length)
}

function sub_03bbb427(?) {
    return bool(stor55[arg1])
}

function rndInc_() {
    return rndInc_
}

function name() {
    return name[0 len name.length]
}

function sub_0c321611(?) {
    return sub_0c321611[arg1].field_0, 
           sub_0c321611[arg1].field_256,
           sub_0c321611[arg1].field_512,
           sub_0c321611[arg1].field_768,
           sub_0c321611[arg1].field_1024,
           sub_0c321611[arg1].field_1280,
           sub_0c321611[arg1].field_1536
}

function pIDxAddr_(address arg1) {
    return pIDxAddr_[arg1]
}

function round() {
    return round
}

function registrationFee_() {
    return registrationFee_
}

function sub_26e93add(?) {
    return sub_26e93add
}

function sub_34ffb160(?) {
    return sub_34ffb160Address
}

function sub_41fc2d61(?) {
    return sub_4569905f[arg1].field_0, 
           sub_4569905f[arg1].field_3072,
           sub_4569905f[arg1].field_3328,
           sub_4569905f[arg1].field_3584,
           sub_4569905f[arg1].field_3840,
           sub_4569905f[arg1].field_4096,
           sub_4569905f[arg1].field_4352,
           sub_4569905f[arg1].field_4608
}

function sub_4569905f(?) {
    require arg1 < sub_4569905f[stor45[address(msg.sender)]].field_256
    return stor[('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor45', 45))), ('name', 'sub_4569905f', 46))) + arg1].field_0, 
           sub_4569905f[stor45[address(msg.sender)]].field_256
}

function sub_45d4f177(?) {
    return sub_45d4f177[arg1]
}

function getTotalPot() {
    return totalPot
}

function createTime() {
    return createTime
}

function sub_717a2ed1(?) {
    return sub_717a2ed1
}

function sub_8a92b8a5(?) {
    return sub_4569905f[stor45[address(msg.sender)]].field_256
}

function rndMax_() {
    return rndMax_
}

function sub_9857be5c(?) {
    return bool(sub_9857be5c)
}

function sub_a4cb2dda(?) {
    require arg1 < 4
    return sub_a4cb2dda[arg1]
}

function sub_b4a02051(?) {
    return sub_b4a02051
}

function sub_baa120da(?) {
    return sub_baa120da
}

function sub_bb81844e(?) {
    return sub_bb81844e
}

function sub_bead7b21(?) {
    require arg1 < 10
    return sub_bead7b21[arg1]
}

function sub_cefba841(?) {
    return sub_cefba841
}

function sub_d8d5ba15(?) {
    return sub_d8d5ba15
}

function sub_db6d923b(?) {
    return sub_db6d923b
}

function root() {
    return rootAddress
}

function sub_fa421fbf(?) {
    return sub_fa421fbfAddress
}

function destorySelf() {
    if rootAddress != msg.sender:
    selfdestruct(stor30)
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_e236a827(?) {
    return stor48, totalPot
}

function updateTime(uint256 arg1) {
    require msg.sender == address(stor1.length)
    sub_baa120da = arg1
}

function sub_0917d693(?) {
    require msg.sender == address(stor1.length)
    sub_a4cb2dda.length = address(call.data[4])
    stor30 = address(call.data[36])
    stor31 = address(call.data[68])
    stor32 = address(call.data[100])
}

function sub_fe4d01ec(?) {
    require msg.sender == address(stor1.length)
    sub_b4a02051 = arg1
    sub_d8d5ba15 = arg2
    rndInc_ = arg3
    rndMax_ = arg4
    registrationFee_ = arg5
    sub_bb81844e = arg6
    sub_717a2ed1 = arg7
}

function update(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == address(stor1.length)
    sub_db6d923b = arg1
    sub_26e93add = arg2
    stor48 = arg3
    totalPot = arg4
    sub_cefba841 = arg5
}

function sub_a837cc63(?) {
    idx = 256
    s = 7
    while 416 > idx + 32:
        mem[idx + 32] = sub_0c321611[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_0c321611[arg1].field_1792, mem[288 len 128]
}

function destory() {
    if msg.sender == rootAddress:
        call stor30 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_a94d6db7(?) {
    idx = 416
    s = 2
    while 736 > idx + 32:
        mem[idx + 32] = sub_4569905f[stor45[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_4569905f[stor45[address(arg1)]].field_512, mem[448 len 288]
}

function sub_ca6fdf55(?) {
    mem[96 len 160] = call.data[36 len 160]
    require msg.sender == sub_fa421fbfAddress
    s = 7
    idx = 96
    while 256 > idx:
        sub_0c321611[arg1][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 12
    while 12 > idx:
        sub_0c321611[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_eede01ad(?) {
    mem[96 len 960] = call.data[36 len 960]
    require msg.sender == address(stor1.length)
    sub_4569905f[arg1].field_256 = 0
    if sub_4569905f[arg1].field_256 > 0:
        idx = 0
        while sub_4569905f[arg1].field_256 > idx:
            sub_4569905f[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < 30:
        if mem[(32 * idx) + 96]:
            require idx < 30
            sub_4569905f[arg1].field_256++
            stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_4569905f', 46))) + sub_4569905f[arg1].field_256].field_0 = mem[(32 * idx) + 96]
            mem[0] = mem[(32 * idx) + 96]
            mem[32] = 50
            sub_45d4f177[mem[(32 * idx) + 96]] = arg1
        idx = idx + 1
        continue 
}

function sub_69f0f7c7(?) {
    mem[96 len 320] = call.data[36 len 320]
    mem[416 len 448] = call.data[356 len 448]
    require msg.sender == address(stor1.length)
    s = 2
    idx = 96
    while 416 > idx:
        sub_4569905f[stor45[address(arg1)]][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 12
    while 12 > idx:
        sub_4569905f[stor45[address(arg1)]][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_4569905f[stor45[address(arg1)]].field_3072 = call.data[356]
    sub_4569905f[stor45[address(arg1)]].field_3328 = call.data[388]
    sub_4569905f[stor45[address(arg1)]].field_3584 = call.data[420]
    sub_4569905f[stor45[address(arg1)]].field_3840 = call.data[452]
    sub_4569905f[stor45[address(arg1)]].field_4096 = call.data[484]
    sub_4569905f[stor45[address(arg1)]].field_4352 = call.data[516]
    sub_4569905f[stor45[address(arg1)]].field_4608 = call.data[548]
    sub_0c321611[stor45[address(arg1)]].field_0 = call.data[580]
    sub_0c321611[stor45[address(arg1)]].field_256 = call.data[612]
    sub_0c321611[stor45[address(arg1)]].field_512 = call.data[644]
    sub_0c321611[stor45[address(arg1)]].field_768 = call.data[676]
    sub_0c321611[stor45[address(arg1)]].field_1024 = call.data[708]
    sub_0c321611[stor45[address(arg1)]].field_1280 = call.data[740]
    sub_0c321611[stor45[address(arg1)]].field_1536 = call.data[772]
}

function sub_27355719(?) {
    if not sub_4569905f[stor45[address(arg1)]].field_256:
        mem[(32 * sub_4569905f[stor45[address(arg1)]].field_256) + 128] = 32
        mem[(32 * sub_4569905f[stor45[address(arg1)]].field_256) + 160] = sub_4569905f[stor45[address(arg1)]].field_256
        mem[(32 * sub_4569905f[stor45[address(arg1)]].field_256) + 192 len floor32(sub_4569905f[stor45[address(arg1)]].field_256)] = mem[128 len floor32(sub_4569905f[stor45[address(arg1)]].field_256)]
        return memory
          from (32 * sub_4569905f[stor45[address(arg1)]].field_256) + 128
           len (96 * sub_4569905f[stor45[address(arg1)]].field_256) + 64
    mem[128] = sub_4569905f[stor45[address(arg1)]][1].field_0
    idx = 128
    s = 0
    while (32 * sub_4569905f[stor45[address(arg1)]].field_256) + 96 > idx:
        mem[idx + 32] = sub_4569905f[stor45[address(arg1)]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_4569905f[stor45[address(arg1)]].field_256) + 192 len floor32(sub_4569905f[stor45[address(arg1)]].field_256)] = mem[128 len floor32(sub_4569905f[stor45[address(arg1)]].field_256)]
    return Array(len=sub_4569905f[stor45[address(arg1)]].field_256, data=mem[128 len floor32(sub_4569905f[stor45[address(arg1)]].field_256)], mem[(32 * sub_4569905f[stor45[address(arg1)]].field_256) + floor32(sub_4569905f[stor45[address(arg1)]].field_256) + 192 len (32 * sub_4569905f[stor45[address(arg1)]].field_256) - floor32(sub_4569905f[stor45[address(arg1)]].field_256)]), 
}

function gameOver() {
    require block.timestamp >= sub_baa120da
    if eth.balance(this.address) > totalPot:
        if totalPot > 0:
            idx = 0
            s = 0
            while idx < 10:
                if sub_bead7b21[idx] == stor28:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if s > 0:
                idx = 0
                while idx < 10:
                    if sub_bead7b21[idx] != stor28:
                        require idx < 10
                        require s
                        call sub_bead7b21[idx] with:
                           value totalPot / s wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require s
                        require idx < 10
                        mem[0] = pIDxAddr_[stor2[idx]]
                        mem[32] = 47
                        sub_0c321611[stor45[stor2[idx]]].field_768 += totalPot / s
                    idx = idx + 1
                    continue 
    else:
        if eth.balance(this.address) > 0:
            idx = 0
            s = 0
            while idx < 10:
                if sub_bead7b21[idx] == stor28:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if s > 0:
                idx = 0
                while idx < 10:
                    if sub_bead7b21[idx] != stor28:
                        require idx < 10
                        require s
                        call sub_bead7b21[idx] with:
                           value eth.balance(this.address) / s wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require s
                        require idx < 10
                        mem[0] = pIDxAddr_[stor2[idx]]
                        mem[32] = 47
                        sub_0c321611[stor45[stor2[idx]]].field_768 += eth.balance(this.address) / s
                    idx = idx + 1
                    continue 
    idx = 0
    while idx < 10:
        sub_bead7b21[idx] = stor28
        idx = idx + 1
        continue 
    sub_baa120da = block.timestamp + (100000 * 3600)
    stor35 = 0
    round++
    stor48 = 0
    totalPot = 0
    sub_26e93add = 1
    sub_db6d923b = 0
}

function sub_5671ea78(?) payable {
    if msg.value < registrationFee_:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'umm.....  you have to pay the name fee'
    if not pIDxAddr_[address(msg.sender)]:
        sub_cefba841++
        pIDxAddr_[address(msg.sender)] = sub_cefba841
        if stor27.length:
            mem[448] = uint256(stor27.field_0)
            idx = 448
            s = 0
            while (32 * stor27.length) + 416 > idx:
                mem[idx + 32] = stor27[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[(32 * stor27.length) + 448] = stor12
        idx = (32 * stor27.length) + 448
        s = 12
        while (32 * stor27.length) + 768 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        sub_4569905f[stor38].field_0 = msg.sender
        sub_4569905f[stor38].field_256 = stor27.length
        if not stor27.length:
            idx = 0
            while sub_4569905f[stor38].field_256 > idx:
                sub_4569905f[stor38][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 448
            while (32 * stor27.length) + 448 > idx:
                sub_4569905f[stor38][s + 1].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * stor27.length) + 31) >> 5
            while sub_4569905f[stor38].field_256 > idx:
                sub_4569905f[stor38][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        s = 2
        idx = (32 * stor27.length) + 448
        while (32 * stor27.length) + 768 > idx:
            sub_4569905f[stor38][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 12
        while 12 > idx:
            sub_4569905f[stor38][idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_4569905f[stor38].field_3072 = 0
        sub_4569905f[stor38].field_3328 = 0
        sub_4569905f[stor38].field_3584 = 0
        sub_4569905f[stor38].field_3840 = 0
        sub_4569905f[stor38].field_4096 = 0
        sub_4569905f[stor38].field_4352 = 0
        sub_4569905f[stor38].field_4608 = 0
        mem[(32 * stor27.length) + 1024] = stor22
        idx = (32 * stor27.length) + 1024
        s = 22
        while (32 * stor27.length) + 1184 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        sub_0c321611[stor38].field_0 = 0
        sub_0c321611[stor38].field_256 = 0
        sub_0c321611[stor38].field_512 = round
        sub_0c321611[stor38].field_768 = 0
        sub_0c321611[stor38].field_1024 = 0
        sub_0c321611[stor38].field_1280 = 0
        sub_0c321611[stor38].field_1536 = 0
        s = 7
        idx = (32 * stor27.length) + 1024
        while (32 * stor27.length) + 1184 > idx:
            sub_0c321611[stor38][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 12
        while 12 > idx:
            sub_0c321611[stor38][idx].field_0 = 0
            idx = idx + 1
            continue 
        if arg1 != stor28:
            s = 2
            idx = 2
            while 12 > idx:
                sub_4569905f[stor38][s].field_0 = sub_4569905f[stor45[address(arg1)]][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = 12
            while 12 > idx:
                sub_4569905f[stor38][idx].field_0 = 0
                idx = idx + 1
                continue 
            s = 7
            idx = 7
            while 12 > idx:
                sub_0c321611[stor38][s].field_0 = sub_0c321611[stor45[address(arg1)]][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = 12
            while 12 > idx:
                sub_0c321611[stor38][idx].field_0 = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < 9:
                require idx + 1 < 10
                mem[0] = sub_cefba841
                mem[32] = 46
                require idx < 10
                sub_4569905f[stor38][idx].field_512 = sub_4569905f[stor38][idx].field_768
                idx = idx + 1
                continue 
            sub_4569905f[stor38].field_2816 = pIDxAddr_[address(arg1)]
    stor55[address(msg.sender)] = 1
    call sub_a4cb2dda.length with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor30 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withDraw() {
    if sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1 <= sub_0c321611[stor45[address(msg.sender)]].field_1536:
        if sub_4569905f[stor45[address(msg.sender)]].field_4608 <= 0:
            sub_4569905f[stor45[address(msg.sender)]].field_4352 = 0
            if sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 <= eth.balance(this.address):
                if sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352:
                    call msg.sender with:
                       value sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_0c321611[stor45[address(msg.sender)]].field_768 = sub_0c321611[stor45[address(msg.sender)]].field_768 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352
                    sub_0c321611[stor45[address(msg.sender)]].field_1280 = 0
        else:
            if sub_4569905f[stor45[address(msg.sender)]].field_3584 < sub_4569905f[stor45[address(msg.sender)]].field_4608:
                sub_4569905f[stor45[address(msg.sender)]].field_4352 = 0
                if sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 <= eth.balance(this.address):
                    if sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352:
                        call msg.sender with:
                           value sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_0c321611[stor45[address(msg.sender)]].field_768 = sub_0c321611[stor45[address(msg.sender)]].field_768 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352
                        sub_0c321611[stor45[address(msg.sender)]].field_1280 = 0
            else:
                sub_4569905f[stor45[address(msg.sender)]].field_3584 -= sub_4569905f[stor45[address(msg.sender)]].field_4608
                sub_4569905f[stor45[address(msg.sender)]].field_4608 = 0
                sub_4569905f[stor45[address(msg.sender)]].field_4352 = 0
                if sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 <= eth.balance(this.address):
                    if sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352:
                        call msg.sender with:
                           value sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_0c321611[stor45[address(msg.sender)]].field_768 = sub_0c321611[stor45[address(msg.sender)]].field_768 + sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352
                        sub_0c321611[stor45[address(msg.sender)]].field_1280 = 0
    else:
        if sub_4569905f[stor45[address(msg.sender)]].field_3584 < (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536:
            if sub_4569905f[stor45[address(msg.sender)]].field_4608 <= 0:
                sub_4569905f[stor45[address(msg.sender)]].field_4352 = 0
                if sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 <= eth.balance(this.address):
                    if sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352:
                        call msg.sender with:
                           value sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_0c321611[stor45[address(msg.sender)]].field_768 = sub_0c321611[stor45[address(msg.sender)]].field_768 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352
                        sub_0c321611[stor45[address(msg.sender)]].field_1280 = 0
            else:
                if sub_4569905f[stor45[address(msg.sender)]].field_3584 < sub_4569905f[stor45[address(msg.sender)]].field_4608:
                    sub_4569905f[stor45[address(msg.sender)]].field_4352 = 0
                    if sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 <= eth.balance(this.address):
                        if sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352:
                            call msg.sender with:
                               value sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_0c321611[stor45[address(msg.sender)]].field_768 = sub_0c321611[stor45[address(msg.sender)]].field_768 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352
                            sub_0c321611[stor45[address(msg.sender)]].field_1280 = 0
                else:
                    sub_4569905f[stor45[address(msg.sender)]].field_3584 -= sub_4569905f[stor45[address(msg.sender)]].field_4608
                    sub_4569905f[stor45[address(msg.sender)]].field_4608 = 0
                    sub_4569905f[stor45[address(msg.sender)]].field_4352 = 0
                    if sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 <= eth.balance(this.address):
                        if sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352:
                            call msg.sender with:
                               value sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_0c321611[stor45[address(msg.sender)]].field_768 = sub_0c321611[stor45[address(msg.sender)]].field_768 + sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352
                            sub_0c321611[stor45[address(msg.sender)]].field_1280 = 0
        else:
            sub_0c321611[stor45[address(msg.sender)]].field_1536 = sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1
            sub_4569905f[stor45[address(msg.sender)]].field_3584 = sub_4569905f[stor45[address(msg.sender)]].field_3584 - (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) + sub_0c321611[stor45[address(msg.sender)]].field_1536
            if sub_4569905f[stor45[address(msg.sender)]].field_4608 <= 0:
                sub_4569905f[stor45[address(msg.sender)]].field_4352 = 0
                if (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 <= eth.balance(this.address):
                    if (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352:
                        call msg.sender with:
                           value (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_0c321611[stor45[address(msg.sender)]].field_768 = sub_0c321611[stor45[address(msg.sender)]].field_768 + (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352
                        sub_0c321611[stor45[address(msg.sender)]].field_1280 = 0
            else:
                if sub_4569905f[stor45[address(msg.sender)]].field_3584 < sub_4569905f[stor45[address(msg.sender)]].field_4608:
                    sub_4569905f[stor45[address(msg.sender)]].field_4352 = 0
                    if (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 <= eth.balance(this.address):
                        if (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352:
                            call msg.sender with:
                               value (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_0c321611[stor45[address(msg.sender)]].field_768 = sub_0c321611[stor45[address(msg.sender)]].field_768 + (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352
                            sub_0c321611[stor45[address(msg.sender)]].field_1280 = 0
                else:
                    sub_4569905f[stor45[address(msg.sender)]].field_3584 -= sub_4569905f[stor45[address(msg.sender)]].field_4608
                    sub_4569905f[stor45[address(msg.sender)]].field_4608 = 0
                    sub_4569905f[stor45[address(msg.sender)]].field_4352 = 0
                    if (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 <= eth.balance(this.address):
                        if (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352:
                            call msg.sender with:
                               value (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_0c321611[stor45[address(msg.sender)]].field_768 = sub_0c321611[stor45[address(msg.sender)]].field_768 + (sub_4569905f[stor45[address(msg.sender)]].field_4096 / 10 * sub_717a2ed1) - sub_0c321611[stor45[address(msg.sender)]].field_1536 + sub_4569905f[stor45[address(msg.sender)]].field_4608 + sub_0c321611[stor45[address(msg.sender)]].field_1280 + sub_4569905f[stor45[address(msg.sender)]].field_4352
                            sub_0c321611[stor45[address(msg.sender)]].field_1280 = 0
}



}
