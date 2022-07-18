contract main {




// =====================  Runtime code  =====================


const name = 'GCH Token'

const decimals = 18

const sub_629b05f0(?) = 42 * 10^6

const symbol = 'GCH'

const decimalValue = 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint256 nonce;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor99;

function totalSupply() {
    return totalSupply
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function buy() payable {
    require buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function setPrices(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1:
        owner = arg1
        emit transferOwner(msg.sender, owner);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function recoverPreSignedHash(address arg1, bytes4 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    return sha3(arg1, arg2, arg3, arg4, arg5, arg6)
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require eth.balance(this.address) >= arg1 * sellPrice
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
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

function recover(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            mem[ceil32(arg2.length) + 128] = 0
            return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    signer = erecover(arg1, (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sendBatchCS(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length == arg2.length
    mem[0] = msg.sender
    mem[32] = 0
    idx = 0
    s = uint256(stor[sha3(mem[0 len 64])])
    while idx < arg2.length:
        require idx < arg1.length
        require s >= cd[((32 * idx) + arg2 + 36)]
        if msg.sender == address(cd[((32 * idx) + arg1 + 36)]):
            mem[96] = cd[((32 * idx) + arg2 + 36)]
            emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
            idx = idx + 1
            s = s
            continue 
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 0
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        s = s - cd[((32 * idx) + arg2 + 36)]
        continue 
    balanceOf[address(msg.sender)] = s
    return 1
}

function approvePreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    require not uint8(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)])
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 0xf7ac9c2e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 184] = address(arg2)
    mem[ceil32(arg1.length) + 204] = arg3
    mem[ceil32(arg1.length) + 236] = arg4
    mem[ceil32(arg1.length) + 268] = arg5
    mem[ceil32(arg1.length) + 128] = 140
    _83 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + 332] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 364] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
    mem[ceil32(arg1.length) + 396] = mem[128]
    mem[ceil32(arg1.length) + 428] = mem[160]
    signer = erecover(_83, (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require nonce[address(signer)] + 1 >= nonce[address(signer)]
    require arg5 == nonce[address(signer)] + 1
    require arg3 + arg4 >= arg3
    require arg3 + arg4 <= balanceOf[address(signer)]
    nonce[address(signer)] = arg5
    mem[ceil32(arg1.length) + 332 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 364 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 332] = 4
    uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 332 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 1
    allowance[address(signer)][address(arg2)] = arg3
    require arg4 <= balanceOf[address(signer)]
    balanceOf[address(signer)] -= arg4
    require balanceOf[address(msg.sender)] + arg4 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg4
    emit Approval(arg3, address(signer), arg2);
    emit Transfer(arg4, address(signer), msg.sender);
    emit ApprovalPreSigned(arg3, arg4, address(signer), arg2, msg.sender);
    return 1
}

function decreaseApprovalPreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    require not uint8(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)])
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 0x59388d7800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 184] = address(arg2)
    mem[ceil32(arg1.length) + 204] = arg3
    mem[ceil32(arg1.length) + 236] = arg4
    mem[ceil32(arg1.length) + 268] = arg5
    mem[ceil32(arg1.length) + 128] = 140
    _123 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + 332] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 364] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
    mem[ceil32(arg1.length) + 396] = mem[128]
    mem[ceil32(arg1.length) + 428] = mem[160]
    signer = erecover(_123, (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require nonce[address(signer)] + 1 >= nonce[address(signer)]
    require arg5 == nonce[address(signer)] + 1
    require arg4 <= balanceOf[address(signer)]
    nonce[address(signer)] = arg5
    mem[ceil32(arg1.length) + 332 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 364 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 332] = 4
    uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 332 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 1
    if arg3 <= allowance[address(signer)][address(arg2)]:
        allowance[address(signer)][address(arg2)] -= arg3
    else:
        allowance[address(signer)][address(arg2)] = 0
    require arg4 <= balanceOf[address(signer)]
    balanceOf[address(signer)] -= arg4
    require balanceOf[address(msg.sender)] + arg4 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg4
    emit Approval(arg3, address(signer), arg2);
    emit Transfer(arg4, address(signer), msg.sender);
    emit ApprovalPreSigned(allowance[address(signer)][address(arg2)], arg4, address(signer), arg2, msg.sender);
    return 1
}

function transferPreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    require not uint8(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)])
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 0x48664c1600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 184] = address(arg2)
    mem[ceil32(arg1.length) + 204] = arg3
    mem[ceil32(arg1.length) + 236] = arg4
    mem[ceil32(arg1.length) + 268] = arg5
    mem[ceil32(arg1.length) + 128] = 140
    _83 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + 332] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 364] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
    mem[ceil32(arg1.length) + 396] = mem[128]
    mem[ceil32(arg1.length) + 428] = mem[160]
    signer = erecover(_83, (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require nonce[address(signer)] + 1 >= nonce[address(signer)]
    require arg5 == nonce[address(signer)] + 1
    require arg3 + arg4 >= arg3
    require arg3 + arg4 <= balanceOf[address(signer)]
    nonce[address(signer)] = arg5
    mem[ceil32(arg1.length) + 332 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 364 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 332] = 4
    uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 332 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 1
    require arg3 <= balanceOf[address(signer)]
    require arg4 <= balanceOf[address(signer)] - arg3
    balanceOf[address(signer)] = balanceOf[address(signer)] - arg3 - arg4
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(msg.sender)] + arg4 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg4
    emit Transfer(arg3, address(signer), arg2);
    emit Transfer(arg4, address(signer), msg.sender);
    emit TransferPreSigned(arg3, arg4, address(signer), arg2, msg.sender);
    return 1
}

function increaseApprovalPreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    require not uint8(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)])
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 0xa45f71ff00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 184] = address(arg2)
    mem[ceil32(arg1.length) + 204] = arg3
    mem[ceil32(arg1.length) + 236] = arg4
    mem[ceil32(arg1.length) + 268] = arg5
    mem[ceil32(arg1.length) + 128] = 140
    _99 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + 332] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 364] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
    mem[ceil32(arg1.length) + 396] = mem[128]
    mem[ceil32(arg1.length) + 428] = mem[160]
    signer = erecover(_99, (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require nonce[address(signer)] + 1 >= nonce[address(signer)]
    require arg5 == nonce[address(signer)] + 1
    require allowance[address(signer)][address(arg2)] + arg3 >= allowance[address(signer)][address(arg2)]
    require arg4 >= 0
    require allowance[address(signer)][address(arg2)] + arg3 + arg4 <= balanceOf[address(signer)]
    nonce[address(signer)] = arg5
    mem[ceil32(arg1.length) + 332 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 364 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 332] = 4
    uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 332 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 1
    require allowance[address(signer)][address(arg2)] + arg3 >= allowance[address(signer)][address(arg2)]
    allowance[address(signer)][address(arg2)] += arg3
    require arg4 <= balanceOf[address(signer)]
    balanceOf[address(signer)] -= arg4
    require balanceOf[address(msg.sender)] + arg4 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg4
    emit Approval(allowance[address(signer)][address(arg2)], address(signer), arg2);
    emit Transfer(arg4, address(signer), msg.sender);
    emit ApprovalPreSigned(allowance[address(signer)][address(arg2)], arg4, address(signer), arg2, msg.sender);
    return 1
}

function sub_19184d18(?) {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = arg6.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = 0
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < arg4.length:
        require idx < mem[96]
        _40 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _42 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _45 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        _46 = mem[64]
        mem[64] = mem[64] + 32
        mem[_46 + 32] = 0x618e860eefb172f655b56aad9bdc5685c037efba70b9c34a8e303b19778efd2c
        mem[_46 + 64] = uint8(_40)
        mem[_46 + 96] = _42
        mem[_46 + 128] = _45
        signer = erecover(0x618e860eefb172f655b56aad9bdc5685c037efba70b9c34a8e303b19778efd2c, _40 << 248, _42, _45) 
        mem[_46] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
        _56 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
        mem[0] = address(signer)
        mem[32] = 0
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288] >= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288] > balanceOf[address(signer)]:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _59 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] <= balanceOf[address(signer)]
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288] <= balanceOf[address(signer)] - mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
        balanceOf[address(signer)] = balanceOf[address(signer)] - mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] - mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
        require balanceOf[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] >= balanceOf[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]]
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224])] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
        mem[_46 + 32] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
        emit Transfer(mem[_46 + 32], address(signer), address(_59));
        require s + _56 >= s
        if _56:
            mem[_46 + 32] = _56
            emit Transfer(_56, address(signer), msg.sender);
        idx = idx + 1
        s = s + _56
        continue 
    require balanceOf[address(msg.sender)] + s >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += s
    return 1
}



}
