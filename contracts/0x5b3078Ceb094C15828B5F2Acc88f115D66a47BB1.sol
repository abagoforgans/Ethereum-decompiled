contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint8 stor7;
uint128 stor7; offset 168
uint256 stor7; offset 8

function _fallback() payable {
    mem[96 len -1456] = code.data[2200 len -1456]
    mem[64] = -1360
    stor4[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor5[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor6 = mem[160]
    mem[32] = 0
    stor0[address(msg.sender)] = mem[160]
    mem[0] = 1
    stor1.length = (2 * mem[mem[256] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[256] + 128
    while mem[256] + mem[mem[256] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[256] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor2[] = Array(len=mem[mem[288] + 96], data=mem[mem[288] + 128 len mem[mem[288] + 96]])
    uint8(stor7.field_0) = mem[255 len 1]
    Mask(248, 0, stor7.field_8) = Mask(248, 0, msg.sender)
    Mask(88, 0, stor7.field_168) = mem[224 len 11]
    return code.data[744 len 1456]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 physicalString;
array of uint256 cryptoString;
uint8 isSecured;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 canMintBurn;
address owner; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function canMintBurn() {
    return bool(canMintBurn)
}

function physicalString() {
    return physicalString[0 len physicalString.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function isSecured() {
    return bool(isSecured)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function cryptoString() {
    return cryptoString[0 len cryptoString.length]
}

function _fallback() payable {
    revert 
}

function burn(uint256 arg1) {
    if canMintBurn:
        if msg.sender == owner:
            require balanceOf[address(msg.sender)] >= arg1
            balanceOf[address(msg.sender)] -= arg1
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function mint(uint256 arg1) {
    if canMintBurn:
        if msg.sender == owner:
            require arg1 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += arg1
            totalSupply += arg1
            emit Transfer(arg1, 0, msg.sender);
}



}
