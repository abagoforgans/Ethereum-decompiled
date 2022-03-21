contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    mem[96 len -605] = code.data[891 len -605]
    mem[64] = -509
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor5[address(msg.sender)] = mem[128]
    stor4 = 0
    stor3 = 10^12
    return code.data[286 len 605]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 companyName;
uint256 sub_032f77dc;
uint256 sharePrice;
uint256 ethBalance;
mapping of uint256 sub_06fad12d;

function sub_032f77dc(?) payable {
    return sub_032f77dc
}

function sub_06fad12d(?) payable {
    return sub_06fad12d[arg1]
}

function ethBalance() payable {
    return ethBalance
}

function sharePrice() payable {
    return sharePrice
}

function companyName() payable {
    return companyName[0 len companyName.length]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_efc7a8ee(?) payable {
    sub_06fad12d[address(arg1)] += arg2
    sub_032f77dc += arg2
    emit Transfer(arg2, 0, arg1);
}

function _fallback() payable {
    ethBalance += msg.value
    sub_06fad12d[address(msg.sender)] += msg.value / sharePrice
    sub_032f77dc += msg.value / sharePrice
    emit Transfer((msg.value / sharePrice), 0, msg.sender);
}



}
