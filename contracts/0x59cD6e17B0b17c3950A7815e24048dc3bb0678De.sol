contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = 0
    bool(stor3.length) = 0
    stor3.length.field_1 = 9
    stor3.length.field_8 = 'DinarCoin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'DNC' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    require not msg.value
    stor2 = msg.sender
    return code.data[445 len 4745]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
address stor2;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint8 stor6;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function mintable(address arg1) {
    return bool(stor6[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) {
    if msg.sender == stor2:
        stor2 = arg1
}

function deleteMintable(address arg1) {
    if msg.sender == stor2:
        stor6[address(arg1)] = 0
}

function createNewMintableUser(address arg1) {
    if msg.sender == stor2:
        if not balanceOf[address(arg1)]:
            stor6[address(arg1)] = 1
}

function adminTransfer(address arg1, address arg2, uint256 arg3) {
    if msg.sender == stor2:
        if bool(stor6[address(arg1)]) == 1:
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
}

function burnDNC(address arg1, uint256 arg2) {
    if msg.sender == stor2:
        if bool(stor6[address(arg1)]) == 1:
            require arg2 * 10^(decimals - 1) <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += -1 * arg2 * 10^(decimals - 1)
            require arg2 * 10^(decimals - 1) <= totalSupply
            totalSupply += -1 * arg2 * 10^(decimals - 1)
            emit Transfer((arg2 * 10^(decimals - 1)), arg1, 0);
            emit Burned((arg2 * 10^(decimals - 1)), arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mintNewDNC(address arg1, uint256 arg2) {
    if msg.sender == stor2:
        if bool(stor6[address(arg1)]) == 1:
            require totalSupply + (arg2 * 10^(decimals - 1)) >= totalSupply
            totalSupply += arg2 * 10^(decimals - 1)
            require balanceOf[address(arg1)] + (arg2 * 10^(decimals - 1)) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2 * 10^(decimals - 1)
            emit Transfer((arg2 * 10^(decimals - 1)), 0, arg1);
            emit Minted((arg2 * 10^(decimals - 1)), arg1);
}



}
