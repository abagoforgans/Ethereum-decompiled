contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    mem[96 len -1042] = code.data[1504 len -1042]
    mem[64] = -946
    stor0 = msg.sender or Mask(96, 160, stor0)
    if mem[96] != 0:
        stor6[address(this.address)] = mem[96]
    else:
        stor6[address(this.address)] = 10000
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
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5 = 0
    stor3 = mem[192]
    return code.data[462 len 1042]
}



// =====================  Runtime code  =====================


address organizerAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 target;
uint256 quota;
mapping of uint256 balanceOf;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function organizer() payable {
    return organizerAddress
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function quota() payable {
    return quota
}

function target() payable {
    return target
}

function _fallback() payable {
  stop
}

function Mint(uint256 arg1) payable {
    if arg1 == quota:
        quota++
        target = quota + 1 % 3
        if quota + 1 % 3 == 1:
            balanceOf[msg.sender] += balanceOf[address(this.address)]
            balanceOf[address(this.address)] = 0
            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(msg.sender)] -= arg2
    if arg1 != this.address:
        balanceOf[address(arg1)] += arg2
    else:
        balanceOf[address(arg1)] += 2 * arg2
    quota++
    emit Transfer(arg2, msg.sender, arg1);
}



}
