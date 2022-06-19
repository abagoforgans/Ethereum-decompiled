contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor157;
uint256 sub_d0f22e9c;
address sub_45b6d7dcAddress;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_45b6d7dc(?) {
    return sub_45b6d7dcAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function sub_d0f22e9c(?) {
    return sub_d0f22e9c
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function getTransferFromPreSignedHash(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    return sha3(0, arg1, arg2, arg3, arg4, arg5, arg6)
}

function getApprovePreSignedHash(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    return sha3(0, arg1, arg2, arg3, arg4, Mask(160, 96, arg5) >> 96 >> 768, mem[396 len 12])
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getTransferPreSignedHash(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    return sha3(0, arg1, arg2, arg3, arg4, Mask(160, 96, arg5) >> 96 >> 768, mem[396 len 12])
}

function getIncreaseAllowancePreSignedHash(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    return sha3(0, arg1, arg2, arg3, arg4, Mask(160, 96, arg5) >> 96 >> 768, mem[396 len 12])
}

function getDecreaseAllowancePreSignedHash(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    return sha3(0, arg1, arg2, arg3, arg4, Mask(160, 96, arg5) >> 96 >> 768, mem[396 len 12])
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function initialize(uint256 arg1, address arg2) {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    sub_d0f22e9c = arg1
    sub_45b6d7dcAddress = arg2
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function initialize(string arg1, string arg2, uint8 arg3) {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= sub_d0f22e9c:
        if sub_45b6d7dcAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Cannot transfer before transfers start time from this account'
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
    if block.timestamp <= sub_d0f22e9c:
        if arg1 != sub_45b6d7dcAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Cannot transfer before transfers start time from this account'
    require arg3 <= balanceOf[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function initialize(address arg1, uint256 arg2) {
    if uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    bool(name.length) = 0
    name.length.field_1 = 11
    name.length.field_8 = 'Props Token' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 5
    symbol.length.field_8 = 'PROPS' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    sub_d0f22e9c = arg2
    sub_45b6d7dcAddress = arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    require arg1
    require totalSupply + 600000000 * 10^18 >= totalSupply
    totalSupply += 600000000 * 10^18
    require balanceOf[address(arg1)] + 600000000 * 10^18 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 600000000 * 10^18
    emit Transfer(600000000 * 10^18, 0, arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function transferFromPreSigned(bytes arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    mem[128 len arg1.length] = arg1[all]
    if not arg3:
        revert with 0, 'Invalid _to address'
    mem[ceil32(arg1.length) + 160] = 0xa70c41b400000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = address(this.address)
    mem[ceil32(arg1.length) + 184] = address(arg2)
    mem[ceil32(arg1.length) + 204] = address(arg3)
    mem[ceil32(arg1.length) + 128] = 160
    if arg1.length != 65:
        revert with 0, 'Invalid spender address recovered'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Invalid spender address recovered'
    signer = erecover(sha3(0, this.address, arg2, arg3, arg4, arg5, arg6), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid spender address recovered'
    if stor157[address(signer)][Mask(96, 160, sha3(0, this.address, arg2, arg3, arg4, arg5, arg6)) >> 160][uint64(sha3(0, this.address, arg2, arg3, arg4, arg5, arg6)) or Mask(96, 0, mem[180 len 12]) << 64]:
        revert with 0, 'Transaction hash was already used'
    stor157[address(signer)][Mask(96, 160, sha3(0, this.address, arg2, arg3, arg4, arg5, arg6)) >> 160][uint64(sha3(0, this.address, arg2, arg3, arg4, arg5, arg6)) or Mask(96, 0, mem[180 len 12]) << 64] = 1
    require arg4 <= balanceOf[address(arg2)]
    require arg3
    require arg4 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg4
    require balanceOf[address(arg3)] + arg4 >= balanceOf[address(arg3)]
    balanceOf[address(arg3)] += arg4
    emit Transfer(arg4, arg2, arg3);
    require arg4 <= allowance[address(arg2)][address(signer)]
    require address(signer)
    require arg2
    allowance[address(arg2)][address(signer)] -= arg4
    emit Approval((allowance[address(arg2)][address(signer)] - arg4), arg2, address(signer));
    require arg5 <= balanceOf[address(signer)]
    require msg.sender
    require arg5 <= balanceOf[address(signer)]
    balanceOf[address(signer)] -= arg5
    require balanceOf[address(msg.sender)] + arg5 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg5
    emit Transfer(arg5, address(signer), msg.sender);
    emit TransferPreSigned(arg4, arg5, arg2, arg3, msg.sender);
    return 1
}

function approvePreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    mem[128 len arg1.length] = arg1[all]
    if not arg2:
        revert with 0, 'Invalid _spender address'
    mem[ceil32(arg1.length) + 160] = 0x79250dcf00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = address(this.address)
    mem[ceil32(arg1.length) + 184] = address(arg2)
    mem[ceil32(arg1.length) + 204] = arg3
    mem[ceil32(arg1.length) + 128] = 140
    if arg1.length != 65:
        revert with 0, 'Invalid from address recovered'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Invalid from address recovered'
    signer = erecover(sha3(0, this.address, arg2, arg3, arg4, Mask(160, 96, arg5) >> 96 >> 768, mem[ceil32(arg1.length) + 428 len 12]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid from address recovered'
    if stor157[address(signer)][Mask(96, 160, ('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) >> 160][uint64(('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) or Mask(96, 0, mem[180 len 12]) << 64]:
        revert with 0, 'Transaction hash was already used'
    stor157[address(signer)][Mask(96, 160, ('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) >> 160][uint64(('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) or Mask(96, 0, mem[180 len 12]) << 64] = 1
    require arg2
    require address(signer)
    allowance[address(signer)][address(arg2)] = arg3
    emit Approval(arg3, address(signer), arg2);
    require arg4 <= balanceOf[address(signer)]
    require msg.sender
    require arg4 <= balanceOf[address(signer)]
    balanceOf[address(signer)] -= arg4
    require balanceOf[address(msg.sender)] + arg4 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg4
    emit Transfer(arg4, address(signer), msg.sender);
    emit ApprovalPreSigned(arg3, arg4, address(signer), arg2, msg.sender);
    return 1
}

function transferPreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    mem[128 len arg1.length] = arg1[all]
    if not arg2:
        revert with 0, 'Invalid _to address'
    mem[ceil32(arg1.length) + 160] = 0xd98dcb100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = address(this.address)
    mem[ceil32(arg1.length) + 184] = address(arg2)
    mem[ceil32(arg1.length) + 204] = arg3
    mem[ceil32(arg1.length) + 128] = 140
    if arg1.length != 65:
        revert with 0, 'Invalid from address recovered'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Invalid from address recovered'
    signer = erecover(sha3(0, this.address, arg2, arg3, arg4, Mask(160, 96, arg5) >> 96 >> 768, mem[ceil32(arg1.length) + 428 len 12]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid from address recovered'
    if stor157[address(signer)][Mask(96, 160, ('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) >> 160][uint64(('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) or Mask(96, 0, mem[180 len 12]) << 64]:
        revert with 0, 'Transaction hash was already used'
    stor157[address(signer)][Mask(96, 160, ('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) >> 160][uint64(('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) or Mask(96, 0, mem[180 len 12]) << 64] = 1
    require arg3 <= balanceOf[address(signer)]
    require arg2
    require arg3 <= balanceOf[address(signer)]
    balanceOf[address(signer)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, address(signer), arg2);
    require arg4 <= balanceOf[address(signer)]
    require msg.sender
    require arg4 <= balanceOf[address(signer)]
    balanceOf[address(signer)] -= arg4
    require balanceOf[address(msg.sender)] + arg4 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg4
    emit Transfer(arg4, address(signer), msg.sender);
    emit TransferPreSigned(arg3, arg4, address(signer), arg2, msg.sender);
    return 1
}

function decreaseAllowancePreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    mem[128 len arg1.length] = arg1[all]
    if not arg2:
        revert with 0, 'Invalid _spender address'
    mem[ceil32(arg1.length) + 160] = 0x5229c56f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = address(this.address)
    mem[ceil32(arg1.length) + 184] = address(arg2)
    mem[ceil32(arg1.length) + 204] = arg3
    mem[ceil32(arg1.length) + 128] = 140
    if arg1.length != 65:
        revert with 0, 'Invalid from address recovered'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Invalid from address recovered'
    signer = erecover(sha3(0, this.address, arg2, arg3, arg4, Mask(160, 96, arg5) >> 96 >> 768, mem[ceil32(arg1.length) + 428 len 12]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid from address recovered'
    if stor157[address(signer)][Mask(96, 160, ('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) >> 160][uint64(('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) or Mask(96, 0, mem[180 len 12]) << 64]:
        revert with 0, 'Transaction hash was already used'
    stor157[address(signer)][Mask(96, 160, ('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) >> 160][uint64(('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) or Mask(96, 0, mem[180 len 12]) << 64] = 1
    require arg3 <= allowance[address(signer)][address(arg2)]
    require arg2
    require address(signer)
    allowance[address(signer)][address(arg2)] -= arg3
    emit Approval((allowance[address(signer)][address(arg2)] - arg3), address(signer), arg2);
    require arg4 <= balanceOf[address(signer)]
    require msg.sender
    require arg4 <= balanceOf[address(signer)]
    balanceOf[address(signer)] -= arg4
    require balanceOf[address(msg.sender)] + arg4 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg4
    emit Transfer(arg4, address(signer), msg.sender);
    emit ApprovalPreSigned(allowance[address(signer)][address(arg2)], arg4, address(signer), arg2, msg.sender);
    return 1
}

function increaseAllowancePreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    mem[128 len arg1.length] = arg1[all]
    if not arg2:
        revert with 0, 'Invalid _spender address'
    mem[ceil32(arg1.length) + 160] = 0x138e8da100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = address(this.address)
    mem[ceil32(arg1.length) + 184] = address(arg2)
    mem[ceil32(arg1.length) + 204] = arg3
    mem[ceil32(arg1.length) + 128] = 140
    if arg1.length != 65:
        revert with 0, 'Invalid from address recovered'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Invalid from address recovered'
    signer = erecover(sha3(0, this.address, arg2, arg3, arg4, Mask(160, 96, arg5) >> 96 >> 768, mem[ceil32(arg1.length) + 428 len 12]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid from address recovered'
    if stor157[address(signer)][Mask(96, 160, ('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) >> 160][uint64(('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) or Mask(96, 0, mem[180 len 12]) << 64]:
        revert with 0, 'Transaction hash was already used'
    stor157[address(signer)][Mask(96, 160, ('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) >> 160][uint64(('map', ('mask_shl', 1024, -768, 768, ('data', 0, 'address', ('param', 'arg2'), ('param', 'arg3'), ('param', 'arg4'), ('mask_shl', 160, 96, -96, ('param', 'arg5')))), ('mem', ('range', ('add', 428, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 12)))) or Mask(96, 0, mem[180 len 12]) << 64] = 1
    require allowance[address(signer)][address(arg2)] + arg3 >= allowance[address(signer)][address(arg2)]
    require arg2
    require address(signer)
    allowance[address(signer)][address(arg2)] += arg3
    emit Approval((allowance[address(signer)][address(arg2)] + arg3), address(signer), arg2);
    require arg4 <= balanceOf[address(signer)]
    require msg.sender
    require arg4 <= balanceOf[address(signer)]
    balanceOf[address(signer)] -= arg4
    require balanceOf[address(msg.sender)] + arg4 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg4
    emit Transfer(arg4, address(signer), msg.sender);
    emit ApprovalPreSigned(allowance[address(signer)][address(arg2)], arg4, address(signer), arg2, msg.sender);
    return 1
}



}
