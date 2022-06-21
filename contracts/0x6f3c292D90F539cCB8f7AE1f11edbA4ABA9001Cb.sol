contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 balanceOf;
array of uint256 sub_4b2965ac;
array of struct stor3;
uint256 minimumPurchase;
uint256 totalSupply;
uint256 stor6;
uint256 stor7;
array of uint256 name;
array of uint256 symbol;
uint256 INITIAL_SUPPLY;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function sub_4b2965ac(?) {
    return sub_4b2965ac[address(arg1)][0 len sub_4b2965ac[address(arg1)].length]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function minimumPurchase() {
    return minimumPurchase
}

function _fallback() payable {
    revert
}

function getBalance() {
    require msg.sender == owner
    return (eth.balance(this.address) / 10^12)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_65c191fa(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    minimumPurchase = 10^18 * arg1
    require minimumPurchase
    stor6 = 75 * 10^18 * 24 * 3600 / minimumPurchase
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function getAllAddresses() {
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 192 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function sub_49dac93c(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128] = stor3.length
    mem[64] = ceil32(arg1.length) + (32 * stor3.length) + 160
    if not stor3.length:
        idx = 0
        while uint32(idx) < stor3.length:
            _42 = sha3(mem[128 len mem[96]])
            mem[32] = 2
            _50 = mem[64]
            mem[0] = sha3(stor3[uint32(idx)].field_0, 2)
            mem[mem[64]] = sub_4b2965ac[stor3[uint32(idx)].field_0]
            s = mem[64]
            t = sha3(mem[0])
            while _50 + sub_4b2965ac[stor3[uint32(idx)].field_0].length > s + 32:
                mem[s + 32] = balanceOf[t]
                s = s + 32
                t = t + 1
                continue 
            if sha3(mem[mem[64] len _50 + sub_4b2965ac[stor3[uint32(idx)].field_0].length - mem[64]]) == _42:
                require uint32(idx) < stor3.length
                mem[0] = 3
                require uint32(idx) < mem[ceil32(arg1.length) + 128]
                mem[(32 * uint32(idx)) + ceil32(arg1.length) + 160] = stor3[uint32(idx)].field_0
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
        _47 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 64 len floor32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len floor32(mem[ceil32(arg1.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _47) + 32]
    mem[ceil32(arg1.length) + 160 len 32 * stor3.length] = code.data[6828 len 32 * stor3.length]
    idx = 0
    while uint32(idx) < stor3.length:
        _44 = sha3(mem[128 len mem[96]])
        mem[32] = 2
        _56 = mem[64]
        mem[0] = sha3(stor3[uint32(idx)].field_0, 2)
        mem[mem[64]] = sub_4b2965ac[stor3[uint32(idx)].field_0]
        s = mem[64]
        t = sha3(mem[0])
        while _56 + sub_4b2965ac[stor3[uint32(idx)].field_0].length > s + 32:
            mem[s + 32] = balanceOf[t]
            s = s + 32
            t = t + 1
            continue 
        if sha3(mem[mem[64] len _56 + sub_4b2965ac[stor3[uint32(idx)].field_0].length - mem[64]]) == _44:
            require uint32(idx) < stor3.length
            mem[0] = 3
            require uint32(idx) < mem[ceil32(arg1.length) + 128]
            mem[(32 * uint32(idx)) + ceil32(arg1.length) + 160] = stor3[uint32(idx)].field_0
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _53 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len floor32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len floor32(mem[ceil32(arg1.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _53) + 32]
}

function sub_6393d416(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.value > minimumPurchase
    mem[ceil32(arg1.length) + 128] = 0
    require sha3(arg1[all]) != sha3(None)
    stor3.length++
    stor3[stor3.length].field_0 = msg.sender
    sub_4b2965ac[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    if not msg.value:
        require msg.sender
        require totalSupply >= totalSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        mem[ceil32(arg1.length) + 160] = 0
        emit Transfer(0, 0, msg.sender);
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        emit 0x9bfb70a1: 0, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]), msg.sender
    else:
        require msg.value
        require msg.value * stor6 / msg.value == stor6
        if not msg.value * stor6:
            require msg.sender
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            mem[ceil32(arg1.length) + 160] = 0
            emit Transfer(0, 0, msg.sender);
            mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            emit 0x9bfb70a1: 0, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]), msg.sender
        else:
            require msg.value * stor6
            require msg.value * stor6 * stor7 / msg.value * stor6 == stor7
            require msg.sender
            require totalSupply + (msg.value * stor6 * stor7 / 10^18 / 10^18) >= totalSupply
            totalSupply += msg.value * stor6 * stor7 / 10^18 / 10^18
            require balanceOf[address(msg.sender)] + (msg.value * stor6 * stor7 / 10^18 / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * stor6 * stor7 / 10^18 / 10^18
            mem[ceil32(arg1.length) + 160] = msg.value * stor6 * stor7 / 10^18 / 10^18
            emit Transfer((msg.value * stor6 * stor7 / 10^18 / 10^18), 0, msg.sender);
            mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            emit 0x9bfb70a1: (msg.value * stor6 * stor7 / 10^18 / 10^18), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]), msg.sender
}



}
