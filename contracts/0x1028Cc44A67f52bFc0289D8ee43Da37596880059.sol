contract main {




// =====================  Runtime code  =====================


const name = ' Ade Night'

const decimals = 18

const symbol = 'ADNT'


address stor1;
uint256 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionFinished() {
    return bool(stor5)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function getEthBalance(address arg1) {
    return eth.balance(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == address(stor1)
    address(stor1) = arg1
}

function finishDistribution() {
    require msg.sender == address(stor1)
    stor5 = 1
    emit DistrFinished()
    return 1
}

function sub_cb9d397f(?) {
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    balanceOf[msg.sender] = totalSupply
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[msg.sender][address(arg1)]:
            return 0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2 > balanceOf[msg.sender]:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == address(stor1)
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
        args address(stor1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_3e28fbdd(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == address(stor1)
    require not stor5
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if eth.balance(mem[(32 * idx) + 128]) >= arg3:
            balanceOf[address(stor1)] -= arg2
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _21 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, address(stor1), address(_21));
        idx = idx + 1
        continue 
}



}
