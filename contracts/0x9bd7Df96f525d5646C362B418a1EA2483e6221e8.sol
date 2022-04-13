contract main {


// =======================  Init code  ======================


uint8 stor1;
address stor4;

function _fallback() {
    stor4 = msg.sender
    stor1 = 0
    return code.data[134 len 9057]
}



// =====================  Runtime code  =====================


#
#  - contributeToPrizePool(string arg1, string arg2, string arg3)
#
uint256 prizePoolSize;
array of uint256 stor1;
mapping of struct stor2;
mapping of struct stor3;
address stor4;
array of address stor5;
array of address stor6;
array of struct stor7;
array of uint256 stor99;

function currentPeriod() {
    require uint8(stor1.length) <= 4
    return uint8(stor1.length)
}

function totalContribution() {
    return prizePoolSize
}

function getPrizePoolSize() {
    return prizePoolSize
}

function checkJuryVoted(address arg1) {
    require Mask(255, 1, (256 * not bool(stor3[address(arg1)].field_0)) - 1 and stor3[address(arg1)].field_0)
    return bool(uint8(stor3[address(arg1)].field_256))
}

function _fallback() payable {
    revert
}

function restartPeriod() {
    require msg.sender == stor4
    uint8(stor1.length) = 0
}

function getUserType(address arg1) {
    if arg1 == stor4:
        return 'administrator'
    if stor3[address(arg1)].length <= 0:
        return 'other'
    return 'jury'
}

function disqualifyTeam(address arg1) {
    require msg.sender == stor4
    require stor2[address(arg1)].length > 0
    Mask(240, 0, stor2[address(arg1)].field_1040) = 1
    emit TeamDisqualified(arg1);
}

function returnContributionsToTheSponsors() {
    require msg.sender == stor4
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        call address(stor7[idx].field_768) with:
           value stor7[idx].field_1024 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
}

function switchToNextPeriod() {
    require msg.sender == stor4
    require uint8(stor1.length) <= 4
    if uint8(stor1.length) != 3:
        require uint8(stor1.length) <= 4
        if uint8(stor1.length) != 4:
            require uint8(stor1.length) <= 4
            require uint8(stor1.length) + 1 <= 4
            stor1.length = uint8(stor1.length) + 1 or Mask(248, 8, stor1.length)
            require uint8(stor1.length) <= 4
            emit PeriodChanged(uint8(stor1.length));
}

function registerJuryMember(string arg1, address arg2) {
    require msg.sender == stor4
    require uint8(stor1.length) <= 4
    require not uint8(stor1.length)
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = stor6.length + 1
        while stor6.length > idx:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
    address(stor6[stor6.length]) = arg2
    stor3[address(arg2)][].field_0 = Array(len=arg1.length, data=arg1[all])
    uint8(stor3[address(arg2)].field_256) = 0
    emit JuryMemberAdded(Array(len=arg1.length, data=arg1[all]), address(arg2));
}

function vote(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor3[address(msg.sender)].length > 0
    require uint8(stor1.length) <= 4
    require uint8(stor1.length) == 2
    require arg1.length == stor5.length
    mem[0] = msg.sender
    require not uint8(stor3[address(msg.sender)].field_256)
    s = 0
    idx = 0
    t = mem[96]
    while idx < arg1.length:
        require idx < mem[96]
        _25 = mem[(32 * idx) + 128]
        require stor2[mem[(32 * idx) + 140 len 20]].length > 0
        require not uint8(stor2[address(mem[(32 * idx) + 128])][5][address(msg.sender)].field_0)
        stor2[address(mem[(32 * idx) + 128])].field_512 += t
        uint8(stor2[address(mem[(32 * idx) + 128])][5][address(msg.sender)].field_0) = 1
        mem[0] = msg.sender
        mem[32] = 3
        _33 = mem[64]
        mem[mem[64] + 32] = t
        mem[mem[64]] = 64
        mem[mem[64] + 64] = stor3[address(msg.sender)].length
        mem[0] = sha3(address(msg.sender), 3)
        mem[mem[64] + 96] = stor3[address(msg.sender)].field_0
        u = mem[64] + 96
        s = sha3(sha3(address(msg.sender), 3))
        while mem[64] + stor3[address(msg.sender)].length + 96 > u + 32:
            mem[u + 32] = uint256(stor1[s])
            u = u + 32
            s = s + 1
            continue 
        emit VoteReceived(string rg1, address rg2, uint256 rg3):
                          mem[mem[64] len _33 + stor3[address(msg.sender)].length + (floor32(stor3[address(msg.sender)].length - 1) + -stor3[address(msg.sender)].length + 32 % 32) + -mem[64] + 96],
                          address(_25),
        u = _25
        s = sha3(sha3(address(msg.sender), 3)) + (Mask(251, 0, stor3[address(msg.sender)].length - 1) >> 5) + 1
        t = t - 1
        continue 
    uint8(stor3[address(msg.sender)].field_256) = 1
}

function registerTeam(string arg1, address arg2, string arg3, bool arg4) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    require msg.sender == stor4
    require uint8(stor1.length) <= 4
    require not uint8(stor1.length)
    require not Mask(255, 1, (256 * not bool(stor2[address(arg2)].field_0)) - 1 and stor2[address(arg2)].field_0)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = 96
    stor2[address(arg2)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor2[address(arg2)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor2[address(arg2)].field_512 = 0
    stor2[address(arg2)].field_768 = 0
    uint8(stor2[address(arg2)].field_1024) = uint8(arg4)
    Mask(248, 0, stor2[address(arg2)].field_1032) = 0
    Mask(240, 0, stor2[address(arg2)].field_1040) = 0
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    address(stor5[stor5.length]) = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 544 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 544] = arg3.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit TeamRegistered(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg3.length) + 544 len arg3.length + arg1.length + -ceil32(arg1.length) + 32]), address(arg2), arg1.length + 160, arg4);
    else:
        mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
        emit TeamRegistered(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg3.length) + 544 len floor32(arg3.length) + arg1.length + -ceil32(arg1.length) + 64]), address(arg2), arg1.length + 160, arg4);
}

function payoutPrizes(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor4
    require uint8(stor1.length) <= 4
    require uint8(stor1.length) == 3
    require arg1.length == stor5.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require stor2[mem[(32 * idx) + 140 len 20]].length > 0
        require idx < arg1.length
        if idx != arg1.length - 1:
            require idx + 1 < arg1.length
            require stor2[mem[(32 * idx + 1) + 140 len 20]].field_512 <= stor2[mem[(32 * idx) + 140 len 20]].field_512
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        Mask(248, 0, stor2[mem[(32 * idx) + 140 len 20]].field_1032) = 1
        idx = idx + 1
        continue 
    s = 0
    s = 2
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require uint8(stor2[mem[(32 * idx) + 140 len 20]].field_1032)
        require s
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if not uint8(stor2[mem[(32 * idx) + 140 len 20]].field_1024):
            s = prizePoolSize / s
            s = s
            idx = idx + 1
            continue 
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if uint8(stor2[mem[(32 * idx) + 140 len 20]].field_1040):
            s = prizePoolSize / s
            s = s
            idx = idx + 1
            continue 
        require idx < mem[96]
        call mem[(32 * idx) + 140 len 20] with:
           value prizePoolSize / s wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < mem[96]
        stor2[mem[(32 * idx) + 140 len 20]].field_768 = prizePoolSize / s
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        _118 = sha3(mem[(32 * idx) + 140 len 20], 2)
        mem[mem[64] + 32] = prizePoolSize / s
        mem[mem[64]] = 64
        mem[mem[64] + 64] = stor[_118].length
        mem[0] = _118
        mem[mem[64] + 96] = stor[sha3(_118)]
        t = mem[64] + 96
        u = sha3(_118)
        while mem[64] + stor[_118].length + 96 > t + 32:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        emit PrizePaid(Array(len=stor[_118].length, data=mem[mem[64] + 96 len stor[_118].length + (floor32(stor[_118].length - 1) + -stor[_118].length + 32 % 32)]), prizePoolSize / s);
        s = prizePoolSize / s
        s = 2 * s
        idx = idx + 1
        continue 
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    uint8(stor1.length) = 4
    require uint8(stor1.length) <= 4
    emit PeriodChanged(uint8(stor1.length));
}



}
