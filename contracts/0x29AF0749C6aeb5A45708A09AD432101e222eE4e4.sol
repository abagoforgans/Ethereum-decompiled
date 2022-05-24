contract main {




// =====================  Runtime code  =====================


const name = 'Smile Token'

const totalSupply = 100000000 * 10^18

const decimals = 18

const symbol = 'SMILE'


uint8 distributionFinished; offset 160
address creatorAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function creator() {
    return creatorAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function distributionFinished() {
    return bool(distributionFinished)
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(arg2)] - arg3 <= allowance[address(arg1)][address(arg2)]
    allowance[address(arg1)][address(arg2)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if not ext_code.size(arg1):
    else:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function retrieveERC(address arg1) {
    require msg.sender == creatorAddress
    require arg1 != this.address
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function distributeSMILE(address[] arg1, uint256 arg2) {
    require msg.sender == creatorAddress
    require not distributionFinished
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += arg2
        mem[96] = arg2
        emit Transfer(arg2, msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    require arg2
    require arg2 * arg1.length / arg2 == arg1.length
    require balanceOf[address(msg.sender)] - (arg2 * arg1.length) <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * arg2 * arg1.length
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if not ext_code.size(arg1):
    else:
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
