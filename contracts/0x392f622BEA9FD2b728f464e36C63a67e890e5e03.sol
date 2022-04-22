contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[95 len 3320]
}



// =====================  Runtime code  =====================


#
#  - ConsultaProva(string arg1)
#
array of struct stor0;
address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function TrocarAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function GuardaProva(string arg1, string arg2, string arg3, string arg4) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg4.length] = arg4[all]
    require msg.sender == adminAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 224 len arg1.length % 32]) 
    require sha256hash.result
    require not stor0[hash].field_0
    stor0[hash].field_0 = 1
    stor0[hash].field_256 = block.number
    stor0[hash][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[hash][3][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor0[hash][4][].field_0 = Array(len=arg4.length, data=arg4[all])
}

function provas(bytes32 arg1) {
    mem[288] = stor0[arg1][2].field_0
    idx = 288
    s = 0
    while stor0[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + 288] = stor0[arg1][3].length
    mem[stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + 320] = stor0[arg1][3].field_0
    idx = stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + 320
    s = 0
    while stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + stor0[arg1][3].length + 320 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + 352] = stor0[arg1][4].field_0
    idx = stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + 352
    s = 0
    while stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + stor0[arg1][4].length + 352 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(stor0[arg1].field_0), 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[288 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + 32], stor0[arg1][4].length, mem[stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + 352 len stor0[arg1][4].length + (floor32(stor0[arg1][4].length - 1) + -stor0[arg1][4].length + 32 % 32)]),
           stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + 192,
           stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + 224
}



}
