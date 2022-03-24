contract main {


// =======================  Init code  ======================


uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor8;
uint8 stor9;
uint256 stor10;

function _fallback() payable {
    mem[96 len -2269] = code.data[2710 len -2269]
    mem[64] = -2173
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor3.length = (2 * mem[mem[96] + 96]) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5 = mem[128]
    stor10 = mem[192]
    stor8 = mem[224]
    stor9 = 0
    return code.data[441 len 2269]
}



// =====================  Runtime code  =====================


mapping of struct balanceOf;
mapping of uint256 balanceOfFund;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 stor7; offset 1
uint256 sub_b8491317;
uint256 minFundedValue;
uint8 isFunded;
uint256 sub_cdbb2e79;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balanceOfFund(address arg1) payable {
    return balanceOfFund[address(arg1)]
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

function sub_cdbb2e79(?) payable {
    return sub_cdbb2e79
}

function withDrawEth(uint256 arg1) payable {
    require eth.balance(this.address) >= arg1
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function sendRewardBlockCDN(address arg1, uint256 arg2) payable {
    require msg.sender == owner
    require balanceOf[stor2].field_0 >= arg2
    balanceOf[address(arg1)].field_0 += arg2
    balanceOf[stor2].field_0 -= arg2 / 2
    totalSupply += arg2 / 2
    emit 0x56ddf252: arg2, owner, arg1
    return 1
}

function reFundByOther(address arg1) payable {
    balanceOfFund[address(arg1)] = 0
    require balanceOfFund[address(arg1)] > 0
    call arg1 with:
       value balanceOfFund[address(arg1)] wei
         gas 0 wei
    require ext_call.success
    sub_b8491317 -= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 = 0
    balanceOf[stor2].field_0 = stor7
    totalSupply = balanceOf[stor2].field_0 + sub_b8491317
    emit 0x56ddf252: balanceOf[address(arg1)].field_0, msg.sender, this.address
    return 1
}

function reFund() payable {
    balanceOfFund[address(msg.sender)] = 0
    require balanceOfFund[address(msg.sender)] > 0
    call msg.sender with:
       value balanceOfFund[address(msg.sender)] wei
         gas 0 wei
    require ext_call.success
    sub_b8491317 -= balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)].field_0 = 0
    balanceOf[stor2].field_0 = stor7
    totalSupply = balanceOf[stor2].field_0 + sub_b8491317
    emit 0x56ddf252: balanceOf[address(msg.sender)].field_0, msg.sender, this.address
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require arg2 > 0
    require balanceOf[address(msg.sender)].field_0 >= arg2
    require arg2 + balanceOf[address(arg1)].field_0 >= balanceOf[address(arg1)].field_0
    if block.timestamp >= sub_cdbb2e79:
        balanceOf[address(msg.sender)].field_0 -= arg2
        balanceOf[arg1].field_0 += arg2
    else:
        if arg1 == this.address:
            balanceOfFund[address(msg.sender)] -= arg2
            sub_b8491317 -= arg2
            balanceOf[stor2].field_0 = sub_b8491317 - arg2 / 2
            balanceOf[stor2].field_255 = 0
            totalSupply = balanceOf[stor2].field_0 + sub_b8491317
            balanceOf[msg.sender].field_0 -= arg2
            call msg.sender with:
               value arg2 wei
                 gas 0 wei
            if not ext_call.success:
                return 0
    emit 0x56ddf252: arg2, msg.sender, arg1
    return 1
}

function _fallback() payable {
    require owner != msg.sender
    require block.timestamp <= sub_cdbb2e79
    if sub_cdbb2e79 - (336 * 24 * 3600) > block.timestamp:
        balanceOf[address(msg.sender)].field_0 += msg.value
        sub_b8491317 += msg.value
        balanceOf[stor2].field_0 = msg.value + sub_b8491317 / 2
        balanceOf[stor2].field_255 = 0
        totalSupply = balanceOf[stor2].field_0 + sub_b8491317
        if eth.balance(this.address) >= minFundedValue:
            isFunded = 1
        balanceOfFund[address(msg.sender)] += msg.value
        emit 0x56ddf252: msg.value, this.address, msg.sender
    else:
        idx = (block.timestamp + -sub_cdbb2e79 + (336 * 24 * 3600) / 48 * 24 * 3600) + 1
        s = msg.value
        while idx > 0:
            idx = idx - 1
            s = 95 * s / 100
            continue 
        balanceOf[address(msg.sender)].field_0 += s
        sub_b8491317 += s
        balanceOf[stor2].field_0 = s + sub_b8491317 / 2
        balanceOf[stor2].field_255 = 0
        totalSupply = balanceOf[stor2].field_0 + sub_b8491317
        if eth.balance(this.address) >= minFundedValue:
            isFunded = 1
        balanceOfFund[address(msg.sender)] += msg.value
        emit 0x56ddf252: s, this.address, msg.sender
}

function buyBlockCDN() payable {
    require owner != msg.sender
    require block.timestamp <= sub_cdbb2e79
    if sub_cdbb2e79 - (336 * 24 * 3600) > block.timestamp:
        balanceOf[address(msg.sender)].field_0 += msg.value
        sub_b8491317 += msg.value
        balanceOf[stor2].field_0 = msg.value + sub_b8491317 / 2
        balanceOf[stor2].field_255 = 0
        totalSupply = balanceOf[stor2].field_0 + sub_b8491317
        if eth.balance(this.address) >= minFundedValue:
            isFunded = 1
        balanceOfFund[address(msg.sender)] += msg.value
        emit 0x56ddf252: msg.value, this.address, msg.sender
    else:
        idx = (block.timestamp + -sub_cdbb2e79 + (336 * 24 * 3600) / 48 * 24 * 3600) + 1
        s = msg.value
        while idx > 0:
            idx = idx - 1
            s = 95 * s / 100
            continue 
        balanceOf[address(msg.sender)].field_0 += s
        sub_b8491317 += s
        balanceOf[stor2].field_0 = s + sub_b8491317 / 2
        balanceOf[stor2].field_255 = 0
        totalSupply = balanceOf[stor2].field_0 + sub_b8491317
        if eth.balance(this.address) >= minFundedValue:
            isFunded = 1
        balanceOfFund[address(msg.sender)] += msg.value
        emit 0x56ddf252: s, this.address, msg.sender
    return 1
}



}
