contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor6;
address adminAddress; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function mintingStopped() {
    return bool(stor6)
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function stopMinting() {
    require msg.sender == owner
    require not stor6
    stor6 = 1
    emit MintStopped()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor6
    require arg2 > 0
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32] = mem[ceil32(arg3.length) + -(arg4.length % 32) + floor32(arg4.length) + 192 len arg4.length % 32]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(2 * floor32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len arg4.length % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 192 len arg4.length % 32]))
        call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] with:
             gas gas_remaining wei
            args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        require ext_call.success
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function airdropAmounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            if idx < arg2.length:
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                if idx < arg2.length:
                    if s >= s:
                        idx = idx + 1
                        s = s
                        continue 
        else:
            if mem[(32 * idx) + (32 * arg1.length) + 160]:
                if 100 * 10^6 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 100 * 10^6:
                    if idx < arg2.length:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 100 * 10^6 * mem[(32 * idx) + (32 * arg1.length) + 160]
                        if idx < arg2.length:
                            if s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s:
                                idx = idx + 1
                                s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
                                continue 
        revert
    require balanceOf[address(msg.sender)] >= s
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _86 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_86));
        idx = idx + 1
        continue 
    require s <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= s
    return 1
}

function airdrop(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 > 0
    require arg1.length > 0
    if not arg2:
        require balanceOf[address(msg.sender)] >= 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
            require idx < arg1.length
            _107 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = 0
            emit Transfer(0, msg.sender, address(_107));
            idx = idx + 1
            continue 
        if 0 <= balanceOf[address(msg.sender)]:
            return 1
        revert
    require arg2
    require 100 * 10^6 * arg2 / arg2 == 100 * 10^6
    if not 100 * 10^6 * arg2:
        require balanceOf[address(msg.sender)] >= 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] + (100 * 10^6 * arg2) >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
            balanceOf[mem[(32 * idx) + 140 len 20]] += 100 * 10^6 * arg2
            require idx < arg1.length
            _104 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = 100 * 10^6 * arg2
            emit Transfer((100 * 10^6 * arg2), msg.sender, address(_104));
            idx = idx + 1
            continue 
        if 0 <= balanceOf[address(msg.sender)]:
            return 1
        revert
    require 100 * 10^6 * arg2
    require 100 * 10^6 * arg2 * arg1.length / 100 * 10^6 * arg2 == arg1.length
    require balanceOf[address(msg.sender)] >= 100 * 10^6 * arg2 * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + (100 * 10^6 * arg2) >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        balanceOf[mem[(32 * idx) + 140 len 20]] += 100 * 10^6 * arg2
        require idx < arg1.length
        _101 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 100 * 10^6 * arg2
        emit Transfer((100 * 10^6 * arg2), msg.sender, address(_101));
        idx = idx + 1
        continue 
    require 100 * 10^6 * arg2 * arg1.length <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -100 * 10^6 * arg2 * arg1.length
    return 1
}

function collect(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            require idx < arg2.length
            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
            require idx < arg2.length
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] >= 0
            require idx < arg2.length
            require idx < arg1.length
            require 0 <= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
            require idx < arg2.length
            require s >= s
            require idx < arg1.length
            _105 = mem[(32 * idx) + 128]
            require idx < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
            emit Transfer(0, address(_105), msg.sender);
            idx = idx + 1
            s = s
            continue 
        require mem[(32 * idx) + (32 * arg1.length) + 160]
        require 100 * 10^6 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 100 * 10^6
        require idx < arg2.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = 100 * 10^6 * mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        balanceOf[mem[(32 * idx) + 140 len 20]] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        _103 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        require idx < arg1.length
        _111 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_111), msg.sender);
        idx = idx + 1
        s = s + _103
        continue 
    require balanceOf[address(msg.sender)] + s >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += s
    return 1
}



}
