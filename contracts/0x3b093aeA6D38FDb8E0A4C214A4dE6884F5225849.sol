contract main {




// =====================  Runtime code  =====================


const sub_044d96a8(?) = 0

const name = 'ETHLINKERDEMO'

const decimals = 18

const _totalLimit = 100000000000000 * 10^18

const mintMax = 0

const sub_7143ddab(?) = 0

const sub_74f8d24c(?) = 0

const symbol = 'ETHLINKERDEMO'

const sub_e6d49543(?) = 1554598008


uint8 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 mintTotal;
uint256 sub_0ee3443f;
uint256 airBegintime;
uint256 airEndtime;
uint256 sub_a6b1c2b4;
uint256 airLimitCount;
mapping of uint256 airCountOf;
uint256 sub_a80987f0;
uint256 sub_4b66a7cf;
uint256 sub_18996fd3;
uint256 sub_26de0634;
uint256 sub_76ccb1d3;
uint256 sub_73786c0a;
address sub_da3ed960Address;

function sub_0ee3443f(?) {
    return sub_0ee3443f
}

function totalSupply() {
    return totalSupply
}

function sub_18996fd3(?) {
    return sub_18996fd3
}

function sub_26de0634(?) {
    return sub_26de0634
}

function sub_4b66a7cf(?) {
    return sub_4b66a7cf
}

function paused() {
    return bool(stor0)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_73786c0a(?) {
    return sub_73786c0a
}

function sub_76ccb1d3(?) {
    return sub_76ccb1d3
}

function owner() {
    return owner
}

function airCountOf(address arg1) {
    return airCountOf[arg1]
}

function sub_a6b1c2b4(?) {
    return sub_a6b1c2b4
}

function sub_a80987f0(?) {
    return sub_a80987f0
}

function airEndtime() {
    return airEndtime
}

function mintTotal() {
    return mintTotal
}

function sub_da3ed960(?) {
    return sub_da3ed960Address
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function airBegintime() {
    return airBegintime
}

function airLimitCount() {
    return airLimitCount
}

function sub_e8345bd1(?) {
    return sub_e8345bd1[arg1].field_0
}

function sub_7ae29d66(?) {
    require msg.sender == owner
    require block.timestamp < 1554598008
    revert
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Paused(msg.sender);
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require not stor0
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function changeAirdropSetting(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    airBegintime = arg1
    airEndtime = arg2
    sub_a6b1c2b4 = arg3
    airLimitCount = arg4
    emit AirdropSetting(arg1, arg2, arg3, arg4);
}

function sub_d66f547c(?) {
    require msg.sender == owner
    require arg2 <= 999999999
    sub_18996fd3 = arg1
    sub_26de0634 = arg2
    sub_76ccb1d3 = arg3
    sub_73786c0a = arg4
    sub_da3ed960Address = arg5
    emit 0xcb1ecaaf: arg1, arg2, arg3, arg4, arg5
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function withdraw() {
    call sub_da3ed960Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(eth.balance(this.address), msg.sender, sub_da3ed960Address);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require not stor0
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp >= 1554598008
    require arg2 > 0
    require arg2 + mintTotal >= mintTotal
    mintTotal += arg2
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require 100000000000000 * 10^18 >= arg2 + totalSupply
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit Mint(arg2, arg1);
    return 1
}

function airdrop() payable {
    require block.timestamp >= airBegintime
    require block.timestamp <= airEndtime
    require not msg.value
    require 0 < sub_a6b1c2b4
    require sub_a6b1c2b4 + sub_0ee3443f >= sub_0ee3443f
    sub_0ee3443f += sub_a6b1c2b4
    if airLimitCount > 0:
        require airCountOf[msg.sender] < airLimitCount
    require msg.sender
    require sub_a6b1c2b4 + totalSupply >= totalSupply
    totalSupply += sub_a6b1c2b4
    require 100000000000000 * 10^18 >= sub_a6b1c2b4 + totalSupply
    require sub_a6b1c2b4 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += sub_a6b1c2b4
    emit Transfer(sub_a6b1c2b4, 0, msg.sender);
    require airCountOf[msg.sender] + 1 >= airCountOf[msg.sender]
    airCountOf[msg.sender]++
    emit Airdrop(sub_a6b1c2b4, msg.sender, airCountOf[msg.sender] + 1);
}

function invest() payable {
    require block.timestamp >= sub_76ccb1d3
    require block.timestamp <= sub_73786c0a
    require msg.value >= sub_18996fd3
    require 10^18 * msg.value * sub_26de0634 / 10^18 > 0
    require (10^18 * msg.value * sub_26de0634 / 10^18) + sub_a80987f0 >= sub_a80987f0
    sub_a80987f0 += 10^18 * msg.value * sub_26de0634 / 10^18
    require msg.value + sub_4b66a7cf >= sub_4b66a7cf
    sub_4b66a7cf += msg.value
    require msg.sender
    require (10^18 * msg.value * sub_26de0634 / 10^18) + totalSupply >= totalSupply
    totalSupply += 10^18 * msg.value * sub_26de0634 / 10^18
    require 100000000000000 * 10^18 >= (10^18 * msg.value * sub_26de0634 / 10^18) + totalSupply
    require (10^18 * msg.value * sub_26de0634 / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value * sub_26de0634 / 10^18
    emit Transfer((10^18 * msg.value * sub_26de0634 / 10^18), 0, msg.sender);
    emit Invest(msg.value, 10^18 * msg.value * sub_26de0634 / 10^18, msg.sender, sub_26de0634);
}

function transfer(address arg1, uint256 arg2) {
    require not stor0
    if sub_e8345bd1[address(msg.sender)].field_0:
        require arg2 <= balanceOf[address(msg.sender)]
        s = 0
        idx = 0
        while idx < sub_e8345bd1[address(msg.sender)].field_256:
            mem[32] = 4
            require idx < sub_e8345bd1[address(msg.sender)].field_256
            mem[0] = sha3(address(msg.sender), 4) + 1
            if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_e8345bd1', 4)))].field_0:
                require balanceOf[address(msg.sender)] - arg2 >= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_e8345bd1', 4)))].field_256
            s = (2 * idx) + sha3(sha3(address(msg.sender), 4) + 1)
            idx = idx + 1
            continue 
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor0
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if sub_e8345bd1[address(arg1)].field_0:
        require arg3 <= balanceOf[address(arg1)]
        s = 0
        idx = 0
        while idx < sub_e8345bd1[address(arg1)].field_256:
            mem[32] = 4
            require idx < sub_e8345bd1[address(arg1)].field_256
            mem[0] = sha3(address(arg1), 4) + 1
            if block.timestamp < stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0:
                require balanceOf[address(arg1)] - arg3 >= stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256
            s = (2 * idx) + sha3(sha3(address(arg1), 4) + 1)
            idx = idx + 1
            continue 
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if msg.value:
        require block.timestamp >= sub_76ccb1d3
        require block.timestamp <= sub_73786c0a
        require msg.value >= sub_18996fd3
        require 10^18 * msg.value * sub_26de0634 / 10^18 > 0
        require (10^18 * msg.value * sub_26de0634 / 10^18) + sub_a80987f0 >= sub_a80987f0
        sub_a80987f0 += 10^18 * msg.value * sub_26de0634 / 10^18
        require msg.value + sub_4b66a7cf >= sub_4b66a7cf
        sub_4b66a7cf += msg.value
        require msg.sender
        require (10^18 * msg.value * sub_26de0634 / 10^18) + totalSupply >= totalSupply
        totalSupply += 10^18 * msg.value * sub_26de0634 / 10^18
        require 100000000000000 * 10^18 >= (10^18 * msg.value * sub_26de0634 / 10^18) + totalSupply
        require (10^18 * msg.value * sub_26de0634 / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * msg.value * sub_26de0634 / 10^18
        emit Transfer((10^18 * msg.value * sub_26de0634 / 10^18), 0, msg.sender);
        emit Invest(msg.value, 10^18 * msg.value * sub_26de0634 / 10^18, msg.sender, sub_26de0634);
    else:
        require block.timestamp >= airBegintime
        require block.timestamp <= airEndtime
        require not msg.value
        require 0 < sub_a6b1c2b4
        require sub_a6b1c2b4 + sub_0ee3443f >= sub_0ee3443f
        sub_0ee3443f += sub_a6b1c2b4
        if airLimitCount > 0:
            require airCountOf[msg.sender] < airLimitCount
        require msg.sender
        require sub_a6b1c2b4 + totalSupply >= totalSupply
        totalSupply += sub_a6b1c2b4
        require 100000000000000 * 10^18 >= sub_a6b1c2b4 + totalSupply
        require sub_a6b1c2b4 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += sub_a6b1c2b4
        emit Transfer(sub_a6b1c2b4, 0, msg.sender);
        require airCountOf[msg.sender] + 1 >= airCountOf[msg.sender]
        airCountOf[msg.sender]++
        emit Airdrop(sub_a6b1c2b4, msg.sender, airCountOf[msg.sender] + 1);
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    require arg1.length > 0
    require arg1.length <= 20
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _31 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require not stor0
        if sub_e8345bd1[address(msg.sender)].field_0:
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            t = 0
            s = 0
            while s < sub_e8345bd1[address(msg.sender)].field_256:
                mem[32] = 4
                require s < sub_e8345bd1[address(msg.sender)].field_256
                mem[0] = sha3(address(msg.sender), 4) + 1
                if block.timestamp < stor[(2 * s) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_e8345bd1', 4)))].field_0:
                    require balanceOf[address(msg.sender)] - mem[(32 * idx) + (32 * arg1.length) + 160] >= stor[(2 * s) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_e8345bd1', 4)))].field_256
                t = (2 * s) + sha3(sha3(address(msg.sender), 4) + 1)
                s = s + 1
                continue 
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_31));
        idx = idx + 1
        continue 
    return 1
}

function lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    require arg1
    if not arg2:
        require sub_e8345bd1[address(arg1)].field_0 != 1
        sub_e8345bd1[address(arg1)].field_256 = 0
        if sub_e8345bd1[address(arg1)].field_256 <= 0:
            sub_e8345bd1[address(arg1)].field_0 = arg2
            if not arg2:
                mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
            else:
                require arg3.length == arg4.length
                require arg3.length > 0
                require arg3.length <= 12
                require 0 < arg3.length
                require 0 < arg4.length
                _57 = mem[(32 * arg3.length) + 160]
                mem[32] = 4
                mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _57
                sub_e8345bd1[address(arg1)].field_256++
                mem[0] = sha3(address(arg1), 4) + 1
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _57
                idx = 1
                s = _57
                t = mem[128]
                while idx < arg3.length:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] > t
                    require idx < mem[(32 * arg3.length) + 128]
                    require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                    mem[0] = arg1
                    mem[32] = 4
                    _388 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_388] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_388 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_388]
                    stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_388 + 32]
                    require idx < mem[96]
                    require idx < mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    s = mem[(32 * arg3.length) + (32 * idx) + 160]
                    t = mem[(32 * idx) + 128]
                    continue 
                _312 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _314 = mem[96]
                mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                mem[(32 * mem[96]) + _312 + 96] = mem[(32 * arg3.length) + 128]
                _565 = mem[(32 * arg3.length) + 128]
                mem[(32 * _314) + _312 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                          mem[mem[64] len (32 * _565) + (32 * _314) + _312 + -mem[64] + 128],
                          arg1,
                          arg2,
        else:
            idx = 0
            while 2 * sub_e8345bd1[address(arg1)].field_256 > idx:
                sub_e8345bd1[address(arg1)][idx + 1].field_0 = 0
                sub_e8345bd1[address(arg1)][idx + 1].field_256 = 0
                idx = idx + 2
                continue 
            sub_e8345bd1[address(arg1)].field_0 = arg2
            if not arg2:
                mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
            else:
                require arg3.length == arg4.length
                require arg3.length > 0
                require arg3.length <= 12
                require 0 < arg3.length
                require 0 < arg4.length
                _459 = mem[(32 * arg3.length) + 160]
                mem[32] = 4
                mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _459
                sub_e8345bd1[address(arg1)].field_256++
                mem[0] = sha3(address(arg1), 4) + 1
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _459
                idx = 1
                s = _459
                t = mem[128]
                while idx < arg3.length:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] > t
                    require idx < mem[(32 * arg3.length) + 128]
                    require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                    mem[0] = arg1
                    mem[32] = 4
                    _655 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_655] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_655 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_655]
                    stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_655 + 32]
                    require idx < mem[96]
                    require idx < mem[(32 * arg3.length) + 128]
                    idx = idx + 1
                    s = mem[(32 * arg3.length) + (32 * idx) + 160]
                    t = mem[(32 * idx) + 128]
                    continue 
                _569 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _571 = mem[96]
                mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                mem[(32 * mem[96]) + _569 + 96] = mem[(32 * arg3.length) + 128]
                _702 = mem[(32 * arg3.length) + 128]
                mem[(32 * _571) + _569 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                          mem[mem[64] len (32 * _702) + (32 * _571) + _569 + -mem[64] + 128],
                          arg1,
                          arg2,
    else:
        if 1 == arg2:
            require sub_e8345bd1[address(arg1)].field_0 != 1
            sub_e8345bd1[address(arg1)].field_256 = 0
            if sub_e8345bd1[address(arg1)].field_256 <= 0:
                sub_e8345bd1[address(arg1)].field_0 = arg2
                if not arg2:
                    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                    mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                    emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
                else:
                    require arg3.length == arg4.length
                    require arg3.length > 0
                    require arg3.length <= 12
                    require 0 < arg3.length
                    require 0 < arg4.length
                    _80 = mem[(32 * arg3.length) + 160]
                    mem[32] = 4
                    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _80
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _80
                    idx = 1
                    s = _80
                    t = mem[128]
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > t
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                        mem[0] = arg1
                        mem[32] = 4
                        _392 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[96]
                        mem[_392] = mem[(32 * idx) + 128]
                        require idx < mem[(32 * arg3.length) + 128]
                        mem[_392 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                        sub_e8345bd1[address(arg1)].field_256++
                        mem[0] = sha3(address(arg1), 4) + 1
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_392]
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_392 + 32]
                        require idx < mem[96]
                        require idx < mem[(32 * arg3.length) + 128]
                        idx = idx + 1
                        s = mem[(32 * arg3.length) + (32 * idx) + 160]
                        t = mem[(32 * idx) + 128]
                        continue 
                    _319 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _321 = mem[96]
                    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    mem[(32 * mem[96]) + _319 + 96] = mem[(32 * arg3.length) + 128]
                    _577 = mem[(32 * arg3.length) + 128]
                    mem[(32 * _321) + _319 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                              mem[mem[64] len (32 * _577) + (32 * _321) + _319 + -mem[64] + 128],
                              arg1,
                              arg2,
            else:
                idx = 0
                while 2 * sub_e8345bd1[address(arg1)].field_256 > idx:
                    sub_e8345bd1[address(arg1)][idx + 1].field_0 = 0
                    sub_e8345bd1[address(arg1)][idx + 1].field_256 = 0
                    idx = idx + 2
                    continue 
                sub_e8345bd1[address(arg1)].field_0 = arg2
                if not arg2:
                    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                    mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                    emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
                else:
                    require arg3.length == arg4.length
                    require arg3.length > 0
                    require arg3.length <= 12
                    require 0 < arg3.length
                    require 0 < arg4.length
                    _467 = mem[(32 * arg3.length) + 160]
                    mem[32] = 4
                    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _467
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _467
                    idx = 1
                    s = _467
                    t = mem[128]
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > t
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                        mem[0] = arg1
                        mem[32] = 4
                        _658 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[96]
                        mem[_658] = mem[(32 * idx) + 128]
                        require idx < mem[(32 * arg3.length) + 128]
                        mem[_658 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                        sub_e8345bd1[address(arg1)].field_256++
                        mem[0] = sha3(address(arg1), 4) + 1
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_658]
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_658 + 32]
                        require idx < mem[96]
                        require idx < mem[(32 * arg3.length) + 128]
                        idx = idx + 1
                        s = mem[(32 * arg3.length) + (32 * idx) + 160]
                        t = mem[(32 * idx) + 128]
                        continue 
                    _581 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _583 = mem[96]
                    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    mem[(32 * mem[96]) + _581 + 96] = mem[(32 * arg3.length) + 128]
                    _709 = mem[(32 * arg3.length) + 128]
                    mem[(32 * _583) + _581 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                              mem[mem[64] len (32 * _709) + (32 * _583) + _581 + -mem[64] + 128],
                              arg1,
                              arg2,
        else:
            require 2 == arg2
            require sub_e8345bd1[address(arg1)].field_0 != 1
            sub_e8345bd1[address(arg1)].field_256 = 0
            if sub_e8345bd1[address(arg1)].field_256 <= 0:
                sub_e8345bd1[address(arg1)].field_0 = arg2
                if not arg2:
                    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                    mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                    emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
                else:
                    require arg3.length == arg4.length
                    require arg3.length > 0
                    require arg3.length <= 12
                    require 0 < arg3.length
                    require 0 < arg4.length
                    _103 = mem[(32 * arg3.length) + 160]
                    mem[32] = 4
                    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _103
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _103
                    idx = 1
                    s = _103
                    t = mem[128]
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > t
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                        mem[0] = arg1
                        mem[32] = 4
                        _396 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[96]
                        mem[_396] = mem[(32 * idx) + 128]
                        require idx < mem[(32 * arg3.length) + 128]
                        mem[_396 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                        sub_e8345bd1[address(arg1)].field_256++
                        mem[0] = sha3(address(arg1), 4) + 1
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_396]
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_396 + 32]
                        require idx < mem[96]
                        require idx < mem[(32 * arg3.length) + 128]
                        idx = idx + 1
                        s = mem[(32 * arg3.length) + (32 * idx) + 160]
                        t = mem[(32 * idx) + 128]
                        continue 
                    _326 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _328 = mem[96]
                    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    mem[(32 * mem[96]) + _326 + 96] = mem[(32 * arg3.length) + 128]
                    _589 = mem[(32 * arg3.length) + 128]
                    mem[(32 * _328) + _326 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                              mem[mem[64] len (32 * _589) + (32 * _328) + _326 + -mem[64] + 128],
                              arg1,
                              arg2,
            else:
                idx = 0
                while 2 * sub_e8345bd1[address(arg1)].field_256 > idx:
                    sub_e8345bd1[address(arg1)][idx + 1].field_0 = 0
                    sub_e8345bd1[address(arg1)][idx + 1].field_256 = 0
                    idx = idx + 2
                    continue 
                sub_e8345bd1[address(arg1)].field_0 = arg2
                if not arg2:
                    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
                    mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                    emit Lock(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, arg1, arg2);
                else:
                    require arg3.length == arg4.length
                    require arg3.length > 0
                    require arg3.length <= 12
                    require 0 < arg3.length
                    require 0 < arg4.length
                    _475 = mem[(32 * arg3.length) + 160]
                    mem[32] = 4
                    mem[64] = (32 * arg4.length) + (32 * arg3.length) + 224
                    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = mem[128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + 192] = _475
                    sub_e8345bd1[address(arg1)].field_256++
                    mem[0] = sha3(address(arg1), 4) + 1
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_0 = mem[128]
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4))) + (2 * sub_e8345bd1[address(arg1)].field_256)].field_256 = _475
                    idx = 1
                    s = _475
                    t = mem[128]
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > t
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < s
                        mem[0] = arg1
                        mem[32] = 4
                        _661 = mem[64]
                        mem[64] = mem[64] + 64
                        require idx < mem[96]
                        mem[_661] = mem[(32 * idx) + 128]
                        require idx < mem[(32 * arg3.length) + 128]
                        mem[_661 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                        sub_e8345bd1[address(arg1)].field_256++
                        mem[0] = sha3(address(arg1), 4) + 1
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_0 = mem[_661]
                        stor[(2 * sub_e8345bd1[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e8345bd1', 4)))].field_256 = mem[_661 + 32]
                        require idx < mem[96]
                        require idx < mem[(32 * arg3.length) + 128]
                        idx = idx + 1
                        s = mem[(32 * arg3.length) + (32 * idx) + 160]
                        t = mem[(32 * idx) + 128]
                        continue 
                    _593 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _595 = mem[96]
                    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    mem[(32 * mem[96]) + _593 + 96] = mem[(32 * arg3.length) + 128]
                    _716 = mem[(32 * arg3.length) + 128]
                    mem[(32 * _595) + _593 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
                    emit Lock(address arg1, uint8 arg2, uint256[] arg3, uint256[] arg4):
                              mem[mem[64] len (32 * _716) + (32 * _595) + _593 + -mem[64] + 128],
                              arg1,
                              arg2,
    return 1
}



}
