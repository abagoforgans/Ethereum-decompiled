contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2[address(this.address)] = 2 * 10^16
    stor1 = 2 * 10^16
    emit Transfer(2 * 10^16, 0, this.address);
    return code.data[148 len 4097]
}



// =====================  Runtime code  =====================


const name = 'empowr green'

const decimals = 18

const symbol = 'EMPRG'


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function IsTradeable() {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function Terminate() {
    require address(stor0.field_0) == msg.sender
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
    emit ReceivedEth(msg.value, msg.sender);
}

function IsOwner(address arg1) {
    return (address(stor0.field_0) == arg1)
}

function LockAccount(address arg1) {
    require address(stor0.field_0) == msg.sender
    stor4[address(arg1)] = 1
}

function UnlockAccount(address arg1) {
    require address(stor0.field_0) == msg.sender
    stor4[address(arg1)] = 0
}

function TransferOwner(address arg1) {
    require address(stor0.field_0) == msg.sender
    address(stor0.field_0) = arg1
}

function SetTradeable(bool arg1) {
    require address(stor0.field_0) == msg.sender
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function DestroyToken(uint256 arg1) {
    require address(stor0.field_0) == msg.sender
    require balanceOf[address(this.address)] >= arg1
    totalSupply -= arg1
    balanceOf[address(this.address)] -= arg1
    emit Transfer(arg1, this.address, 0);
}

function MintToken(uint256 arg1) {
    require address(stor0.field_0) == msg.sender
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    totalSupply += arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, 0, this.address);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4[address(msg.sender)]
    require uint8(stor0.field_160)
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    emit Transfer(arg2, msg.sender, arg1);
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    return 1
}

function BuyToken(address arg1, uint256 arg2, string arg3) {
    require address(stor0.field_0) == msg.sender
    require balanceOf[address(this.address)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    emit SoldToken(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    balanceOf[address(this.address)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require uint8(stor0.field_160)
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    emit Transfer(arg3, arg1, arg2);
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    return 1
}

function FoundationTransfer(address arg1, uint256 arg2, uint256 arg3) {
    require address(stor0.field_0) == msg.sender
    require eth.balance(this.address) >= arg2
    require balanceOf[address(this.address)] >= arg3
    if arg2 > 0:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TransferredEth(arg2, arg1);
    if arg3 > 0:
        require balanceOf[address(arg1)] + arg3 > balanceOf[address(arg1)]
        balanceOf[address(this.address)] -= arg3
        balanceOf[arg1] += arg3
        emit Transfer(arg3, this.address, arg1);
}



}
