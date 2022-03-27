contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;

function _fallback() {
    mem[96 len -952] = code.data[1439 len -952]
    mem[64] = -856
    mem[32] = 0
    stor0[address(msg.sender)] = mem[96]
    mem[0] = 2
    stor2.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3.length = (2 * mem[mem[160] + 96]) + 1
    s = 0
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor3[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor3.length + 31 / 32 > Mask(251, 0, mem[mem[160] + 96] + 31) >> 5:
        stor3[Mask(251, 0, mem[mem[160] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) + 1
        while stor3.length + 31 / 32 > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor4 = mem[223 len 1]
    return code.data[487 len 952]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 initialSupply;
array of uint256 coinName;
array of uint256 sub_1e09e3fb;
uint8 decimalUnits;

function decimalUnits() {
    return decimalUnits
}

function sub_1e09e3fb(?) {
    return sub_1e09e3fb[0 len sub_1e09e3fb.length]
}

function initialSupply() {
    return initialSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function coinName() {
    return coinName[0 len coinName.length]
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
