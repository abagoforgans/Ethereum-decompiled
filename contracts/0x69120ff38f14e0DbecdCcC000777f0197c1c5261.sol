contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xf3c03d70d35a8a8faad8acba8a6e94d52e6da369
    require not msg.value
    return code.data[66 len 2607]
}



// =====================  Runtime code  =====================


#
#  - getFile(uint256 arg1)
#
address stor0;
array of struct files;

function getFilesCount() {
    return files.length
}

function files(uint256 arg1) {
    require arg1 < files.length
    mem[224] = files[arg1].field_0
    idx = 224
    s = 0
    while files[arg1].length + 224 > idx + 32:
        mem[idx + 32] = files[(3 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + 224] = stor[(3 * arg1) + ('name', 'files', 1) + 1].length
    mem[files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + 256] = stor[sha3((3 * arg1) + ('name', 'files', 1) + 1)].field_0
    idx = files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + 256
    s = 0
    while files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'files', 1) + 1].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'files', 1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'files', 1) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'files', 1) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'files', 1) + 1].length + 32 % 32) + 288] = stor[sha3((3 * arg1) + ('name', 'files', 1) + 2)].field_0
    idx = files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'files', 1) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'files', 1) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'files', 1) + 1].length + 32 % 32) + 288
    s = 0
    while files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'files', 1) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'files', 1) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'files', 1) + 1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'files', 1) + 2].length + 288 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'files', 1) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=files[arg1].length, data=mem[224 len files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'files', 1) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'files', 1) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'files', 1) + 1].length + 32 % 32) + 32], stor[(3 * arg1) + ('name', 'files', 1) + 2].length, mem[files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'files', 1) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'files', 1) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'files', 1) + 1].length + 32 % 32) + 288 len stor[(3 * arg1) + ('name', 'files', 1) + 2].length + (floor32(stor[(3 * arg1) + ('name', 'files', 1) + 2].length - 1) + -stor[(3 * arg1) + ('name', 'files', 1) + 2].length + 32 % 32)]), 
           files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + 128,
           files[arg1].length + (floor32(files[arg1].length - 1) + -files[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'files', 1) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'files', 1) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'files', 1) + 1].length + 32 % 32) + 160
}

function sub_cd18d529(?) {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function addFile(string arg1, string arg2, string arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    if stor0 != msg.sender:
        return 0
    files.length++
    if not files.length <= files.length + 1:
        mem[0] = 1
        idx = (3 * files.length) + 3
        while sha3(1) + (3 * files.length) > idx + sha3(mem[0]):
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
    require files.length - 1 < files.length
    stor[sha3((3 * files.length) + ('name', 'files', 1) - 3)][].field_0 = Array(len=arg1.length, data=arg1[all])
    require files.length - 1 < files.length
    stor[sha3((3 * files.length) + ('name', 'files', 1) - 2)][].field_0 = Array(len=arg2.length, data=arg2[all])
    require files.length - 1 < files.length
    stor[sha3((3 * files.length) + ('name', 'files', 1) - 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0x35b06592: Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256 len arg1.length])
    return files.length
}



}
