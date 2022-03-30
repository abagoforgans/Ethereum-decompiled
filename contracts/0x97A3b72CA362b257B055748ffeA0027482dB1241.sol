contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    mem[96 len -1338] = code.data[1838 len -1338]
    mem[64] = -1242
    stor0 = msg.sender
    stor1 = mem[96]
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
    stor4 = mem[192]
    stor5 = mem[224]
    stor7[stor0] = mem[96]
    return code.data[500 len 1338]
}



// =====================  Runtime code  =====================


address minterAddress;
uint256 supply;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 burnRate;
uint256 burned;
mapping of uint256 balances;

function supply() {
    return supply
}

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function burned() {
    return burned
}

function symbol() {
    return symbol[0 len symbol.length]
}

function burnRate() {
    return burnRate
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require arg2 >= 1000 * burnRate
    balances[address(msg.sender)] -= arg2
    burned += burnRate * arg2 / 1000
    emit Burned(msg.sender, burnRate * arg2 / 1000);
    balances[address(arg1)] = arg2 - (burnRate * arg2 / 1000) + balances[address(arg1)]
    emit Sent(msg.sender, address(arg1), arg2 - (burnRate * arg2 / 1000));
}



}
