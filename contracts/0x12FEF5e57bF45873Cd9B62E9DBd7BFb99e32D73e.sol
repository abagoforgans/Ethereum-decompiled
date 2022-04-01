contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
address stor4; offset 8
uint256 stor6;
mapping of uint8 stor9;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 20
    stor1.length.field_8 = 'Cofoundit token v1.0' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 9
    stor2.length.field_8 = 'Cofoundit' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'CFI' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor4.field_0) = 18
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    stor9[0] = 1
    stor9[address(code.data[7414 len 32])] = 1
    stor9[address(this.address)] = 1
    address(stor4.field_8) = code.data[7426 len 20]
    return code.data[887 len 6527]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address icoContractAddress; offset 8
uint256 tokenFrozenUntilBlock;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;

function isRestrictedAddress(address arg1) {
    return bool(uint8(stor9[address(arg1)]))
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

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function tokenFrozenUntilBlock() {
    return tokenFrozenUntilBlock
}

function symbol() {
    return symbol[0 len symbol.length]
}

function icoContractAddress() {
    return icoContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function editRestrictedAddress(address arg1) {
    require msg.sender == owner
    uint256(stor9[address(arg1)]) = not bool(uint8(stor9[address(arg1)])) or Mask(248, 8, uint256(stor9[address(arg1)]))
}

function approve(address arg1, uint256 arg2) {
    require block.number >= tokenFrozenUntilBlock
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.number >= tokenFrozenUntilBlock
    require not uint8(stor9[address(arg1)])
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.number >= tokenFrozenUntilBlock
    require not uint8(stor9[address(arg2)])
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function freezeTransfersUntil(uint256 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    tokenFrozenUntilBlock = arg1
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 224] = mem[128]
        mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit TokenFrozen(arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 224 len arg2.length]));
}

function mintTokens(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == icoContractAddress
    require not uint8(stor9[address(arg1)])
    require arg2
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    require sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) != sha3(None)
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    totalSupply += arg2
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require block.number >= tokenFrozenUntilBlock
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    mem[ceil32(arg3.length) + 228] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(arg1):
                call arg1.0x8f4ffcb1 with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                if ext_call.success:
                    return 1
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            if ext_code.size(arg1):
                call arg1.0x8f4ffcb1 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                if ext_call.success:
                    return 1
    else:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(arg1):
            call arg1.0x8f4ffcb1 with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
            if ext_call.success:
                return 1
    revert
}



}
