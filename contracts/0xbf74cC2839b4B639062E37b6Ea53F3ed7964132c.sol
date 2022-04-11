contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
array of address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor9;
uint256 stor11;

function _fallback() payable {
    stor4 = 1
    stor5 = 1
    stor6 = 0
    stor9 = 0
    stor11 = 0
    require not msg.value
    mem[96 len -2890] = code.data[3324 len -2890]
    mem[64] = -2794
    require mem[128] >= 1
    require mem[160] >= 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        mem[32] = 1
        stor1[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            s = stor2.length + sha3(2) + 1
            while sha3(2) + stor2.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 2
        require idx < mem[mem[96] + 96]
        stor2[stor2.length] = mem[(32 * idx) + mem[96] + 140 len 20]
        idx = idx + 1
        continue 
    stor3 = mem[mem[96] + 96]
    stor0 = msg.sender
    stor4 = mem[128]
    stor5 = mem[160]
    return code.data[434 len 2890]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of address auditorsList;
uint256 nAuditors;
uint256 nAuditorsRequired;
uint256 nAuditorsAlarm;
uint256 nAlarms;
array of uint256 alarms;
mapping of uint8 stor8;
uint256 nMsg;
array of struct msgMap;
uint256 nMsgsWaiting;
array of struct stor12;
mapping of uint8 stor13;

function msgsWaitingDone(uint256 arg1) {
    return bool(stor13[arg1])
}

function auditorsList(uint256 arg1) {
    require arg1 < auditorsList.length
    return auditorsList[arg1]
}

function nMsg() {
    return nMsg
}

function auditors(address arg1) {
    return bool(stor1[arg1])
}

function nAuditorsRequired() {
    return nAuditorsRequired
}

function nAuditors() {
    return nAuditors
}

function alarmRaised(uint256 arg1) {
    return bool(stor8[arg1])
}

function nAuditorsAlarm() {
    return nAuditorsAlarm
}

function owner() {
    return owner
}

function alarms(uint256 arg1) {
    require arg1 < alarms.length
    return alarms[arg1]
}

function nMsgsWaiting() {
    return nMsgsWaiting
}

function msgMap(uint256 arg1) {
    mem[192] = msgMap[arg1].field_0
    idx = 192
    s = 0
    while msgMap[arg1].length + 192 > idx + 32:
        mem[idx + 32] = msgMap[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=msgMap[arg1].length, data=mem[192 len msgMap[arg1].length + (floor32(msgMap[arg1].length - 1) + -msgMap[arg1].length + 32 % 32)]), 
           msgMap[arg1].field_256
}

function nAlarms() {
    return nAlarms
}

function _fallback() payable {
    revert
}

function addAnn(string arg1) {
    require owner == msg.sender
    require arg1.length > 0
    stor12[stor11].field_0 = 0
    stor12[stor11].field_256 = 0
    stor12[stor11][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor12[stor11].field_768 = block.timestamp
    nMsgsWaiting++
}

function getMsgWaiting(uint256 arg1) {
    mem[160] = stor12[arg1][2].field_0
    idx = 160
    s = 0
    while stor12[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor12[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor12[arg1][2].length) + 160] = stor12[arg1].field_0
    mem[ceil32(stor12[arg1][2].length) + 192] = stor12[arg1].field_256
    mem[ceil32(stor12[arg1][2].length) + 256] = stor12[arg1].field_768
    mem[ceil32(stor12[arg1][2].length) + 288] = bool(stor8[arg1])
    mem[ceil32(stor12[arg1][2].length) + 224] = 160
    mem[ceil32(stor12[arg1][2].length) + 320] = stor12[arg1][2].length
    if stor12[arg1][2].length:
        mem[ceil32(stor12[arg1][2].length) + 352] = mem[160]
        mem[ceil32(stor12[arg1][2].length) + 384 len floor32(stor12[arg1][2].length - 1)] = mem[192 len floor32(stor12[arg1][2].length - 1)]
    return stor12[arg1].field_0, 
           stor12[arg1].field_256,
           Array(len=stor12[arg1][2].length, data=mem[ceil32(stor12[arg1][2].length) + 352 len stor12[arg1][2].length]),
           stor12[arg1].field_768,
           bool(stor8[arg1])
}

function addAudit(uint256 arg1, bool arg2) {
    require bool(stor1[address(msg.sender)]) == 1
    require not stor13[arg1]
    require not stor12[arg1][4][address(msg.sender)].field_0
    require not stor12[arg1][5][address(msg.sender)].field_0
    require not stor8[arg1]
    if arg2 != 1:
        stor12[arg1].field_256++
        stor12[arg1][5][address(msg.sender)].field_0 = 1
    else:
        stor12[arg1].field_0++
        stor12[arg1][4][address(msg.sender)].field_0 = 1
    if stor12[arg1].field_0 < nAuditorsRequired:
        if stor12[arg1].field_256 >= nAuditorsAlarm:
            stor13[arg1] = 1
            stor8[arg1] = 1
            alarms.length++
            if not alarms.length <= alarms.length + 1:
                idx = alarms.length + 1
                while alarms.length > idx:
                    alarms[idx] = 0
                    idx = idx + 1
                    continue 
            alarms[alarms.length] = arg1
            nAlarms++
    else:
        if stor12[arg1].field_256 >= nAuditorsAlarm:
            stor13[arg1] = 1
            stor8[arg1] = 1
            alarms.length++
            if not alarms.length <= alarms.length + 1:
                idx = alarms.length + 1
                while alarms.length > idx:
                    alarms[idx] = 0
                    idx = idx + 1
                    continue 
            alarms[alarms.length] = arg1
            nAlarms++
        else:
            mem[192] = stor12[arg1][2].field_0
            idx = 192
            s = 0
            while stor12[arg1][2].length + 192 > idx + 32:
                mem[idx + 32] = stor12[arg1][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            msgMap[stor9][].field_0 = Array(len=stor12[arg1][2].length, data=mem[192 len stor12[arg1][2].length])
            msgMap[stor9].field_256 = stor12[arg1].field_768
            nMsg++
            stor13[arg1] = 1
            stor12[arg1].field_0 = 0
            stor12[arg1].field_256 = 0
            stor12[arg1].field_512 = 0
            if 31 < stor12[arg1][2].length:
                idx = 0
                while stor12[arg1][2].length + 31 / 32 > idx:
                    stor12[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            stor12[arg1].field_768 = 0
}



}
