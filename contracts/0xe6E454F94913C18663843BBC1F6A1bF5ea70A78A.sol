contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct stor1;

function _fallback() payable {
    revert
}

function getContracts() {
    if stor1.length:
        mem[128 len 32 * stor1.length] = code.data[2392 len 32 * stor1.length]
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require idx < stor1.length
        if stor1[idx].field_0 != msg.sender:
            mem[(32 * idx) + 128] = 0
        else:
            mem[0] = 1
            require idx < stor1.length
            mem[(32 * idx) + 128] = stor1[idx].field_768
        idx = idx + 1
        continue 
    mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[128 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 192 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function getContract(bytes32 arg1) {
    mem[32] = 0
    mem[96] = stor0[arg1][1].length
    mem[128] = stor0[arg1][1].field_0
    idx = 128
    s = 0
    while stor0[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
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
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 160] = stor0[arg1].field_0
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 256] = stor0[arg1].field_768
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192] = 128
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 288] = stor0[arg1][1].length
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 320 len ceil32(stor0[arg1][1].length)] = mem[128 len ceil32(stor0[arg1][1].length)]
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 224] = stor0[arg1][1].length + 160
    mem[stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 320] = stor0[arg1][2].length
    mem[stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 352 len ceil32(stor0[arg1][2].length)] = mem[ceil32(stor0[arg1][1].length) + 160 len ceil32(stor0[arg1][2].length)]
    if not stor0[arg1][2].length % 32:
        return stor0[arg1].field_0, 
               Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + 320 len stor0[arg1][2].length + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 32]),
               stor0[arg1][1].length + 160,
               stor0[arg1].field_768
    mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 352] = mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + -stor0[arg1][2].length % 32 + 384 len stor0[arg1][2].length % 32]
    return stor0[arg1].field_0, 
           Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + 320 len floor32(stor0[arg1][2].length) + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 64]),
           stor0[arg1][1].length + 160,
           stor0[arg1].field_768
}

function sub_38dc6400(?) {
    stor0[arg3].field_0 = msg.sender
    stor0[arg3][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[arg3][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[arg3].field_768 = arg3
    stor1.length++
    stor1[stor1.length].field_0 = stor0[arg3].field_0
    if 31 >= stor0[arg3][1].length:
        stor1[stor1.length].field_256 = stor0[arg3].field_256
        idx = 0
        while stor[(4 * stor1.length) + ('name', 'stor1', 1) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0 = 0
            idx = idx + 1
            continue 
        if 31 >= stor0[arg3][2].length:
            stor1[stor1.length].field_512 = stor0[arg3].field_512
            idx = 0
            while stor[(4 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
                stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[stor1.length].field_512 = Mask(255, 1, (256 * not stor0[arg3].field_512) - 1 and stor0[arg3].field_512) + 1
            if not Mask(255, 1, (256 * not stor0[arg3].field_512) - 1 and stor0[arg3].field_512):
                idx = 0
                while stor[(4 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor0[arg3][2].length + 31 / 32 > idx:
                    stor[s + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = stor0[arg3][idx + 2].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor0[arg3][2].length + 31 / 32
                while stor[(4 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        stor1[stor1.length].field_256 = Mask(255, 1, (256 * not stor0[arg3].field_256) - 1 and stor0[arg3].field_256) + 1
        if not Mask(255, 1, (256 * not stor0[arg3].field_256) - 1 and stor0[arg3].field_256):
            idx = 0
            while stor[(4 * stor1.length) + ('name', 'stor1', 1) + 1].length + 31 / 32 > idx:
                stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor0[arg3][1].length + 31 / 32 > idx:
                stor[s + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0 = stor0[arg3][idx + 1].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor0[arg3][1].length + 31 / 32
            while stor[(4 * stor1.length) + ('name', 'stor1', 1) + 1].length + 31 / 32 > idx:
                stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0 = 0
                idx = idx + 1
                continue 
        if 31 >= stor0[arg3][2].length:
            stor1[stor1.length].field_512 = stor0[arg3].field_512
            idx = 0
            while stor[(4 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
                stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[stor1.length].field_512 = Mask(255, 1, (256 * not stor0[arg3].field_512) - 1 and stor0[arg3].field_512) + 1
            if not Mask(255, 1, (256 * not stor0[arg3].field_512) - 1 and stor0[arg3].field_512):
                idx = 0
                while stor[(4 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor0[arg3][2].length + 31 / 32 > idx:
                    stor[s + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = stor0[arg3][idx + 2].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor0[arg3][2].length + 31 / 32
                while stor[(4 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = 0
                    idx = idx + 1
                    continue 
    stor1[stor1.length].field_768 = stor0[arg3].field_768
}



}
