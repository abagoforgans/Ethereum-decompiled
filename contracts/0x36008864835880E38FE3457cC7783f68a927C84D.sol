contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    mem[96 len -3701] = code.data[4086 len -3701]
    mem[64] = -3605
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[385 len 3701]
}



// =====================  Runtime code  =====================


address stor0;
array of struct sub_9e116d18;
array of struct events;
array of struct sub_652dbd8b;
array of struct sub_d0910d76;

function getEvents() {
    return events[0 len events.length].field_0
}

function sub_652dbd8b(?) {
    return sub_652dbd8b[0 len sub_652dbd8b.length].field_0
}

function sub_9e116d18(?) {
    return sub_9e116d18[0 len sub_9e116d18.length].field_0
}

function sub_d0910d76(?) {
    return sub_d0910d76[0 len sub_d0910d76.length].field_0
}

function _fallback() payable {
    revert
}

function sub_00182f92(?) {
    require stor0 == msg.sender
    events[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 224] = msg.sender
    mem[ceil32(arg1.length) + 256] = 23
    mem[ceil32(arg1.length) + 288] = 0x6368616e676520636f6e74726163742064657461696c730000000000000000
    emit 0xa9eae1f4: 96, block.timestamp, msg.sender, 23, 0x6368616e676520636f6e74726163742064657461696c730000000000000000
    mem[ceil32(arg1.length) + 192] = uint256(events.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + events.length + 160 > idx:
        mem[idx + 32] = events[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=events.length, data=mem[ceil32(arg1.length) + 192 len events.length])
}

function sub_1b95d7f0(?) {
    require stor0 == msg.sender
    sub_652dbd8b[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 224] = msg.sender
    mem[ceil32(arg1.length) + 256] = 23
    mem[ceil32(arg1.length) + 288] = 0x6368616e676520636f6e74726163742064657461696c730000000000000000
    emit 0xa9eae1f4: 96, block.timestamp, msg.sender, 23, 0x6368616e676520636f6e74726163742064657461696c730000000000000000
    mem[ceil32(arg1.length) + 192] = uint256(sub_652dbd8b.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + sub_652dbd8b.length + 160 > idx:
        mem[idx + 32] = sub_652dbd8b[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_652dbd8b.length, data=mem[ceil32(arg1.length) + 192 len sub_652dbd8b.length])
}

function sub_3deaa94b(?) {
    require stor0 == msg.sender
    sub_d0910d76[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 224] = msg.sender
    mem[ceil32(arg1.length) + 256] = 23
    mem[ceil32(arg1.length) + 288] = 0x6368616e676520636f6e74726163742064657461696c730000000000000000
    emit 0xa9eae1f4: 96, block.timestamp, msg.sender, 23, 0x6368616e676520636f6e74726163742064657461696c730000000000000000
    mem[ceil32(arg1.length) + 192] = uint256(sub_d0910d76.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + sub_d0910d76.length + 160 > idx:
        mem[idx + 32] = sub_d0910d76[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_d0910d76.length, data=mem[ceil32(arg1.length) + 192 len sub_d0910d76.length])
}

function sub_4f98320d(?) {
    require stor0 == msg.sender
    sub_9e116d18[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 224] = msg.sender
    mem[ceil32(arg1.length) + 256] = 23
    mem[ceil32(arg1.length) + 288] = 0x6368616e676520636f6e74726163742064657461696c730000000000000000
    emit 0xa9eae1f4: 96, block.timestamp, msg.sender, 23, 0x6368616e676520636f6e74726163742064657461696c730000000000000000
    mem[ceil32(arg1.length) + 192] = uint256(sub_9e116d18.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + sub_9e116d18.length + 160 > idx:
        mem[idx + 32] = sub_9e116d18[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_9e116d18.length, data=mem[ceil32(arg1.length) + 192 len sub_9e116d18.length])
}



}
