contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - send(address arg1, uint256 arg2, bytes arg3)
#  - transfer(address arg1, uint256 arg2)
#
address stor0;
array of uint256 name;
array of uint256 symbol;
uint256 granularity;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor6;
array of struct stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint8 stor10;
uint8 stor10; offset 8
uint256 stor10; offset 8
mapping of uint256 allowance;
address owner;
address stor14;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function granularity() {
    return granularity
}

function unlocked() {
    return bool(uint8(stor10.field_8))
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
    require uint8(stor10.field_0)
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function decimals() {
    require uint8(stor10.field_0)
    return 18
}

function lock() {
    require msg.sender == owner
    Mask(248, 0, stor10.field_8) = 0
}

function unlock() {
    require msg.sender == owner
    Mask(248, 0, stor10.field_8) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor10.field_0)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function revokeOperator(address arg1) {
    require arg1 != msg.sender
    if not stor8[address(arg1)]:
        stor6[address(arg1)][address(msg.sender)] = 0
    else:
        stor9[address(arg1)][address(msg.sender)] = 1
    emit RevokedOperator(arg1, msg.sender);
}

function authorizeOperator(address arg1) {
    require arg1 != msg.sender
    if not stor8[address(arg1)]:
        stor6[address(arg1)][address(msg.sender)] = 1
    else:
        stor9[address(arg1)][address(msg.sender)] = 0
    emit AuthorizedOperator(arg1, msg.sender);
}

function delegateERC820Management(address arg1) {
    require msg.sender == owner
    require ext_code.size(stor0)
    call stor0.setManager(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    require ext_call.success
}

function isOperatorFor(address arg1, address arg2) {
    if arg1 == arg2:
        return True
    if stor6[address(arg1)][address(arg2)]:
        return bool(stor6[address(arg1)][address(arg2)])
    if not stor8[address(arg1)]:
        return bool(stor8[address(arg1)])
    return not bool(stor9[address(arg1)][address(arg2)])
}

function disableERC20() {
    require msg.sender == owner
    uint8(stor10.field_0) = 0
    mem[160 len 0] = None
    require ext_code.size(stor0)
    call stor0.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), sha3(mem[160 len 10]), 0
    require ext_call.success
}

function enableERC20() {
    require msg.sender == owner
    uint8(stor10.field_0) = 1
    mem[160 len 0] = None
    require ext_code.size(stor0)
    call stor0.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), sha3(mem[160 len 10]), this.address
    require ext_call.success
}

function disableInterface(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(stor0)
    call stor0.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), 0
    require ext_call.success
}

function enableInterface(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(stor0)
    call stor0.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), arg2
    require ext_call.success
}

function defaultOperators() {
    if not stor7.length:
        mem[(32 * stor7.length) + 160] = 32
        mem[(32 * stor7.length) + 192] = stor7.length
        mem[(32 * stor7.length) + 224 len floor32(stor7.length)] = mem[160 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 160
           len (96 * stor7.length) + 64
    mem[160] = address(stor7.field_0)
    idx = 160
    s = 0
    while (32 * stor7.length) + 128 > idx:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 224 len floor32(stor7.length)] = mem[160 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[160 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 224 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function burn(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128] = 0
    require granularity
    if not arg1 / granularity:
        require 0 == arg1
    else:
        require arg1 / granularity
        require arg1 / granularity * granularity / arg1 / granularity == granularity
        require arg1 / granularity * granularity == arg1
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    mem[ceil32(arg2.length) + 224 len 0] = None
    require ext_code.size(stor0)
    call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args msg.sender, sha3(mem[ceil32(arg2.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
    require ext_call.success
    if address(ext_call.return_data[0]):
        mem[ceil32(arg2.length) + 356] = 192
        mem[ceil32(arg2.length) + 420] = arg2.length
        mem[ceil32(arg2.length) + 452 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[ceil32(arg2.length) + 388] = arg2.length + 224
        mem[arg2.length + ceil32(arg2.length) + 452] = 0
        mem[arg2.length + ceil32(arg2.length) + 484 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x75ab9782 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, arg1, 192, arg2.length + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 452 len arg2.length + -ceil32(arg2.length) + 32], 0, None
        require ext_call.success
    mem[ceil32(arg2.length) + 352 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + 352] = 0
    mem[arg2.length + ceil32(arg2.length) + 384 len 0] = None
    emit Burned(arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 352 len arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128, msg.sender, msg.sender);
    if uint8(stor10.field_0):
        emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == owner
    require granularity
    if not arg2 / granularity:
        require 0 == arg2
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
        require ext_call.success
        if not address(ext_call.return_data[0]):
            require arg1
            require not ext_code.size(arg1)
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, 0, address(arg1), arg2, 192, 224, 0, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
            require ext_call.success
    else:
        require arg2 / granularity
        require arg2 / granularity * granularity / arg2 / granularity == granularity
        require arg2 / granularity * granularity == arg2
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
        require ext_call.success
        if not ext_call.return_data[12 len 20]:
            require arg1
            require not ext_code.size(arg1)
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, 0, address(arg1), arg2, 192, 224, 0, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
            require ext_call.success
    emit Minted(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if uint8(stor10.field_0):
        emit Transfer(arg2, 0, arg1);
}

function operatorBurn(address arg1, uint256 arg2, bytes arg3, bytes arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require msg.sender == stor14
    if msg.sender == arg1:
        require granularity
        if not arg2 / granularity:
            require 0 == arg2
        else:
            require arg2 / granularity
            require arg2 / granularity * granularity / arg2 / granularity == granularity
            require arg2 / granularity * granularity == arg2
        require balanceOf[address(arg1)] >= arg2
        require arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2
        require arg2 <= totalSupply
        totalSupply -= arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 18
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len 0] = None
        require ext_code.size(stor0)
        call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(arg1), sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
        require ext_call.success
        if not address(ext_call.return_data[0]):
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
                call address(ext_call.return_data[0]).0x75ab9782 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 452 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x75ab9782 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 452 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
            require ext_call.success
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
    else:
        if stor6[address(msg.sender)][address(arg1)]:
            require granularity
            if not arg2 / granularity:
                require 0 == arg2
            else:
                require arg2 / granularity
                require arg2 / granularity * granularity / arg2 / granularity == granularity
                require arg2 / granularity * granularity == arg2
            require balanceOf[address(arg1)] >= arg2
            require arg2 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg2
            require arg2 <= totalSupply
            totalSupply -= arg2
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 18
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len 0] = None
            require ext_code.size(stor0)
            call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg1), sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
            require ext_call.success
            if not address(ext_call.return_data[0]):
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
                    call address(ext_call.return_data[0]).0x75ab9782 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 452 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                else:
                    mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x75ab9782 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 452 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                require ext_call.success
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
        else:
            require stor8[address(msg.sender)]
            require not stor9[address(msg.sender)][address(arg1)]
            require granularity
            if not arg2 / granularity:
                require 0 == arg2
                require balanceOf[address(arg1)] >= arg2
                require arg2 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg2
                require arg2 <= totalSupply
                totalSupply -= arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 18
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len 0] = None
                require ext_code.size(stor0)
                call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
                require ext_call.success
                if not address(ext_call.return_data[0]):
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
                        call address(ext_call.return_data[0]).0x75ab9782 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 452 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                    else:
                        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x75ab9782 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 452 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                    require ext_call.success
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
            else:
                require arg2 / granularity
                require arg2 / granularity * granularity / arg2 / granularity == granularity
                require arg2 / granularity * granularity == arg2
                require balanceOf[address(arg1)] >= arg2
                require arg2 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg2
                require arg2 <= totalSupply
                totalSupply -= arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 18
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len 0] = None
                require ext_code.size(stor0)
                call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
                require ext_call.success
                if not ext_call.return_data[12 len 20]:
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
                        call address(ext_call.return_data[0]).0x75ab9782 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 452 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
                    else:
                        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x75ab9782 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), 0, arg2, 192, arg3.length + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 452 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
                    require ext_call.success
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
    if uint8(stor10.field_0):
        emit Transfer(arg2, arg1, 0);
}

function operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    if msg.sender == arg1:
        require uint8(stor10.field_8)
        require granularity
        if not arg3 / granularity:
            require 0 == arg3
        else:
            require arg3 / granularity
            require arg3 / granularity * granularity / arg3 / granularity == granularity
            require arg3 / granularity * granularity == arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 18
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 0] = None
        require ext_code.size(stor0)
        call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(arg1), sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
        require ext_call.success
        if not address(ext_call.return_data[0]):
            require arg2
            require balanceOf[address(arg1)] >= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len 0] = None
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len 11] = uint32(sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)), mem[ceil32(arg4.length) + ceil32(arg5.length) + 292 len 7]
            require ext_code.size(stor0)
            call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg2), sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88)
            require ext_call.success
            if not address(ext_call.return_data[0]):
                require arg2
                require not ext_code.size(arg2)
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                if not arg5.length % 32:
                    emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                else:
                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                    emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 192
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 484] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length + 224
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = arg5.length
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                if not arg5.length % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 516 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                else:
                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 580 len arg5.length % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 516 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                require ext_call.success
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                if not arg5.length % 32:
                    emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                else:
                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              arg3,
                              96,
                              arg4.length + 128,
                              arg4.length,
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4],
                              192,
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + 28],
                              msg.sender,
                              arg1,
                              arg2,
        else:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = arg4.length
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg4.length + 224
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg5.length
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x75ab9782 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 452 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
            require ext_call.success
            require arg2
            require balanceOf[address(arg1)] >= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require ext_code.size(stor0)
            call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg2), sha3(0, Mask(56, 104, arg2) >> 104, Mask(80, 88, 'ERC777TokensRecipient') >> 88)
            require ext_call.success
            if not address(ext_call.return_data[0]):
                require arg2
                require not ext_code.size(arg2)
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                if not arg5.length % 32:
                    emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                else:
                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                    emit Sent(arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4], arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 28]), arg4.length + 128, msg.sender, arg1, arg2);
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 192
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 484] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length + 224
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = arg5.length
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 484 len arg5.length + -ceil32(arg5.length) + 64]), mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len arg4.length]
                require ext_call.success
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                if not arg5.length % 32:
                    emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                else:
                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                              arg3,
                              96,
                              arg4.length + 128,
                              arg4.length,
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4],
                              192,
                              mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + 28],
                              msg.sender,
                              arg1,
                              arg2,
    else:
        if stor6[address(msg.sender)][address(arg1)]:
            require uint8(stor10.field_8)
            require granularity
            if not arg3 / granularity:
                require 0 == arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 18
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 0] = None
                require ext_code.size(stor0)
                call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
                require ext_call.success
                if not ext_call.return_data[12 len 20]:
                    require arg2
                    require balanceOf[address(arg1)] >= arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] += arg3
                    require ext_code.size(stor0)
                    call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(uint32(sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)), mem[ceil32(arg4.length) + ceil32(arg5.length) + 292 len 7], Mask(80, 88, 'ERC777TokensRecipient') >> 88)
                    require ext_call.success
                    if not address(ext_call.return_data[0]):
                        require arg2
                        require not ext_code.size(arg2)
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 484] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length + 224
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 516 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 580 len arg5.length % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 516 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                        require ext_call.success
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                      arg3,
                                      96,
                                      arg4.length + 128,
                                      arg4.length,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4],
                                      192,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + 28],
                                      msg.sender,
                                      arg1,
                                      arg2,
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = arg4.length
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x75ab9782 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 452 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                    require ext_call.success
                    require arg2
                    require balanceOf[address(arg1)] >= arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] += arg3
                    require ext_code.size(stor0)
                    call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(0, Mask(56, 104, arg2) >> 104, Mask(80, 88, 'ERC777TokensRecipient') >> 88)
                    require ext_call.success
                    if not address(ext_call.return_data[0]):
                        require arg2
                        require not ext_code.size(arg2)
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                            emit Sent(arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4], arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 28]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 484] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length + 224
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 484 len arg5.length + -ceil32(arg5.length) + 64]), mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len arg4.length]
                        require ext_call.success
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                      arg3,
                                      96,
                                      arg4.length + 128,
                                      arg4.length,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4],
                                      192,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + 28],
                                      msg.sender,
                                      arg1,
                                      arg2,
            else:
                require arg3 / granularity
                require arg3 / granularity * granularity / arg3 / granularity == granularity
                require arg3 / granularity * granularity == arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 18
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 0] = None
                require ext_code.size(stor0)
                call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
                require ext_call.success
                if not address(ext_call.return_data[0]):
                    require arg2
                    require balanceOf[address(arg1)] >= arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] += arg3
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len 0] = None
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len 11] = uint32(sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)), mem[ceil32(arg4.length) + ceil32(arg5.length) + 292 len 7]
                    require ext_code.size(stor0)
                    call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88)
                    require ext_call.success
                    if not address(ext_call.return_data[0]):
                        require arg2
                        require not ext_code.size(arg2)
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 484] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length + 224
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 516 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 580 len arg5.length % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 516 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                        require ext_call.success
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                      arg3,
                                      96,
                                      arg4.length + 128,
                                      arg4.length,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4],
                                      192,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + 28],
                                      msg.sender,
                                      arg1,
                                      arg2,
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = arg4.length
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x75ab9782 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 452 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                    require ext_call.success
                    require arg2
                    require balanceOf[address(arg1)] >= arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] += arg3
                    require ext_code.size(stor0)
                    call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), sha3(0, Mask(56, 104, arg2) >> 104, Mask(80, 88, 'ERC777TokensRecipient') >> 88)
                    require ext_call.success
                    if not address(ext_call.return_data[0]):
                        require arg2
                        require not ext_code.size(arg2)
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                            emit Sent(arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4], arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 28]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 192
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 484] = arg4.length
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length + 224
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 484 len arg5.length + -ceil32(arg5.length) + 64]), mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len arg4.length]
                        require ext_call.success
                        mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                        if not arg5.length % 32:
                            emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                            emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                      arg3,
                                      96,
                                      arg4.length + 128,
                                      arg4.length,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4],
                                      192,
                                      mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + 28],
                                      msg.sender,
                                      arg1,
                                      arg2,
        else:
            require stor8[address(msg.sender)]
            require not stor9[address(msg.sender)][address(arg1)]
            require uint8(stor10.field_8)
            require granularity
            if not arg3 / granularity:
                require 0 == arg3
            else:
                require arg3 / granularity
                require arg3 / granularity * granularity / arg3 / granularity == granularity
                require arg3 / granularity * granularity == arg3
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 18
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 0] = None
            require ext_code.size(stor0)
            call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args address(arg1), sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
            require ext_call.success
            if not address(ext_call.return_data[0]):
                require arg2
                require balanceOf[address(arg1)] >= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len 0] = None
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len 11] = uint32(sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 224 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)), mem[ceil32(arg4.length) + ceil32(arg5.length) + 292 len 7]
                require ext_code.size(stor0)
                call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88)
                require ext_call.success
                if not address(ext_call.return_data[0]):
                    require arg2
                    require not ext_code.size(arg2)
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, msg.sender, arg1, arg2);
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 192
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 484] = arg4.length
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 516 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 580 len arg5.length % 32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 516 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 224
                    require ext_call.success
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                        emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                  arg3,
                                  96,
                                  arg4.length + 128,
                                  arg4.length,
                                  mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4],
                                  192,
                                  mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + 28],
                                  msg.sender,
                                  arg1,
                                  arg2,
            else:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = arg4.length
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg4.length + 224
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg5.length
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x75ab9782 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 452 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 224
                require ext_call.success
                require arg2
                require balanceOf[address(arg1)] >= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                require ext_code.size(stor0)
                call stor0.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), sha3(0, Mask(56, 104, arg2) >> 104, Mask(80, 88, 'ERC777TokensRecipient') >> 88)
                require ext_call.success
                if not address(ext_call.return_data[0]):
                    require arg2
                    require not ext_code.size(arg2)
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                        emit Sent(arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4], arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 28]), arg4.length + 128, msg.sender, arg1, arg2);
                else:
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg3
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = 192
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 484] = arg4.length
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length + 224
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[ceil32(arg4.length) + (2 * ceil32(arg5.length)) + arg4.length + 484 len arg5.length + -ceil32(arg5.length) + 64]), mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len arg4.length]
                    require ext_call.success
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit Sent(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, msg.sender, arg1, arg2);
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                        emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                                  arg3,
                                  96,
                                  arg4.length + 128,
                                  arg4.length,
                                  mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len 4],
                                  192,
                                  mem[ceil32(arg4.length) + ceil32(arg5.length) + 452 len floor32(arg5.length) + arg4.length + 28],
                                  msg.sender,
                                  arg1,
                                  arg2,
    if uint8(stor10.field_0):
        emit Transfer(arg3, arg1, arg2);
}



}
