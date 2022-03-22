contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    mem[96 len -1780] = code.data[2307 len -1780]
    mem[64] = -1684
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor0 = msg.sender or Mask(96, 160, stor0)
    mem[32] = 6
    stor6[address(msg.sender)] = mem[96]
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
    stor4 = mem[160]
    stor5 = mem[96]
    emit Issuance(mem[96], msg.sender);
    return code.data[527 len 1780]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
address sub_5765f3acAddress;
uint256 stor7;

function getBalances(address arg1, address arg2) payable {
    return balances[address(arg1)], balances[arg2]
}

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

function sub_5765f3ac(?) payable {
    return address(sub_5765f3acAddress)
}

function balanceOf(address arg1) payable {
    return balances[arg1]
}

function owner() payable {
    return address(owner)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function kill() payable {
    require msg.sender == address(owner)
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 0 wei
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function issue(uint256 arg1) payable {
    require address(owner) == msg.sender
    balances[address(msg.sender)] += arg1
    emit Issuance(arg1, msg.sender);
}

function sub_09901f70(?) payable {
    if address(sub_5765f3acAddress) != msg.sender:
        require msg.sender == address(owner)
    balances[address(arg1)] = arg2
}

function setController(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
    emit 0x61cb4f0c 
}

function transfer(address arg1, uint256 arg2) payable {
    call address(sub_5765f3acAddress).send(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _send(address arg1, address arg2, uint256 arg3) payable {
    call address(sub_5765f3acAddress).send(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(uint256 arg1) payable {
    require msg.sender == address(owner)
    if balances[address(msg.sender)] <= arg1:
        balances[address(msg.sender)] = 0
        emit Burn(balances[address(msg.sender)], msg.sender);
    else:
        balances[address(msg.sender)] -= arg1
        emit Burn(arg1, msg.sender);
}



}
