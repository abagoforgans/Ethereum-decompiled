contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    mem[96 len -2008] = code.data[2461 len -2008]
    mem[64] = -1912
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[453 len 2008]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 name;
array of uint256 symbol;
mapping of uint256 balanceOf;

function name() payable {
    return name[0 len name.length]
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert 
}

function issue(address arg1, uint256 arg2) payable {
    require msg.sender == stor0
    balanceOf[address(arg1)] += arg2
    emit Issue(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}

function issueAndCommit(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require msg.sender == stor0
    balanceOf[address(arg2)] += arg3
    call arg2.commitSecurity(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg3, arg4
    require ext_call.success
}

function commit(address arg1, uint256 arg2, uint256 arg3) payable {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    call arg1.commitSecurity(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2, arg3
    require ext_call.success
}



}
