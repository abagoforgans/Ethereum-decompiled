contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[61 len 3492]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
array of struct sub_2047f46a;
mapping of struct requests;
mapping of uint256 sub_5cd52758;

function sub_2047f46a(?) {
    require arg1 < sub_2047f46a.length
    return sub_2047f46a[arg1].field_0
}

function sub_5cd52758(?) {
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 212 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 212 len arg4.length] = arg4[all]
    return sub_5cd52758[arg1][arg2][mem[ceil32(arg3.length) + ceil32(arg4.length) + 212 len arg3.length + arg4.length]]
}

function sub_7fb4a396(?) {
    return sub_5cd52758[arg1]
}

function requests(uint256 arg1) {
    mem[384] = requests[arg1][2].field_0
    idx = 384
    s = 0
    while requests[arg1][2].length + 384 > idx + 32:
        mem[idx + 32] = requests[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[requests[arg1][2].length + (floor32(requests[arg1][2].length - 1) + -requests[arg1][2].length + 32 % 32) + 384] = requests[arg1][3].length
    mem[requests[arg1][2].length + (floor32(requests[arg1][2].length - 1) + -requests[arg1][2].length + 32 % 32) + 416] = requests[arg1][3].field_0
    idx = requests[arg1][2].length + (floor32(requests[arg1][2].length - 1) + -requests[arg1][2].length + 32 % 32) + 416
    s = 0
    while requests[arg1][2].length + (floor32(requests[arg1][2].length - 1) + -requests[arg1][2].length + 32 % 32) + requests[arg1][3].length + 416 > idx + 32:
        mem[idx + 32] = requests[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return requests[arg1].field_0, 
           requests[arg1].field_256,
           Array(len=requests[arg1][2].length, data=mem[384 len requests[arg1][2].length + (floor32(requests[arg1][2].length - 1) + -requests[arg1][2].length + 32 % 32) + requests[arg1][3].length + (floor32(requests[arg1][3].length - 1) + -requests[arg1][3].length + 32 % 32) + 32]),
           requests[arg1][2].length + (floor32(requests[arg1][2].length - 1) + -requests[arg1][2].length + 32 % 32) + 288,
           requests[arg1].field_1024,
           requests[arg1].field_1280,
           requests[arg1].field_1536,
           requests[arg1].field_1792
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function updateOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_daf66021(?) {
    if arg1:
        if requests[arg1].field_1280 <= 0:
            return requests[arg1].field_1792
    return stor2
}

function sub_6b29698e(?) {
    if sub_2047f46a.length:
        mem[160] = uint256(sub_2047f46a.field_0)
        idx = 160
        s = 0
        while (32 * sub_2047f46a.length) + 128 > idx:
            mem[idx + 32] = sub_2047f46a[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_2047f46a.length, data=mem[160 len 32 * sub_2047f46a.length])
}

function sub_088a8e80(?) {
    require owner == msg.sender
    requests[arg1].field_1280 = 2
    if requests[arg1].field_1536 > 0:
        requests[requests[arg1].field_1536].field_1792 = requests[arg1].field_1792
    if requests[arg1].field_1792 > 0:
        requests[requests[arg1].field_1792].field_1536 = requests[arg1].field_1536
    if arg1 == stor2:
        stor2 = requests[arg1].field_1792
    if arg1 == stor3:
        stor3 = requests[arg1].field_1536
    requests[arg1].field_1792 = 0
    requests[arg1].field_1536 = 0
    return 0
}

function markCompleted(uint256 arg1) {
    require owner == msg.sender
    requests[arg1].field_1280 = 1
    if requests[arg1].field_1536 > 0:
        requests[requests[arg1].field_1536].field_1792 = requests[arg1].field_1792
    if requests[arg1].field_1792 > 0:
        requests[requests[arg1].field_1792].field_1536 = requests[arg1].field_1536
    if arg1 == stor2:
        stor2 = requests[arg1].field_1792
    if arg1 == stor3:
        stor3 = requests[arg1].field_1536
    requests[arg1].field_1792 = 0
    requests[arg1].field_1536 = 0
    return 0
}

function sub_d1077887(?) {
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 212 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 212 len arg3.length] = arg3[all]
    require sub_5cd52758[msg.sender][arg1][mem[ceil32(arg2.length) + ceil32(arg3.length) + 212 len arg3.length + arg2.length]] <= 0
    stor1++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    requests[stor1 + 1].field_0 = msg.sender
    requests[stor1 + 1].field_256 = arg1
    requests[stor1 + 1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    requests[stor1 + 1].field_768 = (2 * arg3.length) + 1
    s = 0
    idx = ceil32(arg2.length) + 160
    while ceil32(arg2.length) + arg3.length + 160 > idx:
        requests[stor1 + 1][s + 3].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if requests[stor1 + 1][3].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        stor[('array', 3, ('map', ('add', 1, ('stor', ('name', 'stor1', 1))), ('name', 'requests', 5))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while requests[stor1 + 1][3].length + 31 / 32 > idx:
            requests[stor1 + 1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    requests[stor1 + 1].field_1024 = block.timestamp
    requests[stor1 + 1].field_1280 = 0
    requests[stor1 + 1].field_1536 = stor3
    requests[stor1 + 1].field_1792 = 0
    if not stor2:
        stor2 = stor1
    if stor3 > 0:
        requests[stor3].field_1792 = stor1
    stor3 = stor1
    sub_2047f46a.length++
    sub_2047f46a[sub_2047f46a.length].field_0 = stor1
    sub_5cd52758[msg.sender][arg1][mem[ceil32(arg2.length) + ceil32(arg3.length) + 212 len arg3.length + arg2.length]] = stor1
    return stor1
}

function sub_f735968c(?) {
    mem[96] = 0
    mem[128] = 0
    mem[32] = 5
    mem[160] = requests[arg1][2].length
    mem[192] = requests[arg1][2].field_0
    idx = 192
    s = 0
    while requests[arg1][2].length + 160 > idx:
        mem[idx + 32] = requests[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 224
    mem[ceil32(requests[arg1][2].length) + 192] = requests[arg1][3].length
    mem[0] = sha3(arg1, 5) + 3
    mem[ceil32(requests[arg1][2].length) + 224] = requests[arg1][3].field_0
    idx = ceil32(requests[arg1][2].length) + 224
    s = 0
    while ceil32(requests[arg1][2].length) + requests[arg1][3].length + 192 > idx:
        mem[idx + 32] = requests[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 224] = requests[arg1].field_0
    mem[ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 256] = requests[arg1].field_256
    mem[ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 288] = requests[arg1].field_1024
    mem[ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 384] = requests[arg1].field_1280
    mem[ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 320] = 192
    mem[ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 416] = requests[arg1][2].length
    mem[ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 448 len requests[arg1][2].length] = mem[192 len requests[arg1][2].length]
    mem[ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 352] = requests[arg1][2].length + 224
    mem[requests[arg1][2].length + ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 448] = requests[arg1][3].length
    mem[requests[arg1][2].length + ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 480 len requests[arg1][3].length] = mem[ceil32(requests[arg1][2].length) + 224 len requests[arg1][3].length]
    if not requests[arg1][3].length % 32:
        return requests[arg1].field_0, 
               requests[arg1].field_256,
               requests[arg1].field_1024,
               Array(len=requests[arg1][2].length, data=mem[192 len requests[arg1][2].length], requests[arg1][3].length, mem[ceil32(requests[arg1][2].length) + 224 len requests[arg1][3].length]),
               requests[arg1][2].length + 224,
               requests[arg1].field_1280
    mem[floor32(requests[arg1][3].length) + requests[arg1][2].length + ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + 480] = mem[floor32(requests[arg1][3].length) + requests[arg1][2].length + ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + -requests[arg1][3].length % 32 + 512 len requests[arg1][3].length % 32]
    return requests[arg1].field_0, 
           requests[arg1].field_256,
           requests[arg1].field_1024,
           Array(len=requests[arg1][2].length, data=mem[192 len requests[arg1][2].length], requests[arg1][3].length, mem[ceil32(requests[arg1][2].length) + ceil32(requests[arg1][3].length) + requests[arg1][2].length + 480 len floor32(requests[arg1][3].length) + 32]),
           requests[arg1][2].length + 224,
           requests[arg1].field_1280
}



}
