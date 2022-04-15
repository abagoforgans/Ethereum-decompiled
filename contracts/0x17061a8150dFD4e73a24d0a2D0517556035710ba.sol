contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() {
    mem[96 len -2833] = code.data[3200 len -2833]
    mem[64] = -2737
    stor0 = msg.sender
    stor5[address(msg.sender)] = mem[96]
    stor4 = mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor3 = mem[191 len 1]
    return code.data[367 len 2833]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor6;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor6[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor6[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    if stor6[address(msg.sender)]:
        return 0
    if stor6[address(arg1)]:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    if stor6[address(msg.sender)]:
        return 0
    if stor6[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if stor6[address(msg.sender)]:
        return 0
    if stor6[address(arg1)]:
        return 0
    if stor6[address(msg.sender)]:
        return 0
    if stor6[address(arg1)]:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        return 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    if stor6[address(msg.sender)]:
        return 0
    if stor6[address(arg1)]:
        return 0
    if stor6[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
