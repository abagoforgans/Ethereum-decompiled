contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    mem[96 len -2126] = code.data[2746 len -2126]
    mem[64] = -2030
    mem[32] = 7
    stor7[address(this.address)] = mem[96]
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
    stor6 = mem[288]
    return code.data[620 len 2126]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint8 decimals;
uint256 totalSupply;
uint256 sellPrice;
uint256 buyPrice;
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

function sellPrice() payable {
    return sellPrice
}

function version() payable {
    return version[0 len version.length]
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function buyPrice() payable {
    return buyPrice
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

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
}

function sell(uint256 arg1) payable {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 0 wei
    emit 0x56ddf252: arg1, msg.sender, this.address
    return (arg1 * sellPrice)
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function multiBlockRandomGen(uint256 arg1, uint256 arg2) payable {
    idx = 0
    s = 0
    while idx < arg2:
        mem[96] = block.hash(block.number + -idx - 1)
        mem[128] = arg1
        if bool(sha3(block.hash(block.number + -idx - 1), arg1)) != 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 2^idx
        continue 
    return s
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require balanceOf[address(arg1)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + spentAllowance[address(arg1)][address(msg.sender)] <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    spentAllowance[address(arg1)][address(msg.sender)] += arg3
    emit 0x56ddf252: arg3, arg1, arg2
    return 1
}

function buy(uint256 arg1) payable {
    idx = 0
    s = 0
    while idx < 10:
        mem[96] = block.hash(block.number + -idx - 1)
        mem[128] = sha3(block.number, block.timestamp, arg1)
        if bool(sha3(block.hash(block.number + -idx - 1), sha3(block.number, block.timestamp, arg1))) != 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 2^idx
        continue 
    require balanceOf[address(this.address)] >= s
    balanceOf[address(msg.sender)] += s
    balanceOf[this.address] -= s
    emit 0x56ddf252: s, this.address, msg.sender
    return s
}



}
