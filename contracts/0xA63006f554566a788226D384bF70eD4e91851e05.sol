contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 sub_1d0c16ce;
array of uint256 stor9;

function name() {
    return name[0 len name.length]
}

function sub_1d0c16ce(?) {
    require calldata.size - 4 >= 64
    return sub_1d0c16ce[arg1][arg2]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require balanceOf[0] <= _totalSupply
    return (_totalSupply - balanceOf[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_b29f1236(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    return address(sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]))
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function farmerRequestCertificate(address arg1, uint256 arg2, string arg3, string arg4, string arg5, string arg6) {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    allowance[stor0][address(arg1)] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0),
                  mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 256 len -arg6.length + ceil32(arg6.length)],
                  owner,
                  arg1,
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224] = owner
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 256] = arg1
    emit FarmerRequestedCertificate(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 256 len ceil32(arg6.length) + -arg6.length + 32], arg2);
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224] = 1
    return Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), 
           mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 256 len -arg6.length + ceil32(arg6.length)]
}

function transferAndWriteUrl(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[ceil32(arg3.length) + 128] = arg3.length
    require sub_1d0c16ce[address(msg.sender)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] > arg2
    require arg2 <= sub_1d0c16ce[address(msg.sender)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))]
    sub_1d0c16ce[address(msg.sender)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] -= arg2
    require sub_1d0c16ce[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] + arg2 >= sub_1d0c16ce[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))]
    sub_1d0c16ce[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] += arg2
    stor9[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))][] = Array(len=arg3.length, data=arg3[all])
    return 1
}

function sellsIngrWithoutDepletion(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[ceil32(arg3.length) + 128] = arg3.length
    require sub_1d0c16ce[address(msg.sender)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] > arg2
    require arg2 <= sub_1d0c16ce[address(msg.sender)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))]
    sub_1d0c16ce[address(msg.sender)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] -= arg2
    require sub_1d0c16ce[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] + arg2 >= sub_1d0c16ce[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))]
    sub_1d0c16ce[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] += arg2
    stor9[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))][] = Array(len=arg3.length, data=arg3[all])
    return 1
}

function genAddressFromGTIN13date(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _20 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = _20 + arg1.length
    return address(sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]))
}

function sellsIntermediateGoodWithDepletion(address arg1, uint256 arg2, string arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 100
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 * arg4 / 100 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2 * arg4 / 100
    require balanceOf[address(arg1)] + (arg2 * arg4 / 100) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2 * arg4 / 100
    mem[ceil32(arg3.length) + 128] = arg2 * arg4 / 100
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[ceil32(arg3.length) + 128] = arg3.length
    require sub_1d0c16ce[address(msg.sender)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] > arg2
    require arg2 <= sub_1d0c16ce[address(msg.sender)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))]
    sub_1d0c16ce[address(msg.sender)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] -= arg2
    require sub_1d0c16ce[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] + (arg2 * arg4 / 100) >= sub_1d0c16ce[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))]
    sub_1d0c16ce[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))] += arg2 * arg4 / 100
    stor9[address(arg1)][address(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))][] = Array(len=arg3.length, data=arg3[all])
    return 1
}

function sub_d1fe9474(?) {
    require calldata.size - 4 >= 256
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg6.length
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] = 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 256] = arg3
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0),
                  mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg8.length + 288 len -arg8.length + ceil32(arg8.length)],
                  arg1,
                  arg2,
    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + floor32(arg4.length) + -(arg4.length % 32) + 320 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 256] = arg4.length
    sub_1d0c16ce[address(arg2)][address(sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 288 len Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg8.length + 288 len -arg8.length + ceil32(arg8.length)]]))] = arg3
    stor9[address(arg2)][address(sha3(mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 288 len Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg8.length + 288 len -arg8.length + ceil32(arg8.length)]]))][] = Array(len=arg4.length, data=arg4[all])
    return 1
}

function comminglerSellsProductSKUWithProRataIngred(address arg1, uint256 arg2, string arg3, uint256 arg4, string arg5, string arg6) {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg5.length
    mem[ceil32(arg3.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + arg5.length + 160] = 0
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 160] = arg6.length
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 192 len arg6.length] = arg6[all]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 192] = 0
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224])
    _161 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
    mem[arg5.length + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg3.length) + ceil32(arg5.length) + 192 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
    mem[arg5.length + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + 224] = mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 224 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 32) + 256, mem[arg5.length + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + 224])
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + arg5.length
    _317 = sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 224 len -arg6.length + ceil32(arg6.length)]])
    require arg4 > 0
    require arg4 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg4
    require balanceOf[address(sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 224 len -arg6.length + ceil32(arg6.length)]]))] + arg4 >= balanceOf[address(sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 224 len -arg6.length + ceil32(arg6.length)]]))]
    balanceOf[address(sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 224 len -arg6.length + ceil32(arg6.length)]]))] += arg4
    emit Transfer(arg4, msg.sender, address(sha3(mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 224 len -arg6.length + ceil32(arg6.length)]])));
    mem[_161 + arg5.length + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[_161 + arg5.length + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg3.length) + -(arg3.length % 32) + 288 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    require sub_1d0c16ce[address(msg.sender)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 256, ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))] > arg4
    require arg4 <= sub_1d0c16ce[address(msg.sender)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 256, ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))]
    sub_1d0c16ce[address(msg.sender)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 256, ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))] -= arg4
    require sub_1d0c16ce[address(_317)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 256, ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))] + arg4 >= sub_1d0c16ce[address(_317)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 256, ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))]
    sub_1d0c16ce[address(_317)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 256, ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))] += arg4
    stor9[address(_317)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 256, ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))][] = Array(len=arg3.length, data=arg3[all])
    require -arg4 + (arg2 * arg4) <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg4 - (arg2 * arg4)
    require balanceOf[address(arg1)] - arg4 + (arg2 * arg4) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg4 + (arg2 * arg4)
    emit Transfer((-arg4 + (arg2 * arg4)), msg.sender, arg1);
    mem[arg3.length + _161 + arg5.length + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 288 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(2 * floor32(arg3.length)) + _161 + arg5.length + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 320 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    require sub_1d0c16ce[address(msg.sender)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg3'))), ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))] > -arg4 + (arg2 * arg4)
    require -arg4 + (arg2 * arg4) <= sub_1d0c16ce[address(msg.sender)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg3'))), ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))]
    sub_1d0c16ce[address(msg.sender)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg3'))), ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))] = sub_1d0c16ce[address(msg.sender)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg3'))), ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))] + arg4 - (arg2 * arg4)
    require sub_1d0c16ce[address(arg1)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg3'))), ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))] - arg4 + (arg2 * arg4) >= sub_1d0c16ce[address(arg1)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg3'))), ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))]
    sub_1d0c16ce[address(arg1)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg3'))), ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))] = sub_1d0c16ce[address(arg1)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg3'))), ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))] - arg4 + (arg2 * arg4)
    stor9[address(arg1)][address(('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg3'))), ('var', '_161'), ('cd', ('add', 4, ('param', 'arg5'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))][] = Array(len=arg3.length, data=arg3[all])
    return 1
}



}
