contract main {




// =====================  Runtime code  =====================


const name = 'Electra token'

const decimals = 18

const symbol = 'EVE'

const sub_f7dc61b6(?) = (17280 * 24 * 3600)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
address teamWalletAddress;
uint256 teamAmount;
uint8 stor6;
address stor6;
address devWalletAddress; offset 8
uint256 devAmount;
uint8 sub_bc825003;
address crowdsaleContractAddress; offset 8
uint256 sub_f1a6f2a8;
uint8 stor10;
address stor10;
address companyWalletAddress; offset 8
uint256 sub_447fda2a;
uint8 sub_25e2df29;
uint256 sub_ea4392dc;

function totalSupply() {
    return totalSupply
}

function companyWallet() {
    return companyWalletAddress
}

function sub_25e2df29(?) {
    return bool(sub_25e2df29)
}

function devAmount() {
    return devAmount
}

function crowdsaleContract() {
    return crowdsaleContractAddress
}

function sub_447fda2a(?) {
    return sub_447fda2a
}

function sub_4d05a666(?) {
    return bool(uint8(stor6.field_0))
}

function sub_546d4006(?) {
    return bool(uint8(stor10.field_0))
}

function teamWallet() {
    return teamWalletAddress
}

function teamAmount() {
    return teamAmount
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function devWallet() {
    return devWalletAddress
}

function sub_bc825003(?) {
    return bool(sub_bc825003)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ea4392dc(?) {
    return sub_ea4392dc
}

function sub_f1a6f2a8(?) {
    return sub_f1a6f2a8
}

function _fallback() payable {
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_dd4936ec(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not uint8(stor10.field_0)
    uint8(stor10.field_0) = 1
    require arg1
    require sub_f1a6f2a8 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= sub_f1a6f2a8
    require balanceOf[address(arg1)] + sub_f1a6f2a8 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += sub_f1a6f2a8
    emit Transfer(sub_f1a6f2a8, this.address, arg1);
}

function sub_dbf079d0(?) {
    require block.timestamp > sub_ea4392dc + (17280 * 24 * 3600)
    require not sub_bc825003
    sub_bc825003 = 1
    require devWalletAddress
    require devAmount <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= devAmount
    require balanceOf[address(stor6.field_0)] + devAmount >= balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] += devAmount
    emit Transfer(devAmount, this.address, devWalletAddress);
}

function sub_1dc7fbab(?) {
    require block.timestamp > sub_ea4392dc + (17280 * 24 * 3600)
    require not sub_25e2df29
    sub_25e2df29 = 1
    require companyWalletAddress
    require sub_447fda2a <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= sub_447fda2a
    require balanceOf[address(stor10.field_0)] + sub_447fda2a >= balanceOf[address(stor10.field_0)]
    balanceOf[address(stor10.field_0)] += sub_447fda2a
    emit Transfer(sub_447fda2a, this.address, companyWalletAddress);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
