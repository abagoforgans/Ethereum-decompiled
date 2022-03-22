contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -925] = code.data[1268 len -925]
    mem[64] = -829
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[343 len 925]
}



// =====================  Runtime code  =====================


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
    balanceOf[address(msg.sender)] += msg.value / 10^18
    call msg.sender with:
       value msg.value % 10^18 wei
         gas 0 wei
}

function withdraw(uint256 arg1) payable {
    require balanceOf[address(msg.sender)] >= 10^18 * arg1
    require 10^18 * arg1 > 0
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 0 wei
    balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
