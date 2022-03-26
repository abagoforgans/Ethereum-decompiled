contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    mem[96 len -542] = code.data[771 len -542]
    mem[64] = -446
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1 = mem[128]
    stor2[address(msg.sender)] = mem[128]
    return code.data[229 len 542]
}



// =====================  Runtime code  =====================


array of uint256 name;
uint256 totalSupply;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() {
    revert 
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}



}
