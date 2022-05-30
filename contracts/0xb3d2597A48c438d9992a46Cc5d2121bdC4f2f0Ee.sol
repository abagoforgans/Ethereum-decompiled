contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address newOwner;
mapping of uint8 stor2;
uint8 stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 initialSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function started() {
    return bool(stor3)
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return address(owner)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function authorized(address arg1) {
    return bool(stor2[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function start() {
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    stor3 = 1
    emit Start()
}

function setAuthorized(address arg1, bool arg2) {
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    emit AuthorizationSet(arg1, arg2);
    stor2[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    if not arg1:
        revert with 0, 'address(0) != _newOwner'
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'msg.sender == newOwner'
    emit OwnershipTransferred(address(owner), msg.sender);
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    if not stor3:
        if not stor2[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'started || authorized[msg.sende]'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if arg1 <= 0:
        revert with 0, '_value > 0'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, '_value <= balances[_burner]'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if not stor3:
        if not stor2[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'started || authorized[msg.sende]'
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if not stor3:
        if not stor2[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'started || authorized[msg.sende]'
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if arg2 > allowance[address(arg1)][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_value <= allowed[_from][msg.sender]'
    if arg2 <= 0:
        revert with 0, '_value > 0'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, '_value <= balances[_burner]'
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor3:
        if not stor2[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'started || authorized[msg.sende]'
    if not arg1:
        revert with 0, '_to != address(0)'
    if this.address == arg1:
        revert with 0, '_to != address(this)'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, '_value <= balances[_sender]'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor3:
        if not stor2[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'started || authorized[msg.sende]'
    if not arg2:
        revert with 0, '_to != address(0)'
    if this.address == arg2:
        revert with 0, '_to != address(this)'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, '_value <= balances[_from]'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_value <= allowed[_from][msg.sender]'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCustomCall(address arg1, uint256 arg2, bytes arg3, bytes4 arg4) {
    mem[128 len arg3.length] = arg3[all]
    if not stor3:
        if not stor2[msg.sender]:
            revert with 0, 'started || authorized[msg.sende]'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, arg4)
    mem[ceil32(arg3.length) + 196 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct arg4
             gas gas_remaining wei
            args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 196] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 228 len arg3.length % 32]
        call arg1 with:
           funct arg4
             gas gas_remaining wei
            args msg.sender, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 196 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not ext_call.success:
        revert with 0, '_spender.call(_customFunction, msg.sender, _value, _extraData)'
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if not stor3:
        if not stor2[msg.sender]:
            revert with 0, 'started || authorized[msg.sende]'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'bytes)'))
    mem[ceil32(arg3.length) + 196 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'bytes)')) >> 224
             gas gas_remaining wei
            args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 196] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 228 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'bytes)')) >> 224
             gas gas_remaining wei
            args msg.sender, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 196 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not ext_call.success:
        revert with 0, '_spender.call(bytes4(keccak256("receiveApproval(address,uint256,bytes)")), msg.sender, _value, _extraData)'
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if stor3:
        mem[ceil32(arg3.length) + 128] = 36
    else:
        if not stor2[msg.sender]:
            revert with 0, 'started || authorized[msg.sende]'
        mem[ceil32(arg3.length) + 128] = 36
        if not stor3:
            if not stor2[msg.sender]:
                revert with 0, 'started || authorized[msg.sende]'
    if not arg1:
        revert with 0, '_to != address(0)'
    if this.address == arg1:
        revert with 0, '_to != address(this)'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, '_value <= balances[msg.sender]'
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 224] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 224] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 224 len arg3.length % 32]));
    else:
        mem[ceil32(arg3.length) + 292] = Mask(32, 224, sha3('tokenFallback(address,uint256,by', mem[ceil32(arg3.length) + 324 len 4]))
        mem[ceil32(arg3.length) + 296] = msg.sender
        mem[ceil32(arg3.length) + 328] = arg2
        mem[ceil32(arg3.length) + 360 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('tokenFallback(address,uint256,by', uint32(msg.sender))) >> 224
                 gas gas_remaining wei
                args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 360] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 392 len arg3.length % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('tokenFallback(address,uint256,by', uint32(msg.sender))) >> 224
                 gas gas_remaining wei
                args msg.sender, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 360 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
        if not ext_call.success:
            revert with 0, '_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data)'
        mem[ceil32(arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 292] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 292] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 292 len arg3.length % 32]));
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if stor3:
        if not arg1:
            revert with 0, '_to != address(0)'
        if this.address == arg1:
            revert with 0, '_to != address(this)'
        if arg2 > balanceOf[msg.sender]:
            revert with 0, '_value <= balances[msg.sender]'
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        if ext_code.size(arg1) <= 0:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
            emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]));
        else:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32] = mem[ceil32(arg3.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[(2 * floor32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len arg4.length % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32]
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 192 len arg4.length % 32]))
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196] = msg.sender
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 228] = arg2
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] with:
                     gas gas_remaining wei
                    args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
            else:
                mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 260] = mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 292 len arg3.length % 32]
                call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] with:
                     gas gas_remaining wei
                    args msg.sender, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[arg4.length + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 260 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
            if not ext_call.success:
                revert with 0, '_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data)'
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192] = 256^(-(arg3.length % 32) + 32) - 1 and mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
            emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192 len arg3.length % 32]));
    else:
        if not stor2[msg.sender]:
            revert with 0, 'started || authorized[msg.sende]'
        if not arg1:
            revert with 0, '_to != address(0)'
        if this.address == arg1:
            revert with 0, '_to != address(this)'
        if arg2 > balanceOf[msg.sender]:
            revert with 0, '_value <= balances[msg.sender]'
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        if ext_code.size(arg1) <= 0:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
            emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]));
        else:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32] = mem[ceil32(arg3.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[(2 * floor32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len arg4.length % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + floor32(arg4.length) + 224 len arg4.length % 32]
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 192 len arg4.length % 32]))
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196] = msg.sender
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 228] = arg2
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] with:
                     gas gas_remaining wei
                    args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
            else:
                mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 260] = mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 292 len arg3.length % 32]
                call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] with:
                     gas gas_remaining wei
                    args msg.sender, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[arg4.length + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 260 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
            if not ext_call.success:
                revert with 0, '_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data)'
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192] = 256^(-(arg3.length % 32) + 32) - 1 and mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
            emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192 len arg3.length % 32]));
    return 1
}



}
