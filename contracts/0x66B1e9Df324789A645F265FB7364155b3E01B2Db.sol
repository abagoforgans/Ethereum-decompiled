contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 5223]




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 remaining;
address owner;
uint8 stor6;
uint256 stor6; offset 8
uint256 icoStatus;
address benAddress;
address bkaddress;
uint256 allowTransferToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function remaining() {
    return remaining
}

function bkaddress() {
    return bkaddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function frozenAccount(address arg1) {
    return bool(stor12[arg1])
}

function icoStatus() {
    return icoStatus
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function benAddress() {
    return benAddress
}

function allowTransferToken() {
    return allowTransferToken
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setTransferStatus(uint256 arg1) {
    if owner != msg.sender:
        require bkaddress == msg.sender
    allowTransferToken = arg1
}

function changeIcoStatus(uint8 arg1) {
    if owner != msg.sender:
        require bkaddress == msg.sender
    uint8(stor6.field_0) = arg1
    Mask(248, 0, stor6.field_8) = 0
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        require bkaddress == msg.sender
    balanceOf[stor5] = 0
    balanceOf[arg1] = remaining
    owner = arg1
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        require bkaddress == msg.sender
    stor12[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] > arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    remaining -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(uint256 arg1) {
    if owner != msg.sender:
        require bkaddress == msg.sender
    if arg1 > 0:
        balanceOf[stor5] += 10^18 * arg1
        totalSupply += 10^18 * arg1
        remaining += 10^18 * arg1
        emit Transfer((10^18 * arg1), 0, owner);
}

function withdraw(uint256 arg1) {
    if owner != msg.sender:
        require bkaddress == msg.sender
        if owner != msg.sender:
            require bkaddress == msg.sender
    call benAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw_all() {
    if owner != msg.sender:
        require bkaddress == msg.sender
        if owner != msg.sender:
            require bkaddress == msg.sender
    call benAddress with:
       value eth.balance(this.address) - 10^16 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    remaining -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if allowTransferToken != 1:
        require owner == msg.sender
    require not stor12[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function adm_trasfer(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require bkaddress == msg.sender
    if allowTransferToken != 1:
        require owner == arg1
    require not stor12[address(arg1)]
    require arg2
    require balanceOf[address(arg1)] > arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 < allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if allowTransferToken != 1:
        require owner == arg1
    require not stor12[address(arg1)]
    require arg2
    require balanceOf[address(arg1)] > arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sendTokenToSingleAccount(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require bkaddress == msg.sender
    require remaining > 0
    if allowTransferToken != 1:
        require owner == owner
    require not stor12[stor5]
    require arg1
    require balanceOf[stor5] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[stor5] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, owner, arg1);
    emit TokenTransferEvent(arg2, Array(len=13, data='SingleAccount'), owner, arg1);
}

function XPCoin() {
    totalSupply = 1000000000 * 10^18
    owner = msg.sender
    balanceOf[address(msg.sender)] = 1000000000 * 10^18
    bool(name.length) = 0
    name.length.field_1 = 9
    name.length.field_8 = 'IZGD Coin' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 4
    symbol.length.field_8 = 'IZGD' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    remaining = totalSupply
    icoStatus = 1
    benAddress = 0xe4a7a715be044186a3ac5c60c7df7dd1215f7419
    bkaddress = 0x44e00602e4b8f546f76983de2489d636cb443722
    allowTransferToken = 1
}

function sendToMultipleAccount(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner == msg.sender:
        idx = 0
        while idx < arg1.length:
            require remaining > 0
            require idx < mem[96]
            _77 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            if 1 == allowTransferToken:
                require not stor12[stor5]
                require mem[(32 * idx) + 140 len 20]
                require balanceOf[stor5] > mem[(32 * idx) + (32 * arg1.length) + 160]
                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(mem[(32 * idx) + 128])]
                mem[32] = 10
                balanceOf[stor5] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[0] = mem[(32 * idx) + 140 len 20]
                balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[mem[64]], owner, address(_77));
                require idx < mem[96]
                _113 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg1.length) + 128]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = 15
                mem[mem[64] + 96] = 'MultipleAccount'
                emit TokenTransferEvent(mem[mem[64]], Array(len=15, data='MultipleAccount'), owner, address(_113));
            else:
                require owner == owner
                require not stor12[stor5]
                require mem[(32 * idx) + 140 len 20]
                require balanceOf[stor5] > mem[(32 * idx) + (32 * arg1.length) + 160]
                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(mem[(32 * idx) + 128])]
                mem[32] = 10
                balanceOf[stor5] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[0] = mem[(32 * idx) + 140 len 20]
                balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[mem[64]], owner, address(_77));
                require idx < mem[96]
                _122 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg1.length) + 128]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = 15
                mem[mem[64] + 96] = 'MultipleAccount'
                emit TokenTransferEvent(mem[mem[64]], Array(len=15, data='MultipleAccount'), owner, address(_122));
            idx = idx + 1
            continue 
    else:
        require bkaddress == msg.sender
        idx = 0
        while idx < arg1.length:
            require remaining > 0
            require idx < mem[96]
            _79 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            if 1 == allowTransferToken:
                require not stor12[stor5]
                require mem[(32 * idx) + 140 len 20]
                require balanceOf[stor5] > mem[(32 * idx) + (32 * arg1.length) + 160]
                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(mem[(32 * idx) + 128])]
                mem[32] = 10
                balanceOf[stor5] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[0] = mem[(32 * idx) + 140 len 20]
                balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[mem[64]], owner, address(_79));
                require idx < mem[96]
                _116 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg1.length) + 128]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = 15
                mem[mem[64] + 96] = 'MultipleAccount'
                emit TokenTransferEvent(mem[mem[64]], Array(len=15, data='MultipleAccount'), owner, address(_116));
            else:
                require owner == owner
                require not stor12[stor5]
                require mem[(32 * idx) + 140 len 20]
                require balanceOf[stor5] > mem[(32 * idx) + (32 * arg1.length) + 160]
                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(mem[(32 * idx) + 128])]
                mem[32] = 10
                balanceOf[stor5] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[0] = mem[(32 * idx) + 140 len 20]
                balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[mem[64]], owner, address(_79));
                require idx < mem[96]
                _127 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg1.length) + 128]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = 15
                mem[mem[64] + 96] = 'MultipleAccount'
                emit TokenTransferEvent(mem[mem[64]], Array(len=15, data='MultipleAccount'), owner, address(_127));
            idx = idx + 1
            continue 
    return idx
}



}
