contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor9;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -2519] = code.data[2968 len -2519]
    stor0 = msg.sender
    stor6 = block.gasprice
    stor7 = block.gas_limit
    stor8 = gas_remaining
    stor5 = mem[224]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor4 = mem[287 len 1]
    stor9[address(msg.sender)] = mem[224]
    return code.data[449 len 2519]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_e1f1bab5;
uint256 sub_481e81d8;
uint256 sub_04a55cbf;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function sub_04a55cbf(?) {
    return sub_04a55cbf
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_481e81d8(?) {
    return sub_481e81d8
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function Decimals() {
    return decimals
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e1f1bab5(?) {
    return sub_e1f1bab5
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        if sub_481e81d8 < sub_e1f1bab5:
            return 0
        balanceOf[address(arg1)] += arg2
    else:
        if arg2 <= 0:
            if sub_481e81d8 < sub_e1f1bab5:
                return 0
            balanceOf[address(arg1)] += arg2
        else:
            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                if sub_481e81d8 < sub_e1f1bab5:
                    return 0
                balanceOf[address(arg1)] += arg2
            else:
                balanceOf[address(msg.sender)] -= arg2
                balanceOf[arg1] += arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        if sub_481e81d8 < sub_e1f1bab5:
            return 0
    else:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            if sub_481e81d8 < sub_e1f1bab5:
                return 0
        else:
            if arg3 <= 0:
                if sub_481e81d8 < sub_e1f1bab5:
                    return 0
            else:
                if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
                    if sub_481e81d8 < sub_e1f1bab5:
                        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
