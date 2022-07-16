contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimal;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
mapping of uint256 sub_79d27910;
mapping of uint256 freeTokens;
uint8 transfersFrozen; offset 160
uint128 stor8; offset 160
address owner;
array of uint256 description;
uint256 price;

function name() {
    return name[0 len name.length]
}

function freeTokens(address arg1) {
    require calldata.size - 4 >= 32
    return freeTokens[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_370249b1(?) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function description() {
    return description[0 len description.length]
}

function decimal() {
    return decimal
}

function sub_79d27910(?) {
    require calldata.size - 4 >= 32
    return sub_79d27910[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function transfersFrozen() {
    return bool(transfersFrozen)
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    price = arg1
}

function sub_2edd5e78(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor8 = Mask(96, 0, arg1)
    emit 0x9d884872: arg1
}

function setAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor5[address(arg1)] = uint8(arg2)
    emit 0xb039e562: arg2, arg1
}

function sub_aad84c60(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require bool(stor5[address(msg.sender)]) == 1
    sub_79d27910[address(arg1)] = arg2
    emit 0xf1e5c720: address(arg1), arg2
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, owner, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if bool(transfersFrozen) == 1:
        require msg.sender == owner
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function sub_559c88b6(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require bool(stor5[address(msg.sender)]) == 1
    if sub_79d27910[address(arg1)] < 2:
        require freeTokens[address(arg1)] + arg2 <= 1000
    else:
        if sub_79d27910[address(arg1)] == 2:
            require freeTokens[address(arg1)] + arg2 <= 2000
        else:
            if sub_79d27910[address(arg1)] == 3:
                require freeTokens[address(arg1)] + arg2 <= 3000
            else:
                if sub_79d27910[address(arg1)] == 4:
                    require freeTokens[address(arg1)] + arg2 <= 4000
                else:
                    require freeTokens[address(arg1)] + arg2 <= 5000
    balanceOf[address(arg1)] += arg2
    freeTokens[address(arg1)] += arg2
    return 1
}

function sub_6326594a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require bool(stor5[address(msg.sender)]) == 1
    if sub_79d27910[address(arg1)] < 2:
        require not freeTokens[address(arg1)]
    else:
        if sub_79d27910[address(arg1)] == 2:
            require freeTokens[address(arg1)] <= 1000
        else:
            if sub_79d27910[address(arg1)] == 3:
                require freeTokens[address(arg1)] <= 2000
            else:
                if sub_79d27910[address(arg1)] == 4:
                    require freeTokens[address(arg1)] <= 3000
                else:
                    if sub_79d27910[address(arg1)] != 5:
                        require freeTokens[address(arg1)] <= 5000
                    else:
                        require freeTokens[address(arg1)] <= 4000
    balanceOf[address(arg1)] += 1000
    freeTokens[address(arg1)] += 1000
    return 1
}



}
