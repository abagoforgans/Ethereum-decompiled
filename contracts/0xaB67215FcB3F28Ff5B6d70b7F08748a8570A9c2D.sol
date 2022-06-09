contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor5;
mapping of uint256 allowance;
address managerAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_d09fd708;
uint256 sub_7020aede;
uint256 releaseTime;
uint256 rate;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function manager() {
    return managerAddress
}

function getRate() {
    return rate
}

function sub_7020aede(?) {
    require msg.sender == managerAddress
    return sub_7020aede
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function releaseTime() {
    return releaseTime
}

function sub_d09fd708(?) {
    require arg1 < sub_d09fd708.length
    return sub_d09fd708[arg1].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function setRate(uint256 arg1) {
    require msg.sender == managerAddress
    rate = arg1
    return 0
}

function setReleaseTime(uint256 arg1) {
    require msg.sender == managerAddress
    releaseTime = arg1
    return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_84d012e3(?) {
    require msg.sender == managerAddress
    require arg2 >= 1
    require arg2 <= stor5[address(arg1)]
    stor5[address(arg1)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Freeze(arg2, arg1);
    return 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_61841cd6(?) {
    if not arg1:
        if releaseTime >= releaseTime:
            return (block.timestamp > releaseTime)
    else:
        if arg1:
            if 720 * 24 * 3600 * arg1 / arg1 == 720 * 24 * 3600:
                if releaseTime + (720 * 24 * 3600 * arg1) >= releaseTime:
                    return (block.timestamp > releaseTime + (720 * 24 * 3600 * arg1))
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_1b056b5e(?) {
    require msg.sender == managerAddress
    if not arg2:
        stor5[address(arg1)] = 0
        balanceOf[address(arg1)] = 0
    else:
        require arg2
        require arg2 * rate / arg2 == rate
        if not arg2 * rate:
            require 0 <= arg2 * rate
            stor5[address(arg1)] = arg2 * rate
            balanceOf[address(arg1)] = 0
        else:
            require arg2 * rate
            require 20 * arg2 * rate / arg2 * rate == 20
            require 20 * arg2 * rate / 100 <= arg2 * rate
            stor5[address(arg1)] = (arg2 * rate) - (20 * arg2 * rate / 100)
            balanceOf[address(arg1)] = 20 * arg2 * rate / 100
    sub_d09fd708.length++
    sub_d09fd708[sub_d09fd708.length].field_0 = arg1
    return 0
}

function sub_25fe6575(?) {
    require msg.sender == managerAddress
    if not sub_d09fd708.length:
        mem[(32 * sub_d09fd708.length) + 128] = 32
        mem[(32 * sub_d09fd708.length) + 160] = sub_d09fd708.length
        mem[(32 * sub_d09fd708.length) + 192 len floor32(sub_d09fd708.length)] = mem[128 len floor32(sub_d09fd708.length)]
        return memory
          from (32 * sub_d09fd708.length) + 128
           len (96 * sub_d09fd708.length) + 64
    mem[128] = address(sub_d09fd708.field_0)
    idx = 128
    s = 0
    while (32 * sub_d09fd708.length) + 96 > idx:
        mem[idx + 32] = sub_d09fd708[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_d09fd708.length) + 192 len floor32(sub_d09fd708.length)] = mem[128 len floor32(sub_d09fd708.length)]
    return Array(len=sub_d09fd708.length, data=mem[128 len floor32(sub_d09fd708.length)], mem[(32 * sub_d09fd708.length) + floor32(sub_d09fd708.length) + 192 len (32 * sub_d09fd708.length) - floor32(sub_d09fd708.length)]), 
}

function sub_45ae5b8f(?) {
    require msg.sender == managerAddress
    require arg1 >= 1
    require arg1 <= 12
    require sub_7020aede + 1 >= sub_7020aede
    require arg1 == sub_7020aede + 1
    if not arg1:
        require releaseTime >= releaseTime
        require block.timestamp > releaseTime
    else:
        require arg1
        require 720 * 24 * 3600 * arg1 / arg1 == 720 * 24 * 3600
        require releaseTime + (720 * 24 * 3600 * arg1) >= releaseTime
        require block.timestamp > releaseTime + (720 * 24 * 3600 * arg1)
    s = 0
    idx = 0
    while idx < sub_d09fd708.length:
        require -arg1 + 13
        require idx < sub_d09fd708.length
        require stor5[stor11[idx].field_0] / -arg1 + 13 <= stor5[stor11[idx].field_0]
        require idx < sub_d09fd708.length
        stor5[stor11[idx].field_0] -= stor5[stor11[idx].field_0] / -arg1 + 13
        require balanceOf[stor11[idx].field_0] + (stor5[stor11[idx].field_0] / -arg1 + 13) >= balanceOf[stor11[idx].field_0]
        require idx < sub_d09fd708.length
        mem[32] = 4
        balanceOf[stor11[idx].field_0] += stor5[stor11[idx].field_0] / -arg1 + 13
        mem[0] = 11
        mem[96] = stor5[stor11[idx].field_0] / -arg1 + 13
        emit Freeze((stor5[stor11[idx].field_0] / -arg1 + 13), sub_d09fd708[idx].field_0);
        s = stor5[stor11[idx].field_0] / -arg1 + 13
        idx = idx + 1
        continue 
    require sub_7020aede + 1 >= sub_7020aede
    sub_7020aede++
    return 0
}



}
