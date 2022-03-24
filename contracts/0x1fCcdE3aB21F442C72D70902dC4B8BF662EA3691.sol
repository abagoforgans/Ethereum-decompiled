contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor7;

function _fallback() payable {
    mem[96 len -1270] = code.data[1703 len -1270]
    mem[64] = -1174
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
    stor5 = mem[192]
    stor4 = mem[128]
    stor7 = mem[224]
    return code.data[433 len 1270]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_b8491317;
uint256 sub_cdbb2e79;

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
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_b8491317(?) payable {
    return sub_b8491317
}

function sub_cdbb2e79(?) payable {
    return sub_cdbb2e79
}

function withDrawEth(uint256 arg1) payable {
    require eth.balance(this.address) >= arg1
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require block.timestamp >= sub_cdbb2e79
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require owner != msg.sender
    require block.timestamp <= sub_cdbb2e79
    if sub_cdbb2e79 - (480 * 24 * 3600) > block.timestamp:
        balanceOf[address(msg.sender)] += msg.value
        sub_b8491317 += msg.value
        require msg.value + sub_b8491317 <= totalSupply
        emit Transfer(msg.value, this.address, msg.sender);
    else:
        if sub_cdbb2e79 - (240 * 24 * 3600) <= block.timestamp:
            balanceOf[address(msg.sender)] += 5 * msg.value / 7
            sub_b8491317 += 5 * msg.value / 7
            require (5 * msg.value / 7) + sub_b8491317 <= totalSupply
            emit Transfer((5 * msg.value / 7), this.address, msg.sender);
        else:
            balanceOf[address(msg.sender)] += 5 * msg.value / 6
            sub_b8491317 += 5 * msg.value / 6
            require (5 * msg.value / 6) + sub_b8491317 <= totalSupply
            emit Transfer((5 * msg.value / 6), this.address, msg.sender);
}

function sub_13330d7e(?) payable {
    require owner != msg.sender
    require block.timestamp <= sub_cdbb2e79
    if sub_cdbb2e79 - (480 * 24 * 3600) > block.timestamp:
        balanceOf[address(msg.sender)] += msg.value
        sub_b8491317 += msg.value
        require msg.value + sub_b8491317 <= totalSupply
        emit Transfer(msg.value, this.address, msg.sender);
    else:
        if sub_cdbb2e79 - (240 * 24 * 3600) <= block.timestamp:
            balanceOf[address(msg.sender)] += 5 * msg.value / 7
            sub_b8491317 += 5 * msg.value / 7
            require (5 * msg.value / 7) + sub_b8491317 <= totalSupply
            emit Transfer((5 * msg.value / 7), this.address, msg.sender);
        else:
            balanceOf[address(msg.sender)] += 5 * msg.value / 6
            sub_b8491317 += 5 * msg.value / 6
            require (5 * msg.value / 6) + sub_b8491317 <= totalSupply
            emit Transfer((5 * msg.value / 6), this.address, msg.sender);
    return 1
}



}
