contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;

function _fallback() payable {
    stor3 = 0
    stor0 = msg.sender
    return code.data[91 len 4915]
}



// =====================  Runtime code  =====================


const name = 'Immortal'

const totalSupply = 100

const decimals = 0

const version = '1.0.0'

const symbol = 'IMT'


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 tokenAssigned;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenAssigned() {
    return tokenAssigned
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(msg.sender)] >= 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(arg1)] <= 100
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(msg.sender)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg1)] >= 0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg2)] <= 100
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require tokenAssigned < 100
    require msg.value >= 5 * 10^17
    require tokenAssigned + (msg.value / 5 * 10^17) >= tokenAssigned
    if tokenAssigned + (msg.value / 5 * 10^17) > 100:
        require 100 >= tokenAssigned
        require balanceOf[address(msg.sender)] + -tokenAssigned + 100 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -tokenAssigned + 100
        require 100 >= tokenAssigned
        tokenAssigned = 100
        require balanceOf[address(msg.sender)] <= 100
        call msg.sender with:
           value msg.value + (5 * 10^17 * tokenAssigned) - 50 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require not eth.balance(this.address)
        emit Assigned(msg.sender, -tokenAssigned + 100);
    else:
        require tokenAssigned + (msg.value / 5 * 10^17) >= tokenAssigned
        require tokenAssigned + (msg.value / 5 * 10^17) <= 100
        require balanceOf[address(msg.sender)] + (msg.value / 5 * 10^17) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value / 5 * 10^17
        require tokenAssigned + (msg.value / 5 * 10^17) >= tokenAssigned
        tokenAssigned += msg.value / 5 * 10^17
        require balanceOf[address(msg.sender)] <= 100
        call msg.sender with:
           value msg.value % 5 * 10^17 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require not eth.balance(this.address)
        emit Assigned(msg.sender, msg.value / 5 * 10^17);
}



}
