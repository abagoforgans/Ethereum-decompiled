contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[87 len 5794]
}



// =====================  Runtime code  =====================


#
#  - getAddress(address arg1)
#
address owner;
uint256 count;
mapping of address addr;
mapping of uint256 index;
mapping of uint256 decimals;
array of struct symbol;
array of struct name;
array of uint256 sub_417538f7;

function name(address arg1) {
    return name[arg1][0 len name[arg1].length].field_0
}

function count() {
    return count
}

function index(address arg1) {
    return index[arg1]
}

function sub_417538f7(?) {
    return sub_417538f7[address(arg1)][arg2][0 len sub_417538f7[address(arg1)][arg2].length]
}

function owner() {
    return owner
}

function symbol(address arg1) {
    return symbol[arg1][0 len symbol[arg1].length].field_0
}

function sub_c46813aa(?) {
    return sub_417538f7[arg1][arg2][0 len sub_417538f7[arg1][arg2].length]
}

function decimals(address arg1) {
    return decimals[arg1]
}

function addr(uint256 arg1) {
    return addr[arg1]
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_95d58050(?) {
    sub_417538f7[address(arg1)][arg2][] = Array(len=arg3.length, data=arg3[all])
}

function sub_346d9254(?) {
    require msg.sender == owner
    if index[address(arg1)]:
        addr[stor3[address(arg1)]] = arg1
    else:
        count++
        addr[stor1 + 1] = arg1
        index[address(arg1)] = count + 1
    decimals[address(arg1)] = arg2
    symbol[address(arg1)][].field_0 = Array(len=arg3.length, data=arg3[all])
    name[address(arg1)][].field_0 = Array(len=arg4.length, data=arg4[all])
}

function getIndex(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = symbol[stor2[arg1]].length
    mem[192] = symbol[stor2[arg1]].field_0
    idx = 192
    s = 0
    while symbol[stor2[arg1]].length + 160 > idx:
        mem[idx + 32] = symbol[stor2[arg1]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 6
    mem[64] = ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 224
    mem[ceil32(symbol[stor2[arg1]].length) + 192] = name[stor2[arg1]].length
    mem[0] = sha3(addr[arg1], 6)
    mem[ceil32(symbol[stor2[arg1]].length) + 224] = name[stor2[arg1]].field_0
    idx = ceil32(symbol[stor2[arg1]].length) + 224
    s = 0
    while ceil32(symbol[stor2[arg1]].length) + name[stor2[arg1]].length + 192 > idx:
        mem[idx + 32] = name[stor2[arg1]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 224] = addr[arg1]
    mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 256] = decimals[stor2[arg1]]
    mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 288] = 128
    mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 352] = symbol[stor2[arg1]].length
    if not symbol[stor2[arg1]].length:
        mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 320] = symbol[stor2[arg1]].length + 160
        mem[symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 384] = name[stor2[arg1]].length
        if not name[stor2[arg1]].length:
            if not name[stor2[arg1]].length % 32:
                return addr[arg1], 
                       decimals[stor2[arg1]],
                       Array(len=symbol[stor2[arg1]].length, data=mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 384 len name[stor2[arg1]].length + symbol[stor2[arg1]].length + 32]),
                       symbol[stor2[arg1]].length + 160
            mem[floor32(name[stor2[arg1]].length) + symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 416] = mem[floor32(name[stor2[arg1]].length) + symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + -name[stor2[arg1]].length % 32 + 448 len name[stor2[arg1]].length % 32]
            return addr[arg1], 
                   decimals[stor2[arg1]],
                   Array(len=symbol[stor2[arg1]].length, data=mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 384 len floor32(name[stor2[arg1]].length) + symbol[stor2[arg1]].length + 64]),
                   symbol[stor2[arg1]].length + 160
        mem[symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 416] = mem[ceil32(symbol[stor2[arg1]].length) + 224]
        mem[symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 448 len floor32(name[stor2[arg1]].length - 1)] = mem[ceil32(symbol[stor2[arg1]].length) + 256 len floor32(name[stor2[arg1]].length - 1)]
        if not name[stor2[arg1]].length % 32:
            return addr[arg1], 
                   decimals[stor2[arg1]],
                   Array(len=symbol[stor2[arg1]].length, data=mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 384 len name[stor2[arg1]].length + symbol[stor2[arg1]].length + 32]),
                   symbol[stor2[arg1]].length + 160
        mem[floor32(name[stor2[arg1]].length) + symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 416] = mem[floor32(name[stor2[arg1]].length) + symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + -name[stor2[arg1]].length % 32 + 448 len name[stor2[arg1]].length % 32]
        return addr[arg1], 
               decimals[stor2[arg1]],
               Array(len=symbol[stor2[arg1]].length, data=mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 384 len symbol[stor2[arg1]].length + 32], mem[ceil32(symbol[stor2[arg1]].length) + 224], mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + symbol[stor2[arg1]].length + 448 len floor32(name[stor2[arg1]].length)]),
               symbol[stor2[arg1]].length + 160
    mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 384] = mem[192]
    mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 416 len floor32(symbol[stor2[arg1]].length - 1)] = mem[224 len floor32(symbol[stor2[arg1]].length - 1)]
    mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 320] = symbol[stor2[arg1]].length + 160
    mem[symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 384] = name[stor2[arg1]].length
    if name[stor2[arg1]].length:
        mem[symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 416] = mem[ceil32(symbol[stor2[arg1]].length) + 224]
        mem[symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 448 len floor32(name[stor2[arg1]].length - 1)] = mem[ceil32(symbol[stor2[arg1]].length) + 256 len floor32(name[stor2[arg1]].length - 1)]
    if not name[stor2[arg1]].length % 32:
        return addr[arg1], 
               decimals[stor2[arg1]],
               Array(len=symbol[stor2[arg1]].length, data=mem[192], mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 416 len name[stor2[arg1]].length + symbol[stor2[arg1]].length]),
               symbol[stor2[arg1]].length + 160
    mem[floor32(name[stor2[arg1]].length) + symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 416] = mem[floor32(name[stor2[arg1]].length) + symbol[stor2[arg1]].length + ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + -name[stor2[arg1]].length % 32 + 448 len name[stor2[arg1]].length % 32]
    return addr[arg1], 
           decimals[stor2[arg1]],
           Array(len=symbol[stor2[arg1]].length, data=mem[192], mem[ceil32(symbol[stor2[arg1]].length) + ceil32(name[stor2[arg1]].length) + 416 len floor32(name[stor2[arg1]].length) + symbol[stor2[arg1]].length + 32]),
           symbol[stor2[arg1]].length + 160
}



}
