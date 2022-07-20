contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
address owner;
address stor1;
array of uint256 name;
array of uint256 symbol;
uint256 granularity;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor7;
array of struct stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint8 stor11;
mapping of uint256 allowance;
uint8 throwOnIncompatibleContract;
uint8 burnEnabled; offset 8
uint8 mintingFinished; offset 16
address communityLockAddress; offset 24
uint256 stor14; offset 8

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function granularity() {
    return granularity
}

function burnEnabled() {
    return bool(burnEnabled)
}

function communityLock() {
    return communityLockAddress
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
    require stor11
    return allowance[address(arg1)][address(arg2)]
}

function throwOnIncompatibleContract() {
    return bool(throwOnIncompatibleContract)
}

function _fallback() payable {
    revert
}

function decimals() {
    require stor11
    return 18
}

function permitBurning(bool arg1) {
    require msg.sender == owner
    stor14 = Mask(248, 0, arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setCommunityLock(address arg1) {
    require msg.sender == owner
    require arg1
    communityLockAddress = arg1
}

function setThrowOnIncompatibleContract(bool arg1) {
    require msg.sender == owner
    throwOnIncompatibleContract = uint8(arg1)
}

function finishMinting() {
    require msg.sender == owner
    require not mintingFinished
    mintingFinished = 1
    emit MintFinished()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require stor11
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function revokeOperator(address arg1) {
    require arg1 != msg.sender
    if not stor9[address(arg1)]:
        stor7[address(arg1)][msg.sender] = 0
    else:
        stor10[address(arg1)][msg.sender] = 1
    emit RevokedOperator(arg1, msg.sender);
}

function authorizeOperator(address arg1) {
    require arg1 != msg.sender
    if not stor9[address(arg1)]:
        stor7[address(arg1)][msg.sender] = 1
    else:
        stor10[address(arg1)][msg.sender] = 0
    emit AuthorizedOperator(arg1, msg.sender);
}

function isOperatorFor(address arg1, address arg2) {
    if arg1 == arg2:
        return True
    if stor7[address(arg1)][address(arg2)]:
        return bool(stor7[address(arg1)][address(arg2)])
    if not stor9[address(arg1)]:
        return bool(stor9[address(arg1)])
    return not bool(stor10[address(arg1)][address(arg2)])
}

function disableERC20() {
    require msg.sender == owner
    stor11 = 0
    mem[192 len 0] = None
    require ext_code.size(stor1)
    call stor1.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args this.address, sha3(Mask(80, 0, mem[192 len 10], 0)), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function enableERC20() {
    require msg.sender == owner
    stor11 = 1
    mem[192 len 0] = None
    require ext_code.size(stor1)
    call stor1.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args this.address, sha3(Mask(80, 0, mem[192 len 10], 0)), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recoverTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function defaultOperators() {
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

function mint(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == owner
    require not mintingFinished
    require granularity
    if not arg2 / granularity:
        require 0 == arg2
        require arg2 + totalSupply >= totalSupply
        totalSupply += arg2
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        mem[ceil32(arg3.length) + 128] = 0
        mem[ceil32(arg3.length) + 256 len 0] = None
        require ext_code.size(stor1)
        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(arg1), sha3(Mask(168, 0, mem[ceil32(arg3.length) + 256 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, 0, address(arg1), arg2, 192, 224, 0, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require granularity * arg2 / granularity / arg2 / granularity == granularity
        require granularity * arg2 / granularity == arg2
        require arg2 + totalSupply >= totalSupply
        totalSupply += arg2
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        mem[ceil32(arg3.length) + 128] = 0
        mem[ceil32(arg3.length) + 256 len 0] = None
        require ext_code.size(stor1)
        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(arg1), sha3(Mask(168, 0, mem[ceil32(arg3.length) + 256 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]):
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, 0, address(arg1), arg2, 192, 224, 0, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit Minted(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if stor11:
        emit Transfer(arg2, 0, arg1);
}

function burn(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    if burnEnabled:
        mem[ceil32(arg2.length) + 128] = 0
        require granularity
        if not arg1 / granularity:
            require 0 == arg1
            require balanceOf[address(msg.sender)] >= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            require arg1 <= totalSupply
            totalSupply -= arg1
            mem[ceil32(arg2.length) + 256 len 0] = None
            require ext_code.size(stor1)
            call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sha3(Mask(144, 0, mem[ceil32(arg2.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20]:
                mem[ceil32(arg2.length) + 406] = 192
                mem[ceil32(arg2.length) + 470] = arg2.length
                mem[ceil32(arg2.length) + 502 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                mem[ceil32(arg2.length) + 438] = arg2.length + 224
                mem[arg2.length + ceil32(arg2.length) + 502] = 0
                mem[arg2.length + ceil32(arg2.length) + 534 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, arg1, 192, arg2.length + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 502 len arg2.length + -ceil32(arg2.length) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require granularity * arg1 / granularity / arg1 / granularity == granularity
            require granularity * arg1 / granularity == arg1
            require balanceOf[address(msg.sender)] >= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            require arg1 <= totalSupply
            totalSupply -= arg1
            mem[ceil32(arg2.length) + 256 len 0] = None
            require ext_code.size(stor1)
            call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sha3(Mask(144, 0, mem[ceil32(arg2.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                mem[ceil32(arg2.length) + 406] = 192
                mem[ceil32(arg2.length) + 470] = arg2.length
                mem[ceil32(arg2.length) + 502 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                mem[ceil32(arg2.length) + 438] = arg2.length + 224
                mem[arg2.length + ceil32(arg2.length) + 502] = 0
                mem[arg2.length + ceil32(arg2.length) + 534 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, arg1, 192, arg2.length + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 502 len arg2.length + -ceil32(arg2.length) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require msg.sender == communityLockAddress
        mem[ceil32(arg2.length) + 128] = 0
        require granularity
        if not arg1 / granularity:
            require 0 == arg1
        else:
            require granularity * arg1 / granularity / arg1 / granularity == granularity
            require granularity * arg1 / granularity == arg1
        require balanceOf[address(msg.sender)] >= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        require arg1 <= totalSupply
        totalSupply -= arg1
        mem[ceil32(arg2.length) + 256 len 0] = None
        require ext_code.size(stor1)
        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args msg.sender, sha3(Mask(144, 0, mem[ceil32(arg2.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]):
            mem[ceil32(arg2.length) + 406] = 192
            mem[ceil32(arg2.length) + 470] = arg2.length
            mem[ceil32(arg2.length) + 502 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            mem[ceil32(arg2.length) + 438] = arg2.length + 224
            mem[arg2.length + ceil32(arg2.length) + 502] = 0
            mem[arg2.length + ceil32(arg2.length) + 534 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, arg1, 192, arg2.length + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 502 len arg2.length + -ceil32(arg2.length) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 402 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + 402] = 0
    mem[arg2.length + ceil32(arg2.length) + 434 len 0] = None
    emit Burned(arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 402 len arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128, msg.sender, msg.sender);
    if stor11:
        emit Transfer(arg1, msg.sender, 0);
}

function send(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require mintingFinished
    mem[ceil32(arg3.length) + 128] = 0
    require granularity
    if not arg2 / granularity:
        require 0 == arg2
    else:
        require granularity * arg2 / granularity / arg2 / granularity == granularity
        require granularity * arg2 / granularity == arg2
    mem[ceil32(arg3.length) + 256 len 0] = None
    require ext_code.size(stor1)
    call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args msg.sender, sha3(Mask(144, 0, mem[ceil32(arg3.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        mem[ceil32(arg3.length) + 370 len 0] = None
        require ext_code.size(stor1)
        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(arg1), sha3(Mask(168, 0, mem[ceil32(arg3.length) + 370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            if throwOnIncompatibleContract:
                require arg1
                require not ext_code.size(arg1)
        else:
            mem[ceil32(arg3.length) + 523] = 192
            mem[ceil32(arg3.length) + 587] = arg3.length
            mem[ceil32(arg3.length) + 619 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            mem[ceil32(arg3.length) + 555] = arg3.length + 224
            mem[arg3.length + ceil32(arg3.length) + 619] = 0
            mem[arg3.length + ceil32(arg3.length) + 651 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 619 len arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 224
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg3.length) + 519 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[arg3.length + ceil32(arg3.length) + 519] = 0
        mem[arg3.length + ceil32(arg3.length) + 551 len 0] = None
        emit Sent(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 519 len arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, msg.sender, arg1);
    else:
        mem[ceil32(arg3.length) + 502 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[arg3.length + ceil32(arg3.length) + 502] = 0
        mem[arg3.length + ceil32(arg3.length) + 534 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, msg.sender, address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 502 len arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        require ext_code.size(stor1)
        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(arg1), sha3(Mask(168, 0, 0, Mask(56, 200, arg2) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            if throwOnIncompatibleContract:
                require arg1
                require not ext_code.size(arg1)
        else:
            mem[ceil32(arg3.length) + 491] = arg2
            mem[ceil32(arg3.length) + 523] = 192
            mem[ceil32(arg3.length) + 587] = arg3.length
            mem[ceil32(arg3.length) + 619 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg3.length) + 555] = arg3.length + 224
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, address(arg1), mem[ceil32(arg3.length) + 491 len arg3.length + 11], 0, mem[ceil32(arg3.length) + arg3.length + 534 len 85], 0
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 619] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 651 len arg3.length % 32]
                mem[ceil32(arg3.length) + 555] = floor32(arg3.length) + 256
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, address(arg1), mem[ceil32(arg3.length) + 491 len arg3.length + 11], 0, mem[ceil32(arg3.length) + arg3.length + 534 len -(arg3.length % 32) + 117], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg3.length) + 487] = arg3.length
        mem[ceil32(arg3.length) + 519 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                      arg2,
                      96,
                      arg3.length + 128,
                      mem[ceil32(arg3.length) + 487 len arg3.length + 15],
                      0,
                      0,
                      msg.sender,
                      msg.sender,
                      arg1,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 519] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 551 len arg3.length % 32]
            mem[floor32(arg3.length) + ceil32(arg3.length) + 551] = 0
            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                      arg2,
                      96,
                      floor32(arg3.length) + 160,
                      mem[ceil32(arg3.length) + 487 len arg3.length + 15],
                      0,
                      mem[ceil32(arg3.length) + arg3.length + 534 len -(arg3.length % 32) + 49],
                      msg.sender,
                      msg.sender,
                      arg1,
    if stor11:
        emit Transfer(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require stor11
    require mintingFinished
    require stor11
    require granularity
    if not arg2 / granularity:
        require 0 == arg2
        mem[256 len 0] = None
        require ext_code.size(stor1)
        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args msg.sender, sha3(Mask(144, 0, mem[256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            mem[370 len 0] = None
            require ext_code.size(stor1)
            call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg1), sha3(Mask(168, 0, mem[370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            require ext_code.size(stor1)
            call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg1), sha3(Mask(168, 0, 0, Mask(56, 200, arg2) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                  arg2,
                  96,
                  128,
                  0,
                  0,
                  msg.sender,
                  msg.sender,
                  arg1,
    else:
        require granularity * arg2 / granularity / arg2 / granularity == granularity
        require granularity * arg2 / granularity == arg2
        mem[256 len 0] = None
        require ext_code.size(stor1)
        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args msg.sender, sha3(Mask(144, 0, mem[256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            mem[370 len 0] = None
            require ext_code.size(stor1)
            call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg1), sha3(Mask(168, 0, mem[370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                      arg2,
                      96,
                      128,
                      0,
                      0,
                      msg.sender,
                      msg.sender,
                      arg1,
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            require ext_code.size(stor1)
            call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg1), sha3(Mask(168, 0, 0, Mask(56, 200, arg2) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          arg2,
                          96,
                          128,
                          0,
                          0,
                          msg.sender,
                          msg.sender,
                          arg1,
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                          arg2,
                          96,
                          128,
                          0,
                          uint32(arg2),
                          0,
                          msg.sender,
                          msg.sender,
                          arg1,
    if stor11:
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function operatorBurn(address arg1, uint256 arg2, bytes arg3, bytes arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if msg.sender == arg1:
        require granularity
        if not arg2 / granularity:
            require 0 == arg2
        else:
            require granularity * arg2 / granularity / arg2 / granularity == granularity
            require granularity * arg2 / granularity == arg2
        require balanceOf[address(arg1)] >= arg2
        require arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2
        require arg2 <= totalSupply
        totalSupply -= arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 18
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len 0] = None
        require ext_code.size(stor1)
        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(arg1), sha3(Mask(144, 0, mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 402] = arg4.length
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, arg1);
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 466 len arg4.length % 32]
                emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 128, msg.sender, arg1);
        else:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 374] = arg2
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 406] = 192
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 470] = arg3.length
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 502 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 438] = arg3.length + 224
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 502] = arg4.length
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 534 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 502 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 534] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 566 len arg4.length % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 502 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 402] = arg4.length
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, arg1);
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 466 len arg4.length % 32]
                emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                            arg2,
                            96,
                            arg3.length + 128,
                            arg3.length,
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len 4],
                            192,
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 438 len floor32(arg4.length) + arg3.length + 28],
                            msg.sender,
                            arg1,
    else:
        if stor7[address(msg.sender)][address(arg1)]:
            require granularity
            if not arg2 / granularity:
                require 0 == arg2
            else:
                require granularity * arg2 / granularity / arg2 / granularity == granularity
                require granularity * arg2 / granularity == arg2
            require balanceOf[address(arg1)] >= arg2
            require arg2 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg2
            require arg2 <= totalSupply
            totalSupply -= arg2
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 18
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len 0] = None
            require ext_code.size(stor1)
            call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg1), sha3(Mask(144, 0, mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 402] = arg4.length
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, arg1);
                else:
                    mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 466 len arg4.length % 32]
                    emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 128, msg.sender, arg1);
            else:
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 374] = arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 406] = 192
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 470] = arg3.length
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 502 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 438] = arg3.length + 224
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 502] = arg4.length
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 534 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 502 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                else:
                    mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 534] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 566 len arg4.length % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 502 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 402] = arg4.length
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, arg1);
                else:
                    mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 466 len arg4.length % 32]
                    emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                arg2,
                                96,
                                arg3.length + 128,
                                arg3.length,
                                mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len 4],
                                192,
                                mem[ceil32(arg3.length) + ceil32(arg4.length) + 438 len floor32(arg4.length) + arg3.length + 28],
                                msg.sender,
                                arg1,
        else:
            require stor9[address(msg.sender)]
            require not stor10[address(msg.sender)][address(arg1)]
            require granularity
            if not arg2 / granularity:
                require 0 == arg2
                require balanceOf[address(arg1)] >= arg2
                require arg2 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg2
                require arg2 <= totalSupply
                totalSupply -= arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 18
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len 0] = None
                require ext_code.size(stor1)
                call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sha3(Mask(144, 0, mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 402] = arg4.length
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, arg1);
                    else:
                        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 466 len arg4.length % 32]
                        emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 128, msg.sender, arg1);
                else:
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 374] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 406] = 192
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 470] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 502 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 438] = arg3.length + 224
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 502] = arg4.length
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 534 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 502 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                    else:
                        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 534] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 566 len arg4.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 502 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 402] = arg4.length
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, arg1);
                    else:
                        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 466 len arg4.length % 32]
                        emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                    arg2,
                                    96,
                                    arg3.length + 128,
                                    arg3.length,
                                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len 4],
                                    192,
                                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 438 len floor32(arg4.length) + arg3.length + 28],
                                    msg.sender,
                                    arg1,
            else:
                require granularity * arg2 / granularity / arg2 / granularity == granularity
                require granularity * arg2 / granularity == arg2
                require balanceOf[address(arg1)] >= arg2
                require arg2 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg2
                require arg2 <= totalSupply
                totalSupply -= arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 18
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len 0] = None
                require ext_code.size(stor1)
                call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sha3(Mask(144, 0, mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 402] = arg4.length
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, arg1);
                    else:
                        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 466 len arg4.length % 32]
                        emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 128, msg.sender, arg1);
                else:
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 374] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 406] = 192
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 470] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 502 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 438] = arg3.length + 224
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 502] = arg4.length
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 534 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 502 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                    else:
                        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 534] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 566 len arg4.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 502 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 402] = arg4.length
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 402 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, msg.sender, arg1);
                    else:
                        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 466 len arg4.length % 32]
                        emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                                    arg2,
                                    96,
                                    arg3.length + 128,
                                    arg3.length,
                                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len 4],
                                    192,
                                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 438 len floor32(arg4.length) + arg3.length + 28],
                                    msg.sender,
                                    arg1,
    if stor11:
        emit Transfer(arg2, arg1, 0);
}

function operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    require mintingFinished
    if msg.sender == arg1:
        require granularity
        if not arg3 / granularity:
            require 0 == arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 18
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 0] = None
            require ext_code.size(stor1)
            call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg1), sha3(Mask(144, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                require arg2
                require arg3 <= balanceOf[address(arg1)]
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 0] = None
                require ext_code.size(stor1)
                call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), sha3(Mask(168, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    if throwOnIncompatibleContract:
                        require arg2
                        require not ext_code.size(arg2)
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                        emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                  arg3,
                                  96,
                                  arg4.length + 128,
                                  arg4.length,
                                  mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len 4],
                                  192,
                                  mem[ceil32(arg4.length) + ceil32(arg5.length) + 555 len floor32(arg5.length) + arg4.length + 28],
                                  msg.sender,
                                  arg1,
                                  arg2,
                if stor11:
                    emit Transfer(arg3, arg1, arg2);
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 502 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 502] = arg5.length
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                if arg5.length % 32:
                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 566 len arg5.length % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg2
                    require arg3 <= balanceOf[address(arg1)]
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    require ext_code.size(stor1)
                    call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(Mask(168, 0, 0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        if throwOnIncompatibleContract:
                            require arg2
                            require not ext_code.size(arg2)
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                      arg3,
                                      96,
                                      arg4.length + 128,
                                      arg4.length,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len 4],
                                      192,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 555 len floor32(arg5.length) + arg4.length + 28],
                                      msg.sender,
                                      arg1,
                                      arg2,
                    if stor11:
                        emit Transfer(arg3, arg1, arg2);
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg2
                    require arg3 <= balanceOf[address(arg1)]
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    require ext_code.size(stor1)
                    call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(Mask(168, 0, 0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        if throwOnIncompatibleContract:
                            require arg2
                            require not ext_code.size(arg2)
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len arg5.length + -ceil32(arg5.length) + 117]
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len floor32(arg5.length) + -ceil32(arg5.length) + 149]
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 619] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 651 len arg4.length % 32]
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = floor32(arg4.length) + 256
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 651] = arg5.length
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 149]
                            else:
                                mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 715 len arg5.length % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 181]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 487] = arg4.length
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 551 len floor32(arg5.length) + -ceil32(arg5.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        if stor11:
                            emit Transfer(arg3, arg1, arg2);
                    else:
                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 519] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 551 len arg4.length % 32]
                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 551] = arg5.length
                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 49]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 615 len arg5.length % 32]
                            emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 81]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                        if stor11:
                            emit Transfer(arg3, arg1, arg2);
        else:
            require granularity * arg3 / granularity / arg3 / granularity == granularity
            require granularity * arg3 / granularity == arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 18
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 0] = None
            require ext_code.size(stor1)
            call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg1), sha3(Mask(144, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                require arg2
                require arg3 <= balanceOf[address(arg1)]
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 0] = None
                require ext_code.size(stor1)
                call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), sha3(Mask(168, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    if throwOnIncompatibleContract:
                        require arg2
                        require not ext_code.size(arg2)
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                        emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                  arg3,
                                  96,
                                  arg4.length + 128,
                                  arg4.length,
                                  mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len 4],
                                  192,
                                  mem[ceil32(arg4.length) + ceil32(arg5.length) + 555 len floor32(arg5.length) + arg4.length + 28],
                                  msg.sender,
                                  arg1,
                                  arg2,
                if stor11:
                    emit Transfer(arg3, arg1, arg2);
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 502 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 502] = arg5.length
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                if not arg5.length % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                else:
                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 566 len arg5.length % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg2
                require arg3 <= balanceOf[address(arg1)]
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                require ext_code.size(stor1)
                call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), sha3(Mask(168, 0, 0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    if throwOnIncompatibleContract:
                        require arg2
                        require not ext_code.size(arg2)
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len arg5.length + -ceil32(arg5.length) + 117]
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len floor32(arg5.length) + -ceil32(arg5.length) + 149]
                    else:
                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 619] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 651 len arg4.length % 32]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = floor32(arg4.length) + 256
                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 651] = arg5.length
                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 149]
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 715 len arg5.length % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 181]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 487] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                        emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 551 len floor32(arg5.length) + -ceil32(arg5.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                    if stor11:
                        emit Transfer(arg3, arg1, arg2);
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 519] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 551 len arg4.length % 32]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 551] = arg5.length
                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 49]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 615 len arg5.length % 32]
                        emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 81]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                    if stor11:
                        emit Transfer(arg3, arg1, arg2);
    else:
        if stor7[address(msg.sender)][address(arg1)]:
            require granularity
            if arg3 / granularity:
                require granularity * arg3 / granularity / arg3 / granularity == granularity
                require granularity * arg3 / granularity == arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 18
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 0] = None
                require ext_code.size(stor1)
                call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sha3(Mask(144, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    require arg2
                    require arg3 <= balanceOf[address(arg1)]
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 0] = None
                    require ext_code.size(stor1)
                    call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(Mask(168, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        if throwOnIncompatibleContract:
                            require arg2
                            require not ext_code.size(arg2)
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                      arg3,
                                      96,
                                      arg4.length + 128,
                                      arg4.length,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len 4],
                                      192,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 555 len floor32(arg5.length) + arg4.length + 28],
                                      msg.sender,
                                      arg1,
                                      arg2,
                    if stor11:
                        emit Transfer(arg3, arg1, arg2);
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 502 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 502] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if arg5.length % 32:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 566 len arg5.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg2
                        require arg3 <= balanceOf[address(arg1)]
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                        require ext_code.size(stor1)
                        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), sha3(Mask(168, 0, 0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            if throwOnIncompatibleContract:
                                require arg2
                                require not ext_code.size(arg2)
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                                emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                          arg3,
                                          96,
                                          arg4.length + 128,
                                          arg4.length,
                                          mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len 4],
                                          192,
                                          mem[ceil32(arg4.length) + ceil32(arg5.length) + 555 len floor32(arg5.length) + arg4.length + 28],
                                          msg.sender,
                                          arg1,
                                          arg2,
                        if stor11:
                            emit Transfer(arg3, arg1, arg2);
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg2
                        require arg3 <= balanceOf[address(arg1)]
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                        require ext_code.size(stor1)
                        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), sha3(Mask(168, 0, 0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            if throwOnIncompatibleContract:
                                require arg2
                                require not ext_code.size(arg2)
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                                if not arg5.length % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len arg5.length + -ceil32(arg5.length) + 117]
                                else:
                                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len floor32(arg5.length) + -ceil32(arg5.length) + 149]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 619] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 651 len arg4.length % 32]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = floor32(arg4.length) + 256
                                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 651] = arg5.length
                                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                                if not arg5.length % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 149]
                                else:
                                    mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 715 len arg5.length % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 181]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 487] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256), arg4.length + 128, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 551 len floor32(arg5.length) + -ceil32(arg5.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                            if stor11:
                                emit Transfer(arg3, arg1, arg2);
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 519] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 551 len arg4.length % 32]
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 551] = arg5.length
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 49]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 615 len arg5.length % 32]
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 81]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                            if stor11:
                                emit Transfer(arg3, arg1, arg2);
            else:
                require 0 == arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 18
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 0] = None
                require ext_code.size(stor1)
                call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sha3(Mask(144, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    require arg2
                    require arg3 <= balanceOf[address(arg1)]
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 0] = None
                    require ext_code.size(stor1)
                    call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(Mask(168, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        if throwOnIncompatibleContract:
                            require arg2
                            require not ext_code.size(arg2)
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                      arg3,
                                      96,
                                      arg4.length + 128,
                                      arg4.length,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len 4],
                                      192,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 555 len floor32(arg5.length) + arg4.length + 28],
                                      msg.sender,
                                      arg1,
                                      arg2,
                    if stor11:
                        emit Transfer(arg3, arg1, arg2);
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 502 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 502] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg2
                        require arg3 <= balanceOf[address(arg1)]
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                        require ext_code.size(stor1)
                        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), sha3(Mask(168, 0, 0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            if throwOnIncompatibleContract:
                                require arg2
                                require not ext_code.size(arg2)
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                                emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                          arg3,
                                          96,
                                          arg4.length + 128,
                                          arg4.length,
                                          mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len 4],
                                          192,
                                          mem[ceil32(arg4.length) + ceil32(arg5.length) + 555 len floor32(arg5.length) + arg4.length + 28],
                                          msg.sender,
                                          arg1,
                                          arg2,
                        if stor11:
                            emit Transfer(arg3, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 566 len arg5.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg2
                        require arg3 <= balanceOf[address(arg1)]
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                        require ext_code.size(stor1)
                        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), sha3(Mask(168, 0, 0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            if throwOnIncompatibleContract:
                                require arg2
                                require not ext_code.size(arg2)
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                                if not arg5.length % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len arg5.length + -ceil32(arg5.length) + 117]
                                else:
                                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len floor32(arg5.length) + -ceil32(arg5.length) + 149]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 619] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 651 len arg4.length % 32]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = floor32(arg4.length) + 256
                                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 651] = arg5.length
                                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                                if not arg5.length % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 149]
                                else:
                                    mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 715 len arg5.length % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 181]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 487] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256), arg4.length + 128, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 551 len floor32(arg5.length) + -ceil32(arg5.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                            if stor11:
                                emit Transfer(arg3, arg1, arg2);
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 519] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 551 len arg4.length % 32]
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 551] = arg5.length
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 49]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 615 len arg5.length % 32]
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 81]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                            if stor11:
                                emit Transfer(arg3, arg1, arg2);
        else:
            require stor9[address(msg.sender)]
            require not stor10[address(msg.sender)][address(arg1)]
            require granularity
            if not arg3 / granularity:
                require 0 == arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 18
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 0] = None
                require ext_code.size(stor1)
                call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sha3(Mask(144, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    require arg2
                    require arg3 <= balanceOf[address(arg1)]
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 0] = None
                    require ext_code.size(stor1)
                    call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(Mask(168, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        if throwOnIncompatibleContract:
                            require arg2
                            require not ext_code.size(arg2)
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                      arg3,
                                      96,
                                      arg4.length + 128,
                                      arg4.length,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len 4],
                                      192,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 555 len floor32(arg5.length) + arg4.length + 28],
                                      msg.sender,
                                      arg1,
                                      arg2,
                    if stor11:
                        emit Transfer(arg3, arg1, arg2);
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 502 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 502] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if arg5.length % 32:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 566 len arg5.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg2
                        require arg3 <= balanceOf[address(arg1)]
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                        require ext_code.size(stor1)
                        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), sha3(Mask(168, 0, 0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            if throwOnIncompatibleContract:
                                require arg2
                                require not ext_code.size(arg2)
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                                emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                                emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                          arg3,
                                          96,
                                          arg4.length + 128,
                                          arg4.length,
                                          mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len 4],
                                          192,
                                          mem[ceil32(arg4.length) + ceil32(arg5.length) + 555 len floor32(arg5.length) + arg4.length + 28],
                                          msg.sender,
                                          arg1,
                                          arg2,
                        if stor11:
                            emit Transfer(arg3, arg1, arg2);
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg2
                        require arg3 <= balanceOf[address(arg1)]
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                        require ext_code.size(stor1)
                        call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), sha3(Mask(168, 0, 0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            if throwOnIncompatibleContract:
                                require arg2
                                require not ext_code.size(arg2)
                        else:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                                if not arg5.length % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len arg5.length + -ceil32(arg5.length) + 117]
                                else:
                                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len floor32(arg5.length) + -ceil32(arg5.length) + 149]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 619] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 651 len arg4.length % 32]
                                mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = floor32(arg4.length) + 256
                                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 651] = arg5.length
                                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                                if not arg5.length % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 149]
                                else:
                                    mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 715 len arg5.length % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 181]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 487] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256), arg4.length + 128, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 551 len floor32(arg5.length) + -ceil32(arg5.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                            if stor11:
                                emit Transfer(arg3, arg1, arg2);
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 519] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 551 len arg4.length % 32]
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 551] = arg5.length
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 49]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                            else:
                                mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 615 len arg5.length % 32]
                                emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 81]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                            if stor11:
                                emit Transfer(arg3, arg1, arg2);
            else:
                require granularity * arg3 / granularity / arg3 / granularity == granularity
                require granularity * arg3 / granularity == arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 18
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 0] = None
                require ext_code.size(stor1)
                call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sha3(Mask(144, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112, 0))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    require arg2
                    require arg3 <= balanceOf[address(arg1)]
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 0] = None
                    require ext_code.size(stor1)
                    call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(Mask(168, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        if throwOnIncompatibleContract:
                            require arg2
                            require not ext_code.size(arg2)
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 619 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 519] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 519 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                      arg3,
                                      96,
                                      arg4.length + 128,
                                      arg4.length,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len 4],
                                      192,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 555 len floor32(arg5.length) + arg4.length + 28],
                                      msg.sender,
                                      arg1,
                                      arg2,
                    if stor11:
                        emit Transfer(arg3, arg1, arg2);
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 502 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 502] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 534] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 566 len arg5.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 502 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg2
                    require arg3 <= balanceOf[address(arg1)]
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    require ext_code.size(stor1)
                    call stor1.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(Mask(168, 0, 0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88, 0))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        if throwOnIncompatibleContract:
                            require arg2
                            require not ext_code.size(arg2)
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 491] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 523] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 587] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 619 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = arg4.length + 224
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 619] = arg5.length
                            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len arg5.length + -ceil32(arg5.length) + 117]
                            else:
                                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 651] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 683 len arg5.length % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len floor32(arg5.length) + -ceil32(arg5.length) + 149]
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 619] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 651 len arg4.length % 32]
                            mem[ceil32(arg4.length) + ceil32(arg5.length) + 555] = floor32(arg4.length) + 256
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 651] = arg5.length
                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                            if not arg5.length % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 149]
                            else:
                                mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 683] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 715 len arg5.length % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), address(arg2), mem[ceil32(arg4.length) + ceil32(arg5.length) + 491 len arg4.length + 11], arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 181]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 487] = arg4.length
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 519 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 551] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 583 len arg5.length % 32]
                            emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=Mask(136, 120, arg5.length) >> 120, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 551 len floor32(arg5.length) + -ceil32(arg5.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        if stor11:
                            emit Transfer(arg3, arg1, arg2);
                    else:
                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 519] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 551 len arg4.length % 32]
                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 551] = arg5.length
                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + arg5.length + -ceil32(arg5.length) + 49]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 583] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 615 len arg5.length % 32]
                            emit Sent(arg3, Array(len=mem[ceil32(arg4.length) + ceil32(arg5.length) + 487 len arg4.length + 15], data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 534 len -(arg4.length % 32) + floor32(arg5.length) + -ceil32(arg5.length) + 81]), floor32(arg4.length) + 160, msg.sender, arg1, arg2);
                        if stor11:
                            emit Transfer(arg3, arg1, arg2);
}



}
