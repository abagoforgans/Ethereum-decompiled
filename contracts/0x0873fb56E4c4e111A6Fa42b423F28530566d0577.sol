contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5)
#  - send(address arg1, uint256 arg2, bytes arg3)
#  - transfer(address arg1, uint256 arg2)
#
const version = 1


address stor0;
mapping of uint8 stor1;
uint8 stor2;
address owner; offset 8
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint8 stor7;
array of struct stor8;
array of struct stor9;
array of uint256 name;
array of uint256 symbol;
uint256 granularity;
uint256 totalSupply;
mapping of uint256 balanceOf;
array of struct stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
uint8 stor19;
mapping of uint256 allowance;
address sub_3807b58aAddress;
array of struct document;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_3807b58a(?) {
    return sub_3807b58aAddress
}

function isPauser(address arg1) {
    if not arg1:
        revert with 0, 'Address cannot be zero'
    return bool(stor1[address(arg1)])
}

function granularity() {
    return granularity
}

function sub_5979612d(?) {
    return bool(stor4[arg1])
}

function paused() {
    return bool(stor2)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7cea4d04(?) {
    return bool(stor7)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getDocument(bytes32 arg1) {
    mem[256] = document[arg1].field_0
    idx = 256
    s = 0
    while document[arg1].length + 224 > idx:
        mem[idx + 32] = document[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=document[arg1].length, data=mem[256 len document[arg1].length]), document[arg1].field_256
}

function isDepositAddress(address arg1) {
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) {
    if not stor19:
        revert with 0, 'ERC20 is disabled'
    return allowance[address(arg1)][address(arg2)]
}

function isAccountFrozen(address arg1) {
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function decimals() {
    if not stor19:
        revert with 0, 'ERC20 is disabled'
    return 18
}

function enableWhitelist() {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    stor7 = 0
}

function disableWhitelist() {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    stor7 = 1
}

function sub_103844fc(?) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    stor5[address(arg1)] = 0
}

function sub_d03122a8(?) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    sub_3807b58aAddress = arg1
}

function whitelisted(address arg1) {
    if stor2:
        return 0
    if not stor7:
        return bool(stor6[address(arg1)])
    return 1
}

function freezeAccount(address arg1) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    stor3[address(arg1)] = 1
}

function unfreezeAccount(address arg1) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    stor3[address(arg1)] = 0
}

function sub_931ea7d7(?) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    if stor4[address(arg1)]:
        revert with 0, 'Operator already added'
    stor4[address(arg1)] = 1
}

function sub_fcfa6411(?) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    if not stor4[address(arg1)]:
        revert with 0, 'Operator is not added'
    stor4[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    if not stor19:
        revert with 0, 'ERC20 is disabled'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    if not arg1:
        revert with 0, 'Address cannot be zero'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setDocument(bytes32 arg1, string arg2, bytes32 arg3) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    document[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    document[arg1].field_256 = arg3
}

function renouncePauser() {
    if not msg.sender:
        revert with 0, 'Address cannot be zero'
    if not stor1[address(msg.sender)]:
        revert with 0, 'Role is nort exist'
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function pause() {
    if not msg.sender:
        revert with 0, 'Address cannot be zero'
    if not stor1[address(msg.sender)]:
        revert with 0, 'Account must be pauser'
    if stor2:
        revert with 0, 'Paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not msg.sender:
        revert with 0, 'Address cannot be zero'
    if not stor1[address(msg.sender)]:
        revert with 0, 'Account must be pauser'
    if not stor2:
        revert with 0, 'Not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function isOperatorFor(address arg1, address arg2) {
    if arg1 == arg2:
        return True
    if stor18[address(arg1)][address(arg2)]:
        return bool(stor18[address(arg1)][address(arg2)])
    if not stor16[address(arg1)]:
        return bool(stor16[address(arg1)])
    return not bool(stor17[address(arg1)][address(arg2)])
}

function addAddress(address arg1) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    if bool(stor6[address(arg1)]) == 1:
        revert with 0, 'Account already whitelisted'
    if not stor6[address(arg1)]:
        stor8.length++
        stor8[stor8.length].field_0 = arg1
    stor6[address(arg1)] = 1
    emit Whitelisted(1, arg1);
}

function removeAddress(address arg1) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    if not stor6[address(arg1)]:
        revert with 0, 'Account not in the whitelist'
    if bool(stor6[address(arg1)]) == 1:
        stor9.length++
        stor9[stor9.length].field_0 = arg1
    stor6[address(arg1)] = 0
    emit Whitelisted(0, arg1);
}

function addPauser(address arg1) {
    if not msg.sender:
        revert with 0, 'Address cannot be zero'
    if not stor1[address(msg.sender)]:
        revert with 0, 'Account must be pauser'
    if not arg1:
        revert with 0, 'Address cannot be zero'
    if stor1[address(arg1)]:
        revert with 0, 'Role already exist'
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function disableERC20() {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    stor19 = 0
    mem[160 len 0] = None
    require ext_code.size(stor0)
    call stor0.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), sha3(mem[160 len 10]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ERC20Disabled()
}

function enableERC20() {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    stor19 = 1
    mem[160 len 0] = None
    require ext_code.size(stor0)
    call stor0.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), sha3(mem[160 len 10]), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ERC20Enabled()
}

function sub_b38bd416(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not stor4[address(msg.sender)]:
        revert with 0, 'Not allow. Not an deposit operator.'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        if not stor5[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 5
            stor5[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_a7469a60(?) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    if arg2 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot authorize yourself as an operator or token holder or token holder cannot be as operator or vice versa'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot authorize yourself as an operator or token holder or token holder cannot be as operator or vice versa'
    if not stor16[address(arg1)]:
        stor18[address(arg1)][address(arg2)] = 0
    else:
        stor17[address(arg1)][address(arg2)] = 1
    emit RevokedOperator(arg1, arg2);
}

function sub_869a862f(?) {
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    if arg2 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot authorize yourself as an operator or token holder or token holder cannot be as operator or vice versa'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot authorize yourself as an operator or token holder or token holder cannot be as operator or vice versa'
    if not stor16[address(arg1)]:
        stor18[address(arg1)][address(arg2)] = 1
    else:
        stor17[address(arg1)][address(arg2)] = 0
    emit AuthorizedOperator(arg1, arg2);
}

function sub_0b5ddb03(?) {
    if not stor9.length:
        mem[(32 * stor9.length) + 128] = 32
        mem[(32 * stor9.length) + 160] = stor9.length
        mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
        return memory
          from (32 * stor9.length) + 128
           len (96 * stor9.length) + 64
    mem[128] = address(stor9.field_0)
    idx = 128
    s = 0
    while (32 * stor9.length) + 96 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
    return Array(len=stor9.length, data=mem[128 len floor32(stor9.length)], mem[(32 * stor9.length) + floor32(stor9.length) + 192 len (32 * stor9.length) - floor32(stor9.length)]), 
}

function sub_5ee24287(?) {
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = address(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[128 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 192 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function defaultOperators() {
    if not stor15.length:
        mem[(32 * stor15.length) + 128] = 32
        mem[(32 * stor15.length) + 160] = stor15.length
        mem[(32 * stor15.length) + 192 len floor32(stor15.length)] = mem[128 len floor32(stor15.length)]
        return memory
          from (32 * stor15.length) + 128
           len (96 * stor15.length) + 64
    mem[128] = address(stor15.field_0)
    idx = 128
    s = 0
    while (32 * stor15.length) + 96 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor15.length) + 192 len floor32(stor15.length)] = mem[128 len floor32(stor15.length)]
    return Array(len=stor15.length, data=mem[128 len floor32(stor15.length)], mem[(32 * stor15.length) + floor32(stor15.length) + 192 len (32 * stor15.length) - floor32(stor15.length)]), 
}

function mint(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    require granularity
    if arg2 % granularity:
        revert with 0, 'Amount is not a multiple of granualrity'
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    mem[ceil32(arg3.length) + 128] = 0
    mem[ceil32(arg3.length) + 224 len 0] = None
    require ext_code.size(stor0)
    call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(arg1), sha3(mem[ceil32(arg3.length) + 224 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        if not arg1:
            revert with 0, 'Cannot send to contract without ERC777TokensRecipient'
        if ext_code.size(arg1):
            revert with 0, 'Cannot send to contract without ERC777TokensRecipient'
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, 0, address(arg1), arg2, 192, 224, 0, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not stor6[address(arg1)]:
        stor8.length++
        stor8[stor8.length].field_0 = arg1
    stor6[address(arg1)] = 1
    emit Minted(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if stor19:
        emit Transfer(arg2, 0, arg1);
}

function burn(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    if owner != msg.sender:
        revert with 0, 'You are not an owner'
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 224 len 0] = None
    require ext_code.size(stor0)
    call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args msg.sender, sha3(mem[ceil32(arg2.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]):
        mem[ceil32(arg2.length) + 356] = 192
        mem[ceil32(arg2.length) + 420] = arg2.length
        mem[ceil32(arg2.length) + 452 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[ceil32(arg2.length) + 388] = arg2.length + 224
        mem[arg2.length + ceil32(arg2.length) + 452] = 0
        mem[arg2.length + ceil32(arg2.length) + 484 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, arg1, 192, arg2.length + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 452 len arg2.length + -ceil32(arg2.length) + 32], 0, None
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require granularity
    if arg1 % granularity:
        revert with 0, 'Amount is not a multiple of granualrity'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'Not enough funds'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    mem[ceil32(arg2.length) + 352 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + 352] = 0
    mem[arg2.length + ceil32(arg2.length) + 384 len 0] = None
    emit Burned(arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 352 len arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128, msg.sender, msg.sender);
    if stor19:
        emit Transfer(arg1, msg.sender, 0);
}

function operatorBurn(address arg1, uint256 arg2, bytes arg3, bytes arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if arg1 != msg.sender:
        if not stor18[address(msg.sender)][address(arg1)]:
            if not stor16[address(msg.sender)]:
                revert with 0, 'Not an operator'
            if stor17[address(msg.sender)][address(arg1)]:
                revert with 0, 'Not an operator'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 18
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len 0] = None
    require ext_code.size(stor0)
    call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(arg1), sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        require granularity
        if arg2 % granularity:
            revert with 0, 'Amount is not a multiple of granualrity'
        if balanceOf[address(arg1)] < arg2:
            revert with 0, 'Not enough funds'
        require arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2
        require arg2 <= totalSupply
        totalSupply -= arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg4.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 384 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 352 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, arg1);
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 384] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 416 len arg4.length % 32]
            emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 352 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 128, msg.sender, arg1);
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 324] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 356] = 192
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 452 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg3.length + 224
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg4.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 484 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 452 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 452 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require granularity
        if arg2 % granularity:
            revert with 0, 'Amount is not a multiple of granualrity'
        if balanceOf[address(arg1)] < arg2:
            revert with 0, 'Not enough funds'
        require arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2
        require arg2 <= totalSupply
        totalSupply -= arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg4.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 384 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 352 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, arg1);
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 384] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 416 len arg4.length % 32]
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        arg2,
                        96,
                        arg3.length + 128,
                        arg3.length,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 352 len 4],
                        192,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 388 len floor32(arg4.length) + arg3.length + 28],
                        msg.sender,
                        arg1,
    if stor19:
        emit Transfer(arg2, arg1, 0);
    if not balanceOf[address(arg1)]:
        if bool(stor6[address(arg1)]) == 1:
            stor9.length++
            stor9[stor9.length].field_0 = arg1
        stor6[address(arg1)] = 0
}



}
