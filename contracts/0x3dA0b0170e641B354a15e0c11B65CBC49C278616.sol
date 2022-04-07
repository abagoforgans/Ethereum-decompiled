contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1879]




// =====================  Runtime code  =====================


array of uint256 id;
mapping of struct stor1;
uint256 sub_390a5ba5;

function sub_390a5ba5(?) {
    return sub_390a5ba5
}

function getId(address arg1, uint256 arg2) {
    require arg2 < id[address(arg1)]
    return id[address(arg1)][arg2]
}

function sub_f9db42ef(?) {
    return id[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_67c65e99(?) {
    require stor1[arg2].field_768 == msg.sender
    require arg1 != msg.sender
    id[address(arg1)]++
    if not id[address(arg1)] <= id[address(arg1)] + 1:
        idx = id[address(arg1)] + 1
        while id[address(arg1)] > idx:
            id[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    require id[address(arg1)] < id[address(arg1)]
    id[address(arg1)][id[address(arg1)]] = arg2
    stor1[arg2].field_768 = arg1
    emit 0x59fd71f1: msg.sender, address(arg1), arg2
}

function sub_c3996b97(?) {
    sub_390a5ba5++
    id[address(msg.sender)]++
    if not id[address(msg.sender)] <= id[address(msg.sender)] + 1:
        idx = id[address(msg.sender)] + 1
        while id[address(msg.sender)] > idx:
            id[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    require id[address(msg.sender)] < id[address(msg.sender)]
    id[address(msg.sender)][id[address(msg.sender)]] = sub_390a5ba5
    stor1[stor2].field_0 = arg1
    stor1[stor2][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor1[stor2].field_512 = msg.sender
    stor1[stor2].field_768 = arg3
    stor1[stor2].field_1024 = block.timestamp
    stor1[stor2].field_1280 = block.timestamp
    if arg3 != msg.sender:
        id[address(arg3)]++
        if not id[address(arg3)] <= id[address(arg3)] + 1:
            idx = id[address(arg3)] + 1
            while id[address(arg3)] > idx:
                id[address(arg3)][idx] = 0
                idx = idx + 1
                continue 
        require id[address(arg3)] < id[address(arg3)]
        id[address(arg3)][id[address(arg3)]] = sub_390a5ba5
    emit 0x7fb38fb8: msg.sender, address(arg3), sub_390a5ba5
    return sub_390a5ba5
}

function getItem(uint256 arg1) {
    mem[160] = stor1[arg1][1].field_0
    idx = 160
    s = 0
    while stor1[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor1[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1[arg1][1].length) + 160] = stor1[arg1].field_0
    mem[ceil32(stor1[arg1][1].length) + 224] = stor1[arg1].field_512
    mem[ceil32(stor1[arg1][1].length) + 256] = stor1[arg1].field_768
    mem[ceil32(stor1[arg1][1].length) + 288] = stor1[arg1].field_1024
    mem[ceil32(stor1[arg1][1].length) + 320] = stor1[arg1].field_1280
    mem[ceil32(stor1[arg1][1].length) + 192] = 192
    mem[ceil32(stor1[arg1][1].length) + 352] = stor1[arg1][1].length
    if stor1[arg1][1].length:
        mem[ceil32(stor1[arg1][1].length) + 384] = mem[160]
        mem[ceil32(stor1[arg1][1].length) + 416 len floor32(stor1[arg1][1].length - 1)] = mem[192 len floor32(stor1[arg1][1].length - 1)]
    return stor1[arg1].field_0, 
           Array(len=stor1[arg1][1].length, data=mem[ceil32(stor1[arg1][1].length) + 384 len stor1[arg1][1].length]),
           stor1[arg1].field_512,
           stor1[arg1].field_768,
           stor1[arg1].field_1024,
           stor1[arg1].field_1280
}



}
