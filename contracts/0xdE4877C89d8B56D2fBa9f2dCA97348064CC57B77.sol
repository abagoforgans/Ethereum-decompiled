contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length].field_0
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg2)][address(arg1)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require 68 == calldata.size
    require arg2 <= balanceOf[msg.sender]
    require arg2 > 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 > 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function NewToken() {
    totalSupply = 10^10
    uint8(name.length) = 24
    name.length.field_8 = 'CyberTechNET' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 2
    uint8(symbol.length) = 10
    symbol.length.field_8 = 'CTNET' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(version.length) = 6
    version.length.field_8 = '1.0' / 256
    idx = 0
    while version.length + 31 / 32 > idx:
        version[idx].field_0 = 0
        idx = idx + 1
        continue 
    balanceOf[msg.sender] = totalSupply
}



}
