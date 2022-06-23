contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor1;
mapping of address stor2;
uint256 stor3;
address owner;
address newOwner;
uint256 symbol;
uint256 price;
uint256 name;
uint8 decimals;
uint256 stor10;
uint256 stor11;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name
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
    return symbol
}

function price() {
    return price
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    require balanceOf[0] <= stor10
    return (stor10 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function closeCrowdsale() {
    require msg.sender == owner
    Mask(248, 0, stor0.field_8) = 1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function safeWithdrawal() {
    require msg.sender == owner
    require uint8(stor0.field_8)
    require not uint8(stor0.field_0)
    call msg.sender with:
       value stor11 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        uint8(stor0.field_0) = 0
    else:
        uint8(stor0.field_0) = 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getWhitelist() {
    if stor3:
        mem[128 len 32 * stor3] = code.data[7793 len 32 * stor3]
    idx = 0
    while idx < stor3:
        mem[0] = idx
        mem[32] = 2
        require idx < stor3
        mem[(32 * idx) + 128] = stor2[idx]
        idx = idx + 1
        continue 
    mem[(32 * stor3) + 192 len floor32(stor3)] = mem[128 len floor32(stor3)]
    return Array(len=stor3, data=mem[128 len floor32(stor3)], mem[(32 * stor3) + floor32(stor3) + 192 len (32 * stor3) - floor32(stor3)]), 
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function _fallback() payable {
    require bool(stor1[address(msg.sender)]) == 1
    require not uint8(stor0.field_8)
    require price > 0
    require price
    require stor11 + msg.value >= stor11
    stor11 += msg.value
    require msg.value / price <= balanceOf[stor4]
    balanceOf[stor4] -= msg.value / price
    require balanceOf[address(msg.sender)] + (msg.value / price) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / price
    emit Transfer((msg.value / price), owner, msg.sender);
}

function enableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if bool(stor1[mem[(32 * idx) + 140 len 20]]) != 1:
            require idx < arg1.length
            stor1[mem[(32 * idx) + 140 len 20]] = 1
            require idx < arg1.length
            mem[0] = stor3
            mem[32] = 2
            stor2[stor3] = mem[(32 * idx) + 140 len 20]
            stor3++
        idx = idx + 1
        continue 
    return 1
}

function getBalances() {
    if not stor3:
        mem[(32 * stor3) + 128] = stor3
    else:
        mem[128 len 32 * stor3] = code.data[7793 len 32 * stor3]
        mem[(32 * stor3) + 128] = stor3
        mem[(32 * stor3) + 160 len 32 * stor3] = code.data[7793 len 32 * stor3]
    idx = 0
    while idx < stor3:
        require idx < stor3
        mem[(32 * idx) + 128] = stor2[idx]
        mem[0] = stor2[idx]
        mem[32] = 12
        require idx < mem[(32 * stor3) + 128]
        mem[(32 * idx) + (32 * stor3) + 160] = balanceOf[stor2[idx]]
        idx = idx + 1
        continue 
    mem[(64 * stor3) + 160] = 64
    mem[(64 * stor3) + 224] = stor3
    mem[(64 * stor3) + 256 len floor32(stor3)] = mem[128 len floor32(stor3)]
    mem[(64 * stor3) + 192] = (32 * stor3) + 96
    mem[(98 * stor3) + 256] = mem[(32 * stor3) + 128]
    mem[(98 * stor3) + 288 len floor32(mem[(32 * stor3) + 128])] = mem[(32 * stor3) + 160 len floor32(mem[(32 * stor3) + 128])]
    return memory
      from (64 * stor3) + 160
       len (32 * mem[(32 * stor3) + 128]) + (161 * stor3) + 128
}



}
