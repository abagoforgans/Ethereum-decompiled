contract main {




// =====================  Runtime code  =====================


const name = 'Midas Digital Gold'

const decimals = 18

const symbol = 'MDG'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address superOwner;
address hiddenOwner;
address sub_f9866521Address;
address sub_f40cae43Address;
address sub_9e3929eaAddress;
address sub_62502451Address;
array of address sub_3ab9e1f4;
array of address sub_f17900e3;
array of address chkBurnerList;
mapping of uint8 stor36;
mapping of uint8 stor37;
mapping of uint8 stor38;
uint8 paused;
uint8 sub_fb3fbc12; offset 8
uint256 stor39; offset 8
mapping of uint8 stor40;

function burners(address arg1) {
    return bool(stor38[arg1])
}

function operators(address arg1) {
    return bool(stor36[arg1])
}

function totalSupply() {
    return totalSupply
}

function chkBurnerList(uint256 arg1) {
    require arg1 < 3
    return chkBurnerList[arg1]
}

function sub_3ab9e1f4(?) {
    require arg1 < 20
    return sub_3ab9e1f4[arg1]
}

function paused() {
    return bool(paused)
}

function sub_62502451(?) {
    return sub_62502451Address
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function superOwner() {
    return superOwner
}

function owner() {
    return owner
}

function sub_9e3929ea(?) {
    return sub_9e3929eaAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f17900e3(?) {
    require arg1 < 3
    return sub_f17900e3[arg1]
}

function sub_f40cae43(?) {
    return sub_f40cae43Address
}

function minters(address arg1) {
    return bool(stor37[arg1])
}

function sub_f9866521(?) {
    return sub_f9866521Address
}

function sub_fb3fbc12(?) {
    return bool(sub_fb3fbc12)
}

function hiddenOwner() {
    return hiddenOwner
}

function destory() {
    require msg.sender == hiddenOwner
    selfdestruct(superOwner)
}

function _fallback() {
  stop
}

function isPermitted(address arg1) {
    return not bool(stor40[address(arg1)])
}

function unpause() {
    require msg.sender == owner
    require paused
    paused = 0
    emit 0xe9371bd0 
}

function pause() {
    require msg.sender == owner
    require not paused
    paused = 1
    emit 0x90ea41dd 
}

function sub_6dd2891e(?) {
    require msg.sender == owner
    require sub_fb3fbc12
    stor39 = 0
    emit 0x46eabc7c 
}

function sub_1dfe0324(?) {
    require msg.sender == owner
    require not sub_fb3fbc12
    stor39 = 1
    emit 0x57bf57ca 
}

function unblacklist(address arg1) {
    require msg.sender == owner
    stor40[address(arg1)] = 0
    emit 0xc5a19619: arg1
}

function blacklist(address arg1) {
    require stor36[address(msg.sender)]
    stor40[address(arg1)] = 1
    emit 0x7d24874b: arg1
}

function changeHiddenOwner(address arg1) {
    require msg.sender == hiddenOwner
    emit 0xb7f6fc56: 2, hiddenOwner, arg1
    hiddenOwner = arg1
    return 1
}

function transferSuperOwnership(address arg1) {
    require msg.sender == hiddenOwner
    emit 0xb7f6fc56: 1, superOwner, arg1
    superOwner = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == superOwner
    emit 0xb7f6fc56: 0, owner, arg1
    stor36[stor3] = 0
    stor36[address(arg1)] = 1
    owner = arg1
    return 1
}

function sub_040fd090(?) {
    require msg.sender == superOwner
    emit 0xb7f6fc56: 3, sub_f9866521Address, arg1
    stor36[stor6] = 0
    stor36[address(arg1)] = 1
    sub_f9866521Address = arg1
    return 1
}

function sub_295a59ca(?) {
    require msg.sender == superOwner
    emit 0xb7f6fc56: 4, sub_9e3929eaAddress, arg1
    stor36[stor8] = 0
    stor36[address(arg1)] = 1
    sub_9e3929eaAddress = arg1
    return 1
}

function sub_61786a7d(?) {
    require msg.sender == superOwner
    emit 0xb7f6fc56: 3, sub_f40cae43Address, arg1
    stor36[stor7] = 0
    stor36[address(arg1)] = 1
    sub_f40cae43Address = arg1
    return 1
}

function sub_bc2b658f(?) {
    require msg.sender == superOwner
    emit 0xb7f6fc56: 5, sub_62502451Address, arg1
    stor36[stor9] = 0
    stor36[address(arg1)] = 1
    sub_62502451Address = arg1
    return 1
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4cb19b8c(?) {
    require msg.sender == superOwner
    require arg1
    require arg2 < 3
    require not sub_f17900e3[arg2]
    stor37[address(arg1)] = 1
    require arg2 < 3
    sub_f17900e3[arg2] = arg1
    emit 0x28ecbf6e: arg1
    return 1
}

function sub_aa326df1(?) {
    require msg.sender == superOwner
    require arg1
    require arg2 < 20
    require not sub_3ab9e1f4[arg2]
    stor36[address(arg1)] = 1
    require arg2 < 20
    sub_3ab9e1f4[arg2] = arg1
    emit 0xe02e1d4b: arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not stor40[address(msg.sender)]
    require not stor40[address(arg1)]
    require not paused
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_e21d052f(?) {
    require msg.sender == superOwner
    require arg2 < 3
    require arg1
    require arg2 < 3
    require sub_f17900e3[arg2] == arg1
    stor37[address(arg1)] = 0
    require arg2 < 3
    sub_f17900e3[arg2] = 0
    emit 0x1d6ac6b8: arg1
    return 1
}

function addBurner(address arg1, uint8 arg2) {
    require msg.sender == superOwner
    require arg1
    require arg2 < 3
    require not chkBurnerList[arg2]
    stor38[address(arg1)] = 1
    require arg2 < 3
    chkBurnerList[arg2] = arg1
    emit 0xc8c38605: arg1
    return 1
}

function sub_ebb5e627(?) {
    require msg.sender == superOwner
    require arg2 < 3
    require arg1
    require arg2 < 3
    require chkBurnerList[arg2] == arg1
    stor38[address(arg1)] = 0
    require arg2 < 3
    chkBurnerList[arg2] = 0
    emit 0x69805a04: arg1
    return 1
}

function sub_6d770e2b(?) {
    require msg.sender == superOwner
    require arg2 < 20
    require arg1
    require arg2 < 20
    require sub_3ab9e1f4[arg2] == arg1
    stor36[address(arg1)] = 0
    require arg2 < 20
    sub_3ab9e1f4[arg2] = 0
    emit 0x86e9bc23: arg1
    return 1
}

function burn(address arg1, uint256 arg2) {
    require stor38[address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require stor37[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require not paused
    require not stor40[address(msg.sender)]
    require not stor40[address(arg1)]
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not paused
    require not stor40[address(msg.sender)]
    require not stor40[address(arg1)]
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor40[address(msg.sender)]
    if not stor36[address(arg1)]:
        if paused:
            require stor36[address(msg.sender)]
    require not sub_fb3fbc12
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
    emit ReclaimToken(arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor40[address(arg1)]
    require not stor40[address(msg.sender)]
    require not stor40[address(arg2)]
    require not paused
    if not stor36[address(arg2)]:
        if paused:
            require stor36[address(msg.sender)]
    require not sub_fb3fbc12
    require arg2 != this.address
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



}
