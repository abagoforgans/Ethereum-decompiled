contract main {




// =====================  Runtime code  =====================


const name = 'SocialGood'

const sub_287c80a8(?) = 3100000 * 10^18

const decimals = 18

const symbol = 'SG'

const ROLE_SUPERUSER = 'superuser'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 cap;
uint8 stor5;
mapping of uint8 stor6;
address sub_8476107aAddress;
address sub_85b51c7eAddress;
address sub_230e4d01Address;
address sub_228175fbAddress;
mapping of uint8 stor99;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function totalSupply() {
    return totalSupply
}

function sub_228175fb(?) {
    return sub_228175fbAddress
}

function sub_230e4d01(?) {
    return sub_230e4d01Address
}

function cap() {
    return cap
}

function paused() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_8476107a(?) {
    return sub_8476107aAddress
}

function sub_85b51c7e(?) {
    return sub_85b51c7eAddress
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function pause() {
    revert
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor5
    stor5 = 0
    emit Unpause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function isSuperuser(address arg1) {
    mem[160 len 0] = None
    mem[160] = bool(stor6[mem[160 len 9]][address(arg1)])
    return memory
      from 160
       len 32
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not stor5
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor6[mem[160 len 9]][address(msg.sender)]
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor5
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferSuperuser(address arg1) {
    mem[160 len 0] = None
    require stor6[mem[160 len 9]][address(msg.sender)]
    require arg1
    mem[224 len 0] = None
    stor6[mem[224 len 9]][address(msg.sender)] = 0
    emit RoleRemoved('superuser', msg.sender);
    stor6[Mask(72, 0, 'superuser')][address(arg1)] = 1
    emit RoleAdded('superuser', arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not stor5
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor5
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= cap
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor5
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 6
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 6
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor5
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Transfer(arg2, arg1, msg.sender);
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, msg.sender, 0);
}

function sub_666f18e1(?) {
    require arg1
    require arg2 > 0
    require arg2 + (8766 * 3600) >= arg2
    create contract with 0 wei
                    code: code.data[12250 len 1341], address(this.address), address(arg1), arg2 + (8766 * 3600)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_8476107aAddress = address(create.new_address)
    require arg2 + (17532 * 3600) >= arg2
    create contract with 0 wei
                    code: code.data[12250 len 1341], address(this.address), address(arg1), arg2 + (17532 * 3600)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_85b51c7eAddress = address(create.new_address)
    require arg2 + (26298 * 3600) >= arg2
    create contract with 0 wei
                    code: code.data[12250 len 1341], address(this.address), address(arg1), arg2 + (26298 * 3600)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_230e4d01Address = address(create.new_address)
    require arg2 + (35064 * 24 * 3600) >= arg2
    create contract with 0 wei
                    code: code.data[12250 len 1341], address(this.address), address(arg1), arg2 + (35064 * 24 * 3600)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_228175fbAddress = address(create.new_address)
    require totalSupply + 775000 * 10^18 >= totalSupply
    require totalSupply + 775000 * 10^18 <= cap
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 775000 * 10^18 >= totalSupply
    totalSupply += 775000 * 10^18
    require balanceOf[stor7] + 775000 * 10^18 >= balanceOf[stor7]
    balanceOf[stor7] += 775000 * 10^18
    emit Mint(775000 * 10^18, sub_8476107aAddress);
    emit Transfer(775000 * 10^18, 0, sub_8476107aAddress);
    require totalSupply + 775000 * 10^18 >= totalSupply
    require totalSupply + 775000 * 10^18 <= cap
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 775000 * 10^18 >= totalSupply
    totalSupply += 775000 * 10^18
    require balanceOf[stor8] + 775000 * 10^18 >= balanceOf[stor8]
    balanceOf[stor8] += 775000 * 10^18
    emit Mint(775000 * 10^18, sub_85b51c7eAddress);
    emit Transfer(775000 * 10^18, 0, sub_85b51c7eAddress);
    require totalSupply + 775000 * 10^18 >= totalSupply
    require totalSupply + 775000 * 10^18 <= cap
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 775000 * 10^18 >= totalSupply
    totalSupply += 775000 * 10^18
    require balanceOf[stor9] + 775000 * 10^18 >= balanceOf[stor9]
    balanceOf[stor9] += 775000 * 10^18
    emit Mint(775000 * 10^18, sub_230e4d01Address);
    emit Transfer(775000 * 10^18, 0, sub_230e4d01Address);
    require totalSupply + 775000 * 10^18 >= totalSupply
    require totalSupply + 775000 * 10^18 <= cap
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 775000 * 10^18 >= totalSupply
    totalSupply += 775000 * 10^18
    require balanceOf[stor10] + 775000 * 10^18 >= balanceOf[stor10]
    balanceOf[stor10] += 775000 * 10^18
    emit Mint(775000 * 10^18, sub_228175fbAddress);
    emit Transfer(775000 * 10^18, 0, sub_228175fbAddress);
}



}
