contract main {


// =======================  Init code  ======================


address stor3;
address stor4;

function _fallback() {
    stor3 = msg.sender
    stor4 = code.data[2470 len 20]
    return code.data[104 len 2354]
}



// =====================  Runtime code  =====================


const name = '1UP'

const decimals = 0

const symbol = 'UP'

const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address creatorAddress;
address yoshicoinAddress;

function creator() {
    return creatorAddress
}

function totalSupply() {
    return totalSupply
}

function yoshicoin() {
    return yoshicoinAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 >= 1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 >= 1
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value >= 10^15
    require ext_code.size(yoshicoinAddress)
    call yoshicoinAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), 5
    require ext_call.success
    require ext_call.return_data[0]
    require totalSupply + 1 >= totalSupply
    require totalSupply + 1 >= 1
    totalSupply++
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + 1 >= 1
    balanceOf[address(msg.sender)]++
    emit Transfer(1, 0, msg.sender);
    call creatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
