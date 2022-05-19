contract main {




// =====================  Runtime code  =====================


const name = 'mfun'

const sub_2ac5a00b(?) = (200000 * 10^18 * 3600)

const decimals = 18

const symbol = 'mfun'

const sub_a6b12af4(?) = 40000000 * 10^18

const INITIAL_SUPPLY = 800000000 * 10^18

const REWARD_SUPPLY = 40000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
mapping of uint8 stor4;
uint8 stor5; offset 160
uint128 stor5; offset 160
address rewardAddr;
uint256 price;
address sub_3e37b141Address;
address sub_30389568Address;

function totalSupply() {
    return totalSupply
}

function sub_30389568(?) {
    return sub_30389568Address
}

function sub_3e37b141(?) {
    return sub_3e37b141Address
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function rewardAddr() {
    return rewardAddr
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_8fffab95(?) {
    return bool(uint8(stor5.field_160))
}

function price() {
    return price
}

function frozenAccount(address arg1) {
    return bool(stor4[arg1])
}

function freezeOf(address arg1) {
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function sub_b4adbce1(?) {
    require msg.sender == owner
    require arg1
    emit 0x8c4b7d12: rewardAddr, arg1
    rewardAddr = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function unbuy() {
    require msg.sender == owner
    require uint8(stor5.field_160)
    Mask(96, 0, stor5.field_160) = 0
    emit 0x8fefe578 
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor4[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function buy(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor5.field_160)
    Mask(96, 0, stor5.field_160) = 1
    price = arg1
    emit Buy(arg1);
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintToken(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(stor3.field_0)] + arg1 >= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Transfer(arg1, 0, owner);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_6f5d313e(?) payable {
    require not uint8(stor3.field_160)
    require msg.sender == rewardAddr
    require arg1
    require not stor4[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(stor5.field_0)] + arg2 >= balanceOf[address(stor5.field_0)]
    balanceOf[address(stor5.field_0)] += arg2
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x33c6b26e: arg2, msg.value, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyToken() payable {
    require not uint8(stor3.field_160)
    require uint8(stor5.field_160)
    if not msg.value:
        require 0 <= balanceOf[address(stor3.field_0)]
        require not stor4[address(msg.sender)]
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 <= balanceOf[address(stor3.field_0)]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit 0x6ffe5b06: 0, msg.value
    else:
        require msg.value
        require msg.value * price / msg.value == price
        require msg.value * price <= balanceOf[address(stor3.field_0)]
        require not stor4[address(msg.sender)]
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.value * price <= balanceOf[address(stor3.field_0)]
        balanceOf[address(stor3.field_0)] += -1 * msg.value * price
        require balanceOf[address(msg.sender)] + (msg.value * price) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * price
        emit 0x6ffe5b06: msg.value * price, msg.value
    return 1
}



}
