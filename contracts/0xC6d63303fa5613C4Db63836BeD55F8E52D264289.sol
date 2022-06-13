contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address gameAddress;
address sub_38c5de72Address;
uint256 sub_0c39ab70;
mapping of uint256 sub_43b3f2bf;
array of struct sub_0acee814;
uint256 sub_a31c76d2;
uint8 stor12;
mapping of uint256 sub_29877ce0;
array of struct sub_051a7103;
uint256 sub_b8dbdb1d;
uint8 sub_150b27d2;

function sub_051a7103(?) {
    require arg1 < sub_051a7103.length
    return sub_051a7103[arg1].field_0
}

function name() {
    return name[0 len name.length]
}

function sub_0acee814(?) {
    require arg1 < sub_0acee814.length
    return sub_0acee814[arg1].field_0
}

function sub_0c39ab70(?) {
    return sub_0c39ab70
}

function sub_150b27d2(?) {
    return bool(sub_150b27d2)
}

function totalSupply() {
    return totalSupply
}

function sub_29877ce0(?) {
    return sub_29877ce0[arg1]
}

function decimals() {
    return decimals
}

function sub_38c5de72(?) {
    return sub_38c5de72Address
}

function sub_43b3f2bf(?) {
    return sub_43b3f2bf[arg1]
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

function gameAddress() {
    return gameAddress
}

function sub_a31c76d2(?) {
    return sub_a31c76d2
}

function sub_b8dbdb1d(?) {
    return sub_b8dbdb1d
}

function sub_d8701ecc(?) {
    return bool(stor12)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_4b98089c(?) {
    require msg.sender == gameAddress
    stor12 = 1
}

function sub_22f2dd3e(?) {
    require msg.sender == owner
    sub_0c39ab70 = arg1
}

function sub_bac8559d(?) {
    require msg.sender == owner
    require arg1
    sub_38c5de72Address = arg1
}

function setGameAddress(address arg1) {
    require msg.sender == owner
    require arg1
    gameAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_fe798624(?) {
    require msg.sender == gameAddress
    require sub_38c5de72Address
    sub_150b27d2 = 1
}

function sub_0a0f6d44(?) {
    require msg.sender == gameAddress
    require arg1 <= sub_a31c76d2
    sub_a31c76d2 -= arg1
}

function sub_83e36166(?) {
    require msg.sender == gameAddress
    require arg1 <= sub_b8dbdb1d
    sub_b8dbdb1d -= arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function swapTokens(address arg1, uint256 arg2) {
    require msg.sender == sub_38c5de72Address
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buyTokens(address arg1, uint256 arg2) {
    require msg.sender == gameAddress
    require arg1
    require (10^18 * arg2) + totalSupply >= totalSupply
    totalSupply += 10^18 * arg2
    require (10^18 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), 0, arg1);
}

function sub_46c36360(?) {
    require msg.sender == gameAddress
    idx = 0
    while idx < sub_0acee814.length:
        mem[0] = sub_0acee814[idx].field_0
        mem[32] = 9
        sub_43b3f2bf[stor10[idx].field_0] = 0
        idx = idx + 1
        continue 
    sub_0acee814.length = 0
    idx = 0
    while sub_0acee814.length > idx:
        sub_0acee814[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_a31c76d2 = 0
    stor12 = 0
}

function sub_2c587453(?) {
    require msg.sender == gameAddress
    require sub_38c5de72Address
    idx = 0
    while idx < sub_051a7103.length:
        mem[0] = sub_051a7103[idx].field_0
        mem[32] = 13
        sub_29877ce0[stor14[idx].field_0] = 0
        idx = idx + 1
        continue 
    sub_051a7103.length = 0
    idx = 0
    while sub_051a7103.length > idx:
        sub_051a7103[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_b8dbdb1d = 0
    sub_150b27d2 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    return 1
}

function sub_e71b2379(?) {
    require not stor12
    require sub_0acee814.length < sub_0c39ab70
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if not sub_43b3f2bf[address(msg.sender)]:
        sub_0acee814.length++
        sub_0acee814[sub_0acee814.length].field_0 = msg.sender
    require arg1 + sub_43b3f2bf[address(msg.sender)] >= sub_43b3f2bf[address(msg.sender)]
    sub_43b3f2bf[address(msg.sender)] += arg1
    require arg1 + sub_a31c76d2 >= sub_a31c76d2
    sub_a31c76d2 += arg1
}

function sub_66f29506(?) {
    require sub_38c5de72Address
    require not sub_150b27d2
    require sub_051a7103.length < sub_0c39ab70
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if not sub_29877ce0[address(msg.sender)]:
        sub_051a7103.length++
        sub_051a7103[sub_051a7103.length].field_0 = msg.sender
    require arg1 + sub_29877ce0[address(msg.sender)] >= sub_29877ce0[address(msg.sender)]
    sub_29877ce0[address(msg.sender)] += arg1
    require arg1 + sub_b8dbdb1d >= sub_b8dbdb1d
    sub_b8dbdb1d += arg1
}

function sub_8526edbe(?) {
    if sub_0acee814.length:
        mem[128] = address(sub_0acee814.field_0)
        if (32 * sub_0acee814.length) + 32 > 64:
            mem[160] = address(sub_0acee814.field_256)
            idx = 160
            s = 1
            while (32 * sub_0acee814.length) + 96 > idx:
                mem[idx + 32] = sub_0acee814[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_0acee814.length) + 128] = 32
    mem[(32 * sub_0acee814.length) + 160] = sub_0acee814.length
    mem[(32 * sub_0acee814.length) + 192 len floor32(sub_0acee814.length)] = mem[128 len floor32(sub_0acee814.length)]
    return memory
      from (32 * sub_0acee814.length) + 128
       len (96 * sub_0acee814.length) + 64
}

function sub_06dd5730(?) {
    if not sub_051a7103.length:
        mem[(32 * sub_051a7103.length) + 128] = 32
        mem[(32 * sub_051a7103.length) + 160] = sub_051a7103.length
        mem[(32 * sub_051a7103.length) + 192 len floor32(sub_051a7103.length)] = mem[128 len floor32(sub_051a7103.length)]
        return memory
          from (32 * sub_051a7103.length) + 128
           len (96 * sub_051a7103.length) + 64
    mem[128] = address(sub_051a7103.field_0)
    idx = 128
    s = 0
    while (32 * sub_051a7103.length) + 96 > idx:
        mem[idx + 32] = sub_051a7103[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_051a7103.length) + 192 len floor32(sub_051a7103.length)] = mem[128 len floor32(sub_051a7103.length)]
    return Array(len=sub_051a7103.length, data=mem[128 len floor32(sub_051a7103.length)], mem[(32 * sub_051a7103.length) + floor32(sub_051a7103.length) + 192 len (32 * sub_051a7103.length) - floor32(sub_051a7103.length)]), 
}



}
