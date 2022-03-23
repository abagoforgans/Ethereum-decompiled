contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    mem[96 len -2920] = code.data[3578 len -2920]
    mem[64] = -2824
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
    mem[0] = 2
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor4 = mem[160]
    stor5 = mem[96]
    mem[-2824] = mem[96]
    mem[-2728] = mem[mem[224] + 96]
    _237 = mem[mem[224] + 96]
    mem[-2696 len mem[mem[224] + 96]] = mem[mem[224] + 128 len mem[mem[224] + 96]]
    if not _237 % 32:
        emit 0xa5aeb281: mem[-2824], 96, block.timestamp, mem[-2728 len _237 + 32], msg.sender
    else:
        mem[floor32(_237) - 2696] = mem[floor32(_237) + -(_237 % 32) - 2664 len _237 % 32]
        emit 0xa5aeb281: mem[-2824], 96, block.timestamp, mem[-2728 len floor32(_237) + 64], msg.sender
    return code.data[658 len 2920]
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
mapping of uint8 stor7;
address sub_5765f3acAddress;
uint256 stor8;

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

function getBalanceOf(address arg1) payable {
    return balances[address(arg1)]
}

function frozenAccount(address arg1) payable {
    return bool(uint8(stor7[arg1]))
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

function sub_17e0a6cb(?) payable {
    emit 0x9650ad08: Array(len=arg1.length, data=arg1[all]), block.timestamp
}

function sub_09901f70(?) payable {
    require msg.sender == address(sub_5765f3acAddress)
    balances[address(arg1)] = arg2
}

function updateTotalSupply(uint256 arg1) payable {
    require msg.sender == address(sub_5765f3acAddress)
    totalSupply += arg1
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setController(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor8) = arg1 or Mask(96, 160, uint256(stor8))
    emit 0xf314f1bd: block.timestamp
}

function setAddressFrozen(address arg1, bool arg2) payable {
    require msg.sender == address(sub_5765f3acAddress)
    uint256(stor7[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor7[address(arg1)]))
}

function freezeAccount(address arg1, bool arg2) payable {
    require address(owner) == msg.sender
    call address(sub_5765f3acAddress).freeze(address rg1, bool rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
    emit Freeze(arg2, block.timestamp, arg1);
}

function burn(uint256 arg1) payable {
    require address(owner) == msg.sender
    call address(sub_5765f3acAddress).0x9dc29fac with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg1
    require ext_call.success
    if ext_call.return_data[0]:
        emit Burn(arg1, block.timestamp, msg.sender);
    return bool(ext_call.return_data[0])
}

function issue(uint256 arg1, string arg2) payable {
    require msg.sender == address(owner)
    call address(sub_5765f3acAddress).issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg1
    require ext_call.success
    if ext_call.return_data[0]:
        emit 0xa5aeb281: arg1, Array(len=arg2.length, data=arg2[all]), block.timestamp, msg.sender
    return bool(ext_call.return_data[0])
}

function send(address arg1, address arg2, uint256 arg3) payable {
    if arg1 != msg.sender:
        require address(owner) == msg.sender
    require arg1 != arg2
    call address(sub_5765f3acAddress).send(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    if ext_call.return_data[0]:
        emit Transfer(arg3, block.timestamp, arg1, arg2);
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) payable {
    if msg.sender != msg.sender:
        require address(owner) == msg.sender
    require arg1 != msg.sender
    call address(sub_5765f3acAddress).send(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        emit Transfer(arg2, block.timestamp, msg.sender, arg1);
    return bool(ext_call.return_data[0])
}



}
