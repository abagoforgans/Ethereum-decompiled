contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    mem[96 len -2120] = code.data[2740 len -2120]
    mem[64] = -2024
    mem[32] = 6
    stor6[address(this.address)] = mem[96]
    stor4 = mem[96]
    mem[0] = 0
    stor0.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[0] = 1
    stor1[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor3 = mem[160]
    stor2.length = (2 * mem[mem[224] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[224] + 128
    while mem[224] + mem[mem[224] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[224] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor5 = mem[256]
    return code.data[620 len 2120]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint8 decimals;
uint256 totalSupply;
address sub_61e71839Address;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 spentAllowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function version() payable {
    return version[0 len version.length]
}

function sub_61e71839(?) payable {
    return sub_61e71839Address
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function spentAllowance(address arg1, address arg2) payable {
    return spentAllowance[arg1][arg2]
}

function allowance(address arg1, address arg2) payable {
    return allowance[arg1][arg2]
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
}

function sell(uint256 arg1) payable {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[this.address] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value 10000 * arg1 wei
         gas 0 wei
    emit 0x56ddf252: arg1, msg.sender, this.address
    return (10000 * arg1)
}

function _fallback() payable {
    require balanceOf[address(this.address)] >= 9999 * 10000 * msg.value / 10000
    balanceOf[msg.sender] += 9999 * 10000 * msg.value / 10000
    balanceOf[address(this.address)] += -10000 * msg.value
    emit 0x56ddf252: (9999 * 10000 * msg.value / 10000), this.address, msg.sender
    emit 0x56ddf252: ((10000 * msg.value) - (9999 * 10000 * msg.value / 10000)), this.address, sub_61e71839Address
    return (10000 * msg.value)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    require arg3 + spentAllowance[address(arg1)][address(msg.sender)] <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    spentAllowance[address(arg1)][address(msg.sender)] += arg3
    emit 0x56ddf252: arg3, arg1, arg2
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 292 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, arg3[all], mem[ceil32(arg3.length) + arg3.length + 292 len -(arg3.length % 32) + 32]
    require ext_call.success
    return 1
}



}
