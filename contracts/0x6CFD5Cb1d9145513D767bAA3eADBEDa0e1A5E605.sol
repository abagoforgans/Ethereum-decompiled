contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint8 stor9;
uint256 stor22;
uint256 stor23;
uint256 stor41;
uint256 stor47;
uint256 stor48;
uint256 stor49;
uint256 stor50;

function _fallback() {
    stor5 = msg.sender
    stor9[address(msg.sender)] = 1
    stor0 = 10^15
    stor1 = 4
    stor2 = 10
    stor3 = 10
    stor41 = block.number
    stor22 = 40320
    stor23 = 2 * 3600
    mem[96] = 25
    mem[128] = 50
    mem[160] = 100
    mem[192] = 200
    mem[224] = 200
    mem[256] = 250
    mem[288] = 250
    mem[320] = 250
    mem[352] = 250
    mem[384] = 250
    s = 31
    idx = 96
    while 416 > idx:
        uint8(stor[s].field_0) = mem[idx + 31 len 1]
        Mask(248, 0, stor[s].field_8) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 41
    while 41 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor6 = 1000 * 10^18
    stor7 = 1000 * 10^18
    stor8 = 125 * 10^17 * 3600
    stor47 = 10^16
    stor48 = 10^17
    stor49 = 10^16
    stor50 = 10^15
    return code.data[424 len 16005]
}



// =====================  Runtime code  =====================


#
#  - sub_0561220d(?)
#  - sub_2481208b(?)
#  - sub_c352ef26(?)
#
uint256 sub_163b4b05;
uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint8 stor9;
mapping of struct stor11;
mapping of struct sub_ad6787e0;
uint256 stor13;
mapping of struct stor14;
mapping of struct sub_6f09ebcc;
mapping of struct stor16;
mapping of uint256 sub_c4f22b50;
mapping of uint256 sub_0b12142f;
mapping of uint256 sub_929c2cc0;
mapping of uint256 sub_90cf38ed;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
array of struct sub_5969413e;
mapping of struct sub_de1bb4f9;
mapping of struct stor29;
mapping of struct sub_124468fd;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint256 startBlock;
mapping of uint256 stor42;
mapping of uint8 stor43;
mapping of uint128 stor44;
array of struct stor45;
mapping of uint256 stor46;
uint256 stor47;
uint256 stor48;
uint256 stor49;
uint256 stor50;
mapping of address stor51;
mapping of address stor52;
mapping of uint256 sub_1810c706;
mapping of uint128 sub_404216f9;
array of struct sub_e48bec9e;

function sub_0b12142f(?) {
    return sub_0b12142f[address(arg1)]
}

function sub_124468fd(?) {
    require arg1 <= stor24
    return sub_124468fd[arg1].field_0, 
           sub_124468fd[arg1].field_256,
           sub_124468fd[arg1].field_512,
           sub_124468fd[arg1].field_768,
           sub_124468fd[arg1].field_1024,
           sub_124468fd[arg1].field_1280,
           sub_124468fd[arg1].field_1536,
           sub_124468fd[arg1].field_1792,
           sub_124468fd[arg1].field_2048,
           sub_124468fd[arg1].field_2304
}

function sub_163b4b05(?) {
    return sub_163b4b05
}

function sub_1810c706(?) {
    return sub_1810c706[address(arg1)]
}

function sub_35a29655(?) {
    return stor2.length
}

function sub_404216f9(?) {
    return sub_404216f9[address(arg1)]
}

function sub_4e2cfbba(?) {
    return bool(sub_ad6787e0[arg1].field_0)
}

function sub_5969413e(?) {
    require arg1 <= stor24
    return sub_5969413e[arg1].field_0, 
           sub_5969413e[arg1].field_256,
           sub_5969413e[arg1].field_512,
           sub_5969413e[arg1].field_768,
           sub_5969413e[arg1].field_1024,
           sub_5969413e[arg1].field_1280,
           sub_5969413e[arg1].field_1536,
           sub_5969413e[arg1].field_1792,
           sub_5969413e[arg1].field_2048,
           sub_5969413e[arg1].field_2304
}

function sub_6f09ebcc(?) {
    require arg1 < stor13
    return sub_6f09ebcc[arg1].field_3328
}

function sub_90cf38ed(?) {
    return sub_90cf38ed[address(arg1)]
}

function sub_929c2cc0(?) {
    return sub_929c2cc0[address(arg1)]
}

function isTrusted(address arg1) {
    return bool(stor9[address(arg1)])
}

function sub_a09e36d7(?) {
    return bool(stor11[arg1][address(msg.sender)].field_0)
}

function getStartBlock() {
    return startBlock
}

function sub_ad6787e0(?) {
    return bool(sub_ad6787e0[arg1].field_0), 
           sub_ad6787e0[arg1].field_0,
           sub_ad6787e0[arg1].field_256,
           sub_ad6787e0[arg1].field_512,
           bool(sub_ad6787e0[arg1].field_768),
           sub_ad6787e0[arg1].field_1024,
           sub_ad6787e0[arg1].field_1280,
           sub_ad6787e0[arg1].field_1536,
           sub_ad6787e0[arg1].field_1792,
           sub_ad6787e0[arg1].field_2048,
           bool(sub_ad6787e0[arg1].field_2304),
           bool(sub_ad6787e0[arg1].field_2312)
}

function sub_c4f22b50(?) {
    return sub_c4f22b50[address(arg1)]
}

function sub_de1bb4f9(?) {
    require arg1 <= stor24
    return sub_de1bb4f9[arg1].field_0, 
           sub_de1bb4f9[arg1].field_256,
           sub_de1bb4f9[arg1].field_512,
           sub_de1bb4f9[arg1].field_768,
           sub_de1bb4f9[arg1].field_1024,
           sub_de1bb4f9[arg1].field_1280,
           sub_de1bb4f9[arg1].field_1536,
           sub_de1bb4f9[arg1].field_1792,
           sub_de1bb4f9[arg1].field_2048,
           sub_de1bb4f9[arg1].field_2304
}

function sub_e48bec9e(?) {
    require arg2 < sub_e48bec9e[address(arg1)].field_0
    return sub_e48bec9e[address(arg1)][arg2].field_0
}

function sub_eb0772c9(?) {
    require arg1 < stor13
    return sub_6f09ebcc[arg1].field_0, 
           sub_6f09ebcc[arg1].field_256,
           sub_6f09ebcc[arg1].field_512,
           sub_6f09ebcc[arg1].field_768,
           sub_6f09ebcc[arg1].field_1024,
           sub_6f09ebcc[arg1].field_1280,
           sub_6f09ebcc[arg1].field_1536,
           sub_6f09ebcc[arg1].field_1792,
           sub_6f09ebcc[arg1].field_2048
}

function _fallback() payable {
    revert
}

function sub_bf04fa77(?) {
    return (sub_163b4b05 * stor1)
}

function sub_ea544c08(?) {
    return stor21, stor22, stor24, startBlock
}

function sub_f59bdca5(?) {
    return stor29[arg1].field_0, stor22, arg1, startBlock
}

function sub_b695e685(?) {
    return ((arg1 * stor23) + (arg1 * stor22) + startBlock)
}

function sub_efce0710(?) {
    return ((arg1 * stor23) + stor22 + (arg1 * stor22) + startBlock)
}

function sub_fffcd8c5(?) {
    return (-stor23 + (arg1 * stor23) + (arg1 * stor22) + startBlock)
}

function sub_b627df84(?) {
    return (stor23 + (arg1 * stor23) + stor22 + (arg1 * stor22) + startBlock)
}

function getRewardDistribution() {
    return stor31, stor32, stor33, stor34, stor35, stor36, stor37, stor38, stor39, stor40
}

function getRewardValue(uint256 arg1) {
    require arg1 <= stor24
    if arg1 == stor24:
        return stor21
    return stor29[arg1].field_256
}

function getRewardBalance(uint256 arg1) {
    require arg1 <= stor24
    if arg1 == stor24:
        return stor21
    return stor29[arg1].field_256
}

function sub_7308d060(?) payable {
    require arg1
    require stor52[arg1] == msg.sender
    require msg.value >= stor48
    stor4 = stor4 + msg.value - (msg.value / 2)
    stor21 += msg.value / 2
}

function sub_2bb25731(?) {
    idx = 0
    while uint8(idx) < 10:
        mem[0] = arg1
        mem[32] = 26
        if sub_5969413e[arg1][uint8(idx)].field_0 != arg2:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_2f23d77d(?) {
    if sub_6f09ebcc[arg1].field_256 <= sub_6f09ebcc[arg1].field_0:
        return (sub_6f09ebcc[arg1].field_256 > sub_6f09ebcc[arg1].field_0)
    return (100 * sub_ad6787e0[arg1].field_1536 > 125 * sub_ad6787e0[arg1].field_1792)
}

function sub_c1097c4a(?) {
    require sub_90cf38ed[address(msg.sender)]
    call msg.sender with:
       value sub_90cf38ed[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_90cf38ed[address(msg.sender)] = 0
}

function sub_462dc7fb(?) payable {
    require arg1
    require not stor52[arg1]
    require msg.value >= stor47
    stor52[arg1] = msg.sender
    sub_1810c706[address(msg.sender)] = arg1
    stor4 = stor4 + msg.value - (msg.value / 2)
    stor21 += msg.value / 2
}

function sub_edeccbf1(?) payable {
    require arg1
    require not stor51[arg1 << 128]
    require msg.value >= stor49
    stor51[arg1 << 128] = msg.sender
    sub_404216f9[address(msg.sender)] = arg1
    stor4 = stor4 + msg.value - (msg.value / 2)
    stor21 += msg.value / 2
}

function safeWithdrawal(uint256 arg1) {
    require stor5 == msg.sender
    require stor6 - arg1 >= 0
    require stor4 - arg1 >= 0
    call stor5 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor4 -= arg1
    stor6 -= arg1
}

function sub_9ed63883(?) {
    if block.number < (arg1 * stor23) + stor22 + (arg1 * stor22) + startBlock:
        return block.number >= (arg1 * stor23) + stor22 + (arg1 * stor22) + startBlock
    return (block.number < stor23 + (arg1 * stor23) + stor22 + (arg1 * stor22) + startBlock)
}

function getVote(uint256 arg1) {
    require arg1 < stor13
    if stor14[arg1][address(msg.sender)].field_512:
        return stor14[arg1][address(msg.sender)].field_0, 
               bool(stor14[arg1][address(msg.sender)].field_256),
               stor14[arg1][address(msg.sender)].field_264
    else:
        return 0
}

function sub_a0f4b068(?) {
    idx = 0
    while idx < sub_e48bec9e[address(arg1)].field_0:
        require idx < sub_e48bec9e[address(arg1)].field_0
        if sub_e48bec9e[address(arg1)][idx].field_0 == arg2:
            return 1
        mem[0] = arg1
        mem[32] = 55
        idx = idx + 1
        continue 
    return 0
}

function sub_5adc5aa0(?) payable {
    require sub_163b4b05 * stor3
    require (msg.value / sub_163b4b05 * stor3) + sub_929c2cc0[address(msg.sender)] >= sub_929c2cc0[address(msg.sender)]
    sub_929c2cc0[address(msg.sender)] += msg.value / sub_163b4b05 * stor3
    stor4 += msg.value
    emit 0xcba7ce36: msg.value, msg.sender, stor24
}

function sub_d453260e(?) payable {
    require sub_163b4b05 * stor3
    require (msg.value / sub_163b4b05 * stor3) + sub_929c2cc0[address(msg.sender)] >= sub_929c2cc0[address(msg.sender)]
    sub_929c2cc0[address(msg.sender)] += msg.value / sub_163b4b05 * stor3
    stor21 += msg.value
    emit 0x32310d50: msg.value, msg.sender, stor24
}

function sub_21569260(?) {
    if block.number <= -stor23 + (sub_ad6787e0[arg1].field_2048 * stor23) + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock:
        return (block.number > -stor23 + (sub_ad6787e0[arg1].field_2048 * stor23) + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock)
    return (block.number < (sub_ad6787e0[arg1].field_2048 * stor23) + stor22 + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock)
}

function sub_24dc4238(?) {
    require arg1 < stor13
    require sub_0b12142f[address(msg.sender)] >= arg2 * stor3
    require sub_929c2cc0[stor15[arg1].field_2816] + arg2 >= sub_929c2cc0[stor15[arg1].field_2816]
    sub_0b12142f[address(msg.sender)] += -1 * arg2 * stor3
    sub_929c2cc0[stor15[arg1].field_2816] += arg2
    sub_6f09ebcc[arg1].field_3072 += arg2
    emit 0x422b6b23: arg2, msg.sender, sub_6f09ebcc[arg1].field_2816, arg1
}

function sub_83853f7d(?) payable {
    require msg.value == sub_163b4b05 * stor1
    stor4 = stor4 + msg.value - (msg.value / 2)
    stor21 += msg.value / 2
    stor13++
    stor16[stor13].field_0 = block.number
    stor16[stor13].field_256 = 0
    sub_6f09ebcc[stor13].field_2816 = msg.sender
    sub_6f09ebcc[stor13].field_3328 = block.number
    emit NewVote(stor13);
    stor43[stor13] = 0
    stor45[stor13][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor44[stor13] = arg2
    emit 0x70512472: msg.sender, stor13, arg2
    return stor13
}

function sub_7fe226e3(?) payable {
    require arg2 < stor13
    require msg.value == sub_163b4b05 * stor1
    stor4 = stor4 + msg.value - (msg.value / 2)
    stor21 += msg.value / 2
    stor13++
    stor16[stor13].field_0 = block.number
    stor16[stor13].field_256 = 0
    sub_6f09ebcc[stor13].field_2816 = msg.sender
    sub_6f09ebcc[stor13].field_3328 = block.number
    emit NewVote(stor13);
    stor43[stor13] = 1
    stor45[stor13][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor42[stor13] = arg2
    stor46[arg2]++
    emit 0x40351df4: msg.sender, arg2, stor13
    return stor13
}

function sub_04f53f6c(?) {
    require arg1 < stor13
    mem[0] = arg1
    mem[32] = 15
    idx = 1
    s = stor2[sha3(mem[0 len 64])]
    while idx < 7:
        mem[0] = arg1
        mem[32] = 15
        idx = idx + 1
        s = s - sub_6f09ebcc[arg1][idx].field_512
        continue 
    return stor16[arg1].field_256, 
           stor16[arg1].field_0,
           sub_6f09ebcc[arg1].field_2304,
           sub_6f09ebcc[arg1].field_2560,
           sub_6f09ebcc[arg1].field_3072,
           sub_6f09ebcc[arg1].field_256 - sub_6f09ebcc[arg1].field_0,
           (0x9e265265c02309943fe1354ad32a6c73333333333333333333 * stor2[sha3(mem[0 len 64])]) + (0x316bf9bfcc0af2fe53f660a761fd41e40000000000000000000 * s),
           sub_6f09ebcc[arg1].field_768 - sub_6f09ebcc[arg1].field_1024,
           sub_6f09ebcc[arg1].field_1280 - sub_6f09ebcc[arg1].field_1536,
           sub_6f09ebcc[arg1].field_1792 - sub_6f09ebcc[arg1].field_2048
}

function sub_adf185f4(?) payable {
    require msg.value >= stor50
    idx = 0
    while idx < sub_e48bec9e[address(msg.sender)].field_0:
        require idx < sub_e48bec9e[address(msg.sender)].field_0
        require sub_e48bec9e[address(msg.sender)][idx].field_0 != arg1
        mem[0] = msg.sender
        mem[32] = 55
        idx = idx + 1
        continue 
    sub_e48bec9e[address(msg.sender)].field_0++
    if not sub_e48bec9e[address(msg.sender)].field_0 <= sub_e48bec9e[address(msg.sender)].field_0 + 1:
        idx = sub_e48bec9e[address(msg.sender)].field_0 + 1
        while sub_e48bec9e[address(msg.sender)].field_0 > idx:
            sub_e48bec9e[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_e48bec9e[address(msg.sender)][sub_e48bec9e[address(msg.sender)].field_0].field_0 = arg1
    emit 0x85825a10: msg.sender, arg1
    stor4 = stor4 + msg.value - (msg.value / 2)
    stor21 += msg.value / 2
}

function sub_67257779(?) {
    if block.number <= (sub_ad6787e0[arg1].field_2048 * stor23) + stor22 + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock:
        return (block.number > (sub_ad6787e0[arg1].field_2048 * stor23) + stor22 + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock)
    if block.number >= stor23 + (sub_ad6787e0[arg1].field_2048 * stor23) + (2 * stor22) + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock:
        return (block.number < stor23 + (sub_ad6787e0[arg1].field_2048 * stor23) + (2 * stor22) + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock)
    if sub_6f09ebcc[arg1].field_256 <= sub_6f09ebcc[arg1].field_0:
        return (sub_6f09ebcc[arg1].field_256 > sub_6f09ebcc[arg1].field_0)
    if 100 * sub_ad6787e0[arg1].field_1536 <= 125 * sub_ad6787e0[arg1].field_1792:
        return (100 * sub_ad6787e0[arg1].field_1536 > 125 * sub_ad6787e0[arg1].field_1792)
    return not bool(sub_ad6787e0[arg1].field_2304)
}

function sub_ac2f835d(?) {
    if block.number <= (sub_ad6787e0[arg1].field_2048 * stor23) + stor22 + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock:
        return (block.number > (sub_ad6787e0[arg1].field_2048 * stor23) + stor22 + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock)
    if block.number >= stor23 + (sub_ad6787e0[arg1].field_2048 * stor23) + (2 * stor22) + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock:
        return (block.number < stor23 + (sub_ad6787e0[arg1].field_2048 * stor23) + (2 * stor22) + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock)
    if 100 * sub_ad6787e0[arg1].field_1536 <= 125 * sub_ad6787e0[arg1].field_1792:
        return (100 * sub_ad6787e0[arg1].field_1536 > 125 * sub_ad6787e0[arg1].field_1792)
    if sub_ad6787e0[arg1].field_2312:
        return not bool(sub_ad6787e0[arg1].field_2312)
    if not sub_ad6787e0[arg1].field_768:
        return bool(sub_ad6787e0[arg1].field_768)
    return bool(sub_ad6787e0[arg1].field_256)
}

function getData(uint256 arg1) {
    require arg1 < stor13
    mem[160] = stor45[arg1].field_0
    idx = 160
    s = 0
    while stor45[arg1].length + 128 > idx:
        mem[idx + 32] = stor45[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor45[arg1].length) + 160] = sub_6f09ebcc[arg1].field_2816
    mem[ceil32(stor45[arg1].length) + 192] = stor43[arg1]
    mem[ceil32(stor45[arg1].length) + 256] = stor46[arg1]
    mem[ceil32(stor45[arg1].length) + 224] = 128
    mem[ceil32(stor45[arg1].length) + 288] = stor45[arg1].length
    if stor45[arg1].length:
        mem[ceil32(stor45[arg1].length) + 320] = mem[160]
        mem[ceil32(stor45[arg1].length) + 352 len floor32(stor45[arg1].length - 1)] = mem[192 len floor32(stor45[arg1].length - 1)]
    return sub_6f09ebcc[arg1].field_2816, 
           stor43[arg1],
           Array(len=stor45[arg1].length, data=mem[ceil32(stor45[arg1].length) + 320 len stor45[arg1].length]),
           stor46[arg1]
}

function sub_c09331cd(?) {
    require 0 < sub_e48bec9e[address(msg.sender)].field_0
    require 0 < sub_e48bec9e[address(msg.sender)].field_0
    idx = 0
    while sub_e48bec9e[address(msg.sender)][idx].field_0 != arg1:
        require idx + 1 < sub_e48bec9e[address(msg.sender)].field_0
        mem[32] = 55
        require idx + 1 < sub_e48bec9e[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 55)
        idx = idx + 1
        continue 
    require sub_e48bec9e[address(msg.sender)].field_0 - 1 < sub_e48bec9e[address(msg.sender)].field_0
    require None + 2 < sub_e48bec9e[address(msg.sender)].field_0
    sub_e48bec9e[address(msg.sender)][None].field_512 = sub_e48bec9e[address(msg.sender)][sub_e48bec9e[address(msg.sender)].field_0].field_0
    require sub_e48bec9e[address(msg.sender)].field_0 - 1 < sub_e48bec9e[address(msg.sender)].field_0
    sub_e48bec9e[address(msg.sender)][sub_e48bec9e[address(msg.sender)].field_0].field_0 = 0
    emit 0xd56ad8ca: msg.sender, arg1
}

function sub_dcc364b0(?) {
    require stor9[address(msg.sender)]
    require arg1 < stor13
    require block.number > (sub_ad6787e0[arg1].field_2048 * stor23) + stor22 + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock
    require block.number < stor23 + (sub_ad6787e0[arg1].field_2048 * stor23) + (2 * stor22) + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock
    require 100 * sub_ad6787e0[arg1].field_1536 > 125 * sub_ad6787e0[arg1].field_1792
    require not sub_ad6787e0[arg1].field_2312
    require sub_ad6787e0[arg1].field_768
    require sub_ad6787e0[arg1].field_256
    require sub_ad6787e0[arg1].field_768
    require stor4 - sub_ad6787e0[arg1].field_512 >= 0
    require stor7 - sub_ad6787e0[arg1].field_512 >= 0
    call sub_ad6787e0[arg1].field_256 with:
       value sub_ad6787e0[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor4 -= sub_ad6787e0[arg1].field_512
    stor7 -= sub_ad6787e0[arg1].field_512
    sub_ad6787e0[arg1].field_2312 = 1
}

function sub_aba637b0(?) {
    require stor9[address(msg.sender)]
    require arg1 < stor13
    require sub_ad6787e0[arg1].field_0
    require block.number > -stor23 + (sub_ad6787e0[arg1].field_2048 * stor23) + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock
    require block.number < (sub_ad6787e0[arg1].field_2048 * stor23) + stor22 + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock
    if not stor11[arg1][address(msg.sender)].field_0:
        if not arg2:
            sub_ad6787e0[arg1].field_1792++
        else:
            sub_ad6787e0[arg1].field_1536++
    else:
        if not stor11[arg1][address(msg.sender)].field_8:
            sub_ad6787e0[arg1].field_1792--
        else:
            sub_ad6787e0[arg1].field_1536--
        if not arg2:
            sub_ad6787e0[arg1].field_1792++
        else:
            sub_ad6787e0[arg1].field_1536++
    stor11[arg1][address(msg.sender)].field_0 = 1
    stor11[arg1][address(msg.sender)].field_8 = Mask(248, 0, arg2)
    stor11[arg1][address(msg.sender)].field_8 = 0
}

function sub_8fcd35cf(?) {
    require stor9[address(msg.sender)]
    require arg1 < stor13
    require sub_ad6787e0[arg1].field_0
    require block.number > (sub_ad6787e0[arg1].field_2048 * stor23) + stor22 + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock
    require block.number < stor23 + (sub_ad6787e0[arg1].field_2048 * stor23) + (2 * stor22) + (sub_ad6787e0[arg1].field_2048 * stor22) + startBlock
    require sub_6f09ebcc[arg1].field_256 > sub_6f09ebcc[arg1].field_0
    require 100 * sub_ad6787e0[arg1].field_1536 > 125 * sub_ad6787e0[arg1].field_1792
    require not sub_ad6787e0[arg1].field_2304
    if sub_ad6787e0[arg1].field_8:
        if stor8 - 1000 * 10^18 >= 0:
            stor8 += 0xffffffffffffffffffffffffffffffffffffffffffffffc9ca36523a21600000
            stor7 += 1000 * 10^18
        stor9[stor12[arg1].field_0] = 1
    if sub_ad6787e0[arg1].field_256:
        if not sub_ad6787e0[arg1].field_768:
            require stor4 - sub_ad6787e0[arg1].field_512 >= 0
            call sub_ad6787e0[arg1].field_256 with:
               value sub_ad6787e0[arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            stor4 -= sub_ad6787e0[arg1].field_512
    if sub_ad6787e0[arg1].field_1024 > 0:
        if 1 == sub_ad6787e0[arg1].field_1024:
            sub_163b4b05 = sub_ad6787e0[arg1].field_1280
            emit 0x24512d08: sub_ad6787e0[arg1].field_1280
        else:
            if 2 == sub_ad6787e0[arg1].field_1024:
                stor1 = sub_ad6787e0[arg1].field_1280
                emit 0xd0d54019: (sub_ad6787e0[arg1].field_1280 * sub_163b4b05)
            else:
                if 2 == sub_ad6787e0[arg1].field_1024:
                    stor2.length = sub_ad6787e0[arg1].field_1280
                    emit 0xe06c6df0: sub_ad6787e0[arg1].field_1280
                else:
                    if 2 == sub_ad6787e0[arg1].field_1024:
                        stor3 = sub_ad6787e0[arg1].field_1280
                        emit 0x935cb769: sub_ad6787e0[arg1].field_1280
    sub_ad6787e0[arg1].field_2304 = 1
}



}
