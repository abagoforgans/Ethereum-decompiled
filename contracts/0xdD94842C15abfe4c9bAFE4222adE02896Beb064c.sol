contract main {




// =====================  Runtime code  =====================


const name = 'W GREEN PAY'

const maxCap = 600000000 * 10^18

const decimals = 18

const symbol = 'WGP'


uint256 icoStartDate;
uint256 icoEndDate;
uint256 totalSupply;
address owner;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address ethFundMainAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;

function lockStatusOf(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function icoEndDate() {
    return icoEndDate
}

function ethFundMain() {
    return ethFundMainAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_9e542af9(?) {
    return bool(uint8(stor4.field_168))
}

function lockToken() {
    return bool(uint8(stor4.field_160))
}

function icoStartDate() {
    return icoStartDate
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function haltCrowdSale() {
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    Mask(88, 0, stor4.field_168) = 0
    emit ChangeAllowICOStatus(0);
}

function resumeCrowdSale() {
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    Mask(88, 0, stor4.field_168) = 1
    emit ChangeAllowICOStatus(1);
}

function haltTokenTransferFromAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    stor7[address(arg1)] = 1
    emit ChangeLockStatusFrom(1, arg1);
}

function resumeTokenTransferFromAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    stor7[address(arg1)] = 0
    emit ChangeLockStatusFrom(0, arg1);
}

function stopTransferToken() {
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    if block.timestamp < icoEndDate:
        revert with 0, 'CrowdSale is running'
    Mask(96, 0, stor4.field_160) = 1
    emit ChangeTokenLockStatus(1);
}

function startTransferToken() {
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    if block.timestamp < icoEndDate:
        revert with 0, 'CrowdSale is running'
    Mask(96, 0, stor4.field_160) = 0
    emit ChangeTokenLockStatus(0);
}

function assignOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    if not arg1:
        revert with 0, 'Address can not be 0x0'
    owner = arg1
    emit ChangeOwnerShip(arg1);
}

function _fallback() payable {
    if block.timestamp < icoStartDate:
        revert with 0, 'CrowdSale is not running'
    if block.timestamp >= icoEndDate:
        revert with 0, 'CrowdSale is not running'
    if not uint8(stor4.field_168):
        revert with 0, 'ICO stopped'
}

function changeReceiveWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    if not arg1:
        revert with 0, 'Address can not be 0x0'
    ethFundMainAddress = arg1
    emit ChangeReceiveWallet(arg1);
}

function forwardFunds() {
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    require ethFundMainAddress
    call ethFundMainAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe42616c616e636520646f6573206e6f74206861766520656e6f75676820746f6b656e,
                    mem[199 len 29]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if block.timestamp < icoEndDate:
        revert with 0, 'CrowdSale is running'
    if uint8(stor4.field_160):
        revert with 0, 'Token locked'
    if not arg1:
        revert with 0, 'Address can not be 0x0'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe42616c616e636520646f6573206e6f74206861766520656e6f75676820746f6b656e,
                    mem[199 len 29]
    if stor7[address(msg.sender)]:
        revert with 0, 'Sender address is locked'
    if stor7[address(arg1)]:
        revert with 0, 'Spender address is locked'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function manualMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed'
    if not arg2:
        if not arg1:
            revert with 0, 'Address can not be 0x0'
        revert with 0, 'Value should larger than 0'
    require arg2
    require 10^18 * arg2 / arg2 == 10^18
    if not arg1:
        revert with 0, 'Address can not be 0x0'
    if 10^18 * arg2 <= 0:
        revert with 0, 'Value should larger than 0'
    require balanceOf[address(arg1)] + (10^18 * arg2) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^18 * arg2
    require totalSupply + (10^18 * arg2) >= totalSupply
    totalSupply += 10^18 * arg2
    if totalSupply > 600000000 * 10^18:
        revert with 0, 'CrowdSale hit max cap'
    emit Mint((10^18 * arg2), owner, arg1);
    emit Transfer((10^18 * arg2), 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if block.timestamp < icoEndDate:
        revert with 0, 'CrowdSale is running'
    if uint8(stor4.field_160):
        revert with 0, 'Token locked'
    if not arg1:
        revert with 0, 'Receiver can not be 0x0'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe42616c616e636520646f6573206e6f74206861766520656e6f75676820746f6b656e,
                    mem[199 len 29]
    if stor7[address(msg.sender)]:
        revert with 0, 'Sender address is locked'
    if stor7[address(arg1)]:
        revert with 0, 'Receiver address is locked'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if block.timestamp < icoEndDate:
        revert with 0, 'CrowdSale is running'
    if uint8(stor4.field_160):
        revert with 0, 'Token locked'
    if not arg2:
        revert with 0, 'Receiver can not be 0x0'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Source's balance is not enough'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'Allowance is not enough'
    if stor7[address(arg1)]:
        revert with 0, 'From address is locked'
    if stor7[address(arg2)]:
        revert with 0, 'Receiver address is locked'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
