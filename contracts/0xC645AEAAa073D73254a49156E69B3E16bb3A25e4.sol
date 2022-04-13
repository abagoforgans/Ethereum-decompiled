contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 15
    stor1.length.field_8 = 'True Vegan Coin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'TVC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = 55000000 * 10^18
    stor3[address(msg.sender)] += 55000000 * 10^18
    return code.data[386 len 1169]
}



// =====================  Runtime code  =====================


const decimals = 18


uint256 totalSupply;
array of uint256 tokenName;
array of uint256 tokenSymbol;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function tokenName() {
    return tokenName[0 len tokenName.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
    return 1
}



}
