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
    mem[96 len -1286] = code.data[1727 len -1286]
    mem[64] = -1190
    stor2 = msg.sender or Mask(96, 160, stor2)
    mem[0] = 3
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
    return code.data[441 len 1286]
}



// =====================  Runtime code  =====================


mapping of struct balances;
mapping of uint256 sub_f29eff1c;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_b8491317;
uint256 minFundedValue;
uint8 isFunded;
uint256 sub_cdbb2e79;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1].field_0
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balances[address(arg1)].field_0
}

function isFunded() {
    return bool(isFunded)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function minFundedValue() {
    return minFundedValue
}

function sub_b8491317(?) {
    return sub_b8491317
}

function sub_cdbb2e79(?) {
    return sub_cdbb2e79
}

function sub_f29eff1c(?) {
    return sub_f29eff1c[arg1]
}

function _fallback() payable {
    revert 
}

function buyBlockCDN() payable {
    balances[address(msg.sender)].field_0 = msg.value
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)].field_0 >= arg2
    require arg2 + balances[address(arg1)].field_0 >= balances[address(arg1)].field_0
    if block.timestamp >= sub_cdbb2e79:
        balances[address(msg.sender)].field_0 -= arg2
        balances[arg1].field_0 += arg2
    else:
        if arg1 == this.address:
            sub_f29eff1c[address(msg.sender)] = 0
            sub_b8491317 -= balances[address(msg.sender)].field_0
            balances[stor2].field_0 = sub_b8491317 - balances[address(msg.sender)].field_0 / 2
            balances[stor2].field_255 = 0
            totalSupply = balances[stor2].field_0 + sub_b8491317
            balances[address(msg.sender)].field_0 = 0
            if balances[address(msg.sender)].field_0 > 0:
                call msg.sender with:
                   value balances[address(msg.sender)].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    return 0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
