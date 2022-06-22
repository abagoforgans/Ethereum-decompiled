contract main {




// =====================  Runtime code  =====================


address owner;
uint8 decimals; offset 160
address newOwner;
uint256 version;
uint256 totalSupply;
uint8 stor4;
array of uint256 symbol;
array of uint256 name;
array of struct sub_80e9b93e;
mapping of uint256 sub_cb60f0c0;
mapping of uint256 balanceOf;
mapping of uint256 sub_ab9c571f;
array of struct stor11;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_80e9b93e(?) {
    require arg1 < sub_80e9b93e.length
    return sub_80e9b93e[arg1].field_0
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getBalancesListCount() {
    return stor11.length
}

function sub_ab9c571f(?) {
    return sub_ab9c571f[arg1]
}

function sub_b52ef800(?) {
    return bool(stor4)
}

function sub_cb60f0c0(?) {
    return sub_cb60f0c0[arg1]
}

function newOwner() {
    return newOwner
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function sub_8a81150e(?) {
    require msg.sender == owner
    stor4 = 0
    emit 0x2f3259a8 
    return 1
}

function sub_d0c4c836(?) {
    require msg.sender == owner
    require not stor4
    stor4 = 1
    emit 0x87b71350 
    return 1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_9e59a8b6(?) {
    require msg.sender == owner
    sub_80e9b93e.length++
    sub_80e9b93e[sub_80e9b93e.length].field_0 = arg1
    return 1
}

function sub_29b10fb9(?) {
    require msg.sender == owner
    require not stor4
    require arg1 <= balanceOf[this.address]
    require arg1 <= balanceOf[this.address]
    balanceOf[this.address] -= arg1
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += arg1
    emit Transfer(arg1, this.address, msg.sender);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor4
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    if not sub_ab9c571f[address(arg1)]:
        if balanceOf[address(arg1)]:
            stor11.length++
            stor175B[stor11.length] = arg1
            sub_ab9c571f[address(arg1)] = stor11.length
    return 1
}

function sub_f58dd35a(?) {
    require msg.sender == owner
    require not stor4
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
    if not balanceOf[address(arg1)]:
        require ext_code.size(this.address)
        call this.address.0x5b9b0867 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return 1
}

function sub_b73342dc(?) {
    if stor11.length:
        mem[128] = address(stor11.field_0)
        if (32 * stor11.length) + 32 > 64:
            mem[160] = address(stor11.field_256)
            idx = 160
            s = 1
            while (32 * stor11.length) + 96 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor11.length) + 128] = 32
    mem[(32 * stor11.length) + 160] = stor11.length
    mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
    return memory
      from (32 * stor11.length) + 128
       len (96 * stor11.length) + 64
}

function sub_5b9b0867(?) {
    if owner != msg.sender:
        require this.address == msg.sender
    require not balanceOf[address(arg1)]
    if not sub_ab9c571f[address(arg1)]:
        return 0
    require stor11.length - 1 < stor11.length
    require sub_ab9c571f[address(arg1)] < stor11.length
    stor11[stor10[address(arg1)]].field_0 = stor11[stor11.length].field_0
    sub_ab9c571f[stor11[stor11.length].field_0] = sub_ab9c571f[address(arg1)]
    stor11.length--
    if stor11.length > stor11.length - 1:
        idx = stor11.length - 1
        while stor11.length > idx:
            stor11[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_ab9c571f[address(arg1)] = 0
    return 1
}

function sub_aacf07b3(?) {
    if not sub_80e9b93e.length:
        mem[(32 * sub_80e9b93e.length) + 128] = 32
        mem[(32 * sub_80e9b93e.length) + 160] = sub_80e9b93e.length
        mem[(32 * sub_80e9b93e.length) + 192 len floor32(sub_80e9b93e.length)] = mem[128 len floor32(sub_80e9b93e.length)]
        return memory
          from (32 * sub_80e9b93e.length) + 128
           len (96 * sub_80e9b93e.length) + 64
    mem[128] = address(sub_80e9b93e.field_0)
    idx = 128
    s = 0
    while (32 * sub_80e9b93e.length) + 96 > idx:
        mem[idx + 32] = sub_80e9b93e[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_80e9b93e.length) + 192 len floor32(sub_80e9b93e.length)] = mem[128 len floor32(sub_80e9b93e.length)]
    return Array(len=sub_80e9b93e.length, data=mem[128 len floor32(sub_80e9b93e.length)], mem[(32 * sub_80e9b93e.length) + floor32(sub_80e9b93e.length) + 192 len (32 * sub_80e9b93e.length) - floor32(sub_80e9b93e.length)]), 
}

function sub_924e8a6b(?) {
    require msg.sender == owner
    if arg1 >= sub_80e9b93e.length:
        mem[160 len 1024] = 32, mem[160 len 992]
        return 32, 32, mem[160 len 1024]
    idx = arg1
    while idx < sub_80e9b93e.length - 1:
        require idx + 1 < sub_80e9b93e.length
        require idx < sub_80e9b93e.length
        mem[0] = 7
        sub_80e9b93e[idx].field_0 = sub_80e9b93e[idx].field_256
        idx = idx + 1
        continue 
    sub_80e9b93e.length--
    if sub_80e9b93e.length > sub_80e9b93e.length - 1:
        idx = sub_80e9b93e.length - 1
        while sub_80e9b93e.length > idx:
            sub_80e9b93e[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not sub_80e9b93e.length:
        mem[(32 * sub_80e9b93e.length) + 128] = 32
        mem[(32 * sub_80e9b93e.length) + 160] = sub_80e9b93e.length
        mem[(32 * sub_80e9b93e.length) + 192 len floor32(sub_80e9b93e.length)] = mem[128 len floor32(sub_80e9b93e.length)]
        return memory
          from (32 * sub_80e9b93e.length) + 128
           len (96 * sub_80e9b93e.length) + 64
    mem[128] = address(sub_80e9b93e.field_0)
    idx = 128
    s = 0
    while (32 * sub_80e9b93e.length) + 96 > idx:
        mem[idx + 32] = sub_80e9b93e[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_80e9b93e.length) + 192 len floor32(sub_80e9b93e.length)] = mem[128 len floor32(sub_80e9b93e.length)]
    return Array(len=sub_80e9b93e.length, data=mem[128 len floor32(sub_80e9b93e.length)], mem[(32 * sub_80e9b93e.length) + floor32(sub_80e9b93e.length) + 192 len (32 * sub_80e9b93e.length) - floor32(sub_80e9b93e.length)]), 
}

function transfer(address arg1, uint256 arg2) {
    require not stor4
    require 0 < sub_80e9b93e.length
    if not address(sub_80e9b93e.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'factory address has not been set, call setter function'
    require arg1
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'insufficient token balance'
    s = 0
    idx = sub_80e9b93e.length
    s = 0
    t = 0
    t = 0
    t = 0
    t = 0
    t = 0
    t = 0
    t = 0
    while 0 < idx:
        require idx - 1 < sub_80e9b93e.length
        mem[0] = 7
        require ext_code.size(sub_80e9b93e[idx].field_0)
        call sub_80e9b93e[idx].field_0.0x49181b9b with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_code.size(sub_80e9b93e[idx].field_0)
        call sub_80e9b93e[idx].field_0.0xb3356d37 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if address(ext_call.return_data[0]):
            if address(ext_call.return_data[0]) != msg.sender:
                revert with 0, 'transfer requirements not met'
            if not address(ext_call.return_data[32]):
                revert with 0, 'transfer requirements not met'
            if not address(ext_call.return_data[128]):
                revert with 0, 'transfer requirements not met'
            if not ext_call.return_data[0]:
                revert with 0, 'transfer requirements not met'
            require ext_call.return_data[0]
            require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
            require balanceOf[address(arg1)] + arg2 >= arg2
            if balanceOf[address(arg1)] + arg2 >= 5 * ext_call.return_data[0] / 4:
                revert with 0, 'transfer amount much more than offer price'
        else:
            require ext_code.size(sub_80e9b93e[idx].field_0)
            call sub_80e9b93e[idx].field_0.0x49181b9b with:
                 gas gas_remaining wei
                args msg.sender
            mem[96 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            require ext_code.size(sub_80e9b93e[idx].field_0)
            call sub_80e9b93e[idx].field_0.0xb3356d37 with:
                 gas gas_remaining wei
                args msg.sender
            mem[96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not address(ext_call.return_data[0]):
                s = sub_80e9b93e[idx].field_0
                idx = idx - 1
                s = ext_call.return_data[32]
                t = ext_call.return_data[0]
                t = ext_call.return_data[160]
                t = ext_call.return_data[128]
                t = ext_call.return_data[96]
                t = ext_call.return_data[64]
                t = ext_call.return_data[32]
                t = ext_call.return_data[0]
                continue 
            if address(ext_call.return_data[32]) != arg1:
                if address(ext_call.return_data[0]) != arg1:
                    if address(ext_call.return_data[128]) != arg1:
                        if address(ext_call.return_data[96]) != arg1:
                            if address(ext_call.return_data[64]) != arg1:
                                if address(ext_call.return_data[160]) != arg1:
                                    revert with 0, 'transfer is not to designated parties from contract'
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
            if arg2 >= 5 * ext_call.return_data[0] / 4:
                revert with 0, 'transfer amount much more than offer price'
        require address(ext_call.return_data[0])
        if ext_call.return_data[32]:
            revert with 0, 'contract has already closed'
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
        if not sub_ab9c571f[address(arg1)]:
            if balanceOf[address(arg1)]:
                stor11.length++
                stor175B[stor11.length] = arg1
                sub_ab9c571f[address(arg1)] = stor11.length
        if not balanceOf[msg.sender]:
            require ext_code.size(this.address)
            call this.address.0x5b9b0867 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        return 1
    require address(t)
    if s:
        revert with 0, 'contract has already closed'
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if not sub_ab9c571f[address(arg1)]:
        if balanceOf[address(arg1)]:
            stor11.length++
            stor175B[stor11.length] = arg1
            sub_ab9c571f[address(arg1)] = stor11.length
    if not balanceOf[msg.sender]:
        require ext_code.size(this.address)
        call this.address.0x5b9b0867 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return 1
}



}
