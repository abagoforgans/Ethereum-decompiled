contract main {




// =====================  Runtime code  =====================


const ROLE_ADMIN = 'admin'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
array of uint256 contactInformation;
mapping of uint8 stor99;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    mem[160 len 0] = None
    require stor5[mem[160 len 5]][address(msg.sender)]
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    mem[160 len 0] = None
    require stor5[mem[160 len 5]][address(msg.sender)]
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setName(string arg1) {
    mem[ceil32(arg1.length) + 192 len 0] = None
    require stor5[mem[ceil32(arg1.length) + 192 len 5]][address(msg.sender)]
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setContactInformation(string arg1) {
    mem[ceil32(arg1.length) + 192 len 0] = None
    require stor5[mem[ceil32(arg1.length) + 192 len 5]][address(msg.sender)]
    contactInformation[] = Array(len=arg1.length, data=arg1[all])
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimContract(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
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

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 5
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function adminAddRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'admin'
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 197] = 5
    require stor5[mem[ceil32(arg2.length) + 192 len 5]][address(msg.sender)]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 192] = 5
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)] = 1
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit RoleAdded(address arg1, string arg2):
                       address(arg1),
                       mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                       mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                       Mask(8 * arg2.length % 32, 0, 5),
                       mem[ceil32(arg2.length) + arg2.length + 224 len 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit RoleAdded(address arg1, string arg2):
                       address(arg1),
                       mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                       mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                       Mask(8 * arg2.length % 32, 0, 5),
                       mem[ceil32(arg2.length) + arg2.length + 224 len -(arg2.length % 32) + 96],
}

function adminRemoveRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'admin'
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 197] = 5
    require stor5[mem[ceil32(arg2.length) + 192 len 5]][address(msg.sender)]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 192] = 5
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)] = 0
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit RoleRemoved(address arg1, string arg2):
                         address(arg1),
                         mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                         mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                         Mask(8 * arg2.length % 32, 0, 5),
                         mem[ceil32(arg2.length) + arg2.length + 224 len 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit RoleRemoved(address arg1, string arg2):
                         address(arg1),
                         mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                         mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                         Mask(8 * arg2.length % 32, 0, 5),
                         mem[ceil32(arg2.length) + arg2.length + 224 len -(arg2.length % 32) + 96],
}



}
