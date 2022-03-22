contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 10
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[49 len 451]
}



// =====================  Runtime code  =====================


uint256 balance;
uint256 sub_164b045a;
uint256 percentage;
address owner;

function sub_164b045a(?) payable {
    return sub_164b045a
}

function owner() payable {
    return owner
}

function balance() payable {
    return balance
}

function percentage() payable {
    return percentage
}

function setPercentage(uint256 arg1) payable {
    if owner == msg.sender:
        percentage = arg1
}

function deposit() payable {
    sub_164b045a += percentage * msg.value / 100
    balance = msg.value - (percentage * msg.value / 100) + balance
}

function _fallback() payable {
    sub_164b045a += percentage * msg.value / 100
    balance = msg.value - (percentage * msg.value / 100) + balance
}

function sub_8fa80599(?) payable {
    if owner == msg.sender:
        call owner with:
           value sub_164b045a wei
             gas 0 wei
        sub_164b045a = 0
}

function send(address arg1, uint256 arg2) payable {
    if owner == msg.sender:
        if arg2 <= balance:
            call arg1 with:
               value 10^18 * arg2 wei
                 gas 0 wei
            balance += -1 * 10^18 * arg2
}



}
