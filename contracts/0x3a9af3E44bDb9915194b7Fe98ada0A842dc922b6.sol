contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
address stor4;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
array of uint256 metadata;
array of uint256 sub_55ee3882;
uint8 stor11;
mapping of uint8 stor12;
uint256 stor13;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_55ee3882(?) {
    return sub_55ee3882[arg1][0 len sub_55ee3882[arg1].length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_acdfc786(?) {
    return bool(stor12[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function metadata(uint256 arg1) {
    return metadata[arg1][0 len metadata[arg1].length]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == stor3
    stor3 = arg1
}

function setManager(address arg1) {
    require msg.sender == stor3
    stor4 = arg1
}

function sub_bba1f077(?) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor11 = 0
}

function sub_f307ac1b(?) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor11 = 1
}

function changeName(string arg1) {
    require msg.sender == stor3
    name[] = Array(len=arg1.length, data=arg1[all])
}

function changeSymbol(string arg1) {
    require msg.sender == stor3
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function thawAddress(address arg1) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor12[address(arg1)] = 1
}

function setMetadata(uint256 arg1, string arg2) {
    require msg.sender == stor3
    metadata[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if bool(stor11) != 1:
        if bool(stor12[address(msg.sender)]) != 1:
            require block.timestamp > stor13
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if bool(stor11) != 1:
        if bool(stor12[address(msg.sender)]) != 1:
            require block.timestamp > stor13
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
