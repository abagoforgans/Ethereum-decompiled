contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor3 = 5 * 10^17
    require not msg.value
    stor0[address(msg.sender)] = stor3
    stor4 = msg.sender
    emit Transfer(stor3, 0, msg.sender);
    return code.data[145 len 2929]
}



// =====================  Runtime code  =====================


const name = 'Bit diamond'

const decimals = 8

const symbol = 'IGSBC'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
mapping of uint256 freezes;

function freezes(address arg1) {
    return freezes[arg1]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 0
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 0
}

function withdrawEther(uint256 arg1) {
    if owner == msg.sender:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function burn(uint256 arg1) {
    if balanceOf[address(msg.sender)] < arg1:
        return 0
    if totalSupply - arg1 > totalSupply:
        return 0
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function freeze(uint256 arg1) {
    if balanceOf[address(msg.sender)] < arg1:
        return 0
    if freezes[address(msg.sender)] + arg1 < freezes[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg1
    freezes[address(msg.sender)] += arg1
    emit Freeze(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function unfreeze(uint256 arg1) {
    if freezes[address(msg.sender)] < arg1:
        return 0
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        return 0
    freezes[address(msg.sender)] -= arg1
    balanceOf[address(msg.sender)] += arg1
    emit Unfreeze(arg1, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveTransfer(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}



}
