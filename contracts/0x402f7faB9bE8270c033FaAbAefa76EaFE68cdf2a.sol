contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
uint256 sub_5d62c51c;
uint8 stor2;
mapping of struct sub_030675af;
array of address stor4;
mapping of struct sub_c7e40068;
array of address stor6;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor14;

function sub_030675af(?) {
    require msg.sender == owner
    return bool(sub_030675af[address(arg1)].field_256), sub_030675af[address(arg1)].field_0
}

function mintingFinished() {
    return bool(stor14)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_5d62c51c(?) {
    return sub_5d62c51c
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_837cd205(?) {
    return bool(stor2)
}

function owner() {
    return owner
}

function transferable() {
    return bool(uint8(stor0.field_160))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c7e40068(?) {
    require msg.sender == owner
    return bool(sub_c7e40068[address(arg1)].field_256), sub_c7e40068[address(arg1)].field_0
}

function sub_cd6457e3(?) {
    require msg.sender == owner
    return stor4.length
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function lockFlag() {
    return bool(uint8(stor0.field_168))
}

function getLockedListLength() {
    require msg.sender == owner
    return stor6.length
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_d51c2c15(?) {
    require msg.sender == owner
    sub_5d62c51c = arg1
    return 1
}

function sub_e216ef50(?) {
    require msg.sender == owner
    stor2 = uint8(arg1)
    return 1
}

function disableLock(bool arg1) {
    require msg.sender == owner
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
    return 1
}

function enableTransfer(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    return 1
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

function finishMinting(bool arg1) {
    require msg.sender == owner
    stor14 = uint8(arg1)
    if not arg1:
        emit 0xd8885739: bool(stor14), msg.sender
    else:
        emit 0x4023dc22: bool(stor14), msg.sender
    return 1
}

function sub_1e16a418(?) {
    require msg.sender == owner
    require not sub_c7e40068[address(arg1)].field_256
    sub_c7e40068[address(arg1)].field_256 = 1
    sub_c7e40068[address(arg1)].field_0 = stor6.length
    stor6.length++
    stor6[stor6.length] = arg1
    return 1
}

function sub_2ab90991(?) {
    require msg.sender == owner
    require not sub_030675af[address(arg1)].field_256
    sub_030675af[address(arg1)].field_256 = 1
    sub_030675af[address(arg1)].field_0 = stor4.length
    stor4.length++
    stor4[stor4.length] = arg1
    return 1
}

function sub_5a429269(?) {
    require msg.sender == owner
    require sub_030675af[address(arg1)].field_256
    require sub_030675af[address(arg1)].field_0 < stor4.length
    stor4[stor3[address(arg1)].field_0] = 0
    sub_030675af[address(arg1)].field_0 = 0
    sub_030675af[address(arg1)].field_256 = 0
    return 1
}

function sub_d4da3ef1(?) {
    require msg.sender == owner
    require sub_c7e40068[address(arg1)].field_256
    require sub_c7e40068[address(arg1)].field_0 < stor6.length
    stor6[stor5[address(arg1)].field_0] = 0
    sub_c7e40068[address(arg1)].field_0 = 0
    sub_c7e40068[address(arg1)].field_256 = 0
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
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

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor14
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    if not sub_030675af[address(msg.sender)].field_256:
        if not uint8(stor0.field_160):
            revert with 0, 'transfer is not enabeled now!'
        if uint8(stor0.field_168):
            if sub_c7e40068[address(msg.sender)].field_256:
                revert with 0, 'you are locked!'
        if stor2:
            require block.gasprice >= sub_5d62c51c
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not sub_030675af[address(msg.sender)].field_256:
        if not uint8(stor0.field_160):
            revert with 0, 'transfer is not enabeled now!'
        if uint8(stor0.field_168):
            if sub_c7e40068[address(msg.sender)].field_256:
                revert with 0, 'you are locked!'
        if stor2:
            require block.gasprice >= sub_5d62c51c
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

function sub_6f61b5d5(?) {
    require msg.sender == owner
    require arg1 < stor6.length
    require arg2 > 0
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        if var21001:
            s = var21002
            idx = var21004
            while idx < arg2:
                require s < stor6.length
                mem[0] = 6
                require idx < arg2
                mem[(32 * idx) + 128] = stor6[s]
                if s + 1 < stor6.length:
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                while idx < 32 * arg2:
                    mem[(32 * arg2) + idx + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            mem[(32 * arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
            return Array(len=arg2, data=mem[128 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 192 len (32 * arg2) - floor32(arg2)]), 
        mem[(32 * arg2) + 128] = 32
        mem[(32 * arg2) + 160] = arg2
        mem[(32 * arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
    else:
        mem[128 len 32 * arg2] = code.data[13589 len 32 * arg2]
        if var22001:
            s = var22002
            idx = var22004
            while idx < arg2:
                require s < stor6.length
                mem[0] = 6
                require idx < arg2
                mem[(32 * idx) + 128] = stor6[s]
                if s + 1 < stor6.length:
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                while idx < 32 * arg2:
                    mem[(32 * arg2) + idx + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            mem[(32 * arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
            return Array(len=arg2, data=mem[128 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 192 len (32 * arg2) - floor32(arg2)]), 
        mem[(32 * arg2) + 128] = 32
        mem[(32 * arg2) + 160] = arg2
        mem[(32 * arg2) + 192 len floor32(arg2)] = code.data[13589 len floor32(arg2)]
    return memory
      from (32 * arg2) + 128
       len (96 * arg2) + 64
}

function sub_f2379962(?) {
    require msg.sender == owner
    require arg1 < stor4.length
    require arg2 > 0
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        if var21001:
            s = var21002
            idx = var21004
            while idx < arg2:
                require s < stor4.length
                mem[0] = 4
                require idx < arg2
                mem[(32 * idx) + 128] = stor4[s]
                if s + 1 < stor4.length:
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                while idx < 32 * arg2:
                    mem[(32 * arg2) + idx + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            mem[(32 * arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
            return Array(len=arg2, data=mem[128 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 192 len (32 * arg2) - floor32(arg2)]), 
        mem[(32 * arg2) + 128] = 32
        mem[(32 * arg2) + 160] = arg2
        mem[(32 * arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
    else:
        mem[128 len 32 * arg2] = code.data[13589 len 32 * arg2]
        if var22001:
            s = var22002
            idx = var22004
            while idx < arg2:
                require s < stor4.length
                mem[0] = 4
                require idx < arg2
                mem[(32 * idx) + 128] = stor4[s]
                if s + 1 < stor4.length:
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                while idx < 32 * arg2:
                    mem[(32 * arg2) + idx + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            mem[(32 * arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
            return Array(len=arg2, data=mem[128 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 192 len (32 * arg2) - floor32(arg2)]), 
        mem[(32 * arg2) + 128] = 32
        mem[(32 * arg2) + 160] = arg2
        mem[(32 * arg2) + 192 len floor32(arg2)] = code.data[13589 len floor32(arg2)]
    return memory
      from (32 * arg2) + 128
       len (96 * arg2) + 64
}



}
