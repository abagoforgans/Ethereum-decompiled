contract main {


// =======================  Init code  ======================


uint256 storB836;
uint128 storB836; offset 160
address storB836;

function _fallback() {
    storB836 = 3000000 * 10^18
    address(storB836.field_0) = 0x45da370c3c0a1a55501f3b78becc78a084cc488
    Mask(96, 0, storB836.field_160) = 1
    return code.data[234 len 1704]
}



// =====================  Runtime code  =====================


const name = 'YUM Token'

const totalSupply = 3000000 * 10^18

const decimals = 18

const symbol = 'YUM'

const INITIAL_SUPPLY = 3000000 * 10^18


mapping of struct balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function setEnabled(address arg1, bool arg2) {
    require 0x45da370c3c0a1a55501f3b78becc78a084cc488 == msg.sender
    if arg2 != bool(balanceOf[address(arg1)].field_416):
        balanceOf[address(arg1)].field_416 = Mask(96, 0, arg2)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 0x45da370c3c0a1a55501f3b78becc78a084cc488 == msg.sender
    require arg1
    require arg2
    require arg3 <= balanceOf[address(arg1)].field_0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)].field_0 + arg3 <= balanceOf[address(arg2)].field_0:
        return 0
    balanceOf[address(arg1)].field_0 -= arg3
    balanceOf[arg2].field_0 += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)].field_0
    if 0x45da370c3c0a1a55501f3b78becc78a084cc488 == msg.sender:
        if not balanceOf[address(arg1)].field_416:
            balanceOf[address(arg1)].field_416 = 1
    if not balanceOf[address(msg.sender)].field_416:
        return 0
    if not balanceOf[address(arg1)].field_416:
        return 0
    if balanceOf[address(msg.sender)].field_0 < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)].field_0 + arg2 <= balanceOf[address(arg1)].field_0:
        return 0
    balanceOf[address(msg.sender)].field_0 -= arg2
    balanceOf[arg1].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
