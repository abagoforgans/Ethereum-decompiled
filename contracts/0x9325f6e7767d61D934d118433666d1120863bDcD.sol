contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor9;

function _fallback() payable {
    mem[96 len -2599] = code.data[3117 len -2599]
    mem[64] = -2503
    stor0 = msg.sender or Mask(96, 160, stor0)
    mem[32] = 9
    stor9[address(this.address)] = mem[96]
    stor4 = mem[96]
    mem[0] = 1
    stor1.length = (2 * mem[mem[128] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor3 = mem[160]
    stor5 = mem[288]
    stor6 = mem[224]
    stor7 = mem[256]
    stor8 = mem[320]
    return code.data[518 len 2599]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address houseAddress;
uint256 stor5;
uint256 sub_aa295de9;
uint32 odds;
uint256 stor7;
uint256 sub_bc094049;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 spentAllowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function odds() payable {
    return uint32(odds)
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function owner() payable {
    return address(owner)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_aa295de9(?) payable {
    return sub_aa295de9
}

function sub_bc094049(?) payable {
    return sub_bc094049
}

function spentAllowance(address arg1, address arg2) payable {
    return spentAllowance[arg1][arg2]
}

function allowance(address arg1, address arg2) payable {
    return allowance[arg1][arg2]
}

function house() payable {
    return address(houseAddress)
}

function _fallback() payable {
  stop
}

function setMax(uint256 arg1) payable {
    require msg.sender == address(owner)
    sub_aa295de9 = arg1
}

function setHouse(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_c4839e8b(?) payable {
    require address(owner) == msg.sender
    require arg1 >= 512
    uint256(stor7) = arg1 or Mask(224, 32, uint256(stor7))
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
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

function sell(uint256 arg1) payable {
    sub_bc094049 = 10^11 * eth.balance(this.address) / totalSupply
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sub_bc094049 wei
         gas 0 wei
    emit 0x56ddf252: arg1, msg.sender, this.address
    return (arg1 * sub_bc094049)
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

function buy() payable {
    require msg.value <= sub_aa295de9
    sub_bc094049 = 10^11 * eth.balance(this.address) / totalSupply
    idx = 0
    s = 0
    while idx < 10:
        mem[96] = block.hash(block.number + -idx - 1)
        mem[128] = sha3(block.number, block.timestamp, msg.value)
        if bool(sha3(block.hash(block.number + -idx - 1), sha3(block.number, block.timestamp, msg.value))) != 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 2^idx
        continue 
    if s < uint32(odds):
        balanceOf[address(msg.sender)] += 2 * msg.value / 10^11
        balanceOf[this.address] -= 2 * msg.value / 10^11
        emit 0x56ddf252: (2 * msg.value / 10^11), this.address, msg.sender
        emit 0x56ddf252: 0, this.address, address(houseAddress)
    else:
        balanceOf[address(stor5)] += msg.value / 10^11 / 999
        balanceOf[this.address] -= msg.value / 10^11 / 999
        emit 0x56ddf252: 0, this.address, msg.sender
        emit 0x56ddf252: (msg.value / 10^11 / 999), this.address, address(houseAddress)
    return msg.value
}



}
