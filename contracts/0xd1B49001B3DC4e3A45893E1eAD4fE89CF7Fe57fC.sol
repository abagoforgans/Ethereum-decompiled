contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor5;
uint256 stor7;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
mapping of struct stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;

function _fallback() payable {
    stor10 = 0x668b53a4399a9c5072170161ab6434db6e0297cc
    stor11 = 0x33bdc3912bfed78e3b859f23bdae4c414cb91eb1
    stor12 = 0x8ab83928f45d70682e458f9f4d103715ad4b1020
    stor13 = 0x4eea9723961a0c683855a8203e2b3ecbf56c6486
    stor14 = 0x981e8b390adc58542d80bfb6854c4b3fd6df520c
    stor16 = 0
    stor17 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 0
    stor15[stor10] = 1
    stor15[stor11] = 1
    stor15[stor12] = 1
    stor15[stor13] = 1
    stor15[stor14] = 1
    stor18 = block.timestamp
    stor2 = 0
    stor5 = 0
    stor7 = 0
    return code.data[380 len 4388]
}



// =====================  Runtime code  =====================


address owner;
uint256 collectedFee;
uint256 investorsCount;
mapping of uint256 stor3;
mapping of struct investor;
uint256 proposalsCount;
mapping of struct stor6;
uint256 sub_0c21a8d2;
mapping of uint256 stor8;
mapping of struct sub_eb876f27;
address sub_e1712346Address;
address sub_b515d0edAddress;
address sub_f2a82c3dAddress;
address sub_f7091e6fAddress;
address sub_b7d67a38Address;
mapping of struct signs;
uint256 approves;
uint256 sub_af20486b;
uint256 sub_7b8d3804;

function proposalsCount() {
    return proposalsCount
}

function sub_0c21a8d2(?) {
    return sub_0c21a8d2
}

function investorsCount() {
    return investorsCount
}

function signs(address arg1) {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'signs', 15))))))), 
           bool(signs[arg1].field_8)
}

function sub_7b8d3804(?) {
    return sub_7b8d3804
}

function owner() {
    return owner
}

function sub_af20486b(?) {
    return sub_af20486b
}

function sub_b515d0ed(?) {
    return sub_b515d0edAddress
}

function sub_b7d67a38(?) {
    return sub_b7d67a38Address
}

function getInvestor(uint256 arg1) {
    return investor[arg1].field_0, investor[arg1].field_256, investor[arg1].field_512
}

function sub_e1712346(?) {
    return sub_e1712346Address
}

function collectedFee() {
    return collectedFee
}

function sub_eb876f27(?) {
    return sub_eb876f27[arg1].field_0, sub_eb876f27[arg1].field_256, sub_eb876f27[arg1].field_512
}

function sub_f2a82c3d(?) {
    return sub_f2a82c3dAddress
}

function sub_f7091e6f(?) {
    return sub_f7091e6fAddress
}

function approves() {
    return approves
}

function approve() {
    require signs[address(msg.sender)].field_8
    if not ('signextend', 0, ('signextend', 0, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'signs', 15)))))):
        signs[address(msg.sender)].field_0 = 1
        approves++
    else:
        if -1 == ('signextend', 0, ('signextend', 0, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'signs', 15)))))):
            signs[address(msg.sender)].field_0 = 1
            approves++
            sub_af20486b--
    if approves < 3:
    idx = 1
    while idx <= sub_0c21a8d2:
        mem[0] = idx
        mem[32] = 9
        call sub_eb876f27[idx].field_0 with:
           value sub_eb876f27[idx].field_512 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function decline() {
    require signs[address(msg.sender)].field_8
    if not ('signextend', 0, ('signextend', 0, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'signs', 15)))))):
        signs[address(msg.sender)].field_0 = 255
        sub_af20486b++
    else:
        if 1 == ('signextend', 0, ('signextend', 0, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'signs', 15)))))):
            signs[address(msg.sender)].field_0 = 255
            approves--
            sub_af20486b++
    if sub_af20486b < 3:
    selfdestruct(owner)
}

function _fallback() {
    revert
}

function sub_21dc1668(?) {
    return (sub_7b8d3804 + (168 * 24 * 3600))
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function cancelProposal(uint256 arg1) {
    require stor6[arg1].field_0 == stor3[address(msg.sender)]
    stor6[arg1].field_1280 = 1
    return 1
}

function collectFee() {
    require owner == msg.sender
    call msg.sender with:
       value collectedFee wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    collectedFee = 0
    return 1
}

function donate() payable {
    require msg.value > 0
    require msg.value + collectedFee >= collectedFee
    require msg.value + collectedFee >= msg.value
    collectedFee += msg.value
    return (msg.value + collectedFee)
}

function getProposal(uint256 arg1) {
    return investor[stor6[arg1].field_0].field_0, 
           stor6[arg1].field_256,
           stor6[arg1].field_512,
           stor6[arg1].field_768,
           stor6[arg1].field_1024,
           bool(stor6[arg1].field_1280)
}

function sub_6ebb2e9a(?) {
    require stor3[address(msg.sender)] > 0
    require investor[stor3[address(msg.sender)]].field_512 <= arg1
    require arg1 <= investor[stor3[address(msg.sender)]].field_512
    investor[stor3[address(msg.sender)]].field_512 -= arg1
    require arg1 == (10000 * arg1 / 10000) + (arg1 % 10000)
    collectedFee = arg1 / 10000
    if arg1 / 10000 < 1:
        collectedFee = 1
    call msg.sender with:
       value arg1 - collectedFee wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 0
}

function sub_f12b8282(?) payable {
    if stor3[address(msg.sender)] > 0:
        require msg.value + investor[stor3[address(msg.sender)]].field_256 >= investor[stor3[address(msg.sender)]].field_256
        require msg.value + investor[stor3[address(msg.sender)]].field_256 >= msg.value
        investor[stor3[address(msg.sender)]].field_256 += msg.value
        proposalsCount++
        stor6[stor5 + 1].field_0 = stor3[address(msg.sender)]
    else:
        investorsCount++
        investor[stor2 + 1].field_0 = msg.sender
        investor[stor2 + 1].field_256 = msg.value
        investor[stor2 + 1].field_512 = 0
        stor3[address(msg.sender)] = investorsCount + 1
        proposalsCount++
        stor6[stor5 + 1].field_0 = investorsCount + 1
    stor6[stor5].field_256 = msg.value
    if arg1 < 0:
        stor6[stor5].field_512 = 10000
    else:
        if arg1 <= 100000:
            stor6[stor5].field_512 = arg1
        else:
            stor6[stor5].field_512 = 10000
    stor6[stor5].field_768 = msg.value
    stor6[stor5].field_1024 = 0
    stor6[stor5].field_1280 = 0
    return 0
}

function newRound() {
    if sub_7b8d3804 + (168 * 24 * 3600) < block.timestamp:
        return 0
    sub_7b8d3804 = block.timestamp
    idx = 1
    while idx <= proposalsCount:
        if stor6[idx].field_1280:
            require stor6[idx].field_256 + investor[stor6[idx].field_0].field_512 >= investor[stor6[idx].field_0].field_512
            require stor6[idx].field_256 + investor[stor6[idx].field_0].field_512 >= stor6[idx].field_256
            investor[stor6[idx].field_0].field_512 += stor6[idx].field_256
            stor6[idx].field_256 = 0
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_1024 > 0:
            require stor6[idx].field_1024 + investor[stor6[idx].field_0].field_512 >= investor[stor6[idx].field_0].field_512
            require stor6[idx].field_1024 + investor[stor6[idx].field_0].field_512 >= stor6[idx].field_1024
            investor[stor6[idx].field_0].field_512 += stor6[idx].field_1024
            mem[0] = idx
            mem[32] = 6
            stor6[idx].field_1024 = 0
            stor6[idx].field_768 = stor6[idx].field_256
        idx = idx + 1
        continue 
    idx = 1
    while idx <= sub_0c21a8d2:
        mem[0] = idx
        mem[32] = 9
        sub_eb876f27[idx].field_512 = 0
        idx = idx + 1
        continue 
    return 1
}

function sub_15df0a36(?) payable {
    mem[64] = 96
    require msg.value >= 10
    if arg1 < 0:
        require 100000 * msg.value == (10000 * 100000 * msg.value / 10000) + (100000 * msg.value % 10000)
        require var26003 <= proposalsCount
        mem[0] = var26003
        mem[32] = 6
        if 10000 > stor6[var26003].field_512:
            var26003 = var26003 + 1
            continue 
        mem[0] = var26003
        mem[32] = 6
        if 100000 * msg.value / 10000 > stor6[var26003].field_768:
            var26003 = var26003 + 1
            continue 
        require stor6[var26003].field_512 > 0
        require stor6[var26003].field_512
        require 100000 * msg.value == (stor6[var26003].field_512 * 100000 * msg.value / stor6[var26003].field_512) + (100000 * msg.value % stor6[var26003].field_512)
        require 100000 * msg.value / stor6[var26003].field_512 <= stor6[var26003].field_768
        stor6[var26003].field_768 -= 100000 * msg.value / stor6[var26003].field_512
        require msg.value + stor6[var26003].field_1024 >= stor6[var26003].field_1024
        require msg.value + stor6[var26003].field_1024 >= msg.value
        stor6[var26003].field_1024 += msg.value
        if stor8[address(msg.sender)] <= 0:
            sub_0c21a8d2++
            sub_eb876f27[stor7 + 1].field_0 = msg.sender
            sub_eb876f27[stor7 + 1].field_256 = msg.value
            sub_eb876f27[stor7 + 1].field_512 = 100000 * msg.value / stor6[var26003].field_512
        else:
            require msg.value + sub_eb876f27[stor8[address(msg.sender)]].field_256 >= sub_eb876f27[stor8[address(msg.sender)]].field_256
            require msg.value + sub_eb876f27[stor8[address(msg.sender)]].field_256 >= msg.value
            sub_eb876f27[stor8[address(msg.sender)]].field_256 += msg.value
            require (100000 * msg.value / stor6[var26003].field_512) + sub_eb876f27[stor8[address(msg.sender)]].field_512 >= sub_eb876f27[stor8[address(msg.sender)]].field_512
            require (100000 * msg.value / stor6[var26003].field_512) + sub_eb876f27[stor8[address(msg.sender)]].field_512 >= 100000 * msg.value / stor6[var26003].field_512
            sub_eb876f27[stor8[address(msg.sender)]].field_512 += 100000 * msg.value / stor6[var26003].field_512
    else:
        if arg1 > 1000:
            require 100000 * msg.value == (10000 * 100000 * msg.value / 10000) + (100000 * msg.value % 10000)
            require var27003 <= proposalsCount
            mem[0] = var27003
            mem[32] = 6
            if 10000 > stor6[var27003].field_512:
                var27003 = var27003 + 1
                continue 
            mem[0] = var27003
            mem[32] = 6
            if 100000 * msg.value / 10000 > stor6[var27003].field_768:
                var27003 = var27003 + 1
                continue 
            require stor6[var27003].field_512 > 0
            require stor6[var27003].field_512
            require 100000 * msg.value == (stor6[var27003].field_512 * 100000 * msg.value / stor6[var27003].field_512) + (100000 * msg.value % stor6[var27003].field_512)
            require 100000 * msg.value / stor6[var27003].field_512 <= stor6[var27003].field_768
            stor6[var27003].field_768 -= 100000 * msg.value / stor6[var27003].field_512
            require msg.value + stor6[var27003].field_1024 >= stor6[var27003].field_1024
            require msg.value + stor6[var27003].field_1024 >= msg.value
            stor6[var27003].field_1024 += msg.value
            if stor8[address(msg.sender)] <= 0:
                sub_0c21a8d2++
                sub_eb876f27[stor7 + 1].field_0 = msg.sender
                sub_eb876f27[stor7 + 1].field_256 = msg.value
                sub_eb876f27[stor7 + 1].field_512 = 100000 * msg.value / stor6[var27003].field_512
            else:
                require msg.value + sub_eb876f27[stor8[address(msg.sender)]].field_256 >= sub_eb876f27[stor8[address(msg.sender)]].field_256
                require msg.value + sub_eb876f27[stor8[address(msg.sender)]].field_256 >= msg.value
                sub_eb876f27[stor8[address(msg.sender)]].field_256 += msg.value
                require (100000 * msg.value / stor6[var27003].field_512) + sub_eb876f27[stor8[address(msg.sender)]].field_512 >= sub_eb876f27[stor8[address(msg.sender)]].field_512
                require (100000 * msg.value / stor6[var27003].field_512) + sub_eb876f27[stor8[address(msg.sender)]].field_512 >= 100000 * msg.value / stor6[var27003].field_512
                sub_eb876f27[stor8[address(msg.sender)]].field_512 += 100000 * msg.value / stor6[var27003].field_512
        else:
            require arg1 > 0
            require arg1
            require 100000 * msg.value == (arg1 * 100000 * msg.value / arg1) + (100000 * msg.value % arg1)
            require var26003 <= proposalsCount
            mem[0] = var26003
            mem[32] = 6
            if arg1 > stor6[var26003].field_512:
                var26003 = var26003 + 1
                continue 
            mem[0] = var26003
            mem[32] = 6
            if 100000 * msg.value / arg1 > stor6[var26003].field_768:
                var26003 = var26003 + 1
                continue 
            require stor6[var26003].field_512 > 0
            require stor6[var26003].field_512
            require 100000 * msg.value == (stor6[var26003].field_512 * 100000 * msg.value / stor6[var26003].field_512) + (100000 * msg.value % stor6[var26003].field_512)
            require 100000 * msg.value / stor6[var26003].field_512 <= stor6[var26003].field_768
            stor6[var26003].field_768 -= 100000 * msg.value / stor6[var26003].field_512
            require msg.value + stor6[var26003].field_1024 >= stor6[var26003].field_1024
            require msg.value + stor6[var26003].field_1024 >= msg.value
            stor6[var26003].field_1024 += msg.value
            if stor8[address(msg.sender)] <= 0:
                sub_0c21a8d2++
                sub_eb876f27[stor7 + 1].field_0 = msg.sender
                sub_eb876f27[stor7 + 1].field_256 = msg.value
                sub_eb876f27[stor7 + 1].field_512 = 100000 * msg.value / stor6[var26003].field_512
            else:
                require msg.value + sub_eb876f27[stor8[address(msg.sender)]].field_256 >= sub_eb876f27[stor8[address(msg.sender)]].field_256
                require msg.value + sub_eb876f27[stor8[address(msg.sender)]].field_256 >= msg.value
                sub_eb876f27[stor8[address(msg.sender)]].field_256 += msg.value
                require (100000 * msg.value / stor6[var26003].field_512) + sub_eb876f27[stor8[address(msg.sender)]].field_512 >= sub_eb876f27[stor8[address(msg.sender)]].field_512
                require (100000 * msg.value / stor6[var26003].field_512) + sub_eb876f27[stor8[address(msg.sender)]].field_512 >= 100000 * msg.value / stor6[var26003].field_512
                sub_eb876f27[stor8[address(msg.sender)]].field_512 += 100000 * msg.value / stor6[var26003].field_512
    return 0
}



}
