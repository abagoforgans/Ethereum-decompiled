contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = code.data[2898 len 32]
    stor2 = code.data[2930 len 32]
    stor4 = code.data[2930 len 32]
    stor3 = code.data[2962 len 32]
    stor5 = code.data[2994 len 32]
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[86 len 2812]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of struct actionStatus;
mapping of uint8 stor8;
array of struct stor9;
mapping of uint8 isMember;
mapping of uint8 stor11;

function isMember(address arg1) payable {
    return isMember[address(arg1)]
}

function getActionStatus(uint256 arg1) payable {
    return actionStatus[arg1].field_768, actionStatus[arg1].field_1024, actionStatus[arg1].field_1536
}

function getInfo() payable {
    return stor1, stor2, stor5, stor6
}

function addMember(address arg1, bool arg2) payable {
    require msg.sender == stor0
    require not isMember[address(arg1)]
    isMember[address(arg1)] = 1
    if arg2:
        stor11[address(arg1)] = 1
    emit MemberAdded(arg1);
    stor4--
    if 0 == stor4 - 1:
        stor0 = 0
}

function _fallback() payable {
    stor9[address(msg.sender)].field_0 = (2 * calldata.size) + 1
    s = 0
    idx = 0
    while calldata.size > idx:
        stor9[address(msg.sender)][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, calldata.size + 31) >> 5
    while stor9[address(msg.sender)].length + 31 / 32 > idx:
        stor9[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function propose(address arg1, bytes arg2, uint256 arg3) payable {
    stor6++
    actionStatus[stor6 + 1].field_0 = arg1
    actionStatus[stor6 + 1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    actionStatus[stor6 + 1].field_512 = arg3
    actionStatus[stor6 + 1].field_768 = 0
    actionStatus[stor6 + 1].field_1024 = block.timestamp + stor5
    actionStatus[stor6 + 1].field_1280 = 0
    actionStatus[stor6 + 1].field_1536 = 0
    emit Proposed(Array(len=arg2.length, data=arg2[all]), stor6);
    return stor6
}

function easyPropose(address arg1, uint256 arg2) payable {
    mem[128] = stor9[address(msg.sender)].field_0
    idx = 128
    s = 0
    while stor9[address(msg.sender)].length + 96 > idx:
        mem[idx + 32] = stor9[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    stor6++
    actionStatus[stor6 + 1].field_0 = arg1
    actionStatus[stor6 + 1][1][].field_0 = Array(len=stor9[address(msg.sender)].length, data=mem[128 len stor9[address(msg.sender)].length])
    actionStatus[stor6 + 1].field_512 = arg2
    actionStatus[stor6 + 1].field_768 = 0
    actionStatus[stor6 + 1].field_1024 = block.timestamp + stor5
    actionStatus[stor6 + 1].field_1280 = 0
    actionStatus[stor6 + 1].field_1536 = 0
    emit Proposed(Array(len=stor9[address(msg.sender)].length, data=mem[128 len stor9[address(msg.sender)].length]), stor6);
    return stor6
}

function confirm(uint256 arg1) payable {
    require isMember[address(msg.sender)]
    require not stor8[arg1][address(msg.sender)]
    require arg1 <= stor6
    require block.timestamp <= actionStatus[arg1].field_1024
    require not actionStatus[arg1].field_1536
    stor8[arg1][address(msg.sender)] = 1
    actionStatus[arg1].field_768++
    if stor11[address(msg.sender)]:
        actionStatus[arg1].field_1280++
    actionStatus[arg1].field_0 = actionStatus[arg1].field_0
    if 31 >= actionStatus[arg1][1].length:
        idx = 0
        while actionStatus[arg1][1].length + 31 / 32 > idx:
            actionStatus[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        actionStatus[arg1].field_256 = Mask(255, 1, actionStatus[arg1].field_256 and (256 * not actionStatus[arg1].field_256) - 1) + 1
        if not Mask(255, 1, actionStatus[arg1].field_256 and (256 * not actionStatus[arg1].field_256) - 1):
            idx = 0
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][s + 1].field_0 = actionStatus[arg1][idx + 1].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = actionStatus[arg1][1].length + 31 / 32
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    actionStatus[arg1].field_1536 = actionStatus[arg1].field_1536
    emit Confirmed(msg.sender, arg1);
    return 0
}

function trigger(uint256 arg1) payable {
    require actionStatus[arg1].field_768 >= stor1
    require actionStatus[arg1].field_1280 >= stor3
    require block.timestamp <= actionStatus[arg1].field_1024
    require not actionStatus[arg1].field_1536
    require eth.balance(this.address) >= actionStatus[arg1].field_512
    actionStatus[arg1].field_1536 = 1
    mem[128] = actionStatus[arg1][1].field_0
    idx = 128
    s = 0
    while actionStatus[arg1][1].length + 96 > idx:
        mem[idx + 32] = actionStatus[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(actionStatus[arg1][1].length) + 128 len actionStatus[arg1][1].length] = mem[128 len actionStatus[arg1][1].length]
    if not actionStatus[arg1][1].length % 32:
        call actionStatus[arg1].field_0.mem[ceil32(actionStatus[arg1][1].length) + 128 len 4] with:
           value actionStatus[arg1].field_512 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(actionStatus[arg1][1].length) + 132 len actionStatus[arg1][1].length - 4]
    else:
        mem[floor32(actionStatus[arg1][1].length) + ceil32(actionStatus[arg1][1].length) + 128] = mem[floor32(actionStatus[arg1][1].length) + ceil32(actionStatus[arg1][1].length) + -actionStatus[arg1][1].length % 32 + 160 len actionStatus[arg1][1].length % 32]
        call actionStatus[arg1].field_0.mem[ceil32(actionStatus[arg1][1].length) + 128 len 4] with:
           value actionStatus[arg1].field_512 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(actionStatus[arg1][1].length) + 132 len floor32(actionStatus[arg1][1].length) + 28]
    require ext_call.success
    actionStatus[arg1].field_0 = actionStatus[arg1].field_0
    if 31 >= actionStatus[arg1][1].length:
        idx = 0
        while actionStatus[arg1][1].length + 31 / 32 > idx:
            actionStatus[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        actionStatus[arg1].field_256 = Mask(255, 1, actionStatus[arg1].field_256 and (256 * not actionStatus[arg1].field_256) - 1) + 1
        if not Mask(255, 1, actionStatus[arg1].field_256 and (256 * not actionStatus[arg1].field_256) - 1):
            idx = 0
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][s + 1].field_0 = actionStatus[arg1][idx + 1].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = actionStatus[arg1][1].length + 31 / 32
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    actionStatus[arg1].field_1536 = actionStatus[arg1].field_1536
    emit Triggered(arg1);
}



}
