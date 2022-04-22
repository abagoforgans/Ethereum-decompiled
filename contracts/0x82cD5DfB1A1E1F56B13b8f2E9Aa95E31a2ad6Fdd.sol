contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 6
    stor0.length.field_8 = 'FoxOne' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'MTUM' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    require not msg.value
    return code.data[352 len 2501]
}



// =====================  Runtime code  =====================


array of uint256 team;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function team() {
    return team[0 len team.length]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
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

function sub_a11833bd(?) {
    totalSupply = 10^9 * 10^decimals
    balanceOf[address(msg.sender)] = 10^9 * 10^decimals
    owner = msg.sender
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

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + balanceOf[address(msg.sender)] > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= balanceOf[address(msg.sender)]
    balanceOf[address(arg1)] += balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    owner = arg1
    emit ChangeOwner(balanceOf[address(msg.sender)], msg.sender, arg1);
}



}
