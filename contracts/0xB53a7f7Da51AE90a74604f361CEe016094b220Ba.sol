contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[3207 len 20]
    return code.data[75 len 3120]
}



// =====================  Runtime code  =====================


address sub_44624e34Address;
mapping of struct sub_5fa80c12;
mapping of struct content;
mapping of struct lookup;

function content(bytes32 arg1) {
    mem[192] = content[arg1].field_0
    idx = 192
    s = 0
    while content[arg1].length + 192 > idx + 32:
        mem[idx + 32] = content[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=content[arg1].length, data=mem[192 len content[arg1].length + (floor32(content[arg1].length - 1) + -content[arg1].length + 32 % 32)]), 
           content[arg1].field_256
}

function sub_44624e34(?) {
    return sub_44624e34Address
}

function sub_5fa80c12(?) {
    return sub_5fa80c12[arg1].field_0, 
           sub_5fa80c12[arg1].field_256,
           sub_5fa80c12[arg1].field_512,
           sub_5fa80c12[arg1].field_768,
           sub_5fa80c12[arg1].field_1024,
           bool(sub_5fa80c12[arg1].field_1280)
}

function lookup(bytes32 arg1) {
    mem[288] = lookup[arg1].field_0
    idx = 288
    s = 0
    while lookup[arg1].length + 288 > idx + 32:
        mem[idx + 32] = lookup[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[lookup[arg1].length + (floor32(lookup[arg1].length - 1) + -lookup[arg1].length + 32 % 32) + 288] = lookup[arg1][2].length
    mem[lookup[arg1].length + (floor32(lookup[arg1].length - 1) + -lookup[arg1].length + 32 % 32) + 320] = lookup[arg1][2].field_0
    idx = lookup[arg1].length + (floor32(lookup[arg1].length - 1) + -lookup[arg1].length + 32 % 32) + 320
    s = 0
    while lookup[arg1].length + (floor32(lookup[arg1].length - 1) + -lookup[arg1].length + 32 % 32) + lookup[arg1][2].length + 320 > idx + 32:
        mem[idx + 32] = lookup[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=lookup[arg1].length, data=mem[288 len lookup[arg1].length + (floor32(lookup[arg1].length - 1) + -lookup[arg1].length + 32 % 32) + lookup[arg1][2].length + (floor32(lookup[arg1][2].length - 1) + -lookup[arg1][2].length + 32 % 32) + 32]), 
           lookup[arg1].field_256,
           lookup[arg1].length + (floor32(lookup[arg1].length - 1) + -lookup[arg1].length + 32 % 32) + 192,
           lookup[arg1].field_768,
           lookup[arg1].field_1024
}

function _fallback() payable {
    revert
}

function sub_0583e73d(?) {
    return sha3(arg1, arg2)
}

function lock(bytes32 arg1) {
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if 1 == bool(sub_5fa80c12[arg1].field_0):
            if not sub_5fa80c12[arg1].field_1280:
                sub_5fa80c12[arg1].field_1280 = 1
                emit 0xdf7bf8f1: 'ConfirmExecution', uint64(block.timestamp)
                emit 0x6c6f636b: 'ConfirmExecution', uint64(block.timestamp)
}

function sub_de407d64(?) {
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if not sub_5fa80c12[arg1].field_1280:
            if 'content' == sub_5fa80c12[arg1].field_512:
                content[arg1][stor1[arg1].field_1024][].field_0 = Array(len=arg2.length, data=arg2[all])
                content[arg1][stor1[arg1].field_1024].field_256 = uint64(block.timestamp)
                sub_5fa80c12[arg1].field_1024++
                emit 0xdf7bf8f1: 'ConfirmExecution', uint64(block.timestamp), 'link_content'
}

function sub_c12f9a06(?) {
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if not sub_5fa80c12[arg1].field_0:
            sub_5fa80c12[arg1].field_0 = arg3
            sub_5fa80c12[arg1].field_256 = arg2
            sub_5fa80c12[arg1].field_512 = arg4
            sub_5fa80c12[arg1].field_768 = arg5
            sub_5fa80c12[arg1].field_1024 = 0
            sub_5fa80c12[arg1].field_1280 = 0
            emit 0xdf7bf8f1: 'ConfirmExecution', uint64(block.timestamp)
            emit 0x63726561: 'ConfirmExecution', uint64(block.timestamp)
}

function sub_a607f252(?) {
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if not sub_5fa80c12[arg1].field_1280:
            if 119225866483056 == sub_5fa80c12[arg1].field_512:
                lookup[arg1][stor1[arg1].field_1024][].field_0 = Array(len=arg2.length, data=arg2[all])
                lookup[arg1][stor1[arg1].field_1024].field_256 = arg3
                lookup[arg1][stor1[arg1].field_1024][2][].field_0 = Array(len=arg4.length, data=arg4[all])
                lookup[arg1][stor1[arg1].field_1024].field_768 = arg5
                lookup[arg1][stor1[arg1].field_1024].field_1024 = uint64(block.timestamp)
                sub_5fa80c12[arg1].field_1024++
                emit 0xdf7bf8f1: 'ConfirmExecution', uint64(block.timestamp), 'link_lookup'
}



}
