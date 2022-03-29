contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor3;

function _fallback() payable {
    mem[96 len -1471] = code.data[1762 len -1471]
    mem[64] = -1375
    stor1 = mem[108 len 20]
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor0 = msg.sender
    return code.data[291 len 1471]
}



// =====================  Runtime code  =====================


address requestorAddress;
address testerAddress;
uint256 requestTime;
array of uint256 sub_7d23af49;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of struct stor8;
uint8 status;

function status() {
    require status <= 4
    return status
}

function sub_7d23af49(?) {
    return sub_7d23af49[0 len sub_7d23af49.length]
}

function tester() {
    return testerAddress
}

function requestTime() {
    return requestTime
}

function requestor() {
    return requestorAddress
}

function _fallback() {
    revert
}

function updateStatus(uint8 arg1) {
    require testerAddress == msg.sender
    require arg1 <= 4
    status = arg1
    emit StatusUpdated(arg1);
}

function sub_7839ec71(?) {
    require testerAddress == msg.sender
    stor4 = arg1
    stor5 = arg2
    stor6 = arg3
    stor7 = arg4
    stor8[].field_0 = Array(len=arg5.length, data=arg5[all])
    require testerAddress == msg.sender
    status = 4
    emit StatusUpdated(4);
    emit 0x8d6f7960 
}

function testResult() {
    mem[288] = uint256(stor8.field_0)
    idx = 288
    s = 0
    while stor8.length + 288 > idx + 32:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor4, 
           stor5,
           stor6,
           stor7,
           Array(len=stor8.length, data=mem[288 len stor8.length + (floor32(stor8.length - 1) + -stor8.length + 32 % 32)])
}



}
