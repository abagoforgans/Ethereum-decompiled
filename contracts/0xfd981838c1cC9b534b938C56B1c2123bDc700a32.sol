contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    mem[96 len -2746] = code.data[3250 len -2746]
    mem[64] = -2650
    stor3[address(msg.sender)] = mem[96]
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor2 = mem[160]
    return code.data[504 len 2746]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 spentAllowance;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function spentAllowance(address arg1, address arg2) payable {
    return spentAllowance[arg1][arg2]
}

function allowance(address arg1, address arg2) payable {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require spentAllowance[address(arg1)][address(msg.sender)] + arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    spentAllowance[address(arg1)][address(msg.sender)] += arg3
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}



}
