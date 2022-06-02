contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3;
address stor3; offset 8
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
array of uint256 metadata;
array of uint256 sub_55ee3882;
mapping of uint8 stor10;

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
    return bool(stor10[arg1])
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

function sub_0769a00a(?) {
    sub_55ee3882[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function changeName(string arg1) {
    require msg.sender == address(stor3.field_8)
    name[] = Array(len=arg1.length, data=arg1[all])
}

function changeSymbol(string arg1) {
    require msg.sender == address(stor3.field_8)
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMetadata(uint256 arg1, string arg2) {
    require msg.sender == address(stor3.field_8)
    metadata[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    if bool(uint8(stor3.field_0)) != 1:
        require bool(stor10[address(msg.sender)]) == 1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if ext_code.size(arg1) <= 0:
        return 1
    require ext_code.size(arg1)
    call arg1.tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    if bool(uint8(stor3.field_0)) != 1:
        require bool(stor10[address(msg.sender)]) == 1
    if bool(uint8(stor3.field_0)) != 1:
        require bool(stor10[address(msg.sender)]) == 1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if ext_code.size(arg1) <= 0:
        return 1
    require ext_code.size(arg1)
    call arg1.tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, msg.sender, arg2, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    if bool(uint8(stor3.field_0)) != 1:
        require bool(stor10[address(msg.sender)]) == 1
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) <= 0:
        return 1
    require ext_code.size(arg2)
    call arg2.tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if bool(uint8(stor3.field_0)) != 1:
        require bool(stor10[address(msg.sender)]) == 1
    if bool(uint8(stor3.field_0)) != 1:
        require bool(stor10[address(msg.sender)]) == 1
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) <= 0:
        return 1
    require ext_code.size(arg2)
    call arg2.tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
