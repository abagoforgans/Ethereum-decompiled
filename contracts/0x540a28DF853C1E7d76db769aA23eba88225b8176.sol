contract main {


// =======================  Init code  ======================


uint8 stor4;
address stor4; offset 8
uint128 stor7; offset 160
address stor7;

function _fallback() payable {
    uint8(stor4.field_0) = 0
    Mask(96, 0, stor7.field_160) = 0
    require not msg.value
    address(stor4.field_8) = msg.sender
    address(stor7.field_0) = msg.sender
    return code.data[214 len 9600]
}



// =====================  Runtime code  =====================


const name = 'EasyLoot'

const decimals = 18

const symbol = 'LOOT'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint8 stor3;
uint8 stor4;
address owner; offset 8
array of uint256 contactInformation;
uint8 stor7; offset 160
uint128 stor7; offset 160
address minterAddress;

function mintingFinished() {
    return bool(uint8(stor7.field_160))
}

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function isActivated() {
    return bool(stor4)
}

function freezedList(address arg1) {
    return bool(stor3[arg1])
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
    revert
}

function activate() {
    require msg.sender == owner
    stor4 = 1
    return 1
}

function removeFromFreezedList(address arg1) {
    require msg.sender == owner
    stor3[address(arg1)] = 0
}

function setMinter(address arg1) {
    require msg.sender == minterAddress
    require arg1
    minterAddress = arg1
}

function setContactInformation(string arg1) {
    require msg.sender == owner
    contactInformation[] = Array(len=arg1.length, data=arg1[all])
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

function finishMinting() {
    require not uint8(stor7.field_160)
    require msg.sender == minterAddress
    Mask(96, 0, stor7.field_160) = 1
    emit MintingFinished()
    return 1
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

function mint(address arg1, uint256 arg2, bool arg3) {
    require not uint8(stor7.field_160)
    require msg.sender == minterAddress
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if arg3:
        stor3[address(arg1)] = 1
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require stor4
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require not stor3[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor4
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require not stor3[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                  arg2,
                  64,
                  0,
                  msg.sender,
                  arg1,
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require stor4
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require not stor3[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    emit Transfer(arg3, Array(len=arg4.length, data=arg4[all]), arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor4
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require not stor3[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args address(arg1), arg3, 96, 0
        require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                  arg3,
                  64,
                  0,
                  arg1,
                  arg2,
    return 1
}



}
