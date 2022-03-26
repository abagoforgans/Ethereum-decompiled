contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2720]




// =====================  Runtime code  =====================


const name = Array(len=27, data=mem[224])

const decimals = 18

const standard = Array(len=9, data=mem[224])

const symbol = Array(len=4, data=mem[224])

const GNT = 0xa74476443119a942de498590fe1f2454d7d4ac0d


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of address personalDeposit;

function totalSupply() {
    return totalSupply
}

function getPersonalDepositAddress(address arg1) {
    return personalDeposit[address(arg1)]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function createPersonalDepositAddress() {
    if not personalDeposit[address(msg.sender)]:
        create contract with 0 wei
                        code: code.data[2166 len 522], address(this.address)
        require create.new_address
        personalDeposit[address(msg.sender)] = address(create.new_address)
    return personalDeposit[address(msg.sender)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit code.data[2688 len 32]: arg3, arg1, arg2
    return 1
}

function processDeposit() {
    require personalDeposit[address(msg.sender)]
    require ext_code.size(personalDeposit[address(msg.sender)])
    call personalDeposit[address(msg.sender)].collect() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(0xa74476443119a942de498590fe1f2454d7d4ac0d)
    call 0xa74476443119a942de498590fe1f2454d7d4ac0d.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > totalSupply
    totalSupply = ext_call.return_data[0]
    balanceOf[address(msg.sender)] = ext_call.return_data[0] - totalSupply + balanceOf[address(msg.sender)]
    emit code.data[2688 len 32]: (ext_call.return_data[0] - totalSupply), this.address, msg.sender
}

function transfer(address arg1, uint256 arg2) {
    if arg1 != this.address:
        if balanceOf[address(msg.sender)] < arg2:
            return 0
        if arg2 <= 0:
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        emit code.data[2688 len 32]: arg2, msg.sender, arg1
    else:
        require balanceOf[address(msg.sender)] >= arg2
        balanceOf[address(msg.sender)] -= arg2
        totalSupply -= arg2
        emit code.data[2688 len 32]: arg2, msg.sender, this.address
        require ext_code.size(0xa74476443119a942de498590fe1f2454d7d4ac0d)
        call 0xa74476443119a942de498590fe1f2454d7d4ac0d.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args msg.sender, arg2
        require ext_call.success
    return 1
}



}
