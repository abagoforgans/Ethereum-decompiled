contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() {
    stor2 = msg.sender
    stor4[stor2] = 10^9
    stor0 = block.timestamp + (730000 * 3600)
    stor3 = 10^9
    return code.data[225 len 1666]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of address stor1;
address stor2;
uint256 totalSupply;
mapping of uint256 balance;

function getBalance() {
    return balance[address(msg.sender)]
}

function totalSupply() {
    return totalSupply
}

function _fallback() payable {
    balance[address(msg.sender)] += msg.value / 10^14
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalSupply += msg.value / 10^14
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balance[address(msg.sender)] >= arg2
    require balance[address(arg1)] + arg2 >= balance[address(arg1)]
    balance[address(msg.sender)] -= arg2
    balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function claimTokens() {
    require block.timestamp <= stor0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require address(stor1[idx]) != msg.sender
        idx = idx + 1
        continue 
    balance[address(msg.sender)] += eth.balance(msg.sender) / 10^12
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = msg.sender
    totalSupply += eth.balance(msg.sender) / 10^12
}



}
