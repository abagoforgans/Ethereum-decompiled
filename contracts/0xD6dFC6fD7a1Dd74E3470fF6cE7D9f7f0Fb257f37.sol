contract main {




// =====================  Runtime code  =====================


array of struct sub_6fca1744;
array of struct sub_9d076351;

function sub_6fca1744(?) {
    return sub_6fca1744[arg1][0 len sub_6fca1744[arg1].length].field_0
}

function sub_9d076351(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_9d076351[arg1].field_0
    return sub_9d076351[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function signDocument(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not sub_6fca1744[arg1].length:
        revert with 0, 'Document is not submitted'
    idx = 0
    while idx < sub_9d076351[arg1].field_0:
        mem[0] = sha3(arg1, 1)
        if sub_9d076351[arg1][idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
    sub_9d076351[arg1].field_0++
    sub_9d076351[arg1][sub_9d076351[arg1].field_0].field_0 = msg.sender or Mask(96, 160, sub_9d076351[arg1][sub_9d076351[arg1].field_0].field_0)
}

function getHash(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from arg1.length + ceil32(arg1.length) + 160
       len 32
}

function submitDocument(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if not sub_6fca1744[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].length:
        sub_6fca1744[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][].field_0 = Array(len=arg1.length, data=arg1[all])
        mem[arg1.length + ceil32(arg1.length) + 160] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        emit 0x2a49d2e2: mem[arg1.length + ceil32(arg1.length) + 160]
}

function sub_85395d25(?) {
    require calldata.size - 4 >= 32
    if not sub_6fca1744[arg1].length:
        revert with 0, 'Document is not submitted'
    mem[128] = sub_6fca1744[arg1].field_0
    idx = 128
    s = 0
    while sub_6fca1744[arg1].length + 96 > idx:
        mem[idx + 32] = sub_6fca1744[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_9d076351[arg1].field_0:
        mem[ceil32(sub_6fca1744[arg1].length) + 160] = sub_9d076351[arg1].field_0
        idx = ceil32(sub_6fca1744[arg1].length) + 160
        s = 0
        while ceil32(sub_6fca1744[arg1].length) + (32 * sub_9d076351[arg1].field_0) + 128 > idx:
            mem[idx + 32] = sub_9d076351[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[ceil32(sub_6fca1744[arg1].length) + (32 * sub_9d076351[arg1].field_0) + 256 len ceil32(sub_6fca1744[arg1].length)] = mem[128 len ceil32(sub_6fca1744[arg1].length)]
    mem[sub_6fca1744[arg1].length + ceil32(sub_6fca1744[arg1].length) + (32 * sub_9d076351[arg1].field_0) + 256] = sub_9d076351[arg1].field_0
    mem[sub_6fca1744[arg1].length + ceil32(sub_6fca1744[arg1].length) + (32 * sub_9d076351[arg1].field_0) + 288 len floor32(sub_9d076351[arg1].field_0)] = mem[ceil32(sub_6fca1744[arg1].length) + 160 len floor32(sub_9d076351[arg1].field_0)]
    return Array(len=sub_6fca1744[arg1].length, data=mem[128 len ceil32(sub_6fca1744[arg1].length)], mem[(2 * ceil32(sub_6fca1744[arg1].length)) + (32 * sub_9d076351[arg1].field_0) + 256 len (32 * sub_9d076351[arg1].field_0) + sub_6fca1744[arg1].length + -ceil32(sub_6fca1744[arg1].length) + 32]), 
           sub_6fca1744[arg1].length + 96
}



}
