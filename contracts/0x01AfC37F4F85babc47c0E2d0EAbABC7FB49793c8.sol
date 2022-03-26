contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor0[address(msg.sender)] = 0
    stor2 = 0
    stor3 = code.data[2191 len 20]
    return code.data[109 len 2070]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address stor3;
mapping of address stor4;
mapping of address broker;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getBroker(address arg1) {
    return broker[address(msg.sender)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function notifyDeposit(uint256 arg1) {
    require stor4[address(msg.sender)]
    balanceOf[stor4[address(msg.sender)]] += arg1
    totalSupply += arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createBroker() {
    if broker[address(msg.sender)]:
        return broker[address(msg.sender)]
    create contract with 0 wei
                    code: code.data[1574 len 496], stor3
    require create.new_address
    stor4[address(create.new_address)] = msg.sender
    broker[address(msg.sender)] = address(create.new_address)
    emit LogBroker(address(create.new_address));
    return address(create.new_address)
}



}
