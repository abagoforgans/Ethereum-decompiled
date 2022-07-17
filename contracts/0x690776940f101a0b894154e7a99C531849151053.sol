contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor5;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
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
    require balanceOf[0] <= stor5
    return (stor5 - balanceOf[0])
}

function sub_3b47564c(?) {
    require calldata.size - 4 >= 32
    return (bool(stor2[address(arg1)]) == 1)
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

function sub_e08e347b(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    require stor5 + arg1 >= stor5
    stor5 += arg1
    require balanceOf[stor0] + arg1 >= balanceOf[stor0]
    balanceOf[stor0] += arg1
    require stor5 > stor5
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require balanceOf[address(msg.sender)] >= arg2
    require stor2[address(msg.sender)]
    require stor2[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg1
    require stor2[address(msg.sender)]
    require stor2[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    require stor2[address(msg.sender)]
    require stor2[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_a300adf8(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    if var18002 >= var18001:
    require var20001 < arg1.length
    stor2[mem[(32 * var22001) + 140 len 20]] = 0
    if var28002 >= var28001:
    require var30001 < arg1.length
    stor2[mem[(32 * var32001) + 140 len 20]] = 0
    if var38002 >= var38001:
    require var40001 < arg1.length
    stor2[mem[(32 * var42001) + 140 len 20]] = 0
    if var48002 >= var48001:
    require var50001 < arg1.length
    # nil
}

function addBulkWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    if var18002 >= var18001:
    require var20001 < arg1.length
    stor2[mem[(32 * var22001) + 140 len 20]] = 1
    if var28002 >= var28001:
    require var30001 < arg1.length
    stor2[mem[(32 * var32001) + 140 len 20]] = 1
    if var38002 >= var38001:
    require var40001 < arg1.length
    stor2[mem[(32 * var42001) + 140 len 20]] = 1
    if var48002 >= var48001:
    require var50001 < arg1.length
    # nil
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require arg2
    require stor2[address(msg.sender)]
    require stor2[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    require stor2[address(arg1)]
    require stor2[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, msg.sender, arg2);
    return 1
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

function sub_10b9082a(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require msg.sender == owner
    if var54002 >= var54001:
    require var56001 < arg1.length
    require var58004 < arg2.length
    require var60005 < arg3.length
    require var62006 < arg4.length
    require var68001 <= var68002
    require var74001 <= var74002
    balanceOf[address(var78007)] = var78001
    require var80002 + var80001 >= var80002
    balanceOf[address(var84006)] = var84001
    if address(var84007) == owner:
        emit Transfer(var86001, address(var86006), address(var86005));
        emit Transfer(var86003, address(var86006), owner);
    # nil
}



}
