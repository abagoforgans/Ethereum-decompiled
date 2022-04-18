contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor12;

function _fallback() payable {
    stor2 = 18
    require not msg.value
    mem[96 len -5027] = code.data[5384 len -5027]
    mem[64] = -4931
    stor3 = mem[96] * 10^stor2
    stor12[address(msg.sender)] = mem[96] * 10^stor2
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[357 len 5027]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
array of struct tokenSender;
array of struct proposal;
uint8 stor6;
array of struct airdrop;
address fondAddress;
address sub_f38c1f44Address;
uint256 sub_be37f80e;
uint256 sub_18ef13ac;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_18ef13ac(?) {
    return sub_18ef13ac
}

function decimals() {
    return decimals
}

function airdrop() {
    return airdrop[0 len airdrop.length].field_0
}

function fond() {
    return fondAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function proposal() {
    return proposal[0 len proposal.length].field_0
}

function pushProposal() {
    return bool(stor6)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenSender() {
    return tokenSender[0 len tokenSender.length].field_0
}

function sub_be37f80e(?) {
    return sub_be37f80e
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_f38c1f44(?) {
    return sub_f38c1f44Address
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function sub_aa4ab4e3(?) {
    if sub_be37f80e >= 0:
        if sub_be37f80e:
            return 1
        else:
            return 0
    else:
        return 0
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function sub_cf968e5d(?) {
    mem[ceil32(arg1.length) + 192] = uint256(airdrop.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + airdrop.length + 160 > idx:
        mem[idx + 32] = airdrop[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not airdrop.length:
    else:
        airdrop[].field_0 = Array(len=airdrop.length, data=mem[ceil32(arg1.length) + 192 len airdrop.length])
        sub_18ef13ac = arg2
        if sub_be37f80e < 0:
        else:
            if sub_be37f80e:
            else:
}

function sub_ee90960f(?) {
    require sub_be37f80e <= allowance[stor9][address(msg.sender)]
    allowance[stor9][address(msg.sender)] -= sub_be37f80e
    require fondAddress
    require balanceOf[stor9] >= sub_be37f80e
    require balanceOf[stor8] + sub_be37f80e > balanceOf[stor8]
    balanceOf[stor9] -= sub_be37f80e
    balanceOf[stor8] += sub_be37f80e
    emit Transfer(sub_be37f80e, sub_f38c1f44Address, fondAddress);
    require balanceOf[stor8] + balanceOf[stor9] == balanceOf[stor9] + balanceOf[stor8]
    if sub_be37f80e >= 0:
        if sub_be37f80e:
            return 1
        else:
            return 0
    else:
        return 0
}

function sub_eaa75971(?) {
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 224
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + tokenSender.length + 192 > idx:
        mem[idx + 32] = tokenSender[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(tokenSender.length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(tokenSender.length) + proposal.length + 224 > idx:
        mem[idx + 32] = proposal[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not tokenSender.length:
        return 0
    return 1
}



}
