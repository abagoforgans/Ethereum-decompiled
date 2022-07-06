contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor5 = 0
    stor6 = 0
    stor7 = 10 * 10^6
    stor0 = msg.sender
    return code.data[100 len 9438]
}



// =====================  Runtime code  =====================


const name = 'EBCoin'

const decimals = 18

const symbol = 'EB'


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 lastDayPaid;
uint256 stor6;
uint256 stor7;

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

function lastDayPaid() {
    return lastDayPaid
}

function Terminate() {
    require msg.sender == address(stor0.field_0)
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
    emit ReceivedEth(msg.value, msg.sender);
}

function IsOwner(address arg1) {
    return (address(stor0.field_0) == arg1)
}

function LockAccount(address arg1) {
    require msg.sender == address(stor0.field_0)
    stor4[address(arg1)] = 1
}

function UnlockAccount(address arg1) {
    require msg.sender == address(stor0.field_0)
    stor4[address(arg1)] = 0
}

function TransferOwner(address arg1) {
    require msg.sender == address(stor0.field_0)
    address(stor0.field_0) = arg1
}

function SetTradeable(bool arg1) {
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function EB() {
    balanceOf[address(this.address)] = 400000000 * 10^18
    totalSupply = 400000000 * 10^18
    emit Transfer(totalSupply, 0, this.address);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function MintToken(uint256 arg1) {
    require msg.sender == address(stor0.field_0)
    totalSupply += arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, 0, this.address);
}

function DestroyToken(uint256 arg1) {
    require msg.sender == address(stor0.field_0)
    require balanceOf[address(this.address)] >= arg1
    totalSupply -= arg1
    balanceOf[address(this.address)] -= arg1
    emit Transfer(arg1, this.address, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
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
    balanceOf[address(arg1)] += arg2
    return 1
}

function BuyToken(address arg1, uint256 arg2, string arg3) {
    require msg.sender == address(stor0.field_0)
    require balanceOf[address(this.address)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    emit SoldToken(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    balanceOf[address(this.address)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function DailyMint() {
    require 1554714420 <= block.timestamp
    require block.timestamp - 1554714420 / 24 * 3600 >= lastDayPaid
    if lastDayPaid / 30 > stor6:
        stor6++
        stor7 = 99 * stor7 / 100
    balanceOf[address(this.address)] += 10^18 * 40 * 10^6 * stor7 / 10 * 10^6 / 30
    totalSupply += 10^18 * 40 * 10^6 * stor7 / 10 * 10^6 / 30
    emit Transfer((10^18 * 40 * 10^6 * stor7 / 10 * 10^6 / 30), 0, this.address);
    emit DayMinted(lastDayPaid, 10^18 * 40 * 10^6 * stor7 / 10 * 10^6 / 30, block.timestamp);
    lastDayPaid++
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
    require msg.sender == address(stor0.field_0)
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
        balanceOf[address(arg1)] += arg3
        emit Transfer(arg3, this.address, arg1);
}



}
