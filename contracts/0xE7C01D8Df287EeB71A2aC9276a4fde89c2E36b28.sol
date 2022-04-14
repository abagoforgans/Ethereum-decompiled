contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 12
    stor0.length.field_8 = 'Hello World!' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[276 len 762]
}



// =====================  Runtime code  =====================


array of struct speak;

function speak() {
    return speak[0 len speak.length].field_0
}

function saySomethingElse(string arg1) {
    speak[].field_0 = Array(len=arg1.length, data=arg1[all])
    return 1
}

function _fallback() payable {
    if unknown_0x50d85315(?????) == uint32(call.func_hash):
        require not msg.value
        mem[160] = uint256(speak.field_0)
        idx = 160
        s = 0
        while speak.length + 128 > idx:
            mem[idx + 32] = speak[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=speak.length, data=mem[160 len speak.length])
    require unknown_0xb07d7e39(?????) == uint32(call.func_hash)
    require not msg.value
    speak[].field_0 = Array(len=arg1.length, data=arg1[all])
    return 1
}



}
