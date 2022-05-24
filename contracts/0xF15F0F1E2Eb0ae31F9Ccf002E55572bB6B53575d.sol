contract main {




// =====================  Runtime code  =====================


const getContractInformation = 160, 288, 352, 416, 480, 69, 'ContractType - Translation into ', 'Spanish, German and French langu', 'ages
' >> 256, Mask(40, -512, 'ContractType - Translation into ', 'Spanish, German and French langu', 'ages
') << 728, 15, 'JobHours - 126
' << 136, 19, 'ContractCost = 342
' << 104, 11, 'Stages = 3
' << 168, 22, Mask(176, 0, 'QuantityOfParties = 5
')


array of struct messages;
array of uint256 sub_bad69369;
array of uint256 sub_2f4d1421;
array of uint256 sub_6b389482;
array of struct data;
mapping of uint256 stor99;

function sub_2f4d1421(?) {
    return sub_2f4d1421[arg1][0 len sub_2f4d1421[arg1].length]
}

function sub_48145c81(?) {
    return sub_48145c81[0 len sub_48145c81.length]
}

function getMessages() {
    return messages[0 len messages.length].field_0
}

function sub_6b389482(?) {
    require arg1 < sub_6b389482.length
    return sub_6b389482[arg1]
}

function sub_bad69369(?) {
    return sub_bad69369[arg1][0 len sub_bad69369[arg1].length]
}

function data(uint256 arg1) {
    require arg1 < data.length
    mem[128] = data[arg1].field_0
    idx = 128
    s = 0
    while data[arg1].length + 96 > idx:
        mem[idx + 32] = data[(5 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=data[arg1].length, data=mem[128 len data[arg1].length]), 
           data[arg1].field_256,
           data[arg1].field_512,
           data[arg1].field_768,
           data[arg1].field_1024
}

function _fallback() payable {
    revert
}

function sub_35b4a65b(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 10
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_f976ae5c(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = messages.length
    mem[0] = 0
    mem[ceil32(arg1.length) + 160] = uint256(messages.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + messages.length + 128 > idx:
        mem[idx + 32] = messages[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(messages.length) + 160] = 1
    mem[ceil32(arg1.length) + ceil32(messages.length) + 192] = ' '
    mem[ceil32(arg1.length) + ceil32(messages.length) + 224] = messages.length + arg1.length + 1
    mem[64] = ceil32(arg1.length) + ceil32(messages.length) + floor32(messages.length + arg1.length + 32) + 256
    if messages.length + arg1.length + 1:
        mem[ceil32(arg1.length) + ceil32(messages.length) + 256 len 32 * messages.length + arg1.length + 1] = code.data[3561 len 32 * messages.length + arg1.length + 1]
    idx = 0
    s = 0
    while idx < messages.length:
        require idx < messages.length
        require s < messages.length + arg1.length + 1
        mem[ceil32(arg1.length) + ceil32(messages.length) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = messages.length
    while idx < mem[ceil32(arg1.length) + ceil32(messages.length) + 160]:
        require idx < mem[ceil32(arg1.length) + ceil32(messages.length) + 160]
        require s < mem[ceil32(arg1.length) + ceil32(messages.length) + 224]
        mem[ceil32(arg1.length) + ceil32(messages.length) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'messages', 0))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'messages', 0))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = messages.length + 1
    while idx < mem[96]:
        require idx < mem[96]
        require s < mem[ceil32(arg1.length) + ceil32(messages.length) + 224]
        mem[ceil32(arg1.length) + ceil32(messages.length) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    messages[].field_0 = Array(len=mem[ceil32(arg1.length) + ceil32(messages.length) + 224], data=mem[ceil32(arg1.length) + ceil32(messages.length) + 256 len mem[ceil32(arg1.length) + ceil32(messages.length) + 224]])
    return 'The message is formed!'
}



}
