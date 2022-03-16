contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 302]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 queryBalance;

function queryBalance(address arg1) payable {
    return queryBalance[address(arg1)]
}

function _fallback() payable {
  stop
}

function mint(address arg1, uint256 arg2) payable {
    if msg.sender == stor0:
        queryBalance[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) payable {
    if queryBalance[address(msg.sender)] >= arg2:
        queryBalance[address(msg.sender)] -= arg2
        queryBalance[arg1] += arg2
        emit Send(address(msg.sender), address(arg1), arg2);
}



}
