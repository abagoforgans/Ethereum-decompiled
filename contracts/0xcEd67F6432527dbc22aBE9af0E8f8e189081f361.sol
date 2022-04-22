contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 4272]




// =====================  Runtime code  =====================


const name = 'Airdrop Beggars Community'

const totalSupply = 10000000 * 10^18

const decimals = 18

const symbol = 'ABC'


address stor0;
mapping of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function AirdropBeggarsCommunity() {
    stor0 = msg.sender
    balanceOf[stor0] = 10000000 * 10^18
    emit Transfer(10000000 * 10^18, 0, stor0);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require balanceOf[stor0] >= 1000 * 10^18
    require not stor1[address(msg.sender)]
    balanceOf[stor0] -= 1000 * 10^18
    balanceOf[address(msg.sender)] += 1000 * 10^18
    stor1[address(msg.sender)] = 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdraw(address arg1) {
    require msg.sender == stor0
    if not arg1:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor0, ext_call.return_data[0]
    require ext_call.success
    return 1
}



}
