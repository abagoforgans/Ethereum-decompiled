contract main {


// =======================  Init code  ======================


address stor3;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor5.length) = 0
    stor5.length.field_1 = 9
    stor5.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -7297] = code.data[7781 len -7297]
    stor3 = msg.sender
    stor6[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor7[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    stor8 = mem[223 len 1]
    return code.data[484 len 7297]
}



// =====================  Runtime code  =====================


array of struct sub_40b3e664;
mapping of uint8 stor1;
uint256 numArticlesPublished;
address publishingOwner;
uint256 sub_add5b113;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 stor99;

function publishingOwner() {
    return publishingOwner
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function hasReadership(address arg1, uint256 arg2) {
    return bool(stor1[address(arg1)][arg2])
}

function decimals() {
    return decimals
}

function sub_40b3e664(?) {
    return sub_40b3e664[stor2 - 1][2][0 len sub_40b3e664[stor2 - 1][2].length].field_0
}

function sub_5168778a(?) {
    return sub_40b3e664[arg1][2][0 len sub_40b3e664[arg1][2].length].field_0
}

function standard() {
    return standard[0 len standard.length]
}

function numArticlesPublished() {
    return numArticlesPublished
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function readingRegister(address arg1, uint256 arg2) {
    return bool(stor1[arg1][arg2])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a86d9dbf(?) {
    return sub_40b3e664[arg1][0 len sub_40b3e664[arg1].length].field_0
}

function sub_add5b113(?) {
    return sub_add5b113
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function stringToBytes32(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function claimReadership(uint256 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require ext_code.size(0x9ae98746eb8a0aeee5ff2b6b15875313a986f103)
    call 0x9ae98746eb8a0aeee5ff2b6b15875313a986f103.certified(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    require not stor1[address(msg.sender)][arg1]
    mem[ceil32(arg2.length) + 128] = sub_40b3e664[arg1][1].length
    mem[ceil32(arg2.length) + 160] = sub_40b3e664[arg1][1].field_0
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + sub_40b3e664[arg1][1].length + 128 > idx:
        mem[idx + 32] = sub_40b3e664[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _63 = mem[ceil32(arg2.length) + 160]
    mem[ceil32(arg2.length) + ceil32(sub_40b3e664[arg1][1].length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(sub_40b3e664[arg1][1].length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    require sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(sub_40b3e664[arg1][1].length) + floor32(arg2.length) + 160 len arg2.length % 32]) != _63
    stor1[address(msg.sender)][arg1] = 1
    balanceOf[address(msg.sender)]++
    totalSupply++
}

function publish(string arg1, string arg2) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if msg.sender == publishingOwner:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 21
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 'https://ipfs.io/ipfs/'
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 0
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 0
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = 0
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = 0
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = 0
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg1.length + 21
        mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg1.length + 21) + 512
        idx = 0
        s = 0
        while idx < 21:
            require idx < 21
            require s < arg1.length + 21
            mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 512 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 21
        while idx < arg1.length:
            require idx < arg1.length
            require s < arg1.length + 21
            mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 512 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = ceil32(arg1.length) + ceil32(arg2.length) + 480
        mem[0] = numArticlesPublished
        mem[32] = 0
        s = 0
        idx = ceil32(arg1.length) + ceil32(arg2.length) + 160
        while ceil32(arg1.length) + ceil32(arg2.length) + 256 > idx:
            _99 = mem[idx]
            _100 = mem[mem[idx]]
            mem[0] = s + sha3(mem[0], 0)
            sub_40b3e664[mem[0]][s].field_0 = (2 * _100) + 1
            u = sha3(s + sha3(mem[0], 0))
            t = _99 + 32
            while _99 + _100 + 32 > t:
                stor[u] = mem[t]
                u = u + 1
                t = t + 32
                continue 
            t = sha3(s + sha3(mem[0], 0)) + (Mask(251, 0, _100 + 31) >> 5)
            while sha3(s + sha3(mem[0], 0)) + (sub_40b3e664[mem[0]][s].length + 31 / 32) > t:
                stor[t] = 0
                t = t + 1
                continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while sha3(numArticlesPublished, 0) + 3 > idx:
            stor[idx] = 0
            if 31 < stor[idx].length:
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        numArticlesPublished++
}



}
