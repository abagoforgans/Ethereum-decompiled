contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor7;
uint8 stor8;
uint256 stor9;

function _fallback() payable {
    mem[96 len -1869] = code.data[2312 len -1869]
    mem[64] = -1773
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2.length = (2 * mem[mem[96] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4 = mem[128]
    stor9 = mem[192]
    stor7 = mem[224]
    stor8 = 0
    return code.data[443 len 1869]
}



// =====================  Runtime code  =====================


mapping of struct balanceOf;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 stor6; offset 1
uint256 sub_b8491317;
uint256 minFundedValue;
uint8 isFunded;
uint256 stor9;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)].field_0
}

function isFunded() payable {
    return isFunded
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function minFundedValue() payable {
    return minFundedValue
}

function sub_b8491317(?) payable {
    return sub_b8491317
}

function _fallback() payable {
  stop
}

function withDrawEth(uint256 arg1) payable {
    require block.timestamp > stor9
    require eth.balance(this.address) >= arg1
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    return 1
}

function sendRewardBlockCDN(address arg1, uint256 arg2) payable {
    require msg.sender == owner
    require block.timestamp > stor9
    require balanceOf[stor1].field_0 >= arg2
    balanceOf[arg1].field_0 += arg2
    balanceOf[stor1].field_0 -= arg2
    emit 0x56ddf252: arg2, owner, arg1
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require block.timestamp >= stor9
    require balanceOf[address(msg.sender)].field_0 >= arg2
    require arg2 + balanceOf[arg1].field_0 >= balanceOf[arg1].field_0
    balanceOf[address(msg.sender)].field_0 -= arg2
    balanceOf[address(arg1)].field_0 += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
    return 1
}

function reFund() payable {
    require block.timestamp <= stor9
    call msg.sender with:
       value balanceOf[address(msg.sender)].field_0 wei
         gas 0 wei
    sub_b8491317 -= balanceOf[address(msg.sender)].field_0
    balanceOf[stor1].field_0 = stor6
    totalSupply = balanceOf[stor1].field_0 + sub_b8491317
    balanceOf[address(msg.sender)].field_0 = 0
    emit 0x56ddf252: balanceOf[address(msg.sender)].field_0, msg.sender, this.address
    return 1
}

function buyBlockCDN() payable {
    require block.timestamp <= stor9
    if stor9 - (336 * 24 * 3600) > block.timestamp:
        balanceOf[address(msg.sender)].field_0 += msg.value
        sub_b8491317 += msg.value
        balanceOf[stor1].field_0 = msg.value + sub_b8491317 / 2
        balanceOf[stor1].field_255 = 0
        totalSupply = sub_b8491317 + balanceOf[stor1].field_0
        if sub_b8491317 > minFundedValue:
            isFunded = 1
        emit 0x56ddf252: msg.value, this.address, msg.sender
    else:
        idx = (block.timestamp + -stor9 + (336 * 24 * 3600) / 48 * 24 * 3600) + 1
        s = msg.value
        while idx > 0:
            idx = idx - 1
            s = 95 * s / 100
            continue 
        balanceOf[address(msg.sender)].field_0 += s
        sub_b8491317 += s
        balanceOf[stor1].field_0 = s + sub_b8491317 / 2
        balanceOf[stor1].field_255 = 0
        totalSupply = sub_b8491317 + balanceOf[stor1].field_0
        if sub_b8491317 > minFundedValue:
            isFunded = 1
        emit 0x56ddf252: s, this.address, msg.sender
    return 1
}



}
