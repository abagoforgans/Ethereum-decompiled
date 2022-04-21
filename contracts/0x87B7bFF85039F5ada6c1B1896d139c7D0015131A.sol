contract main {


// =======================  Init code  ======================


uint128 stor3; offset 160
address stor3;
address stor4;

function _fallback() {
    address(stor3.field_0) = msg.sender
    Mask(96, 0, stor3.field_160) = 0
    stor4 = 0x5e8f4f8f128bd5f097e26ee2396ca26fad7b9ff0
    return code.data[207 len 7953]
}



// =====================  Runtime code  =====================


const name = 'Spear Token'

const rate = 100

const decimals = 18

const version = '1.0'

const symbol = 'QST'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
address stor4;
address stor5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e0208ea1(?) {
    return bool(uint8(stor3.field_160))
}

function sub_b5e5766b(?) {
    require msg.sender == owner
    require not stor5
    require arg1
    stor5 = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setOwner(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    require arg1
    emit LogChangeOwner(owner, arg1);
    owner = arg1
    return 1
}

function sub_993b1ded(?) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    emit 0xa562a311: msg.sender, 1
    Mask(96, 0, stor3.field_160) = 1
    return 1
}

function sub_ac307fcf(?) {
    require eth.balance(this.address) > 0
    require stor4
    emit 0x82ede3e4: msg.sender, eth.balance(this.address)
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function migrate(address arg1, uint256 arg2) {
    require msg.sender == stor5
    require arg1
    require arg2 > 0
    require stor5
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, this.address);
    return arg2
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] <= -arg2 - 1
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require not uint8(stor3.field_160)
    require msg.value > 0
    require balanceOf[address(msg.sender)] <= (-100 * msg.value) - 1
    balanceOf[address(msg.sender)] += 100 * msg.value
    totalSupply += 100 * msg.value
    emit 0x8cd787b7: msg.value, msg.sender
    emit Transfer((100 * msg.value), this.address, msg.sender);
}

function sub_dcfd60ab(?) payable {
    require not uint8(stor3.field_160)
    require msg.value > 0
    require balanceOf[address(msg.sender)] <= (-100 * msg.value) - 1
    balanceOf[address(msg.sender)] += 100 * msg.value
    totalSupply += 100 * msg.value
    emit 0x8cd787b7: msg.value, msg.sender
    emit Transfer((100 * msg.value), this.address, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] <= -arg3 - 1
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_32d24631(?) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg1
    require 100 * arg2 * arg3 > 0
    require balanceOf[address(arg1)] <= (-100 * arg2 * arg3) - 1
    balanceOf[address(arg1)] += 100 * arg2 * arg3
    totalSupply += 100 * arg2 * arg3
    emit 0x67cc870f: arg2, arg3, Array(len=arg4.length, data=arg4[all]), arg1
    emit Transfer((100 * arg2 * arg3), this.address, arg1);
    return 1
}

function sub_22813eb0(?) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg1
    require 100 * arg2 * arg3 / 1000 > 0
    require balanceOf[address(arg1)] <= -(100 * arg2 * arg3 / 1000) - 1
    balanceOf[address(arg1)] += 100 * arg2 * arg3 / 1000
    totalSupply += 100 * arg2 * arg3 / 1000
    emit 0xa12526a5: arg2, arg3, Array(len=arg4.length, data=arg4[all]), arg1
    emit Transfer((100 * arg2 * arg3 / 1000), this.address, arg1);
    return 1
}



}
