contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;
mapping of uint256 stor9;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 21 * 10^6
    bool(stor6.length) = 0
    stor6.length.field_1 = 7
    stor6.length.field_8 = 'CoinBit' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 4
    stor7.length.field_8 = 'CBIT' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 2
    require not msg.value
    stor9[address(msg.sender)] = stor5
    stor4 = stor5
    if 31 >= stor6.length:
        stor1.length = stor6.length
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
        if 31 >= stor7.length:
            stor2.length = stor7.length
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor2.length = Mask(255, 1, (256 * not bool(stor7.length)) - 1 and stor7.length) + 1
            if not Mask(255, 1, (256 * not bool(stor7.length)) - 1 and stor7.length):
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    stor2[s] = stor7[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor7.length + 31 / 32
                while stor2.length + 31 / 32 > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
    else:
        stor1.length = Mask(255, 1, (256 * not bool(stor6.length)) - 1 and stor6.length) + 1
        if not Mask(255, 1, (256 * not bool(stor6.length)) - 1 and stor6.length):
            idx = 0
            while stor1.length + 31 / 32 > idx:
                stor1[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor6.length + 31 / 32 > idx:
                stor1[s] = stor6[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor6.length + 31 / 32
            while stor1.length + 31 / 32 > idx:
                stor1[idx] = 0
                idx = idx + 1
                continue 
        if 31 >= stor7.length:
            stor2.length = stor7.length
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor2.length = Mask(255, 1, (256 * not bool(stor7.length)) - 1 and stor7.length) + 1
            if not Mask(255, 1, (256 * not bool(stor7.length)) - 1 and stor7.length):
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    stor2[s] = stor7[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor7.length + 31 / 32
                while stor2.length + 31 / 32 > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
    stor3 = stor8
    return code.data[824 len 4454]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 initialSupply;
array of uint256 tokenName;
array of uint256 tokenSymbol;
uint8 decimalUnits;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimalUnits() {
    return decimalUnits
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function standard() {
    return standard[0 len standard.length]
}

function tokenName() {
    return tokenName[0 len tokenName.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function tokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
