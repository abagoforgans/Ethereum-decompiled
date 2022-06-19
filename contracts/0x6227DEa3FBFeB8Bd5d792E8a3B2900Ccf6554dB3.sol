contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 counter;

function getCounter() payable {
    return counter
}

function _fallback() payable {
    revert
}

function sendHash(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require counter + 1 >= counter
    counter++
    stor0[stor1].field_0 = msg.sender
    stor0[stor1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit 0x2fd62d00 
}

function getHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = stor0[arg1][1].length
    mem[128] = stor0[arg1][1].field_0
    idx = 128
    s = 0
    while stor0[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 0
    mem[64] = ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 160
    mem[ceil32(stor0[arg1][1].length) + 128] = stor0[arg1][2].length
    mem[0] = sha3(arg1, 0) + 2
    mem[ceil32(stor0[arg1][1].length) + 160] = stor0[arg1][2].field_0
    idx = ceil32(stor0[arg1][1].length) + 160
    s = 0
    while ceil32(stor0[arg1][1].length) + stor0[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 224] = stor0[arg1].field_0
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 160] = 96
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 256] = stor0[arg1][1].length
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 288 len ceil32(stor0[arg1][1].length)] = mem[128 len ceil32(stor0[arg1][1].length)]
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192] = stor0[arg1][1].length + 128
    mem[stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 288] = stor0[arg1][2].length
    mem[stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 320 len ceil32(stor0[arg1][2].length)] = mem[ceil32(stor0[arg1][1].length) + 160 len ceil32(stor0[arg1][2].length)]
    if not stor0[arg1][2].length % 32:
        return Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + 288 len stor0[arg1][2].length + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 32]), 
               stor0[arg1][1].length + 128,
               stor0[arg1].field_0
    mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 320] = mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + -stor0[arg1][2].length % 32 + 352 len stor0[arg1][2].length % 32]
    return Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + 288 len floor32(stor0[arg1][2].length) + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 64]), 
           stor0[arg1][1].length + 128,
           stor0[arg1].field_0
}



}
