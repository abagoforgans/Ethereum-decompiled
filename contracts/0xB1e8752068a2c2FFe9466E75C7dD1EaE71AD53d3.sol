contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_0ee3443f;
uint256 sub_787dafdf;
uint256 sub_6facbd29;
uint8 sub_faa5a879;
mapping of uint256 stor9;
mapping of uint256 allowance;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function sub_0ee3443f(?) {
    return sub_0ee3443f
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_6facbd29(?) {
    return sub_6facbd29
}

function sub_787dafdf(?) {
    return sub_787dafdf
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_bfeddd1e(?) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_faa5a879(?) {
    return bool(sub_faa5a879)
}

function _fallback() payable {
    revert
}

function sub_747a1e40(?) {
    require msg.sender == owner
    sub_faa5a879 = 0
    sub_6facbd29 = 0
}

function sub_11bff70d(?) {
    require msg.sender == owner
    sub_0ee3443f = arg1
    sub_6facbd29 = arg2
    sub_faa5a879 = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require stor9[address(msg.sender)] >= arg1
    stor9[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require stor9[address(msg.sender)] >= arg2
    require stor9[address(arg1)] + arg2 > stor9[address(arg1)]
    stor9[address(msg.sender)] -= arg2
    stor9[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require stor9[address(msg.sender)] + stor9[address(arg1)] == stor9[address(msg.sender)] + stor9[address(arg1)]
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require stor9[address(arg1)] >= arg3
    require stor9[address(arg2)] + arg3 > stor9[address(arg2)]
    stor9[address(arg1)] -= arg3
    stor9[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require stor9[address(arg1)] + stor9[address(arg2)] == stor9[address(arg1)] + stor9[address(arg2)]
    return 1
}

function balanceOf(address arg1) {
    require not stor11[address(arg1)]
    require bool(sub_faa5a879) == 1
    require sub_787dafdf < sub_0ee3443f
    stor11[address(arg1)] = 1
    sub_787dafdf += sub_6facbd29
    require arg1
    require stor9[stor0] >= sub_6facbd29
    require stor9[address(arg1)] + sub_6facbd29 > stor9[address(arg1)]
    stor9[stor0] -= sub_6facbd29
    stor9[address(arg1)] += sub_6facbd29
    emit Transfer(sub_6facbd29, owner, arg1);
    require stor9[stor0] + stor9[address(arg1)] == stor9[stor0] + stor9[address(arg1)]
    return stor9[address(arg1)]
}



}
