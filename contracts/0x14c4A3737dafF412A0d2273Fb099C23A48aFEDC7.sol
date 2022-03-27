contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2; offset 8
uint256 stor2;
uint256 stor4;

function _fallback() payable {
    mem[96 len -1312] = code.data[1732 len -1312]
    mem[64] = -1216
    Mask(248, 0, stor2.field_8) = Mask(248, 0, msg.sender)
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    uint256(stor2.field_0) = mem[160]
    if mem[96] != 0:
        stor4 += mem[96]
    else:
        stor4 += 1000
    return code.data[420 len 1312]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address issuerAddress; offset 8
uint256 initialSupply;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor6;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function issuer() {
    return issuerAddress
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(uint8(stor6[arg1]))
}

function _fallback() payable {
    revert 
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == issuerAddress
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    totalSupply += arg2
}

function freezeAccount(address arg1, bool arg2) {
    require issuerAddress == msg.sender
    uint256(stor6[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor6[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require not uint8(stor6[address(msg.sender)])
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
