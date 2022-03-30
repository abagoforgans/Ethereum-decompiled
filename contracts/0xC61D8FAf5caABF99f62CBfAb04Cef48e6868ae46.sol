contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0xf3c03d70d35a8a8faad8acba8a6e94d52e6da369
    require not msg.value
    stor1 = msg.sender
    return code.data[95 len 2086]
}



// =====================  Runtime code  =====================


address stor0;
array of struct files;

function files(bytes32 arg1, uint256 arg2) {
    require arg2 < files[arg1].field_0
    mem[224] = files[arg1][arg2].field_0
    idx = 224
    s = 0
    while files[arg1][arg2].length + 224 > idx + 32:
        mem[idx + 32] = files[arg1][(3 * arg2) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + 224] = stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length
    mem[files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + 256] = stor[sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1)].field_0
    idx = files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + 256
    s = 0
    while files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + (floor32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length - 1) + -stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + 32 % 32) + 288] = stor[sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 2)].field_0
    idx = files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + (floor32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length - 1) + -stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + 32 % 32) + 288
    s = 0
    while files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + (floor32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length - 1) + -stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + 32 % 32) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 2].length + 288 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=files[arg1][arg2].length, data=mem[224 len files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + (floor32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length - 1) + -stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + 32 % 32) + 32], stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 2].length, mem[files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + (floor32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length - 1) + -stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + 32 % 32) + 288 len stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 2].length + (floor32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 2].length - 1) + -stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 2].length + 32 % 32)]), 
           files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + 128,
           files[arg1][arg2].length + (floor32(files[arg1][arg2].length - 1) + -files[arg1][arg2].length + 32 % 32) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + (floor32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length - 1) + -stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1].length + 32 % 32) + 160
}

function Kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() {
    revert
}

function GetFileLocation(bytes32 arg1) {
    return (files[arg1].field_0 - 1)
}

function sub_99ed120a(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = 96
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = ceil32(arg2.length) + 128
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = ceil32(arg2.length) + ceil32(arg3.length) + 160
    if stor0 == msg.sender:
        files[arg1].field_0++
        if not files[arg1].field_0 <= files[arg1].field_0 + 1:
            mem[0] = sha3(arg1, 2)
            idx = (3 * files[arg1].field_0) + 3
            while sha3(sha3(arg1, 2)) + (3 * files[arg1].field_0) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                stor[idx + sha3(mem[0]) + 1] = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                stor[idx + sha3(mem[0]) + 2] = 0
                if 31 < stor[idx + sha3(mem[0]) + 2].length:
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 3
                continue 
        files[arg1][files[arg1].field_0][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor[sha3((3 * files[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor[sha3((3 * files[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'files', 2)) + 2)][].field_0 = Array(len=arg4.length, data=arg4[all])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = 32
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg2.length
        if arg2.length:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[128]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        emit 0xa710d91e: Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len arg2.length])
    if files[arg1].field_0 <= files[arg1].field_0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        return 0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return 1
}



}
